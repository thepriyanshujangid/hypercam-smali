.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oOo00o0o/OooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic o0000o0o:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oOo00o0o/OooOO0;->o0000o0o:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oOo00o0o/OooOO0;->o0000o0o:Landroid/view/View;

    check-cast p1, Lcom/android/camera/protocol/protocols/CameraAction;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/vlogpro/FragmentVlogProProcess;->lambda$onClick$2(Landroid/view/View;Lcom/android/camera/protocol/protocols/CameraAction;)V

    return-void
.end method
