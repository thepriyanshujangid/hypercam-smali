.class public Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;
.super Ljava/lang/Object;
.source "RtpSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/majorkernelpanic/streaming/rtp/RtpSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AverageBitrate"
.end annotation


# static fields
.field private static final RESOLUTION:J = 0xc8L


# instance fields
.field private mCount:I

.field private mDelta:J

.field private mElapsed:[J

.field private mIndex:I

.field private mNow:J

.field private mOldNow:J

.field private final mSize:I

.field private mSum:[J

.field private mTotal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    .line 2
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSize:I

    .line 3
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->reset()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    div-int/lit16 p1, p1, 0xc8

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSize:I

    .line 6
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->reset()V

    return-void
.end method


# virtual methods
.method public average()I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move-wide v5, v3

    .line 1
    :goto_0
    iget v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSize:I

    if-ge v2, v7, :cond_0

    .line 2
    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSum:[J

    aget-wide v7, v7, v2

    add-long/2addr v5, v7

    .line 3
    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mElapsed:[J

    aget-wide v7, v7, v2

    add-long/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    cmp-long p0, v3, v0

    if-lez p0, :cond_1

    const-wide/16 v0, 0x1f40

    mul-long/2addr v5, v0

    .line 4
    div-long v0, v5, v3

    :cond_1
    long-to-int p0, v0

    return p0
.end method

.method public push(I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mNow:J

    .line 2
    iget v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mCount:I

    if-lez v2, :cond_0

    .line 3
    iget-wide v3, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mDelta:J

    iget-wide v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mOldNow:J

    sub-long v5, v0, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mDelta:J

    .line 4
    iget v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mTotal:I

    add-int/2addr v5, p1

    iput v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mTotal:I

    const-wide/16 v6, 0xc8

    cmp-long p1, v3, v6

    if-lez p1, :cond_0

    .line 5
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSum:[J

    iget v6, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mIndex:I

    int-to-long v7, v5

    aput-wide v7, p1, v6

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mTotal:I

    .line 7
    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mElapsed:[J

    aput-wide v3, v5, v6

    const-wide/16 v3, 0x0

    .line 8
    iput-wide v3, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mDelta:J

    add-int/lit8 v6, v6, 0x1

    .line 9
    iput v6, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mIndex:I

    .line 10
    iget v3, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSize:I

    if-lt v6, v3, :cond_0

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mIndex:I

    .line 11
    :cond_0
    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mOldNow:J

    add-int/lit8 v2, v2, 0x1

    .line 12
    iput v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mCount:I

    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSize:I

    new-array v1, v0, [J

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSum:[J

    .line 2
    new-array v0, v0, [J

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mElapsed:[J

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mNow:J

    .line 4
    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mOldNow:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mCount:I

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mDelta:J

    .line 7
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mTotal:I

    .line 8
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mIndex:I

    return-void
.end method
