.class public Lcom/android/camera/ui/drawable/AutoHibernationDrawable$2;
.super Ljava/lang/Object;
.source "AutoHibernationDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->startRecord(JFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$2;->this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$2;->this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->access$000(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$2;->this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method
