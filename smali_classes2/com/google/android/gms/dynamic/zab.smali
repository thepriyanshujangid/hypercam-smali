.class public final Lcom/google/android/gms/dynamic/zab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/dynamic/zah;


# instance fields
.field public final synthetic zaa:Landroid/app/Activity;

.field public final synthetic zab:Landroid/os/Bundle;

.field public final synthetic zac:Landroid/os/Bundle;

.field public final synthetic zad:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zab;->zad:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    iput-object p2, p0, Lcom/google/android/gms/dynamic/zab;->zaa:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/dynamic/zab;->zab:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/dynamic/zab;->zac:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zab(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/dynamic/zab;->zad:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaa(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zab;->zaa:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/dynamic/zab;->zab:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/google/android/gms/dynamic/zab;->zac:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
