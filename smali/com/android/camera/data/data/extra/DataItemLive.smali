.class public Lcom/android/camera/data/data/extra/DataItemLive;
.super Lcom/android/camera/data/data/DataItemBase;
.source "DataItemLive.java"


# static fields
.field public static final DATA_FILM_VERSION:Ljava/lang/String; = "film_version"

.field public static final DATA_LIVE_ACTIVATION:Ljava/lang/String; = "live_activation"

.field public static final DATA_LIVE_DURATION:Ljava/lang/String; = "pref_mi_live_duration"

.field public static final DATA_LIVE_REFERENCE_LINE:Ljava/lang/String; = "pref_camera_referenceline_type_key"

.field public static final DATA_MIMOJI_CARTOON_VERSION:Ljava/lang/String; = "mimoji_cartoon_version"

.field public static final DATA_MIMOJI_HUMAN_VERSION:Ljava/lang/String; = "mimoji_human_version"

.field public static final DATA_MULTI_CAMERA:Ljava/lang/String; = "multi_camera"

.field public static final DATA_VP_VERSION:Ljava/lang/String; = "vp_version"

.field public static final DATA_VV_CHECK_TIME:Ljava/lang/String; = "vv_update_time"

.field public static final DATA_VV_VERSION:Ljava/lang/String; = "vv_version"

.field private static final KEY:Ljava/lang/String; = "camera_settings_live"

.field public static final MATERIAL_DOWNLOAD_STATE:Ljava/lang/String; = "material_download_state"

.field public static final MATERIAL_VERSION:Ljava/lang/String; = "material_version"


# instance fields
.field private mAmbilightModeIndex:I

.field private mComponentLiveDuration:Lcom/android/camera/data/data/config/ComponentLiveDuration;

.field private mComponentLiveReferenceLine:Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;

.field private mComponentLiveVideoQuality:Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

.field private mCurrentActivityHashCode:I

.field private mFilmItem:Lcom/android/camera/fragment/film/FilmItem;

.field private mIMiModeState:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShowMiLiveMenu:Z

.field private mKaleidoscope:Ljava/lang/String;

.field private mMiLiveFilterId:Ljava/lang/String;

.field private mMiLiveRecordDoneProcessing:Z

.field private mMiLiveSegmentDataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOldVlogProDestroying:Z

.field private mSoundMute:Z

.field private mTimeFreezeFilmRatioEnabled:Z

.field private mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

.field private mVPItem:Lcom/android/camera/fragment/vlogpro/VPItem;

.field private mVVItem:Lcom/android/camera/fragment/vv/VVItem;

.field private mVideoSky:Ljava/lang/String;

.field private mVideoSkySegmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mCurrentActivityHashCode:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mSoundMute:Z

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mOldVlogProDestroying:Z

    .line 5
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveSegmentDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    sget v3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveFilterId:Ljava/lang/String;

    const-string v3, "0"

    .line 7
    iput-object v3, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mKaleidoscope:Ljava/lang/String;

    .line 8
    iput v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mAmbilightModeIndex:I

    .line 9
    iput-boolean v2, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimeFreezeFilmRatioEnabled:Z

    .line 10
    iput-object v3, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVideoSky:Ljava/lang/String;

    .line 11
    iput-boolean v1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mIsShowMiLiveMenu:Z

    .line 12
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mIMiModeState:Ljava/util/Stack;

    .line 13
    iput-boolean v2, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveRecordDoneProcessing:Z

    .line 14
    new-instance v0, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;-><init>(Lcom/android/camera/data/data/extra/DataItemLive;)V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveVideoQuality:Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    .line 15
    new-instance v0, Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;-><init>(Lcom/android/camera/data/data/extra/DataItemLive;)V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveReferenceLine:Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;

    .line 16
    new-instance v0, Lcom/android/camera/data/data/config/ComponentLiveDuration;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;-><init>(Lcom/android/camera/data/data/extra/DataItemLive;)V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveDuration:Lcom/android/camera/data/data/config/ComponentLiveDuration;

    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    .line 2
    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVPItem:Lcom/android/camera/fragment/vlogpro/VPItem;

    .line 3
    iget-object v1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveSegmentDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveSegmentDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVideoSkySegmentData:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVideoSkySegmentData:Ljava/util/List;

    .line 8
    :cond_1
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveFilterId:Ljava/lang/String;

    const-string v0, "0"

    .line 9
    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mKaleidoscope:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimeFreezeFilmRatioEnabled:Z

    .line 11
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/timerburst/TimerBurstController;->setInTimerBurstShotting(ZZ)V

    :cond_2
    return-void
.end method

