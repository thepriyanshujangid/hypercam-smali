.class public Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit$4;
.super Ljava/lang/Object;
.source "FragmentMimojiAsEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;

.field public final synthetic val$backType:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$backType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit$4;->this$0:Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;

    iput p2, p0, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit$4;->val$backType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit$4;->val$backType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 2
    iget-object v3, p0, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit$4;->this$0:Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {v3}, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$1300(Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    iget-object v3, p0, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit$4;->this$0:Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {v3}, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$500(Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;)Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit$4;->this$0:Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {v4}, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$600(Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit$4;->this$0:Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {v4}, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$1400(Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/xiaomi/mimoji/mimojias/widget/helper/AvatarEngineManager;->TempOriginalConfigPath:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    .line 4
    :cond_2
    iget-object v3, p0, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit$4;->this$0:Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;->goBack(ZZ)V

    .line 5
    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit$4;->val$backType:I

    const-string v0, "preview_mid"

    if-eq p0, v2, :cond_6

    const/4 v1, 0x3

    if-eq p0, v1, :cond_5

    const/4 v1, 0x4

    if-eq p0, v1, :cond_4

    const/4 v1, 0x5

    if-eq p0, v1, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    sget-object p0, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string v1, "showAlertDialog onClick edit_cancel"

    invoke-static {p0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "edit_cancel"

    .line 7
    invoke-static {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_4
    sget-object p0, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string v0, "showAlertDialog onClick edit_soft_back"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "edit_soft_back"

    const-string v0, "edit"

    .line 9
    invoke-static {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_5
    sget-object p0, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string v1, "showAlertDialog onClick preview_mid_soft_back"

    invoke-static {p0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "preview_mid_soft_back"

    .line 11
    invoke-static {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_6
    sget-object p0, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    const-string v1, "showAlertDialog onClick mimoji_click_preview_mid_back"

    invoke-static {p0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mimoji_click_preview_mid_back"

    .line 13
    invoke-static {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
