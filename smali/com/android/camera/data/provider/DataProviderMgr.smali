.class public Lcom/android/camera/data/provider/DataProviderMgr;
.super Ljava/lang/Object;
.source "DataProviderMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;
    }
.end annotation


# instance fields
.field private mDataProvider:Lcom/android/camera/data/provider/DataProvider;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/backup/DataBackUp;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBackUp"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;

    invoke-direct {v0, p1}, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;-><init>(Lcom/android/camera/data/backup/DataBackUp;)V

    iput-object v0, p0, Lcom/android/camera/data/provider/DataProviderMgr;->mDataProvider:Lcom/android/camera/data/provider/DataProvider;

    return-void
.end method


# virtual methods
.method public provider()Lcom/android/camera/data/provider/DataProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/provider/DataProviderMgr;->mDataProvider:Lcom/android/camera/data/provider/DataProvider;

    return-object p0
.end method
