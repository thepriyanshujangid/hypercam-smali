.class public LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;
.super Ljava/lang/Object;
.source "MiscUtils.java"


# static fields
.field private static OooO00o:Landroid/graphics/PointF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;->OooO00o:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO(DDD)D
    .locals 0
    .param p4    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    sub-double/2addr p2, p0

    mul-double/2addr p4, p2

    add-double/2addr p0, p4

    return-wide p0
.end method

.method public static OooO00o(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static OooO0O0(FFF)F
    .locals 0

    .line 1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static OooO0OO(III)I
    .locals 0

    .line 1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static OooO0Oo(FFF)Z
    .locals 0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static OooO0o(FF)I
    .locals 0

    float-to-int p0, p0

    float-to-int p1, p1

    .line 1
    invoke-static {p0, p1}, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;->OooO0oO(II)I

    move-result p0

    return p0
.end method

.method private static OooO0o0(II)I
    .locals 2

    .line 1
    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    rem-int/2addr p0, p1

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method

.method private static OooO0oO(II)I
    .locals 1

    .line 1
    invoke-static {p0, p1}, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;->OooO0o0(II)I

    move-result v0

    mul-int/2addr p1, v0

    sub-int/2addr p0, p1

    return p0
.end method

.method public static OooO0oo(LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;Landroid/graphics/Path;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 2
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0O0()Landroid/graphics/PointF;

    move-result-object v0

    .line 3
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4
    sget-object v1, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;->OooO00o:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;

    .line 7
    invoke-virtual {v1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;->OooO00o()Landroid/graphics/PointF;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;->OooO0O0()Landroid/graphics/PointF;

    move-result-object v3

    .line 9
    invoke-virtual {v1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;->OooO0OO()Landroid/graphics/PointF;

    move-result-object v1

    .line 10
    sget-object v4, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;->OooO00o:Landroid/graphics/PointF;

    invoke-virtual {v2, v4}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 12
    :cond_0
    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 13
    :goto_1
    sget-object v2, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;->OooO00o:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0Oo()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :cond_2
    return-void
.end method

.method public static OooOO0(FFF)F
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method public static OooOO0O(IIF)I
    .locals 1
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p2, p0

    add-float/2addr v0, p2

    float-to-int p0, v0

    return p0
.end method

.method public static OooOO0o(LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;ILjava/util/List;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooOo00;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;",
            "I",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;",
            ">;",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooOo00;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;->OooO0OO(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p4}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;->OooO00o(Ljava/lang/String;)LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p4}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;->OooOO0(LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOO0;)LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
