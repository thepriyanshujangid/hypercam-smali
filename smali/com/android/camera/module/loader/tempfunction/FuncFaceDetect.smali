.class public Lcom/android/camera/module/loader/tempfunction/FuncFaceDetect;
.super Lcom/android/camera/module/loader/tempfunction/FuncPreviewMetadata;
.source "FuncFaceDetect.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/tempfunction/FuncPreviewMetadata<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Landroid/hardware/camera2/CaptureResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "moduleWeakReference",
            "faceDetectionCallbackReference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/tempfunction/FuncPreviewMetadata;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureResult"
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic onPreviewMetadata(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "captureResult"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/tempfunction/FuncFaceDetect;->onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0
.end method
