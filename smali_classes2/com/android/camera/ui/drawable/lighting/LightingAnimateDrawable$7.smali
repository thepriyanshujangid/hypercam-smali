.class public Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$7;
.super Ljava/lang/Object;
.source "LightingAnimateDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->animateFocusing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;)V
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
    iput-object p1, p0, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$7;->this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$7;->this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->access$400(Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;)Lcom/android/camera/ui/drawable/lighting/LightingPaintCircle;

    move-result-object p1

    iget p1, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    const v0, 0x3f1374bc    # 0.576f

    sub-float/2addr v0, p1

    const p1, 0x3ca3d70a    # 0.02f

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$7;->this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->access$500(Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$7;->this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->animateSuccess()V

    :cond_1
    :goto_0
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

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$7;->this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->access$102(Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;Z)Z

    return-void
.end method
