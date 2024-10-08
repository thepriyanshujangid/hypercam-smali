.class public Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;
.super Ljava/lang/Object;
.source "SetupWizard.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/camera/dualvideo/remote/AvailabilityCallback;
.implements Lcom/android/camera/dualvideo/remote/ConnectivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/android/camera/ActivityBase;

.field private final mRemoteDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/dualvideo/remote/RemoteDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedRemoteDeviceId:I

.field private final mTimerThreadHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->createTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mTimerThreadHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mSelectedRemoteDeviceId:I

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mActivity:Lcom/android/camera/ActivityBase;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mRemoteDeviceList:Ljava/util/List;

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Activity must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private showDialog(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-class v2, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    check-cast v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->setAlertDialogTitle(I)V

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->setSetupWizard(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    const-class v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public getActivity()Lcom/android/camera/ActivityBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mActivity:Lcom/android/camera/ActivityBase;

    return-object p0
.end method

.method public getRemoteDeviceById(I)Lcom/android/camera/dualvideo/remote/RemoteDevice;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mRemoteDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mRemoteDeviceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/remote/RemoteDevice;

    if-eqz v0, :cond_0

    .line 3
    iget v1, v0, Lcom/android/camera/dualvideo/remote/RemoteDevice;->id:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRemoteDeviceList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/dualvideo/remote/RemoteDevice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mRemoteDeviceList:Ljava/util/List;

    return-object p0
.end method

.method public getSelectedRemoteDeviceId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mSelectedRemoteDeviceId:I

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->values()[Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->type:I

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v4, v5, :cond_0

    .line 3
    invoke-virtual {p0, v3}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->onTimeReached(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public onAvailabilityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 2
    .param p1    # Lcom/android/camera/dualvideo/remote/RemoteDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    const-class v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->onAvailabilityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    :cond_0
    return-void
.end method

.method public onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 2
    .param p1    # Lcom/android/camera/dualvideo/remote/RemoteDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    const-class v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mRemoteDeviceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onTimeReached(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V
    .locals 2
    .param p1    # Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timer"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    const-class v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->onTimeReached(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    :cond_0
    return-void
.end method

.method public setSelectedRemoteDeviceId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mSelectedRemoteDeviceId:I

    return-void
.end method

.method public showHomeDialog()V
    .locals 1

    const v0, 0x7f12096c

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->showDialog(I)V

    return-void
.end method

.method public showListView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-class v1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->setSelectedRemoteDeviceId(I)V

    .line 4
    check-cast v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->showListView()V

    :cond_0
    return-void
.end method

.method public showLostDialog()V
    .locals 1

    const v0, 0x7f120967

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->showDialog(I)V

    return-void
.end method

.method public showScanView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-class v1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mRemoteDeviceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 4
    check-cast v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->showScanView()V

    :cond_0
    return-void
.end method

.method public startTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V
    .locals 3
    .param p1    # Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timer"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mTimerThreadHandler:Landroid/os/Handler;

    iget v1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->type:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mTimerThreadHandler:Landroid/os/Handler;

    iget v0, p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->type:I

    iget-wide v1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->delayMillis:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V
    .locals 3
    .param p1    # Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timer"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->mTimerThreadHandler:Landroid/os/Handler;

    iget p1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->type:I

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
