.class public Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;
.super Ljava/lang/Object;
.source "DisplayPreviewRectV2.java"

# interfaces
.implements Lcom/android/camera/display/IDisplayRect;


# instance fields
.field private mLandscapeAdapter:Lcom/android/camera/display/wide/v2/DisplayLandscapeAdapterV2;

.field private mPortraitAdapter:Lcom/android/camera/display/wide/v2/DisplayPortraitAdapterV2;


# direct methods
.method public constructor <init>(Lcom/android/camera/display/DisplayParameter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/display/wide/v2/DisplayPortraitAdapterV2;

    invoke-direct {v0, p1}, Lcom/android/camera/display/wide/v2/DisplayPortraitAdapterV2;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    iput-object v0, p0, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->mPortraitAdapter:Lcom/android/camera/display/wide/v2/DisplayPortraitAdapterV2;

    .line 3
    new-instance v0, Lcom/android/camera/display/wide/v2/DisplayLandscapeAdapterV2;

    invoke-direct {v0, p1}, Lcom/android/camera/display/wide/v2/DisplayLandscapeAdapterV2;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    iput-object v0, p0, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->mLandscapeAdapter:Lcom/android/camera/display/wide/v2/DisplayLandscapeAdapterV2;

    return-void
.end method

.method private getAdapter()Lcom/android/camera/display/IDisplayRect;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->mLandscapeAdapter:Lcom/android/camera/display/wide/v2/DisplayLandscapeAdapterV2;

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->mPortraitAdapter:Lcom/android/camera/display/wide/v2/DisplayPortraitAdapterV2;

    return-object p0
.end method


# virtual methods
.method public checkScreenSize(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/camera/display/IDisplayRect;->checkScreenSize(II)Z

    move-result p0

    return p0
.end method

.method public getBackgroundLeftMargin()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getBackgroundLeftMargin()I

    move-result p0

    return p0
.end method

.method public getBottomBarHeight()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getBottomBarHeight()I

    move-result p0

    return p0
.end method

.method public getBottomHeight()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getBottomHeight()I

    move-result p0

    return p0
.end method

.method public getBottomMargin()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getBottomMargin()I

    move-result p0

    return p0
.end method

.method public getCenterDisplayHeight()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getCenterDisplayHeight()I

    move-result p0

    return p0
.end method

.method public getCenterDisplayWidth()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getCenterDisplayWidth()I

    move-result p0

    return p0
.end method

.method public getDisplayRatio()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "unknown"

    return-object p0
.end method

.method public getDisplayRect(I)Landroid/graphics/Rect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uiStyle"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/camera/display/IDisplayRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getDragDistanceFix()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getDragDistanceFix()I

    move-result p0

    return p0
.end method

.method public getDragLayoutTopMargin()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getDragLayoutTopMargin()I

    move-result p0

    return p0
.end method

.method public getMarginEnd()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getMarginEnd()I

    move-result p0

    return p0
.end method

.method public getMarginStart()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getMarginStart()I

    move-result p0

    return p0
.end method

.method public getMaxViewFinderRect()Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getMaxViewFinderRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMoreModePrefVideo(Z)[I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nightMode"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/camera/display/IDisplayRect;->getMoreModePrefVideo(Z)[I

    move-result-object p0

    return-object p0
.end method

.method public getMoreModeRect()Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getMoreModeRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMoreModeTabCol(ZZ)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isNormalMoreMode",
            "isNewStyle"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/camera/display/IDisplayRect;->getMoreModeTabCol(ZZ)I

    move-result p0

    return p0
.end method

.method public getMoreModeTabMarginVer(Landroid/content/Context;IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "uiStyle",
            "isNewStyle"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/display/IDisplayRect;->getMoreModeTabMarginVer(Landroid/content/Context;IZ)I

    move-result p0

    return p0
.end method

.method public getMoreModeTabRow(IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uiStyle",
            "isNewStyle"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/camera/display/IDisplayRect;->getMoreModeTabRow(IZ)I

    move-result p0

    return p0
.end method

.method public getPopuMenuBottomMargin()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getBottomHeight()I

    move-result p0

    return p0
.end method

.method public getSquareBottomCoverHeight()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getSquareBottomCoverHeight()I

    move-result p0

    return p0
.end method

.method public getTipsMarginTop(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/camera/display/IDisplayRect;->getTipsMarginTop(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getTopBarHeight()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getTopBarHeight()I

    move-result p0

    return p0
.end method

.method public getTopBarWidth(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/camera/display/IDisplayRect;->getTopBarWidth(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getTopCoverHeight()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getTopCoverHeight()I

    move-result p0

    return p0
.end method

.method public getTopMargin()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->getTopMargin()I

    move-result p0

    return p0
.end method

.method public needAlphaAnimation4PopMore()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/display/wide/v2/DisplayPreviewRectV2;->getAdapter()Lcom/android/camera/display/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/display/IDisplayRect;->needAlphaAnimation4PopMore()Z

    move-result p0

    return p0
.end method
