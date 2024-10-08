.class public Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;
.super Ljava/lang/Object;
.source "MimojiFuManager.java"

# interfaces
.implements Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController$LoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager$OnCompleteListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MimojiFuManager"

.field public static final fps:I = 0x19

.field private static volatile instance:Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;


# instance fields
.field public avatar_dir:Ljava/lang/String;

.field public bgColor:[D

.field private contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public fuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

.field public fuAvatarInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

.field private fuAvatarTempInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

.field public fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

.field public fuSceneInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;

.field public index:I

.field private listener:Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager$OnCompleteListener;

.field public mFuScene:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

.field public final mLock:Ljava/lang/Object;

.field private final mMimojiProcessing:Lcom/xiaomi/mimoji/common/MimojiProcessing;

.field public refreshRow:I

.field private tempFuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->index:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->refreshRow:I

    const/4 v1, 0x4

    new-array v1, v1, [D

    .line 4
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->bgColor:[D

    .line 5
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    .line 6
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 7
    invoke-static {p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->create(Landroid/content/Context;)Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    .line 8
    invoke-virtual {p1, p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->setLoadCompleteListener(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController$LoadCompleteListener;)V

    .line 9
    iget-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->setItemTrigger()V

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v1, Lcom/xiaomi/mimoji/common/MimojiProcessing;

    invoke-virtual {p1, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mimoji/common/MimojiProcessing;

    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mMimojiProcessing:Lcom/xiaomi/mimoji/common/MimojiProcessing;

    .line 11
    iput v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->refreshRow:I

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x406fe00000000000L    # 255.0
    .end array-data
.end method

.method public static getInstance()Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->instance:Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->instance:Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->instance:Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->instance:Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;

    return-object v0
.end method

.method public static getJustInstance()Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->instance:Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;

    return-object v0
.end method


# virtual methods
.method public CreateEmotionItem(Ljava/util/List;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuItem;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fuItems",
            "cameraItem",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuItem;",
            ">;>;",
            "Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuItem;",
            "Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->CreateEmotionItem(Ljava/util/List;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuItem;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;)V

    .line 2
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->startTask()Z

    move-result p0

    return p0
.end method

.method public Render([BIIII)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nv21",
            "texId",
            "texWidth",
            "texHeight",
            "inputImageFormat"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->render([BIIII)I

    move-result p0

    return p0
.end method

.method public clearAvatar()V
    .locals 2

    const-string v0, "MimojiFuManager"

    const-string v1, "clearAvatar  x2"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->clearAll()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;

    .line 5
    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    .line 6
    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;->clear()V

    .line 8
    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    if-eqz v1, :cond_2

    .line 10
    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 12
    :try_start_0
    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

    .line 13
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearOfflineAll()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->clearOfflineAll()V

    return-void
.end method

.method public copyFuAvatar()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;->copy()Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    return v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tempFuAvatar == null , fuAvatar == null  :  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MimojiFuManager"

    invoke-static {v0, p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public createIconItem(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemType",
            "itemList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;",
            "Ljava/util/List<",
            "Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuItem;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->createIconItem(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public destroyEmotionItem()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->destroyEmotionItem()V

    return-void
.end method

.method public enterARTemp()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;->copy()Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->createAvatarInstance()Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarTempInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setAvatar(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarTempInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->addAvatarInstance(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V

    .line 5
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->startTask()Z

    return-void
.end method

.method public enterTheFrontDesk()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->enterTheFrontDesk()V

    return-void
.end method

.method public exitBackstage()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->exitBackstage()V

    return-void
.end method

.method public getDeviceOrientation()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->getDeviceOrientation()I

    move-result p0

    return p0
.end method

.method public getEmotionIcon(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemType",
            "colorType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;",
            "Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->getEmotionIcon(ILcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFaceNum()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->isTracking()I

    move-result p0

    return p0
.end method

.method public getFaceOcclusion()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->getFaceOcclusion()I

    move-result p0

    return p0
.end method

.method public getFuAvatar()Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    return-object p0
.end method

.method public getFuControllerRenderMode()Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->getRenderMode()Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    move-result-object p0

    return-object p0
.end method

.method public getFuIconTexId()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->getFuTexIconId()I

    move-result p0

    return p0
.end method

.method public getFuScene()Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getIsInitItemFinish()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->getIsInitItemFinish()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public getLandmarksData()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->getLandmarksData()[F

    move-result-object p0

    return-object p0
.end method

.method public getRefreshRow()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->refreshRow:I

    return p0
.end method

.method public getRotMode()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->getRotMode()I

    move-result p0

    return p0
.end method

.method public getRotationData()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->getRotationData()[F

    move-result-object p0

    return-object p0
.end method

.method public getShowIndex()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    iget p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->index:I

    return p0
.end method

.method public insertAvatar(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->showAvatar(Ljava/lang/String;Z)V

    return-void
.end method

.method public isCanRefresh()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->isCanRefresh()Z

    move-result p0

    return p0
.end method

.method public isFuGLPrepared()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->fuIsGLPrepared()Z

    move-result p0

    return p0
.end method

.method public isFuIsGLPrepared()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->isFuIsGLPrepared()Z

    move-result p0

    return p0
.end method

.method public isNeedEnterFron()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->isNeedEnterFron()Z

    move-result p0

    return p0
.end method

.method public onAvatarBindEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->listener:Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager$OnCompleteListener;->onAvatarBindEnd()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCameraChange(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isFront",
            "cameraOrientation"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->onCameraChange(ZI)V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->listener:Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager$OnCompleteListener;->onLoadEnd()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onItemTrigger(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "hyj"

    if-eqz p0, :cond_0

    const-string p0, "name: empty"

    .line 2
    invoke-static {v0, p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/utils/FileUtil;->getLastName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " path:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSceneBindEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->listener:Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager$OnCompleteListener;->onSceneBindEnd()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSurfaceCreated()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->onSurfaceCreated()Z

    move-result p0

    return p0
.end method

.method public onSurfaceDestroy()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->onSurfaceDestroyed()V

    const/4 p0, 0x0

    .line 2
    sput-object p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->instance:Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queueIsEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->queueIsEmpty()Z

    move-result p0

    return p0
.end method

.method public queueNextEvent(Ljava/lang/Runnable;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->queueNextEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refresh()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->refresh()V

    return-void
.end method

.method public refreshEditData()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->refreshEditData()V

    return-void
.end method

.method public refreshFuScene()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;->getFuScene()Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public release()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    return-void
.end method

.method public rendIconEnd(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemType"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->rendIconEnd(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    return-void
.end method

.method public rendIconStart(ILcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "row",
            "itemType",
            "colorType",
            "lastItemType",
            "lastColorType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->refreshRow:I

    .line 2
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->rendIconStart(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)V

    return-void
.end method

.method public renderIcon(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuItem;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fuItem",
            "itemType"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->renderIcon(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuItem;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Z

    move-result p0

    return p0
.end method

.method public resetAllFront()V
    .locals 10
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x3

    .line 2
    invoke-virtual/range {v0 .. v9}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setTargetPosition(DDDDI)V

    :cond_0
    return-void
.end method

.method public resetAllSide()V
    .locals 10
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3fc0000000000000L    # 0.125

    const/4 v9, 0x3

    invoke-virtual/range {v0 .. v9}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setTargetPosition(DDDDI)V

    return-void
.end method

.method public resetEditData()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->resetEditData()V

    return-void
.end method

.method public resetFuAvatar(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needDelete"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    if-nez p1, :cond_0

    const-string p0, "MimojiFuManager"

    const-string p1, "mimojifu tempFuAvatar null"

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;->clear()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    .line 5
    iget-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;->copy()Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    .line 6
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setAvatar(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;)V

    .line 7
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->startTask()Z

    return-void
.end method

.method public save()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;->save(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;->clear()V

    .line 4
    iput-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    .line 5
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;->getDir()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public setColor(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "colorType",
            "fuColor"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setColor(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;)V

    return-void
.end method

.method public setDefultFuScene()V
    .locals 3

    const-string v0, "MimojiFuManager"

    const-string/jumbo v1, "test setDefultFuScene"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

    const-string v2, "default_bg.bundle"

    invoke-virtual {v1, v2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;->setBackground(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

    const-string v2, "light/light04.bundle"

    invoke-virtual {v1, v2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;->setLight(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

    const-string v2, "camera/xiaomi_bg_cam.bundle"

    invoke-virtual {v1, v2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;->setCamera(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

    invoke-virtual {p0, v1}, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->setScene(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;)V

    .line 7
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->startTask()Z

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDynamicBackground(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuItem;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuItem;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "backgroundItem",
            "cameraItem",
            "useDy"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;

    const-string v1, "MimojiFuManager"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fuController setDynamicBackground : backgroundItem: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cameraItem: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "    (ar_mode):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->setDynamicBackground(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuItem;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuItem;Z)V

    .line 4
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->startTask()Z

    return-void

    .line 5
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fuSceneInstance == null ; fuController == null : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_2

    move p2, p3

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move p3, v0

    :goto_2
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFuAvatarColor(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "colorType",
            "fuColor"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;->setColor(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;)V

    return-void
.end method

.method public setFuScene(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fuScene"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->setScene(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;)V

    .line 3
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->startTask()Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setFuTexIconId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fuTexIconId"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->setFuTexIconId(I)V

    return-void
.end method

.method public setItem(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemType",
            "fuItem"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setItem(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuItem;)V

    .line 2
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->startTask()Z

    return-void
.end method

.method public setListener(Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager$OnCompleteListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->listener:Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setNeedTrackFace(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNeedTrackFace"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->setNeedTrackFace(Z)V

    return-void
.end method

.method public setRefreshRow(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshRow"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->refreshRow:I

    return-void
.end method

.method public setRendIconCallBack(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rendIconCallBack"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->setRendIconCallBack(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;)V

    return-void
.end method

.method public setRenderMode(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderMode"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->setRenderMode(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;[D)V

    return-void
.end method

.method public setRenderModeEdit(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->setRenderModeEdit(IZ)V

    return-void
.end method

.method public setRenderModeEdit(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "isEdit"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->bgColor:[D

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 3
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->bgColor:[D

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 4
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->bgColor:[D

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    .line 5
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->bgColor:[D

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-double v1, p1

    const/4 p1, 0x3

    aput-wide v1, v0, p1

    .line 6
    iget-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    sget-object v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Edit:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->bgColor:[D

    invoke-virtual {p1, v0, p0, p2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->setRenderMode(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;[DZ)V

    return-void
.end method

.method public setRotDelta(F)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotDelta"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->rotateDelta(D)V

    return-void
.end method

.method public setRotMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->setRotMode(I)V

    return-void
.end method

.method public setScene(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fuScene"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->createSceneInstance()Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1, v0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->setCurrentSceneInstance(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;->setScene(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;)V

    .line 5
    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

    return-void
.end method

.method public setTempFuAvatar(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tempFuAvatar"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    return-void
.end method

.method public showAvatar(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "avatar_dir",
            "force"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->showAvatar(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public showAvatar(Ljava/lang/String;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "avatar_dir",
            "force",
            "isDynamicBg"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->createSceneInstance()Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;

    .line 5
    iget-object v2, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v2, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->setCurrentSceneInstance(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->createAvatarInstance()Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    .line 8
    iget-object v2, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v2, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->addCurrentAvatarInstance(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->avatar_dir:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_6

    :cond_2
    const-string v1, "MimojiFuManager"

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " showAvatar   avatar_dir: : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " force: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " isDynamicBg: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;->load(Ljava/lang/String;)Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    const-string p2, "cartoon"

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    .line 13
    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

    if-nez v1, :cond_3

    .line 14
    new-instance v1, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

    invoke-direct {v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

    :cond_3
    if-nez p3, :cond_4

    .line 15
    iget-object p3, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

    const-string v1, "default_bg.bundle"

    invoke-virtual {p3, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;->setBackground(Ljava/lang/String;)V

    .line 16
    iget-object p3, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

    const-string v1, "camera/xiaomi_bg_cam.bundle"

    invoke-virtual {p3, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;->setCamera(Ljava/lang/String;)V

    .line 17
    :cond_4
    invoke-static {}, Lcom/xiaomi/mimoji/common/utils/MimojiDumpUtil;->getInstance()Lcom/xiaomi/mimoji/common/utils/MimojiDumpUtil;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lcom/xiaomi/mimoji/common/utils/MimojiDumpUtil;->dumpSwitchAvatar(I)V

    .line 18
    iget-object p3, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

    if-eqz p2, :cond_5

    const-string p2, "light/animal_light_v2.bundle"

    goto :goto_0

    :cond_5
    const-string p2, "light/light04.bundle"

    :goto_0
    invoke-virtual {p3, p2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;->setLight(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;

    iget-object p3, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;

    invoke-virtual {p2, p3}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuSceneInstance;->setScene(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuScene;)V

    .line 20
    iget-object p2, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    iget-object p3, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {p2, p3}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setAvatar(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatar;)V

    .line 21
    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->avatar_dir:Ljava/lang/String;

    .line 22
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->startTask()Z

    .line 23
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showOrHideAvatar(Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isHide"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->showOrHideAvatar(Z)V

    return-void
.end method

.method public startRecordGif(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;ILcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$EmoticonPackListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemType",
            "colorType",
            "pos",
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    if-eqz v0, :cond_0

    const/16 v4, 0x19

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->generateEmoticonPack(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;IILcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$EmoticonPackListener;)V

    :cond_0
    return-void
.end method

.method public stopIconThread()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->stopIconThread()V

    return-void
.end method

.method public takeBuffer()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->getIconByte()[B

    move-result-object p0

    return-object p0
.end method

.method public updateConfig()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->updateConfig()V

    :cond_0
    return-void
.end method

.method public updateEmotion()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->updateEmotion()V

    :cond_0
    return-void
.end method