.method public fillVideoSkySegmentData(Ljava/util/Stack;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoSky"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stackData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVideoSkySegmentData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getActivation()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string v0, "live_activation"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAmbilightMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mAmbilightModeIndex:I

    return p0
.end method

.method public getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMiLiveModule"
        type = 0x0
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveDuration:Lcom/android/camera/data/data/config/ComponentLiveDuration;

    return-object p0
.end method

.method public getComponentLiveVideoQuality()Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMiLiveModule"
        type = 0x0
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveVideoQuality:Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    return-object p0
.end method

.method public getCurrentFilmItem()Lcom/android/camera/fragment/film/FilmItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mFilmItem:Lcom/android/camera/fragment/film/FilmItem;

    return-object p0
.end method

.method public getCurrentVPItem()Lcom/android/camera/fragment/vlogpro/VPItem;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFeatureVlogProMode"
        type = 0x0
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVPItem:Lcom/android/camera/fragment/vlogpro/VPItem;

    return-object p0
.end method

.method public getCurrentVVItem()Lcom/android/camera/fragment/vv/VVItem;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFeatureLiveVVMode"
        type = 0x0
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    return-object p0
.end method

.method public getIsMultiCamera()Z
    .locals 2

    const-string/jumbo v0, "multi_camera"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getKaleidoscope()Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "needShowKaleidoscope"
        type = 0x0
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mKaleidoscope:Ljava/lang/String;

    return-object p0
.end method

.method public getLiveFilter()I
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMiLiveModule"
        type = 0x0
    .end annotation

    const-string v0, "key_live_filter"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMaterialDownloadState()Z
    .locals 2

    const-string/jumbo v0, "material_download_state"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getMaterialVersion()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "material_version"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMiLiveFilterId()Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMiLiveModule"
        type = 0x0
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveFilterId:Ljava/lang/String;

    return-object p0
.end method

.method public getMiLiveRecordDoneProcessing()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMiLiveModule"
        type = 0x0
    .end annotation

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveRecordDoneProcessing:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getMiLiveSegmentData(I)Ljava/util/List;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMiLiveModule"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveSegmentDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getOldVlogProDestroying()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFeatureVlogProMode"
        type = 0x0
    .end annotation

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mOldVlogProDestroying:Z

    return p0
.end method

.method public getSoundMute()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFeatureVlogProMode"
        type = 0x0
    .end annotation

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mSoundMute:Z

    return p0
.end method

.method public getTimeFreezeFilmRatioEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimeFreezeFilmRatioEnabled:Z

    return p0
.end method

.method public getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/timerburst/TimerBurstController;

    invoke-direct {v0}, Lcom/android/camera/timerburst/TimerBurstController;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

    return-object p0
.end method

.method public getVPVersion()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string/jumbo v0, "vp_version"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVVVersion()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string/jumbo v0, "vv_version"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoSky()Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoSky"
        type = 0x0
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVideoSky:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoSkySegmentData()Ljava/util/List;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoSky"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVideoSkySegmentData:Ljava/util/List;

    return-object p0
.end method

.method public getisMiLiveRecording()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMiLiveModule"
        type = 0x0
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveSegmentDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getmComponentLiveReferenceLine()Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveReferenceLine:Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;

    return-object p0
.end method

.method public isTransient()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public provideKey()Ljava/lang/String;
    .locals 0

    const-string p0, "camera_settings_live"

    return-object p0
.end method

.method public reInitComponent(IILcom/android/camera2/CameraCapabilities;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentMode",
            "cameraId",
            "p",
            "intentType"
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveVideoQuality:Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    .line 2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->reInit(II)Ljava/util/List;

    .line 3
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveDuration:Lcom/android/camera/data/data/config/ComponentLiveDuration;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->reInit(I)Ljava/util/List;

    return-void
.end method

.method public resetAll()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->clearAll()V

    return-void
.end method

.method public setActivation(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activation"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "live_activation"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setAmbilightMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ambilightModeIndex"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mAmbilightModeIndex:I

    return-void
.end method

.method public setCurrentFilmItem(Lcom/android/camera/fragment/film/FilmItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filmItem"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mFilmItem:Lcom/android/camera/fragment/film/FilmItem;

    return-void
.end method

.method public setCurrentVPItem(Lcom/android/camera/fragment/vlogpro/VPItem;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFeatureVlogProMode"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vpItem"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVPItem:Lcom/android/camera/fragment/vlogpro/VPItem;

    return-void
.end method

.method public setCurrentVVItem(Lcom/android/camera/fragment/vv/VVItem;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFeatureLiveVVMode"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vvItem"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    return-void
.end method

.method public setIsMultiCamera(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMultiCamera"
        }
    .end annotation

    const-string/jumbo v0, "multi_camera"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setKaleidoscope(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "needShowKaleidoscope"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kaleidoscope"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mKaleidoscope:Ljava/lang/String;

    return-void
.end method

.method public setLiveFilter(I)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "liveFilterId"
        }
    .end annotation

    const-string v0, "key_live_filter"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setMaterialDownloadState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDownload"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string/jumbo v0, "material_download_state"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setMaterialVersion(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string/jumbo v0, "material_version"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setMiLiveFilterId(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMiLiveModule"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveFilterId:Ljava/lang/String;

    return-void
.end method

.method public setMiLiveRecordDoneProcessing(Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMiLiveModule"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordDoneProcessing"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveRecordDoneProcessing:Z

    return-void
.end method

.method public setMiLiveSegmentData(ILjava/util/List;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMiLiveModule"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hashCode",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveSegmentDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveSegmentDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setMimojiVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listTag",
            "newVersion"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setOldVlogProDestroying(Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFeatureVlogProMode"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldVlogProDestroying"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mOldVlogProDestroying:Z

    return-void
.end method

.method public setSoundMute(Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFeatureVlogProMode"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soundMute"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mSoundMute:Z

    return-void
.end method

.method public setTimeFreezeFilmRatioEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimeFreezeFilmRatioEnabled:Z

    return-void
.end method

.method public setTimerBurstController(Lcom/android/camera/timerburst/TimerBurstController;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timerBurstController"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

    return-void
.end method

.method public setVPVersion(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newVersion"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string/jumbo v0, "vp_version"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setVVVersion(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newVersion"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string/jumbo v0, "vv_version"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setVideoSky(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoSky"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoSky"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVideoSky:Ljava/lang/String;

    return-void
.end method

.method public setVideoSkySegmentData(Ljava/util/List;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoSky"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVideoSkySegmentData:Ljava/util/List;

    return-void
.end method
