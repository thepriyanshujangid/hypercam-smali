.class public final Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
.super Ljava/lang/Object;
.source "ParallelTaskDataParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/ParallelTaskDataParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;


# direct methods
.method public constructor <init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "previewSize",
            "pictureSize",
            "outputSize",
            "outputFormat"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;ILcom/xiaomi/camera/core/ParallelTaskDataParameter$1;)V

    iput-object v6, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;-><init>(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/xiaomi/camera/core/ParallelTaskDataParameter$1;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    return-object p0
.end method

.method public setAlgorithmName(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithmName"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setAnchorPreview(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchorPreview"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2002(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setBokehFrontCamera(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bokehFrontCamera"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setCameraPreferredMode(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preferredMode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$4002(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setCaptureTime(J)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureTime"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;J)J

    return-object p0
.end method

.method public setCvOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setCvStyleFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cvStyleFilterId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1102(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setCvWaterMarkLocationEnable(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$4302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setCvWaterMarkTimeEnable(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$4402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setDeviceWatermarkParam(Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    return-object p0
.end method

.method public setEffectRectAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectRectAttribute"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$4102(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/camera/effect/EffectController$EffectRectAttribute;)Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    return-object p0
.end method

.method public setExposureTime(J)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exposureTime"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;J)J

    return-object p0
.end method

.method public setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setFrontCamera(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFrontCamera"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setHasCvWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasCvWaterMark"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setHasDualWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasDualWaterMark"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setIsImageCaptureIntent(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isImageCaptureIntent"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$4202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setIso(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iso"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setJpegQuality(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jpegQuality"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jpegRotation"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setLightingPattern(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightingPattern"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2102(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Landroid/location/Location;)Landroid/location/Location;

    return-object p0
.end method

.method public setMajorAIWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object p0
.end method

.method public setMinorAIWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object p0
.end method

.method public setMirror(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirror"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setMoonMode(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMoonMode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setNeedDark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needDark"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1002(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setOutputSize(Landroid/util/Size;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3002(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Landroid/util/Size;)Landroid/util/Size;

    return-object p0
.end method

.method public setPictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pictureInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/PictureInfo;

    return-object p0
.end method

.method public setPictureSize(Landroid/util/Size;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Landroid/util/Size;)Landroid/util/Size;

    return-object p0
.end method

.method public setPortraitLightingVersion(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setPrefix(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefix"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setRawSize(II)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Landroid/util/Size;)Landroid/util/Size;

    return-object p0
.end method

.method public setReprocessBurstShotPicture(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reprocess"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setShootOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootOrientation"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setShootRotation(F)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootRotation"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;F)F

    return-object p0
.end method

.method public setSiqeType(B)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;B)B

    return-object p0
.end method

.method public setSuffix(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suffix"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3102(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setSupportIspHeif(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportIspHeif"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportIspHeif"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setSupportZeroDegreeOrientationImage(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportZeroDegreeOrientationImage"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSupportZeroDegreeOrientationImage"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setTiltShiftMode(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tiltShiftMode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setTimeWaterMarkString(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeWaterMarkString"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
