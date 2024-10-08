.class public Lcom/android/camera/db/DbContainer;
.super Ljava/lang/Object;
.source "DbContainer.java"


# static fields
.field private static dbContainer:Lcom/android/camera/db/DbContainer;


# instance fields
.field private context:Landroid/content/Context;

.field private daoMaster:Lcom/android/camera/db/greendao/DaoMaster;

.field private daoSession:Lcom/android/camera/db/greendao/DaoSession;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
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

    .line 2
    iput-object p1, p0, Lcom/android/camera/db/DbContainer;->context:Landroid/content/Context;

    return-void
.end method

.method private clear()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/db/DbContainer;->daoSession:Lcom/android/camera/db/greendao/DaoSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/db/greendao/DaoSession;->clear()V

    .line 3
    iput-object v1, p0, Lcom/android/camera/db/DbContainer;->daoSession:Lcom/android/camera/db/greendao/DaoSession;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/db/DbContainer;->daoMaster:Lcom/android/camera/db/greendao/DaoMaster;

    if-eqz v0, :cond_1

    .line 5
    iput-object v1, p0, Lcom/android/camera/db/DbContainer;->daoMaster:Lcom/android/camera/db/greendao/DaoMaster;

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/android/camera/db/DbContainer;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/db/DbContainer;->dbContainer:Lcom/android/camera/db/DbContainer;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/db/DbContainer;->init(Landroid/content/Context;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/db/DbContainer;->dbContainer:Lcom/android/camera/db/DbContainer;

    return-object v0
.end method

.method public static final init(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/db/DbContainer;->dbContainer:Lcom/android/camera/db/DbContainer;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/db/DbContainer;

    invoke-direct {v0, p0}, Lcom/android/camera/db/DbContainer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/camera/db/DbContainer;->dbContainer:Lcom/android/camera/db/DbContainer;

    :cond_0
    return-void
.end method

.method public static release()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/db/DbContainer;->dbContainer:Lcom/android/camera/db/DbContainer;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {v0}, Lcom/android/camera/db/DbContainer;->clear()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/android/camera/db/DbContainer;->dbContainer:Lcom/android/camera/db/DbContainer;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDaoMaster()Lcom/android/camera/db/greendao/DaoMaster;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/db/DbContainer;->daoMaster:Lcom/android/camera/db/greendao/DaoMaster;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/db/DbContainer;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/db/DbContainer;->context:Landroid/content/Context;

    .line 4
    :cond_0
    new-instance v0, Lcom/android/camera/db/greendao/DaoMaster$DevOpenHelper;

    iget-object v1, p0, Lcom/android/camera/db/DbContainer;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "camera1.db"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/camera/db/greendao/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->setLoadSQLCipherNativeLibs(Z)V

    .line 6
    new-instance v1, Lcom/android/camera/db/greendao/DaoMaster;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/camera/db/greendao/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    iput-object v1, p0, Lcom/android/camera/db/DbContainer;->daoMaster:Lcom/android/camera/db/greendao/DaoMaster;

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/android/camera/db/DbContainer;->daoMaster:Lcom/android/camera/db/greendao/DaoMaster;

    return-object p0
.end method

.method public getDaoSession()Lcom/android/camera/db/greendao/DaoSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/db/DbContainer;->daoSession:Lcom/android/camera/db/greendao/DaoSession;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/db/DbContainer;->getDaoMaster()Lcom/android/camera/db/greendao/DaoMaster;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/db/DbContainer;->daoMaster:Lcom/android/camera/db/greendao/DaoMaster;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/db/greendao/DaoMaster;->newSession()Lcom/android/camera/db/greendao/DaoSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/db/DbContainer;->daoSession:Lcom/android/camera/db/greendao/DaoSession;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/db/DbContainer;->daoSession:Lcom/android/camera/db/greendao/DaoSession;

    return-object p0
.end method
