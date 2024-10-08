.class public Lmiuix/core/util/screenutils/FreeFormModeHelper;
.super Ljava/lang/Object;
.source "FreeFormModeHelper.java"


# static fields
.field public static final EXCLUDE_FREE_FORM:I = 0x2000

.field public static final FREE_FORM_ASPECT_RATIO_16_9:I = 0x2001

.field public static final FREE_FORM_ASPECT_RATIO_3_4:I = 0x2002

.field public static final FREE_FORM_ASPECT_RATIO_4_3:I = 0x2003

.field public static final FREE_FORM_ASPECT_RATIO_OTHER:I = 0x2004

.field public static final SUB_MODE_16_9:I = 0x1

.field public static final SUB_MODE_3_4:I = 0x2

.field public static final SUB_MODE_4_3:I = 0x3

.field public static final SUB_MODE_NONE:I = 0x0

.field public static final SUB_MODE_OTHER:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquireFreeFormWindowRatioInternal(Landroid/content/Context;)Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;

    invoke-direct {p0}, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;-><init>()V

    const/16 v0, 0x2000

    .line 3
    iput v0, p0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;->windowMode:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "window"

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/high16 v3, 0x3f800000    # 1.0f

    if-lt v1, v2, :cond_2

    .line 6
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float v0, p0

    mul-float/2addr v0, v3

    int-to-float v2, v1

    div-float/2addr v0, v2

    goto :goto_0

    :cond_1
    move p0, v1

    goto :goto_0

    .line 10
    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 11
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 12
    iget p0, v1, Landroid/graphics/Point;->x:I

    .line 13
    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eqz p0, :cond_3

    int-to-float v0, v1

    mul-float/2addr v0, v3

    int-to-float v2, p0

    div-float/2addr v0, v2

    :cond_3
    move v4, v1

    move v1, p0

    move p0, v4

    .line 14
    :goto_0
    invoke-static {v0, v1, p0}, Lmiuix/core/util/screenutils/FreeFormModeHelper;->freeFormModeRatioToCodeInternal(FII)Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;

    move-result-object p0

    return-object p0
.end method

.method public static detectFreeFormMode(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lmiuix/core/util/screenutils/FreeFormModeHelper;->detectWindowInfo(Landroid/content/Context;)Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;

    move-result-object p0

    iget p0, p0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;->windowMode:I

    return p0
.end method

.method public static detectWindowInfo(Landroid/content/Context;)Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lmiuix/core/util/screenutils/FreeFormModeHelper;->acquireFreeFormWindowRatioInternal(Landroid/content/Context;)Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;

    move-result-object p0

    return-object p0
.end method

.method private static freeFormModeRatioToCodeInternal(FII)Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;

    invoke-direct {v0}, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;-><init>()V

    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_0

    const/16 p0, 0x2000

    .line 2
    iput p0, v0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;->windowMode:I

    goto :goto_0

    :cond_0
    const v1, 0x3f3d70a4    # 0.74f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_1

    const v1, 0x3f428f5c    # 0.76f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_1

    const/16 p0, 0x2003

    .line 3
    iput p0, v0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;->windowMode:I

    goto :goto_0

    :cond_1
    const v1, 0x3fa8f5c3    # 1.32f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_2

    const v1, 0x3fab851f    # 1.34f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_2

    const/16 p0, 0x2002

    .line 4
    iput p0, v0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;->windowMode:I

    goto :goto_0

    :cond_2
    const v1, 0x3fe147ae    # 1.76f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_3

    const v1, 0x3fe51eb8    # 1.79f

    cmpg-float p0, p0, v1

    if-gez p0, :cond_3

    const/16 p0, 0x2001

    .line 5
    iput p0, v0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;->windowMode:I

    goto :goto_0

    :cond_3
    const/16 p0, 0x2004

    .line 6
    iput p0, v0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;->windowMode:I

    .line 7
    :goto_0
    iput p1, v0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;->windowWidth:I

    .line 8
    iput p2, v0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;->windowHeight:I

    return-object v0
.end method
