.class public final enum Lorg/apache/poi/ss/usermodel/VerticalAlignment;
.super Ljava/lang/Enum;
.source "VerticalAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/VerticalAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/VerticalAlignment;

.field public static final enum BOTTOM:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

.field public static final enum CENTER:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

.field public static final enum DISTRIBUTED:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

.field public static final enum JUSTIFY:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

.field public static final enum TOP:Lorg/apache/poi/ss/usermodel/VerticalAlignment;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->TOP:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 2
    new-instance v1, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->CENTER:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 3
    new-instance v3, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    const-string v5, "BOTTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->BOTTOM:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 4
    new-instance v5, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    const-string v7, "JUSTIFY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->JUSTIFY:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 5
    new-instance v7, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    const-string v9, "DISTRIBUTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->DISTRIBUTED:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->$VALUES:[Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->$VALUES:[Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/VerticalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    return-object v0
.end method
