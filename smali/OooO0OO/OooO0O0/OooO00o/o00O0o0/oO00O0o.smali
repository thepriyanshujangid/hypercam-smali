.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO00O0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic o0000o0o:Lcom/android/camera/module/VlogProModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VlogProModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO00O0o;->o0000o0o:Lcom/android/camera/module/VlogProModule;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO00O0o;->o0000o0o:Lcom/android/camera/module/VlogProModule;

    check-cast p1, Lcom/android/camera/data/observeable/RxData$DataWrap;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VlogProModule;->OooOO0(Lcom/android/camera/data/observeable/RxData$DataWrap;)V

    return-void
.end method
