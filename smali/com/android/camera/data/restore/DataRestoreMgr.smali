.class public Lcom/android/camera/data/restore/DataRestoreMgr;
.super Ljava/lang/Object;
.source "DataRestoreMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/restore/DataRestoreMgr$DataRestoreImpl;
    }
.end annotation


# instance fields
.field private dataRestore:Lcom/android/camera/data/restore/DataRestore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/data/restore/DataRestoreMgr$DataRestoreImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/data/restore/DataRestoreMgr$DataRestoreImpl;-><init>(Lcom/android/camera/data/restore/DataRestoreMgr;)V

    iput-object v0, p0, Lcom/android/camera/data/restore/DataRestoreMgr;->dataRestore:Lcom/android/camera/data/restore/DataRestore;

    return-void
.end method


# virtual methods
.method public restore()Lcom/android/camera/data/restore/DataRestore;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/restore/DataRestoreMgr;->dataRestore:Lcom/android/camera/data/restore/DataRestore;

    return-object p0
.end method
