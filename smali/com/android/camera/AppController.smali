.class public interface abstract Lcom/android/camera/AppController;
.super Ljava/lang/Object;
.source "AppController.java"


# virtual methods
.method public abstract getCurrentModule()Lcom/android/camera/module/Module;
.end method

.method public abstract getCurrentModuleIndex()I
.end method

.method public abstract getImageSaver()Lcom/android/camera/storage/ImageSaver;
.end method

.method public abstract getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;
.end method

.method public abstract getTTSHelper()Lcom/android/camera/tts/TTSHelper;
.end method

.method public abstract onModeSelected(Lcom/android/camera/module/loader/base/StartControl;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startControl"
        }
    .end annotation
.end method
