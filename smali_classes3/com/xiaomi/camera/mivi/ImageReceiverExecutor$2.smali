.class public Lcom/xiaomi/camera/mivi/ImageReceiverExecutor$2;
.super Ljava/lang/Object;
.source "ImageReceiverExecutor.java"

# interfaces
.implements Lcom/xiaomi/camera/mivi/IReProcessor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;)V
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
    iput-object p1, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor$2;->this$0:Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[3] onReprocessError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageReceiverExecutor"

    invoke-static {v0, p1}, Lcom/android/camera/log/LogK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor$2;->this$0:Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;

    invoke-static {p0}, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->access$000(Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public onSuccess(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[3] onReprocessSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageReceiverExecutor"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/MIVICaptureManager;->getInstance()Lcom/xiaomi/camera/MIVICaptureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/MIVICaptureManager;->notifyFinish(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V

    const-string p1, "[3] onReprocessSuccess: start notify next reprocess task."

    .line 3
    invoke-static {v1, p1}, Lcom/android/camera/log/LogK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor$2;->this$0:Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;

    invoke-static {p0}, Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;->access$000(Lcom/xiaomi/camera/mivi/ImageReceiverExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
