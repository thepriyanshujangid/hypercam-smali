.class public Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;
.super Lcom/xiaomi/mimoji/common/widget/autoselectview/SelectItemBean;
.source "FuColor.java"


# instance fields
.field private b:D

.field private g:D

.field private r:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mimoji/common/widget/autoselectview/SelectItemBean;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;

    .line 3
    iget-wide v2, p1, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;->r:D

    iget-wide v4, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;->r:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;->g:D

    iget-wide v4, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;->g:D

    .line 4
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;->b:D

    iget-wide p0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;->b:D

    .line 5
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getB()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;->b:D

    return-wide v0
.end method

.method public getG()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;->g:D

    return-wide v0
.end method

.method public getR()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;->r:D

    return-wide v0
.end method

.method public setB(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;->b:D

    return-void
.end method

.method public setG(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "g"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;->g:D

    return-void
.end method

.method public setR(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;->r:D

    return-void
.end method
