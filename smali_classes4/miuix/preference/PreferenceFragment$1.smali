.class public Lmiuix/preference/PreferenceFragment$1;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/PreferenceFragment;->requestHighlight(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/preference/PreferenceFragment;

.field public final synthetic val$key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiuix/preference/PreferenceFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    iput-object p2, p0, Lmiuix/preference/PreferenceFragment$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$700(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$700(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v0

    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lmiuix/preference/PreferenceGroupAdapter;->requestHighlight(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
