.class public final Lcom/google/android/gms/common/images/zad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.1.0"


# instance fields
.field public final zaa:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/common/images/zad;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/common/images/zad;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    iget-object p0, p0, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
