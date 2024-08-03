.class public Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source "MotionKeyPosition.java"


# static fields
.field public static final KEY_TYPE:I = 0x2

.field public static final NAME:Ljava/lang/String; = "KeyPosition"

.field public static final SELECTION_SLOPE:F = 20.0f

.field public static final TYPE_CARTESIAN:I = 0x0

.field public static final TYPE_PATH:I = 0x1

.field public static final TYPE_SCREEN:I = 0x2


# instance fields
.field public mAltPercentX:F

.field public mAltPercentY:F

.field private mCalculatedPositionX:F

.field private mCalculatedPositionY:F

.field public mCurveFit:I

.field public mDrawPath:I

.field public mPathMotionArc:I

.field public mPercentHeight:F

.field public mPercentWidth:F

.field public mPercentX:F

.field public mPercentY:F

.field public mPositionType:I

.field public mTransitionEasing:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    .line 2
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCurveFit:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 4
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 6
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 7
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 8
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 9
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 10
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    .line 11
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    .line 12
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    .line 13
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    .line 14
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    return-void
.end method

.method private calcCartesianPosition(FFFF)V
    .locals 5

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 2
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    .line 3
    :goto_1
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 4
    :goto_2
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    :goto_3
    mul-float/2addr v0, p3

    add-float/2addr p1, v0

    mul-float/2addr v1, p4

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 5
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    mul-float/2addr p3, v2

    add-float/2addr p2, p3

    mul-float/2addr p4, v3

    add-float/2addr p2, p4

    float-to-int p1, p2

    int-to-float p1, p1

    .line 6
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    return-void
.end method

.method private calcPathPosition(FFFF)V
    .locals 3

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    neg-float v0, p4

    .line 1
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    mul-float v2, p3, v1

    add-float/2addr p1, v2

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    mul-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    mul-float/2addr p4, v1

    add-float/2addr p2, p4

    mul-float/2addr p3, v2

    add-float/2addr p2, p3

    .line 2
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    return-void
.end method

.method private calcScreenPosition(II)V
    .locals 3

    const/4 v0, 0x0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 1
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    mul-float/2addr p1, v1

    int-to-float v2, v0

    add-float/2addr p1, v2

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    sub-int/2addr p2, v0

    int-to-float p1, p2

    mul-float/2addr p1, v1

    add-float/2addr p1, v2

    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    return-void
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public calcPosition(IIFFFF)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->calcCartesianPosition(FFFF)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->calcScreenPosition(II)V

    return-void

    .line 4
    :cond_1
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->calcPathPosition(FFFF)V

    return-void
.end method

.method public clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
    .locals 1

    .line 2
    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-result-object p0

    return-object p0
.end method

