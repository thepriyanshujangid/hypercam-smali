.class public Lmiuix/appcompat/internal/app/widget/SecondaryCollapseTabContainer;
.super Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.source "SecondaryCollapseTabContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryCollapseTabContainer;->getTabContainerHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setContentHeight(I)V

    return-void
.end method


# virtual methods
.method public getDefaultTabTextStyle()I
    .locals 0

    .line 1
    sget p0, Lmiuix/appcompat/R$attr;->actionBarTabTextSecondaryStyle:I

    return p0
.end method

.method public getTabBarLayoutRes()I
    .locals 0

    .line 1
    sget p0, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_tabbar_collapse_secondary:I

    return p0
.end method

.method public getTabContainerHeight()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public getTabViewLayoutRes()I
    .locals 0

    .line 1
    sget p0, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_tab_secondary:I

    return p0
.end method

.method public getTabViewMarginHorizontal()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_tab_secondary_margin:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public updateTabTextStyle(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    return-void
.end method
