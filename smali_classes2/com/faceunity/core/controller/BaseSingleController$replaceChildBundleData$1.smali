.class public final Lcom/faceunity/core/controller/BaseSingleController$replaceChildBundleData$1;
.super LOooO0o/o00ooOoO/o000O00O/o0000O0O;
.source "BaseSingleController.kt"

# interfaces
.implements LOooO0o/o00ooOoO/o000O00/OooOo;


# annotations
.annotation runtime LOooO0o/o0000Ooo;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "controlHandle",
        "LOooO0o/o00OOOOo;",
        "invoke",
        "(I)V",
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
    value = Lcom/faceunity/core/controller/BaseSingleController;->replaceChildBundleData(JLcom/faceunity/core/entity/FUBundleData;Lcom/faceunity/core/entity/FUBundleData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0o/o00ooOoO/o000O00O/o0000O0O;",
        "LOooO0o/o00ooOoO/o000O00/OooOo<",
        "Ljava/lang/Integer;",
        "LOooO0o/o00OOOOo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $newBundle:Lcom/faceunity/core/entity/FUBundleData;

.field public final synthetic $oldBundle:Lcom/faceunity/core/entity/FUBundleData;

.field public final synthetic this$0:Lcom/faceunity/core/controller/BaseSingleController;


# direct methods
.method public constructor <init>(Lcom/faceunity/core/controller/BaseSingleController;Lcom/faceunity/core/entity/FUBundleData;Lcom/faceunity/core/entity/FUBundleData;)V
    .locals 0

    iput-object p1, p0, Lcom/faceunity/core/controller/BaseSingleController$replaceChildBundleData$1;->this$0:Lcom/faceunity/core/controller/BaseSingleController;

    iput-object p2, p0, Lcom/faceunity/core/controller/BaseSingleController$replaceChildBundleData$1;->$newBundle:Lcom/faceunity/core/entity/FUBundleData;

    iput-object p3, p0, Lcom/faceunity/core/controller/BaseSingleController$replaceChildBundleData$1;->$oldBundle:Lcom/faceunity/core/entity/FUBundleData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LOooO0o/o00ooOoO/o000O00O/o0000O0O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/faceunity/core/controller/BaseSingleController$replaceChildBundleData$1;->invoke(I)V

    sget-object p0, LOooO0o/o00OOOOo;->OooO00o:LOooO0o/o00OOOOo;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/faceunity/core/controller/BaseSingleController$replaceChildBundleData$1;->$newBundle:Lcom/faceunity/core/entity/FUBundleData;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/faceunity/core/controller/BaseSingleController$replaceChildBundleData$1;->this$0:Lcom/faceunity/core/controller/BaseSingleController;

    invoke-virtual {v0}, Lcom/faceunity/core/entity/FUBundleData;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/faceunity/core/controller/BaseSingleController;->createBundle(Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/faceunity/core/controller/BaseSingleController$replaceChildBundleData$1;->$oldBundle:Lcom/faceunity/core/entity/FUBundleData;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/faceunity/core/controller/BaseSingleController$replaceChildBundleData$1;->this$0:Lcom/faceunity/core/controller/BaseSingleController;

    invoke-virtual {v0}, Lcom/faceunity/core/entity/FUBundleData;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/faceunity/core/controller/BaseSingleController;->getBundleHandle(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/faceunity/core/controller/BaseSingleController$replaceChildBundleData$1;->this$0:Lcom/faceunity/core/controller/BaseSingleController;

    invoke-virtual {v1, p1, v0}, Lcom/faceunity/core/controller/BaseSingleController;->unbindControllerItem(II)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/faceunity/core/controller/BaseSingleController$replaceChildBundleData$1;->$newBundle:Lcom/faceunity/core/entity/FUBundleData;

    if-eqz v0, :cond_2

    .line 8
    iget-object v1, p0, Lcom/faceunity/core/controller/BaseSingleController$replaceChildBundleData$1;->this$0:Lcom/faceunity/core/controller/BaseSingleController;

    invoke-virtual {v0}, Lcom/faceunity/core/entity/FUBundleData;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/faceunity/core/controller/BaseSingleController;->getBundleHandle(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 9
    iget-object p0, p0, Lcom/faceunity/core/controller/BaseSingleController$replaceChildBundleData$1;->this$0:Lcom/faceunity/core/controller/BaseSingleController;

    invoke-virtual {p0, p1, v0}, Lcom/faceunity/core/controller/BaseSingleController;->bindControllerItem(II)V

    :cond_2
    return-void
.end method
