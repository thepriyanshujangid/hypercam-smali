.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooO0Oo/o0000O0O/oo000o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooO0Oo/o0000O0O/oo000o;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooO0Oo/o0000O0O/oo000o;

    invoke-direct {v0}, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooO0Oo/o0000O0O/oo000o;-><init>()V

    sput-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooO0Oo/o0000O0O/oo000o;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooO0Oo/o0000O0O/oo000o;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/protocol/protocols/CameraAction;

    invoke-static {p1}, Lcom/android/camera/features/mode/cosmeticmirror/ui/FragmentCosmeticMirror;->lambda$onScreenshotClick$2(Lcom/android/camera/protocol/protocols/CameraAction;)V

    return-void
.end method
