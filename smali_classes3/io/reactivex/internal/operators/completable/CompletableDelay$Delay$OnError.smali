.class public final Lio/reactivex/internal/operators/completable/CompletableDelay$Delay$OnError;
.super Ljava/lang/Object;
.source "CompletableDelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnError"
.end annotation


# instance fields
.field private final e:Ljava/lang/Throwable;

.field public final synthetic this$1:Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay$OnError;->this$1:Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay$OnError;->e:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay$OnError;->this$1:Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->s:Lio/reactivex/CompletableObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay$OnError;->e:Ljava/lang/Throwable;

    invoke-interface {v0, p0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
