.class public Lcom/android/camera/aiwatermark/handler/ChinaScenicSpotsHandler;
.super Lcom/android/camera/aiwatermark/handler/ScenicSpotsHandler;
.source "ChinaScenicSpotsHandler.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isConsume"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/aiwatermark/handler/ScenicSpotsHandler;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getRegionMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/camera/aiwatermark/data/Region;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    instance-of v0, p0, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;->getRegionMap(I)Ljava/util/HashMap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getWatermarkList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->getForAI()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
