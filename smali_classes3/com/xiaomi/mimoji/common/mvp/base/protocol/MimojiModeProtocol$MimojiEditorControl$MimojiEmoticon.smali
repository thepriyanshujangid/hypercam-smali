.class public interface abstract Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;
.super Ljava/lang/Object;
.source "MimojiModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MimojiEmoticon"
.end annotation


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;

    return-object v0
.end method


# virtual methods
.method public abstract backToPreview(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSave"
        }
    .end annotation
.end method

.method public abstract coverEmoticonError()V
.end method

.method public abstract coverEmoticonSuccess()V
.end method

.method public abstract loadEmoticon(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emotionList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setIsDirectEmoticon(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDirectEmoticon"
        }
    .end annotation
.end method

.method public abstract updateEmoticonGifProgress(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "num"
        }
    .end annotation
.end method

.method public abstract updateEmoticonPictureProgress(Ljava/lang/String;Lcom/arcsoft/avatar2/emoticon/EmoInfo;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "emoInfo",
            "isFinal"
        }
    .end annotation
.end method

.method public abstract updateEmoticonThumbnailProgress(ILcom/arcsoft/avatar2/emoticon/EmoInfo;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "num",
            "emoInfo",
            "nameRes"
        }
    .end annotation
.end method
