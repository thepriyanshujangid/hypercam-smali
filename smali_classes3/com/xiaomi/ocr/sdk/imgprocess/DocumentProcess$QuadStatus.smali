.class public final enum Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;
.super Ljava/lang/Enum;
.source "DocumentProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QuadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

.field public static final enum QUAD_KEEP:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

.field public static final enum QUAD_NOSHOW:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

.field public static final enum QUAD_UPDATE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    const-string v1, "QUAD_NOSHOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->QUAD_NOSHOW:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    .line 2
    new-instance v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    const-string v3, "QUAD_KEEP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->QUAD_KEEP:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    .line 3
    new-instance v3, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    const-string v5, "QUAD_UPDATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->QUAD_UPDATE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->$VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->$VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    invoke-virtual {v0}, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;

    return-object v0
.end method
