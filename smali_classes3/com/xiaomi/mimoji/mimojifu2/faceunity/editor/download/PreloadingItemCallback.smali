.class public interface abstract Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/download/PreloadingItemCallback;
.super Ljava/lang/Object;
.source "PreloadingItemCallback.kt"


# annotations
.annotation runtime LOooO0o/o0000Ooo;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J)\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008H&\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/download/PreloadingItemCallback;",
        "",
        "Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/bean/SingleItemBean;",
        "itemBean",
        "LOooO0o/o00OOOOo;",
        "onPrepared",
        "(Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/bean/SingleItemBean;)V",
        "onFinished",
        "",
        "failedFiles",
        "failedMsg",
        "onError",
        "(Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/bean/SingleItemBean;Ljava/lang/String;Ljava/lang/String;)V",
        "app_cnRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract onError(Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/bean/SingleItemBean;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/bean/SingleItemBean;
        .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build LOooO/OooO0OO/OooO00o/OooO;
        .end annotation
    .end param
.end method

.method public abstract onFinished(Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/bean/SingleItemBean;)V
    .param p1    # Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/bean/SingleItemBean;
        .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
        .end annotation
    .end param
.end method

.method public abstract onPrepared(Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/bean/SingleItemBean;)V
    .param p1    # Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/bean/SingleItemBean;
        .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
        .end annotation
    .end param
.end method
