.class public final synthetic Lcom/uber/rxdogtag/o0000O0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# instance fields
.field public final synthetic o0000o0o:Lcom/uber/rxdogtag/RxDogTag$Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uber/rxdogtag/o0000O0O;->o0000o0o:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uber/rxdogtag/o0000O0O;->o0000o0o:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    check-cast p1, Lio/reactivex/Flowable;

    check-cast p2, Lorg/reactivestreams/Subscriber;

    invoke-static {p0, p1, p2}, Lcom/uber/rxdogtag/RxDogTag;->lambda$installWithBuilder$1(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Flowable;Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    return-object p0
.end method
