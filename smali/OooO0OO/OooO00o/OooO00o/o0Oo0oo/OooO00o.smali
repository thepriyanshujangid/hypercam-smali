.class public LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;
.super Ljava/lang/Object;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final OooO00o:F = -3987645.8f

.field private static final OooO0O0:I = 0x2ec8fb09


# instance fields
.field private OooO:F

.field private final OooO0OO:LOooO0OO/OooO00o/OooO00o/OooOO0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final OooO0Oo:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final OooO0o:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public OooO0o0:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final OooO0oO:F

.field public OooO0oo:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooOO0:F

.field private OooOO0O:I

.field private OooOO0o:I

.field private OooOOO:F

.field private OooOOO0:F

.field public OooOOOO:Landroid/graphics/PointF;

.field public OooOOOo:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(LOooO0OO/OooO00o/OooO00o/OooOO0;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO00o/OooO00o/OooOO0;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    .line 2
    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO:F

    .line 3
    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOO0:F

    const v0, 0x2ec8fb09

    .line 4
    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOO0O:I

    .line 5
    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOO0o:I

    const/4 v0, 0x1

    .line 6
    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOOO0:F

    .line 7
    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOOO:F

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOOOO:Landroid/graphics/PointF;

    .line 9
    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOOOo:Landroid/graphics/PointF;

    .line 10
    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0OO:LOooO0OO/OooO00o/OooO00o/OooOO0;

    .line 11
    iput-object p2, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0Oo:Ljava/lang/Object;

    .line 12
    iput-object p3, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0o0:Ljava/lang/Object;

    .line 13
    iput-object p4, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0o:Landroid/view/animation/Interpolator;

    .line 14
    iput p5, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0oO:F

    .line 15
    iput-object p6, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0oo:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    .line 17
    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO:F

    .line 18
    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOO0:F

    const v0, 0x2ec8fb09

    .line 19
    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOO0O:I

    .line 20
    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOO0o:I

    const/4 v0, 0x1

    .line 21
    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOOO0:F

    .line 22
    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOOO:F

    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOOOO:Landroid/graphics/PointF;

    .line 24
    iput-object v1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOOOo:Landroid/graphics/PointF;

    .line 25
    iput-object v1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0OO:LOooO0OO/OooO00o/OooO00o/OooOO0;

    .line 26
    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0Oo:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0o0:Ljava/lang/Object;

    .line 28
    iput-object v1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0o:Landroid/view/animation/Interpolator;

    .line 29
    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0oO:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 30
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0oo:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public OooO00o(F)Z
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0o0()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0O0()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public OooO0O0()F
    .locals 3

    .line 1
    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0OO:LOooO0OO/OooO00o/OooO00o/OooOO0;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOOO:F

    const/4 v2, 0x1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0oo:Ljava/lang/Float;

    if-nez v0, :cond_1

    .line 4
    iput v1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOOO:F

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0o0()F

    move-result v0

    .line 6
    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0oo:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0oO:F

    sub-float/2addr v1, v2

    .line 7
    iget-object v2, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0OO:LOooO0OO/OooO00o/OooO00o/OooOO0;

    invoke-virtual {v2}, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0o0()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 8
    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOOO:F

    .line 9
    :cond_2
    :goto_0
    iget p0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOOO:F

    return p0
.end method

.method public OooO0OO()F
    .locals 2

    .line 1
    iget v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOO0:F

    const v1, -0x358c9d09

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0o0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOO0:F

    .line 3
    :cond_0
    iget p0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOO0:F

    return p0
.end method

.method public OooO0Oo()I
    .locals 2

    .line 1
    iget v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOO0o:I

    const v1, 0x2ec8fb09

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0o0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOO0o:I

    .line 3
    :cond_0
    iget p0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOO0o:I

    return p0
.end method

.method public OooO0o()F
    .locals 2

    .line 1
    iget v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO:F

    const v1, -0x358c9d09

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0Oo:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO:F

    .line 3
    :cond_0
    iget p0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO:F

    return p0
.end method

.method public OooO0o0()F
    .locals 3

    .line 1
    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0OO:LOooO0OO/OooO00o/OooO00o/OooOO0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget v1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOOO0:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 3
    iget v1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0oO:F

    invoke-virtual {v0}, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOOOo()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0OO:LOooO0OO/OooO00o/OooO00o/OooOO0;

    invoke-virtual {v0}, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0o0()F

    move-result v0

    div-float/2addr v1, v0

    iput v1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOOO0:F

    .line 4
    :cond_1
    iget p0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOOO0:F

    return p0
.end method

.method public OooO0oO()I
    .locals 2

    .line 1
    iget v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOO0O:I

    const v1, 0x2ec8fb09

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0Oo:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOO0O:I

    .line 3
    :cond_0
    iget p0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooOO0O:I

    return p0
.end method

.method public OooO0oo()Z
    .locals 0

    .line 1
    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0o:Landroid/view/animation/Interpolator;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keyframe{startValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0Oo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0o0:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0oO:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0oo:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0o:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
