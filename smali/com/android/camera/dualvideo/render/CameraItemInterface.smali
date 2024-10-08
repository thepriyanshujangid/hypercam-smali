.class public interface abstract Lcom/android/camera/dualvideo/render/CameraItemInterface;
.super Ljava/lang/Object;
.source "CameraItemInterface.java"


# virtual methods
.method public abstract alphaInGridWindowFlag(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alphaIn"
        }
    .end annotation
.end method

.method public abstract alphaInSelectedFrame(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alphaIn"
        }
    .end annotation
.end method

.method public abstract draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/ContentType;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "type",
            "mgr"
        }
    .end annotation
.end method

.method public abstract draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/ContentType;Lcom/android/camera/dualvideo/render/MiscTextureManager;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "type",
            "mgr",
            "topOffset"
        }
    .end annotation
.end method

.method public abstract enterOrExit(Lio/reactivex/SingleEmitter;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singleEmitter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAlpha()F
.end method

.method public abstract getFaceType()Lcom/android/camera/dualvideo/render/FaceType;
.end method

.method public abstract getGridWindowFlagAlpha()F
.end method

.method public abstract getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
.end method

.method public abstract getLastRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
.end method

.method public abstract getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
.end method

.method public abstract getScalingHandleArea(Lcom/android/camera/dualvideo/render/MiscTextureManager;)Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mgr"
        }
    .end annotation
.end method

.method public abstract getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;
.end method

.method public abstract isAnimating()Z
.end method

.method public abstract isPressedInGridWindow()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract onKeyDown()V
.end method

.method public abstract onKeyUp()V
.end method

.method public abstract setLastRenderLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setRenderAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/camera/dualvideo/render/ContentType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attri",
            "type"
        }
    .end annotation
.end method

.method public abstract setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "regionHelper",
            "enableAnim"
        }
    .end annotation
.end method

.method public abstract setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectType",
            "withAnim"
        }
    .end annotation
.end method

.method public abstract setVisibilityWithAnim(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "visible",
            "withAnim"
        }
    .end annotation
.end method

.method public abstract updateRenderAttri(Lcom/android/camera/dualvideo/render/RegionHelper;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "regionHelper",
            "withAnim"
        }
    .end annotation
.end method
