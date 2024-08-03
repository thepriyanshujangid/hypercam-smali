.class public final Lcom/android/camera/module/loader/base/StrongNullHolder;
.super Ljava/lang/Object;
.source "StrongNullHolder.java"

# interfaces
.implements Lcom/android/camera/module/loader/base/NullHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/module/loader/base/NullHolder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mException:I

.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "exception"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/loader/base/StrongNullHolder;->mValue:Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/android/camera/module/loader/base/StrongNullHolder;->mException:I

    return-void
.end method

.method private static of(Ljava/lang/Object;I)Lcom/android/camera/module/loader/base/NullHolder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "exception"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)",
            "Lcom/android/camera/module/loader/base/NullHolder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/module/loader/base/StrongNullHolder;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/loader/base/StrongNullHolder;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static final ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/base/NullHolder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/android/camera/module/loader/base/NullHolder<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0xe0

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/module/loader/base/StrongNullHolder;->of(Ljava/lang/Object;I)Lcom/android/camera/module/loader/base/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method public static final ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/base/NullHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "exception"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)",
            "Lcom/android/camera/module/loader/base/NullHolder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/module/loader/base/StrongNullHolder;->of(Ljava/lang/Object;I)Lcom/android/camera/module/loader/base/NullHolder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/base/StrongNullHolder;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getException()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/loader/base/StrongNullHolder;->mException:I

    return p0
.end method

.method public isPresent()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/base/StrongNullHolder;->mValue:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setException(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/camera/module/loader/base/StrongNullHolder;->mException:I

    return-void
.end method
