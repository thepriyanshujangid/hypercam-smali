.class public final enum Lcom/xiaomi/ai/api/Common$EmotionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ai/api/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmotionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/ai/api/Common$EmotionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum AMAZE:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum AMUSE:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum ANGRY:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum ANXIETY:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum CALM:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum CARE:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum CONFUSED:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum DELIGHTED:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum DOUBT:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum EMBARRASS:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum ENCOURAGE:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum EXCITED:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum EXPECT:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum FEAR:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum HAPPY:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum HATE:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum JOYFUL:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum NAUGHTY:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum PROUND:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum SAD:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum SHY:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum STUCK_ON:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum THANKFUL:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum TRUST:Lcom/xiaomi/ai/api/Common$EmotionType;

.field public static final enum UNKNOWN:Lcom/xiaomi/ai/api/Common$EmotionType;
    .annotation runtime LOooO0OO/OooO0o0/OooO00o/OooO00o/OooOo;
    .end annotation
.end field

.field public static final enum WORRY:Lcom/xiaomi/ai/api/Common$EmotionType;


# instance fields
.field private id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 29

    new-instance v0, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ai/api/Common$EmotionType;->UNKNOWN:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v1, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v3, "JOYFUL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaomi/ai/api/Common$EmotionType;->JOYFUL:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v3, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v5, "SAD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaomi/ai/api/Common$EmotionType;->SAD:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v5, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v7, "STUCK_ON"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaomi/ai/api/Common$EmotionType;->STUCK_ON:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v7, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v9, "EXCITED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/xiaomi/ai/api/Common$EmotionType;->EXCITED:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v9, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v11, "ANXIETY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/xiaomi/ai/api/Common$EmotionType;->ANXIETY:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v11, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v13, "EXPECT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/xiaomi/ai/api/Common$EmotionType;->EXPECT:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v13, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v15, "PROUND"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/xiaomi/ai/api/Common$EmotionType;->PROUND:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v15, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v14, "SHY"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/xiaomi/ai/api/Common$EmotionType;->SHY:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v14, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v12, "NAUGHTY"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/xiaomi/ai/api/Common$EmotionType;->NAUGHTY:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v12, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v10, "HAPPY"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/xiaomi/ai/api/Common$EmotionType;->HAPPY:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v10, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v8, "CONFUSED"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/xiaomi/ai/api/Common$EmotionType;->CONFUSED:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v8, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v6, "DELIGHTED"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/xiaomi/ai/api/Common$EmotionType;->DELIGHTED:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v6, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v4, "EMBARRASS"

    move-object/from16 v16, v8

    const/16 v8, 0xd

    invoke-direct {v6, v4, v8, v2}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/xiaomi/ai/api/Common$EmotionType;->EMBARRASS:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v4, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v2, "THANKFUL"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v8}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/xiaomi/ai/api/Common$EmotionType;->THANKFUL:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v2, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v8, "CALM"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v8, v4, v6}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaomi/ai/api/Common$EmotionType;->CALM:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v8, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v6, "AMUSE"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v8, v6, v2, v4}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/xiaomi/ai/api/Common$EmotionType;->AMUSE:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v6, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v4, "WORRY"

    move-object/from16 v20, v8

    const/16 v8, 0x11

    invoke-direct {v6, v4, v8, v2}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/xiaomi/ai/api/Common$EmotionType;->WORRY:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v4, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v2, "AMAZE"

    move-object/from16 v21, v6

    const/16 v6, 0x12

    invoke-direct {v4, v2, v6, v8}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/xiaomi/ai/api/Common$EmotionType;->AMAZE:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v2, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v8, "ANGRY"

    move-object/from16 v22, v4

    const/16 v4, 0x13

    invoke-direct {v2, v8, v4, v6}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaomi/ai/api/Common$EmotionType;->ANGRY:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v8, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v6, "DOUBT"

    move-object/from16 v23, v2

    const/16 v2, 0x14

    invoke-direct {v8, v6, v2, v4}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/xiaomi/ai/api/Common$EmotionType;->DOUBT:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v6, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v4, "TRUST"

    move-object/from16 v24, v8

    const/16 v8, 0x15

    invoke-direct {v6, v4, v8, v2}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/xiaomi/ai/api/Common$EmotionType;->TRUST:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v4, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v2, "HATE"

    move-object/from16 v25, v6

    const/16 v6, 0x16

    invoke-direct {v4, v2, v6, v8}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/xiaomi/ai/api/Common$EmotionType;->HATE:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v2, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v6, "FEAR"

    const/16 v8, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x16

    invoke-direct {v2, v6, v8, v4}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaomi/ai/api/Common$EmotionType;->FEAR:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v4, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v6, "CARE"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x17

    invoke-direct {v4, v6, v8, v2}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/xiaomi/ai/api/Common$EmotionType;->CARE:Lcom/xiaomi/ai/api/Common$EmotionType;

    new-instance v2, Lcom/xiaomi/ai/api/Common$EmotionType;

    const-string v6, "ENCOURAGE"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x18

    invoke-direct {v2, v6, v8, v4}, Lcom/xiaomi/ai/api/Common$EmotionType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaomi/ai/api/Common$EmotionType;->ENCOURAGE:Lcom/xiaomi/ai/api/Common$EmotionType;

    const/16 v4, 0x1a

    new-array v4, v4, [Lcom/xiaomi/ai/api/Common$EmotionType;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v2, v4, v0

    sput-object v4, Lcom/xiaomi/ai/api/Common$EmotionType;->$VALUES:[Lcom/xiaomi/ai/api/Common$EmotionType;

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

    iput p3, p0, Lcom/xiaomi/ai/api/Common$EmotionType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ai/api/Common$EmotionType;
    .locals 1

    const-class v0, Lcom/xiaomi/ai/api/Common$EmotionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/ai/api/Common$EmotionType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/ai/api/Common$EmotionType;
    .locals 1

    sget-object v0, Lcom/xiaomi/ai/api/Common$EmotionType;->$VALUES:[Lcom/xiaomi/ai/api/Common$EmotionType;

    invoke-virtual {v0}, [Lcom/xiaomi/ai/api/Common$EmotionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ai/api/Common$EmotionType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/ai/api/Common$EmotionType;->id:I

    return p0
.end method
