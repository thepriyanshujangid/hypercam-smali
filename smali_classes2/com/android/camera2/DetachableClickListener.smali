.class public final Lcom/android/camera2/DetachableClickListener;
.super Ljava/lang/Object;
.source "DetachableClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DetachableClickListener"


# instance fields
.field private delegateOrNull:Landroid/content/DialogInterface$OnClickListener;

.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method private constructor <init>(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delegate",
            "cancelListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera2/DetachableClickListener;->delegateOrNull:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput-object p2, p0, Lcom/android/camera2/DetachableClickListener;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera2/DetachableClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/DetachableClickListener;->delegateOrNull:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/android/camera2/DetachableClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/DetachableClickListener;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p1
.end method

.method public static wrap(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/camera2/DetachableClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delegate",
            "cancelListener"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera2/DetachableClickListener;

    invoke-direct {v0, p0, p1}, Lcom/android/camera2/DetachableClickListener;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method


# virtual methods
.method public clearOnDetach(Landroid/app/Dialog;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/android/camera2/DetachableClickListener$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/DetachableClickListener$1;-><init>(Lcom/android/camera2/DetachableClickListener;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera2/DetachableClickListener;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera2/DetachableClickListener;->delegateOrNull:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
