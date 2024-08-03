.class public Lnet/majorkernelpanic/streaming/rtp/AACLATMPacketizer;
.super Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;
.source "AACLATMPacketizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AACLATMPacketizer"


# instance fields
.field private t:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;-><init>()V

    .line 2
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setCacheSize(J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "AACLATMPacketizer"

    const-string v1, "AAC LATM packetizer started !"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->requestBuffer()[B

    move-result-object v1

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    .line 4
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Lnet/majorkernelpanic/streaming/io/ByteBufferInputStream;

    const/16 v3, 0x18

    const/16 v4, 0x4e0

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Lnet/majorkernelpanic/streaming/io/ByteBufferInputStream;

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/io/ByteBufferInputStream;->getLastPresentationTimeUs()J

    move-result-wide v2

    .line 6
    iget-wide v4, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    .line 7
    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    .line 8
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->commitBuffer()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->markNextPacket()V

    .line 10
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    iget-wide v3, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    invoke-virtual {v2, v3, v4}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->updateTimestamp(J)V

    .line 11
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    const/4 v3, 0x0

    const/16 v4, 0x14

    aput-byte v3, v2, v4

    const/16 v3, 0x15

    const/16 v4, 0x10

    .line 12
    aput-byte v4, v2, v3

    const/16 v3, 0x16

    shr-int/lit8 v4, v1, 0x5

    int-to-byte v4, v4

    .line 13
    aput-byte v4, v2, v3

    shl-int/lit8 v3, v1, 0x3

    int-to-byte v3, v3

    const/16 v4, 0x17

    .line 14
    aput-byte v3, v2, v4

    .line 15
    aget-byte v3, v2, v4

    and-int/lit16 v3, v3, 0xf8

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    add-int/lit8 v1, v1, 0x14

    add-int/lit8 v1, v1, 0x4

    .line 16
    invoke-virtual {p0, v1}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->send(I)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->commitBuffer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayIndexOutOfBoundsException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "unknown error"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :catch_1
    :cond_3
    const-string p0, "AAC LATM packetizer stopped !"

    .line 20
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSamplingRate(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "samplingRate"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setClockFrequency(J)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AACLATMPacketizer;->t:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AACLATMPacketizer;->t:Ljava/lang/Thread;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AACLATMPacketizer;->t:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Lnet/majorkernelpanic/streaming/io/ByteBufferInputStream;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/io/ByteBufferInputStream;->close()V

    .line 3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AACLATMPacketizer;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AACLATMPacketizer;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AACLATMPacketizer;->t:Ljava/lang/Thread;

    :cond_0
    return-void
.end method
