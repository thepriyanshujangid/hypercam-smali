.class public final Lcom/faceunity/core/support/FUSchedulerManager$mOrdinaryTaskCallback$1;
.super Ljava/lang/Object;
.source "FUSchedulerManager.kt"

# interfaces
.implements Lcom/faceunity/core/support/FUSchedulerManager$OrdinaryTaskCallback;


# annotations
.annotation runtime LOooO0o/o0000Ooo;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "com/faceunity/core/support/FUSchedulerManager$mOrdinaryTaskCallback$1",
        "Lcom/faceunity/core/support/FUSchedulerManager$OrdinaryTaskCallback;",
        "LOooO0o/o00OOOOo;",
        "onFinish",
        "()V",
        "lib_core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/core/support/FUSchedulerManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/faceunity/core/support/FUSchedulerManager;


# direct methods
.method public constructor <init>(Lcom/faceunity/core/support/FUSchedulerManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/core/support/FUSchedulerManager$mOrdinaryTaskCallback$1;->this$0:Lcom/faceunity/core/support/FUSchedulerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/core/support/FUSchedulerManager$mOrdinaryTaskCallback$1;->this$0:Lcom/faceunity/core/support/FUSchedulerManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/faceunity/core/support/FUSchedulerManager;->access$setMOrdinaryTaskStatus$p(Lcom/faceunity/core/support/FUSchedulerManager;Z)V

    .line 2
    iget-object v0, p0, Lcom/faceunity/core/support/FUSchedulerManager$mOrdinaryTaskCallback$1;->this$0:Lcom/faceunity/core/support/FUSchedulerManager;

    invoke-static {v0}, Lcom/faceunity/core/support/FUSchedulerManager;->access$getMAddOrdinaryLock$p(Lcom/faceunity/core/support/FUSchedulerManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/faceunity/core/support/FUSchedulerManager$mOrdinaryTaskCallback$1;->this$0:Lcom/faceunity/core/support/FUSchedulerManager;

    invoke-static {p0}, Lcom/faceunity/core/support/FUSchedulerManager;->access$scheduleNext(Lcom/faceunity/core/support/FUSchedulerManager;)V

    .line 4
    sget-object p0, LOooO0o/o00OOOOo;->OooO00o:LOooO0o/o00OOOOo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
