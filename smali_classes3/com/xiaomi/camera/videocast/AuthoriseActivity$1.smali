.class public Lcom/xiaomi/camera/videocast/AuthoriseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AuthoriseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/videocast/AuthoriseActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/videocast/AuthoriseActivity;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/videocast/AuthoriseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity$1;->this$0:Lcom/xiaomi/camera/videocast/AuthoriseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "com.xiaomi.camera.videocast.action.DISMISS_ACTIVITIES"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity$1;->this$0:Lcom/xiaomi/camera/videocast/AuthoriseActivity;

    invoke-static {p1}, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->access$000(Lcom/xiaomi/camera/videocast/AuthoriseActivity;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity$1;->this$0:Lcom/xiaomi/camera/videocast/AuthoriseActivity;

    invoke-static {p1}, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->access$000(Lcom/xiaomi/camera/videocast/AuthoriseActivity;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity$1;->this$0:Lcom/xiaomi/camera/videocast/AuthoriseActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p0, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity$1;->this$0:Lcom/xiaomi/camera/videocast/AuthoriseActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_2
    return-void
.end method
