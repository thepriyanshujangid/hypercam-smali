.class public final enum Lcom/faceunity/core/enumeration/FUAIProcessorEnum;
.super Ljava/lang/Enum;
.source "FUAIProcessorEnum.kt"


# annotations
.annotation runtime LOooO0o/o0000Ooo;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/faceunity/core/enumeration/FUAIProcessorEnum;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "HUMAN_PROCESSOR",
        "FACE_PROCESSOR",
        "HAND_GESTURE_PROCESSOR",
        "lib_core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/faceunity/core/enumeration/FUAIProcessorEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/faceunity/core/enumeration/FUAIProcessorEnum;

.field public static final enum FACE_PROCESSOR:Lcom/faceunity/core/enumeration/FUAIProcessorEnum;

.field public static final enum HAND_GESTURE_PROCESSOR:Lcom/faceunity/core/enumeration/FUAIProcessorEnum;

.field public static final enum HUMAN_PROCESSOR:Lcom/faceunity/core/enumeration/FUAIProcessorEnum;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/faceunity/core/enumeration/FUAIProcessorEnum;

    new-instance v1, Lcom/faceunity/core/enumeration/FUAIProcessorEnum;

    const-string v2, "HUMAN_PROCESSOR"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/faceunity/core/enumeration/FUAIProcessorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/faceunity/core/enumeration/FUAIProcessorEnum;->HUMAN_PROCESSOR:Lcom/faceunity/core/enumeration/FUAIProcessorEnum;

    aput-object v1, v0, v3

    new-instance v1, Lcom/faceunity/core/enumeration/FUAIProcessorEnum;

    const-string v2, "FACE_PROCESSOR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/faceunity/core/enumeration/FUAIProcessorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/faceunity/core/enumeration/FUAIProcessorEnum;->FACE_PROCESSOR:Lcom/faceunity/core/enumeration/FUAIProcessorEnum;

    aput-object v1, v0, v3

    new-instance v1, Lcom/faceunity/core/enumeration/FUAIProcessorEnum;

    const-string v2, "HAND_GESTURE_PROCESSOR"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/faceunity/core/enumeration/FUAIProcessorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/faceunity/core/enumeration/FUAIProcessorEnum;->HAND_GESTURE_PROCESSOR:Lcom/faceunity/core/enumeration/FUAIProcessorEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/faceunity/core/enumeration/FUAIProcessorEnum;->$VALUES:[Lcom/faceunity/core/enumeration/FUAIProcessorEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/faceunity/core/enumeration/FUAIProcessorEnum;
    .locals 1

    const-class v0, Lcom/faceunity/core/enumeration/FUAIProcessorEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/faceunity/core/enumeration/FUAIProcessorEnum;

    return-object p0
.end method

.method public static values()[Lcom/faceunity/core/enumeration/FUAIProcessorEnum;
    .locals 1

    sget-object v0, Lcom/faceunity/core/enumeration/FUAIProcessorEnum;->$VALUES:[Lcom/faceunity/core/enumeration/FUAIProcessorEnum;

    invoke-virtual {v0}, [Lcom/faceunity/core/enumeration/FUAIProcessorEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/faceunity/core/enumeration/FUAIProcessorEnum;

    return-object v0
.end method
