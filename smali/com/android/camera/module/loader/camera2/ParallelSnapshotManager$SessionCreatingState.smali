.class public Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;
.super Lcom/xiaomi/camera/util/State;
.source "ParallelSnapshotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionCreatingState"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)V
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
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-direct {p0}, Lcom/xiaomi/camera/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "entering SessionCreatingState state"

    invoke-static {v0, v1}, LOooO0OO/OooO0O0/OooO0OO/OooO0o;->OooO0o0(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$300(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v4, :cond_9

    const/4 v6, 0x5

    if-eq v2, v6, :cond_7

    const/16 v7, 0xa

    if-eq v2, v7, :cond_3

    const/16 v4, 0xc

    if-eq v2, v4, :cond_1

    const/16 v4, 0xd

    if-eq v2, v4, :cond_0

    return v5

    .line 2
    :cond_0
    iget-object v2, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v2}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SessionCreatingState:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->CameraOpenedState"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1100(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CameraOpenedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    goto/16 :goto_2

    .line 4
    :cond_1
    iget-object v2, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v2, v6}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1800(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v2}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SessionCreatingState:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->SessionClosingState"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1900(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionClosingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    goto/16 :goto_2

    .line 7
    :cond_2
    iget-object v2, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v2}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SessionCreatingState:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->SessionCreatedState"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$2000(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    goto/16 :goto_2

    .line 9
    :cond_3
    iget-object v0, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$200(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 10
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    .line 11
    :try_start_1
    iget-object v0, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$500(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_4

    .line 12
    iget-object v0, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0, v7}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1402(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Ljava/util/Map;)Ljava/util/Map;

    .line 13
    iget-object v0, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1200(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$InitState;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 15
    :cond_4
    :try_start_3
    iget-object v0, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    .line 16
    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$500(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 17
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v8, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v8}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "surfaces.size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v9, v5

    :goto_0
    if-ge v9, v8, :cond_6

    .line 20
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/Surface;

    .line 21
    iget-object v12, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v12}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v14, "add configuration: i=%d format=0x%x size=%s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    .line 22
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v5

    .line 23
    invoke-static {v10}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v3

    .line 24
    invoke-static {v10}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v4

    .line 25
    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, LOooO0OO/OooO0O0/OooO0OO/OooO0o;->OooO0o0(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v12, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v12, v10}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 27
    iget-object v10, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v10}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$000(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera2/CameraCapabilities;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportPhysicCameraId(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 28
    iget-object v10, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v10}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    .line 29
    :cond_5
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 30
    :cond_6
    iget-object v4, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v4}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$100(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Lcom/android/camera2/SessionConfig;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/SessionConfig;)V

    .line 31
    iget-object v4, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    .line 32
    invoke-static {v4}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$500(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v8

    const v9, 0x9002

    const/4 v10, 0x0

    .line 33
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v12

    new-instance v13, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;

    iget-object v0, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-direct {v13, v0, v7}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$CaptureSessionStateCallback;-><init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$1;)V

    iget-object v0, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    .line 34
    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$300(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Landroid/os/Handler;

    move-result-object v14

    .line 35
    invoke-static/range {v8 .. v14}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 36
    :try_start_4
    iget-object v4, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v4}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    :goto_1
    iget-object v0, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0, v7}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1402(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Ljava/util/Map;)Ljava/util/Map;

    .line 38
    iget-object v0, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0, v6}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1602(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Ljava/util/List;)Ljava/util/List;

    .line 39
    iget-object v0, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "create CaptureSession X"

    invoke-static {v0, v1}, LOooO0OO/OooO0O0/OooO0OO/OooO0o;->OooO0o0(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 41
    :cond_7
    iget-object v2, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v2}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$200(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 42
    :try_start_5
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    iget-object v6, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v6}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$1600(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 44
    iget-object v4, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-virtual {v4, v0}, Lcom/xiaomi/camera/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    .line 45
    iget-object v1, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SessionCreatingState deferMessage:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->SessionClosingState"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_8
    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 47
    :cond_9
    iget-object v2, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {v2}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$400(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SessionCreatingState:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "->CameraClosingState"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v1, v1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$SessionCreatingState;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    :cond_a
    :goto_2
    return v3
.end method
