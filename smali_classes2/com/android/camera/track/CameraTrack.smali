.class public Lcom/android/camera/track/CameraTrack;
.super Ljava/lang/Object;
.source "CameraTrack.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "31000000285"

.field private static final CHANNEL:Ljava/lang/String;

.field private static volatile mOneTrack:Lcom/xiaomi/onetrack/OneTrack;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "ro.product.mod_device"

    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/track/CameraTrack;->CHANNEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
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
    new-instance v0, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    const-string v1, "31000000285"

    .line 2
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/track/CameraTrack;->CHANNEL:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setChannel(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 4
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setExceptionCatcherEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAutoTrackActivityAction(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    .line 8
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object p0

    sput-object p0, Lcom/android/camera/track/CameraTrack;->mOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    const/4 p0, 0x0

    .line 9
    invoke-static {p0}, Lcom/xiaomi/onetrack/OneTrack;->setDebugMode(Z)V

    .line 10
    invoke-static {p0}, Lcom/xiaomi/onetrack/OneTrack;->setTestMode(Z)V

    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/track/CameraTrack;->mOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/track/CameraTrack;->mOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
