.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0o0o/o000oOoO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o0000o:Ljava/lang/String;

.field public final synthetic o0000o0o:Lcom/android/camera/performance/PerformanceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/performance/PerformanceManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0o/o000oOoO;->o0000o0o:Lcom/android/camera/performance/PerformanceManager;

    iput-object p2, p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0o/o000oOoO;->o0000o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0o/o000oOoO;->o0000o0o:Lcom/android/camera/performance/PerformanceManager;

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0o/o000oOoO;->o0000o:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/camera/performance/PerformanceManager;->OooO0OO(Ljava/lang/String;)V

    return-void
.end method
