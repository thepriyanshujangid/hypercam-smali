.class public Lcom/android/camera/fragment/subtitle/FragmentSubtitle;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentSubtitle.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/SubtitleRecording;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;
    }
.end annotation


# static fields
.field private static final SUBTITLE_CHECK_NETWORK:I = 0x66

.field private static final SUBTITLE_CINEMATICASPECTRATIO_OFFSET:I

.field private static final SUBTITLE_HINT_DELAY_TIME:I = 0x1388

.field private static final SUBTITLE_LANDSCAPE_OFFSET:I

.field private static final SUBTITLE_LETTER_SPACE:F = 0.05f

.field private static final SUBTITLE_NO_SPEAK_TIP:I = 0x65

.field private static final SUBTITLE_RECHECK_NETWORK_DELAY_TIME:I = 0x1f4

.field private static final SUBTITLE_RESULT_DELAY_TIME:I = 0x7d0

.field private static final SUBTITLE_SHOW_TIME_END:I = 0x64

.field private static final SUBTITLE_VERTICAL_OFFSET:I

.field private static final SUBTITLE_VERTICAL_OFFSET_NORMAL:I

.field private static final SUBTITLE_VIEW_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "FragmentSubtitle"


# instance fields
.field private isNetWorkAvailable:Z

.field private isRecording:Z

.field private mHideVerticalSwView:Z

.field private mLeftShow:Landroid/widget/TextView;

.field private mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

.field private mRightShow:Landroid/widget/TextView;

.field private mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

.field private mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

.field private mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

.field private mTopAlert:Lcom/android/camera/protocol/protocols/TopAlert;

.field private mVerticalShow:Landroid/widget/TextView;

.field private mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

.field private subtitleHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private subtitleView:Landroid/view/View;

.field private top:I

