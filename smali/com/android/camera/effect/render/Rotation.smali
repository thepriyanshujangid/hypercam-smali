.class public final enum Lcom/android/camera/effect/render/Rotation;
.super Ljava/lang/Enum;
.source "Rotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/effect/render/Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/effect/render/Rotation;

.field public static final enum NORMAL:Lcom/android/camera/effect/render/Rotation;

.field public static final enum ROTATION_180:Lcom/android/camera/effect/render/Rotation;

.field public static final enum ROTATION_270:Lcom/android/camera/effect/render/Rotation;

.field public static final enum ROTATION_90:Lcom/android/camera/effect/render/Rotation;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/camera/effect/render/Rotation;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/render/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/render/Rotation;->NORMAL:Lcom/android/camera/effect/render/Rotation;

    .line 2
    new-instance v1, Lcom/android/camera/effect/render/Rotation;

    const-string v3, "ROTATION_90"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/camera/effect/render/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/camera/effect/render/Rotation;->ROTATION_90:Lcom/android/camera/effect/render/Rotation;

    .line 3
    new-instance v3, Lcom/android/camera/effect/render/Rotation;

    const-string v5, "ROTATION_180"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/camera/effect/render/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/camera/effect/render/Rotation;->ROTATION_180:Lcom/android/camera/effect/render/Rotation;

    .line 4
    new-instance v5, Lcom/android/camera/effect/render/Rotation;

    const-string v7, "ROTATION_270"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/camera/effect/render/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/camera/effect/render/Rotation;->ROTATION_270:Lcom/android/camera/effect/render/Rotation;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/camera/effect/render/Rotation;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/android/camera/effect/render/Rotation;->$VALUES:[Lcom/android/camera/effect/render/Rotation;

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

.method public static fromInt(I)Lcom/android/camera/effect/render/Rotation;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    if-eqz p0, :cond_4

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x168

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera/effect/render/Rotation;->NORMAL:Lcom/android/camera/effect/render/Rotation;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is an unknown rotation. Needs to be either 0, 90, 180 or 270!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    sget-object p0, Lcom/android/camera/effect/render/Rotation;->ROTATION_270:Lcom/android/camera/effect/render/Rotation;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/android/camera/effect/render/Rotation;->ROTATION_180:Lcom/android/camera/effect/render/Rotation;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/android/camera/effect/render/Rotation;->ROTATION_90:Lcom/android/camera/effect/render/Rotation;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lcom/android/camera/effect/render/Rotation;->NORMAL:Lcom/android/camera/effect/render/Rotation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/effect/render/Rotation;
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
    const-class v0, Lcom/android/camera/effect/render/Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/render/Rotation;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/effect/render/Rotation;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/effect/render/Rotation;->$VALUES:[Lcom/android/camera/effect/render/Rotation;

    invoke-virtual {v0}, [Lcom/android/camera/effect/render/Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/effect/render/Rotation;

    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/effect/render/Rotation$1;->$SwitchMap$com$android$camera$effect$render$Rotation:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/16 p0, 0x10e

    return p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown Rotation!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
