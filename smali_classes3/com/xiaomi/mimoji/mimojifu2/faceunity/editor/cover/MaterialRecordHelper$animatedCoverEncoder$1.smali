.class public final Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/MaterialRecordHelper$animatedCoverEncoder$1;
.super Ljava/lang/Object;
.source "MaterialRecordHelper.kt"

# interfaces
.implements Lcom/faceunity/core/media/photo/FUPhotoRecordHelper$OnPhotoRecordingListener;


# annotations
.annotation runtime LOooO0o/o0000Ooo;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/MaterialRecordHelper$animatedCoverEncoder$1",
        "Lcom/faceunity/core/media/photo/FUPhotoRecordHelper$OnPhotoRecordingListener;",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "",
        "tag",
        "LOooO0o/o00OOOOo;",
        "onRecordSuccess",
        "(Landroid/graphics/Bitmap;Ljava/lang/String;)V",
        "app_cnRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/MaterialRecordHelper;->animatedCoverEncoder(Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/RecordMaterialConfig;Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/OnMaterialRecordingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $config:Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/RecordMaterialConfig;

.field public final synthetic $listener:Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/OnMaterialRecordingListener;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/OnMaterialRecordingListener;Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/RecordMaterialConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/MaterialRecordHelper$animatedCoverEncoder$1;->$listener:Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/OnMaterialRecordingListener;

    iput-object p2, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/MaterialRecordHelper$animatedCoverEncoder$1;->$config:Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/RecordMaterialConfig;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build LOooO/OooO0OO/OooO00o/OooO;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
        .end annotation
    .end param

    const-string/jumbo v0, "tag"

    invoke-static {p2, v0}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/MaterialRecordHelper$animatedCoverEncoder$1;->$listener:Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/OnMaterialRecordingListener;

    const/4 v0, -0x1

    const-string v1, "PhotoRecordHelper   Bitmap is null"

    invoke-interface {p2, v0, v1}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/OnMaterialRecordingListener;->onError(ILjava/lang/String;)V

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/MaterialRecordHelper$animatedCoverEncoder$1;->$config:Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/RecordMaterialConfig;

    invoke-virtual {p2}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/RecordMaterialConfig;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/utils/FileUtil;->savePNGFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/MaterialRecordHelper$animatedCoverEncoder$1;->$listener:Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/OnMaterialRecordingListener;

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/MaterialRecordHelper$animatedCoverEncoder$1;->$config:Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/RecordMaterialConfig;

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/RecordMaterialConfig;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/editor/cover/OnMaterialRecordingListener;->onCompleted(Ljava/lang/String;)V

    return-void
.end method