.field private verticalViewHeight:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x41a8a3d7    # 21.08f

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VERTICAL_OFFSET:I

    const v0, 0x41dae148    # 27.36f

    .line 2
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VERTICAL_OFFSET_NORMAL:I

    const v0, 0x40cb851f    # 6.36f

    .line 3
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VIEW_WIDTH:I

    const v0, 0x41d1999a    # 26.2f

    .line 4
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_CINEMATICASPECTRATIO_OFFSET:I

    const v0, 0x42acb333    # 86.35f

    .line 5
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_LANDSCAPE_OFFSET:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$1;-><init>(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)V

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->setSubtitleShow(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mLeftShow:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRightShow:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVerticalShow:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->setLetterSpace(F)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isNetWorkAvailable:Z

    return p0
.end method

.method private synthetic lambda$checkNetWorkStatus$0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1204e9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x50

    invoke-static {v0, p0, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private setAnyViewGone()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRightShow:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mLeftShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVerticalShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->resetAnimation()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->resetAnimation()V

    .line 9
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->resetAnimation()V

    return-void
.end method

.method private setLetterSpace(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "space"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mLeftShow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRightShow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVerticalShow:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    return-void
.end method

.method private setSubtitleShow(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mLeftShow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRightShow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVerticalShow:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateLightingRelativeView()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->setAnyViewGone()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v5

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    sub-int/2addr v5, v3

    sub-int/2addr v5, v4

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandScape()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    iget-object v3, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mLeftShow:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v3, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v1}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->startAnimation()V

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, v5

    sub-int/2addr v0, v4

    .line 15
    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    sget p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VIEW_WIDTH:I

    sub-int/2addr v0, p0

    sget p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_LANDSCAPE_OFFSET:I

    sub-int/2addr v0, p0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 16
    sget p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_CINEMATICASPECTRATIO_OFFSET:I

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isRightLandScape()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    iget-object v3, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 19
    iget-object v6, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v0, v5

    sub-int/2addr v0, v4

    .line 20
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    sget v4, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VIEW_WIDTH:I

    sub-int/2addr v0, v4

    sget v4, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_LANDSCAPE_OFFSET:I

    sub-int/2addr v0, v4

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 21
    sget v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_CINEMATICASPECTRATIO_OFFSET:I

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRightShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->startAnimation()V

    goto :goto_1

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->setAnyViewGone()V

    .line 26
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 27
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0o0()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00Oo000()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 28
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    sget v3, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VERTICAL_OFFSET:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 29
    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    sget v3, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VERTICAL_OFFSET_NORMAL:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVerticalShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    iget-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mHideVerticalSwView:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->updateVerticalSwView(Z)V

    .line 32
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->startAnimation()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic OooO0OO()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->lambda$checkNetWorkStatus$0()V

    return-void
.end method

.method public checkNetWorkStatus()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 4
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const-string v2, "FragmentSubtitle"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isNetWorkAvailable:Z

    new-array p0, v3, [Ljava/lang/Object;

    const-string v0, "checkNetWorkStatus: netWork is available "

    .line 7
    invoke-static {v2, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isNetWorkAvailable:Z

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "checkNetWorkStatus: netWork is unavailable"

    .line 9
    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO0O/OooOO0O;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO0O/OooOO0O;-><init>(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfffe

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d00e4

    return p0
.end method

.method public getSubtitleContentAsync(Lcom/android/camera/protocol/protocols/SubtitleRecording$Listener;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "timeout"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getSubtitleContentAsync(Lcom/android/camera/protocol/protocols/SubtitleRecording$Listener;J)V

    return-void
.end method

.method public getSubtitleContentSync()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getSubtitleContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleSubtitleRecordingPause()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FragmentSubtitle"

    const-string v3, "handleSubtitleRecordingPause: "

    .line 1
    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isRecording:Z

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->setAnyViewGone()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mTopAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateTopAlertLayout()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->onRecognitionListener(Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->pauseRecording()V

    return-void
.end method

.method public handleSubtitleRecordingResume()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FragmentSubtitle"

    const-string v3, "handleSubtitleRecordingResume: "

    .line 1
    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isRecording:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mTopAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateTopAlertLayout()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->updateLightingRelativeView()V

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->resumeRecording()V

    return-void
.end method

.method public handleSubtitleRecordingStart()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->checkNetWorkStatus()V

    .line 2
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackSubtitleRecordingStart()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FragmentSubtitle"

    const-string v3, "handleSubtitleRecordingStart: "

    .line 3
    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mTopAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mTopAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    invoke-interface {v1, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->setAlertAnim(Z)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mTopAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    const/16 v2, 0x8

    const v3, 0x7f120933

    invoke-interface {v1, v2, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSubtitleHint(II)V

    :cond_1
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isRecording:Z

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->updateLightingRelativeView()V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mTopAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->updateTopAlertLayout()V

    .line 13
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isNetWorkAvailable:Z

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    const/16 v1, 0x65

    const-wide/16 v2, 0x7d0

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 16
    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->startRecording()V

    goto :goto_0

    .line 17
    :cond_4
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackWithoutNetwork()V

    :goto_0
    return-void
.end method

.method public handleSubtitleRecordingStop()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FragmentSubtitle"

    const-string v3, "handleSubtitleRecordingStop: "

    .line 1
    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mTopAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    if-eqz v1, :cond_0

    const v2, 0x7f120933

    .line 3
    invoke-interface {v1, v0, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSubtitleHint(II)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mTopAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateTopAlertLayout()V

    .line 5
    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isRecording:Z

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->onRecognitionListener(Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->stopRecording()V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->setAnyViewGone()V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const v0, 0x7f0a04e0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->top:I

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->verticalViewHeight:I

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 7
    iget v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->verticalViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x7f0a05c3

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mLeftShow:Landroid/widget/TextView;

    const v0, 0x7f0a05c4

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRightShow:Landroid/widget/TextView;

    const v0, 0x7f0a05c5

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVerticalShow:Landroid/widget/TextView;

    const v0, 0x7f0a04bc

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/subtitle/SoundWaveView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    const v0, 0x7f0a04bd

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/subtitle/SoundWaveView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    const v0, 0x7f0a04be

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/subtitle/SoundWaveView;

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    .line 15
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mTopAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    .line 16
    new-instance p1, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;-><init>(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)V

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    .line 17
    new-instance p1, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    .line 18
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->setRecognitionListener(Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FragmentSubtitle"

    const-string/jumbo v2, "onDestroy"

    .line 1
    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleHandler:Landroid/os/Handler;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    if-eqz v0, :cond_1

    .line 7
    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->setRecognitionListener(Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->onDestroy()V

    .line 10
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mTopAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    .line 11
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->setAlertAnim(Z)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    return-void
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastFragmentInfo"
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public provideExitAnimation()Landroid/view/animation/Animation;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pendingRotateItems",
            "newDegree"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSubtitle()Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    move-result-object p1

    .line 3
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->isSwitchOn(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isRecording:Z

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->updateLightingRelativeView()V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeCoordinator"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/SubtitleRecording;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeCoordinator"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/SubtitleRecording;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public updateVerticalSwView(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isHide"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mHideVerticalSwView:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isRecording:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
