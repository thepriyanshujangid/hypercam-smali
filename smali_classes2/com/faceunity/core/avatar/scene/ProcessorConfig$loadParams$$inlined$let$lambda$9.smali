.class public final Lcom/faceunity/core/avatar/scene/ProcessorConfig$loadParams$$inlined$let$lambda$9;
.super LOooO0o/o00ooOoO/o000O00O/o0000O0O;
.source "ProcessorConfig.kt"

# interfaces
.implements LOooO0o/o00ooOoO/o000O00/OooO00o;


# annotations
.annotation runtime LOooO0o/o0000Ooo;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "LOooO0o/o00OOOOo;",
        "invoke",
        "()V",
        "com/faceunity/core/avatar/scene/ProcessorConfig$$special$$inlined$let$lambda$1",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/core/avatar/scene/ProcessorConfig;->loadParams$lib_core_release(Ljava/util/LinkedHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0o/o00ooOoO/o000O00O/o0000O0O;",
        "LOooO0o/o00ooOoO/o000O00/OooO00o<",
        "LOooO0o/o00OOOOo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $bvhHeaderBuffer$inlined:[B

.field public final synthetic $params$inlined:Ljava/util/LinkedHashMap;

.field public final synthetic $retargetMappingBuffer:[B

.field public final synthetic this$0:Lcom/faceunity/core/avatar/scene/ProcessorConfig;


# direct methods
.method public constructor <init>([B[BLcom/faceunity/core/avatar/scene/ProcessorConfig;Ljava/util/LinkedHashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/faceunity/core/avatar/scene/ProcessorConfig$loadParams$$inlined$let$lambda$9;->$retargetMappingBuffer:[B

    iput-object p2, p0, Lcom/faceunity/core/avatar/scene/ProcessorConfig$loadParams$$inlined$let$lambda$9;->$bvhHeaderBuffer$inlined:[B

    iput-object p3, p0, Lcom/faceunity/core/avatar/scene/ProcessorConfig$loadParams$$inlined$let$lambda$9;->this$0:Lcom/faceunity/core/avatar/scene/ProcessorConfig;

    iput-object p4, p0, Lcom/faceunity/core/avatar/scene/ProcessorConfig$loadParams$$inlined$let$lambda$9;->$params$inlined:Ljava/util/LinkedHashMap;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LOooO0o/o00ooOoO/o000O00O/o0000O0O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/faceunity/core/avatar/scene/ProcessorConfig$loadParams$$inlined$let$lambda$9;->invoke()V

    sget-object p0, LOooO0o/o00OOOOo;->OooO00o:LOooO0o/o00OOOOo;

    return-object p0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/faceunity/core/avatar/scene/ProcessorConfig$loadParams$$inlined$let$lambda$9;->this$0:Lcom/faceunity/core/avatar/scene/ProcessorConfig;

    invoke-virtual {v0}, Lcom/faceunity/core/avatar/base/BaseSceneAttribute;->getMFUAvatarController$lib_core_release()Lcom/faceunity/core/avatar/control/AvatarController;

    move-result-object v1

    iget-object v0, p0, Lcom/faceunity/core/avatar/scene/ProcessorConfig$loadParams$$inlined$let$lambda$9;->this$0:Lcom/faceunity/core/avatar/scene/ProcessorConfig;

    invoke-virtual {v0}, Lcom/faceunity/core/avatar/base/BaseSceneAttribute;->getMSceneId$lib_core_release()J

    move-result-wide v2

    iget-object v4, p0, Lcom/faceunity/core/avatar/scene/ProcessorConfig$loadParams$$inlined$let$lambda$9;->$bvhHeaderBuffer$inlined:[B

    iget-object v5, p0, Lcom/faceunity/core/avatar/scene/ProcessorConfig$loadParams$$inlined$let$lambda$9;->$retargetMappingBuffer:[B

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/faceunity/core/avatar/control/AvatarController;->setRiggingBVHInputProcessorConfig(J[B[BZ)V

    return-void
.end method
