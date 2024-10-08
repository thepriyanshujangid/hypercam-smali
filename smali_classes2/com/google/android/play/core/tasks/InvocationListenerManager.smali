.class public final Lcom/google/android/play/core/tasks/InvocationListenerManager;
.super Ljava/lang/Object;
.source "InvocationListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private invoked:Z

.field private final lock:Ljava/lang/Object;

.field private mInvocationListenerQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/play/core/tasks/InvocationListener<",
            "TTResult;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/InvocationListenerManager;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addInvocationListener(Lcom/google/android/play/core/tasks/InvocationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/InvocationListener<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/InvocationListenerManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/InvocationListenerManager;->mInvocationListenerQueue:Ljava/util/Queue;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/android/play/core/tasks/InvocationListenerManager;->mInvocationListenerQueue:Ljava/util/Queue;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/google/android/play/core/tasks/InvocationListenerManager;->mInvocationListenerQueue:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public invokeListener(Lcom/google/android/play/core/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/InvocationListenerManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/InvocationListenerManager;->mInvocationListenerQueue:Ljava/util/Queue;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/InvocationListenerManager;->invoked:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/InvocationListenerManager;->invoked:Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/InvocationListenerManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/InvocationListenerManager;->mInvocationListenerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/tasks/InvocationListener;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/play/core/tasks/InvocationListenerManager;->invoked:Z

    .line 8
    monitor-exit v1

    return-void

    .line 9
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-interface {v0, p1}, Lcom/google/android/play/core/tasks/InvocationListener;->invoke(Lcom/google/android/play/core/tasks/Task;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 11
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 12
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
