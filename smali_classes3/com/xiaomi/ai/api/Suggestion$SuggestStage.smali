.class public final enum Lcom/xiaomi/ai/api/Suggestion$SuggestStage;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ai/api/Suggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuggestStage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/ai/api/Suggestion$SuggestStage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/ai/api/Suggestion$SuggestStage;

.field public static final enum AFTER_PARSER:Lcom/xiaomi/ai/api/Suggestion$SuggestStage;

.field public static final enum AFTER_PROVIDER:Lcom/xiaomi/ai/api/Suggestion$SuggestStage;

.field public static final enum UNKNOWN:Lcom/xiaomi/ai/api/Suggestion$SuggestStage;
    .annotation runtime LOooO0OO/OooO0o0/OooO00o/OooO00o/OooOo;
    .end annotation
.end field


# instance fields
.field private id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/ai/api/Suggestion$SuggestStage;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ai/api/Suggestion$SuggestStage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ai/api/Suggestion$SuggestStage;->UNKNOWN:Lcom/xiaomi/ai/api/Suggestion$SuggestStage;

    new-instance v1, Lcom/xiaomi/ai/api/Suggestion$SuggestStage;

    const-string v3, "AFTER_PARSER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaomi/ai/api/Suggestion$SuggestStage;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaomi/ai/api/Suggestion$SuggestStage;->AFTER_PARSER:Lcom/xiaomi/ai/api/Suggestion$SuggestStage;

    new-instance v3, Lcom/xiaomi/ai/api/Suggestion$SuggestStage;

    const-string v5, "AFTER_PROVIDER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/xiaomi/ai/api/Suggestion$SuggestStage;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaomi/ai/api/Suggestion$SuggestStage;->AFTER_PROVIDER:Lcom/xiaomi/ai/api/Suggestion$SuggestStage;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaomi/ai/api/Suggestion$SuggestStage;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/xiaomi/ai/api/Suggestion$SuggestStage;->$VALUES:[Lcom/xiaomi/ai/api/Suggestion$SuggestStage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/ai/api/Suggestion$SuggestStage;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ai/api/Suggestion$SuggestStage;
    .locals 1

    const-class v0, Lcom/xiaomi/ai/api/Suggestion$SuggestStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/ai/api/Suggestion$SuggestStage;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/ai/api/Suggestion$SuggestStage;
    .locals 1

    sget-object v0, Lcom/xiaomi/ai/api/Suggestion$SuggestStage;->$VALUES:[Lcom/xiaomi/ai/api/Suggestion$SuggestStage;

    invoke-virtual {v0}, [Lcom/xiaomi/ai/api/Suggestion$SuggestStage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ai/api/Suggestion$SuggestStage;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/ai/api/Suggestion$SuggestStage;->id:I

    return p0
.end method
