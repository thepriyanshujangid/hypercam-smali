.class public abstract Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;
.super Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.source "FlowableObserveOn.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseObserveOnSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
        "TT;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x725dec0716520049L


# instance fields
.field public volatile cancelled:Z

.field public final delayError:Z

.field public volatile done:Z

.field public error:Ljava/lang/Throwable;

.field public final limit:I

.field public outputFused:Z

.field public final prefetch:I

.field public produced:J

.field public queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field public s:Lorg/reactivestreams/Subscription;

.field public sourceMode:I

.field public final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method public constructor <init>(Lio/reactivex/Scheduler$Worker;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    .line 3
    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->delayError:Z

    .line 4
    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->prefetch:I

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    shr-int/lit8 p1, p3, 0x2

    sub-int/2addr p3, p1

    .line 6
    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->limit:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {p0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    :cond_1
    return-void
.end method

.method public final checkTerminated(ZZLorg/reactivestreams/Subscriber;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/reactivestreams/Subscriber<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->delayError:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_4

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->error:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p3, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 7
    :goto_0
    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return v1

    .line 8
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->error:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->clear()V

    .line 10
    invoke-interface {p3, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 11
    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 12
    invoke-interface {p3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 13
    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final clear()V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {p0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {p0}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->done:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->trySchedule()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->done:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->trySchedule()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->sourceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->trySchedule()V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 6
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->done:Z

    .line 8
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->trySchedule()V

    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->trySchedule()V

    :cond_0
    return-void
.end method

.method public final requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->outputFused:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->outputFused:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->runBackfused()V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->sourceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->runSync()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->runAsync()V

    :goto_0
    return-void
.end method

.method public abstract runAsync()V
.end method

.method public abstract runBackfused()V
.end method

.method public abstract runSync()V
.end method

.method public final trySchedule()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0, p0}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
