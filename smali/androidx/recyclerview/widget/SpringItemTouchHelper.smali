.class public Landroidx/recyclerview/widget/SpringItemTouchHelper;
.super Landroidx/recyclerview/widget/ItemTouchHelper;
.source "SpringItemTouchHelper.java"


# instance fields
.field public mSpringEnabled:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    return-void
.end method


# virtual methods
.method public select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lmiuix/animation/Folme;->setDraggingState(Landroid/view/View;Z)V

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    instance-of v2, v1, Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_2

    .line 3
    check-cast v1, Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->getSpringEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/recyclerview/widget/SpringItemTouchHelper;->mSpringEnabled:Z

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v1, Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v0}, Lmiuix/animation/Folme;->setDraggingState(Landroid/view/View;Z)V

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    instance-of v1, v0, Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    .line 8
    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/SpringItemTouchHelper;->mSpringEnabled:Z

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    .line 9
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method
