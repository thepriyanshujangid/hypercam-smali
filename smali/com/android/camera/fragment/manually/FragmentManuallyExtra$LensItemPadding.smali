.class public Lcom/android/camera/fragment/manually/FragmentManuallyExtra$LensItemPadding;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FragmentManuallyExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/manually/FragmentManuallyExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LensItemPadding"
.end annotation


# instance fields
.field private mIsRLT:Z

.field public mPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "padding"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput p2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$LensItemPadding;->mPadding:I

    .line 3
    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$LensItemPadding;->mIsRLT:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outRect",
            "view",
            "parent",
            "state"
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-eq p2, p3, :cond_1

    .line 3
    iget-boolean p2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$LensItemPadding;->mIsRLT:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 4
    iget p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$LensItemPadding;->mPadding:I

    invoke-virtual {p1, p0, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 5
    :cond_0
    iget p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$LensItemPadding;->mPadding:I

    invoke-virtual {p1, p3, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    :goto_0
    return-void
.end method
