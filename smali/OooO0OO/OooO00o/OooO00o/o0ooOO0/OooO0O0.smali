.class public LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;
.super Ljava/lang/Object;
.source "DocumentData.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0$OooO00o;
    }
.end annotation


# instance fields
.field public final OooO:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:F

.field public final OooO0Oo:LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0$OooO00o;

.field public final OooO0o:F

.field public final OooO0o0:I

.field public final OooO0oO:F

.field public final OooO0oo:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final OooOO0:F

.field public final OooOO0O:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0$OooO00o;IFFIIFZ)V
    .locals 0
    .param p8    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p9    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooO00o:Ljava/lang/String;

    .line 3
    iput-object p2, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 4
    iput p3, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooO0OO:F

    .line 5
    iput-object p4, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooO0Oo:LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0$OooO00o;

    .line 6
    iput p5, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooO0o0:I

    .line 7
    iput p6, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooO0o:F

    .line 8
    iput p7, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooO0oO:F

    .line 9
    iput p8, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooO0oo:I

    .line 10
    iput p9, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooO:I

    .line 11
    iput p10, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooOO0:F

    .line 12
    iput-boolean p11, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooOO0O:Z

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    .line 3
    iget v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooO0OO:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooO0Oo:LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0$OooO00o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooO0o0:I

    add-int/2addr v0, v1

    .line 6
    iget v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooO0o:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget p0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0O0;->OooO0oo:I

    add-int/2addr v0, p0

    return v0
.end method