.method public copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 2
    check-cast p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    .line 3
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 4
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    .line 5
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    .line 6
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 8
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 9
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 10
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    .line 11
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    .line 12
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    .line 13
    iget p1, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    return-object p0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getId(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType;->getId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getPositionX()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    return p0
.end method

.method public getPositionY()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    return p0
.end method

.method public intersects(IILandroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF)Z
    .locals 7

    .line 1
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    move-result v3

    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    move-result v4

    invoke-virtual {p4}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    move-result v5

    invoke-virtual {p4}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->calcPosition(IIFFFF)V

    .line 2
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionX:F

    sub-float/2addr p5, p1

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41a00000    # 20.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCalculatedPositionY:F

    sub-float/2addr p6, p0

    .line 3
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public positionAttributes(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 2
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->positionCartAttributes(Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p7}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->positionScreenAttributes(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V

    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 4
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->positionPathAttributes(Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V

    return-void
.end method

.method public positionCartAttributes(Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    move-result p0

    .line 2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    move-result p1

    .line 3
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    move-result v0

    .line 4
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    move-result p2

    sub-float/2addr v0, p0

    sub-float/2addr p2, p1

    const/4 v1, 0x0

    .line 5
    aget-object v2, p5, v1

    const-string/jumbo v3, "percentX"

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 6
    aget-object p5, p5, v1

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    sub-float/2addr p3, p0

    div-float/2addr p3, v0

    .line 7
    aput p3, p6, v1

    sub-float/2addr p4, p1

    div-float/2addr p4, p2

    .line 8
    aput p4, p6, v4

    goto :goto_0

    :cond_0
    sub-float/2addr p3, p0

    div-float/2addr p3, v0

    .line 9
    aput p3, p6, v4

    sub-float/2addr p4, p1

    div-float/2addr p4, p2

    .line 10
    aput p4, p6, v1

    goto :goto_0

    .line 11
    :cond_1
    aput-object v3, p5, v1

    sub-float/2addr p3, p0

    div-float/2addr p3, v0

    .line 12
    aput p3, p6, v1

    const-string/jumbo p0, "percentY"

    .line 13
    aput-object p0, p5, v4

    sub-float/2addr p4, p1

    div-float/2addr p4, p2

    .line 14
    aput p4, p6, v4

    :goto_0
    return-void
.end method

.method public positionPathAttributes(Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    move-result p0

    .line 2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    move-result p1

    .line 3
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    move-result v0

    .line 4
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    move-result p2

    sub-float/2addr v0, p0

    sub-float/2addr p2, p1

    float-to-double v1, v0

    float-to-double v3, p2

    .line 5
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, v1

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_0

    .line 6
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "distance ~ 0"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 7
    aput p0, p6, v4

    .line 8
    aput p0, p6, v3

    return-void

    :cond_0
    div-float/2addr v0, v1

    div-float/2addr p2, v1

    sub-float/2addr p4, p1

    mul-float p1, v0, p4

    sub-float/2addr p3, p0

    mul-float p0, p3, p2

    sub-float/2addr p1, p0

    div-float/2addr p1, v1

    mul-float/2addr v0, p3

    mul-float/2addr p2, p4

    add-float/2addr v0, p2

    div-float/2addr v0, v1

    .line 9
    aget-object p0, p5, v4

    const-string/jumbo p2, "percentX"

    if-eqz p0, :cond_1

    .line 10
    aget-object p0, p5, v4

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 11
    aput v0, p6, v4

    .line 12
    aput p1, p6, v3

    goto :goto_0

    .line 13
    :cond_1
    aput-object p2, p5, v4

    const-string/jumbo p0, "percentY"

    .line 14
    aput-object p0, p5, v3

    .line 15
    aput v0, p6, v4

    .line 16
    aput p1, p6, v3

    :cond_2
    :goto_0
    return-void
.end method

.method public positionScreenAttributes(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    .line 2
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    .line 3
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerX()F

    .line 4
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;->centerY()F

    .line 5
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getParent()Landroidx/constraintlayout/core/motion/MotionWidget;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result p1

    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result p0

    const/4 p2, 0x0

    .line 8
    aget-object p3, p6, p2

    const-string/jumbo v0, "percentX"

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 9
    aget-object p3, p6, p2

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    int-to-float p1, p1

    div-float/2addr p4, p1

    .line 10
    aput p4, p7, p2

    int-to-float p0, p0

    div-float/2addr p5, p0

    .line 11
    aput p5, p7, v1

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    div-float/2addr p4, p1

    .line 12
    aput p4, p7, v1

    int-to-float p0, p0

    div-float/2addr p5, p0

    .line 13
    aput p5, p7, p2

    goto :goto_0

    .line 14
    :cond_1
    aput-object v0, p6, p2

    int-to-float p1, p1

    div-float/2addr p4, p1

    .line 15
    aput p4, p7, p2

    const-string/jumbo p1, "percentY"

    .line 16
    aput-object p1, p6, v1

    int-to-float p0, p0

    div-float/2addr p5, p0

    .line 17
    aput p5, p7, v1

    :goto_0
    return-void
.end method

.method public setValue(IF)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 5
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    move-result p0

    return p0

    .line 6
    :pswitch_0
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    goto :goto_0

    .line 7
    :pswitch_1
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    goto :goto_0

    .line 8
    :pswitch_2
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    goto :goto_0

    .line 9
    :pswitch_3
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    goto :goto_0

    .line 10
    :pswitch_4
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1f7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValue(II)Z
    .locals 1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1fc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1fe

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    move-result p0

    return p0

    .line 2
    :cond_0
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    goto :goto_0

    .line 3
    :cond_1
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCurveFit:I

    goto :goto_0

    .line 4
    :cond_2
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setValue(ILjava/lang/String;)Z
    .locals 1

    const/16 v0, 0x1f5

    if-eq p1, v0, :cond_0

    .line 11
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 12
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method
