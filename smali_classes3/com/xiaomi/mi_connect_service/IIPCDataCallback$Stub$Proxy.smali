.class public Lcom/xiaomi/mi_connect_service/IIPCDataCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIPCDataCallback.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IIPCDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/IIPCDataCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaomi/mi_connect_service/IIPCDataCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IIPCDataCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IIPCDataCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.xiaomi.mi_connect_service.IIPCDataCallback"

    return-object p0
.end method

.method public onAudioData(Ljava/lang/String;[B[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IIPCDataCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IIPCDataCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 8
    invoke-static {}, Lcom/xiaomi/mi_connect_service/IIPCDataCallback$Stub;->getDefaultImpl()Lcom/xiaomi/mi_connect_service/IIPCDataCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9
    invoke-static {}, Lcom/xiaomi/mi_connect_service/IIPCDataCallback$Stub;->getDefaultImpl()Lcom/xiaomi/mi_connect_service/IIPCDataCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/xiaomi/mi_connect_service/IIPCDataCallback;->onAudioData(Ljava/lang/String;[B[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11
    throw p0
.end method

.method public onVideoData(Ljava/lang/String;[B[BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IIPCDataCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IIPCDataCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 8
    invoke-static {}, Lcom/xiaomi/mi_connect_service/IIPCDataCallback$Stub;->getDefaultImpl()Lcom/xiaomi/mi_connect_service/IIPCDataCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9
    invoke-static {}, Lcom/xiaomi/mi_connect_service/IIPCDataCallback$Stub;->getDefaultImpl()Lcom/xiaomi/mi_connect_service/IIPCDataCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/xiaomi/mi_connect_service/IIPCDataCallback;->onVideoData(Ljava/lang/String;[B[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11
    throw p0
.end method
