.class public Lcom/android/camera2/MiCamera2MIVIStill$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2MIVIStill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2MIVIStill;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2MIVIStill;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2MIVIStill;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "request",
            "result"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureCompleted: mPictureName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mPictureName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", timestamp: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiCamera2MIVIStill"

    invoke-static {p2, p1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigManager()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setAWBLock(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iput-object p3, p1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 5
    invoke-static {p1}, Lcom/android/camera2/MiCamera2MIVIStill;->access$000(Lcom/android/camera2/MiCamera2MIVIStill;)V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    const/16 p2, 0xbb

    if-ne p1, p2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 8
    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-interface {p1, p2, p0}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V

    :cond_1
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CaptureFailure;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "request",
            "failure"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureFailed: reason: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mPictureName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mPictureName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", timestamp: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiCamera2MIVIStill"

    .line 4
    invoke-static {p2, p1}, Lcom/android/camera/log/LogK;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigManager()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setAWBLock(Z)V

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->tryCallbackCaptureFailed()V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 6
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "request",
            "partialResult"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    const/16 p2, 0xbb

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    new-instance p1, Lcom/android/camera2/QuickViewParam;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 5
    invoke-interface {p0, p1, p3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureProgress(Lcom/android/camera2/QuickViewParam;Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 9
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "request",
            "timestamp",
            "frameNumber"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    const-string p1, "MiCamera2MIVIStill"

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureStarted: mPictureName: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mPictureName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", frameNumber: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mCaptureFinishCallbackState: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCallbackState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    new-instance v8, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v0, p2, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getCaptureTime()J

    move-result-wide v6

    move-object v0, v8

    move-wide v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    iput-object v8, p2, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 7
    iget-object p2, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object p3, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mPictureName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setImageName(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    sget p3, Lcom/android/camera2/MiCamera2MIVIBaseShot;->CAPTURE_STARTED:I

    invoke-virtual {p2, p3}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->changeCallbackState(I)V

    .line 9
    iget-object p2, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->tryHandleCaptureFinished()V

    .line 10
    new-instance p2, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object p3, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    .line 11
    new-instance p3, Lcom/android/camera2/QuickViewParam;

    iget-object p4, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {p4}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object p4, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v5, p4, Lcom/android/camera2/MiCamera2Shot;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 12
    iget-object p4, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p4, p4, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mSnapParam:Lcom/android/camera2/SnapParam;

    invoke-virtual {p4}, Lcom/android/camera2/SnapParam;->isZslCapture()Z

    move-result p4

    iput-boolean p4, p3, Lcom/android/camera2/QuickViewParam;->zslSound:Z

    .line 13
    invoke-virtual {p2, p3}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget p3, p3, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 14
    invoke-virtual {p2, p3}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object p2

    .line 16
    iget-object p3, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-interface {p1, p3, p2}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 17
    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onAllHalFrameReceived()V

    .line 18
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p1, p5, p6}, Lcom/xiaomi/camera/core/ParallelTaskData;->setFrameNumber(J)V

    .line 19
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureId(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setChangedBufferFormat(Lcom/xiaomi/engine/BufferFormat;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setParallelVTCameraSnapshot(Z)V

    const-string p1, "MiCamera2MIVIStill"

    .line 22
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onCaptureStarted: parallelTaskData: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p4, p4, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-static {}, Lcom/xiaomi/camera/MIVICaptureManager;->getInstance()Lcom/xiaomi/camera/MIVICaptureManager;

    move-result-object v0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v4, p1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mPictureName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    move-wide v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/camera/MIVICaptureManager;->addAll(IJLjava/lang/String;Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 24
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mEarlyImageLock:Ljava/lang/Object;

    monitor-enter p1

    .line 25
    :try_start_0
    iget-object p2, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->handleEarlyImageIfNeedLocked()V

    .line 26
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object p0, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->tryReleaseShotInstance()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 28
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
