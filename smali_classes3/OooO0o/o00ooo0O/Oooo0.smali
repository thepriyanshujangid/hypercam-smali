.class public LOooO0o/o00ooo0O/Oooo0;
.super Ljava/lang/Object;
.source "Progressions.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements LOooO0o/o00ooOoO/o000O00O/o00O0OO/OooO00o;


# annotations
.annotation runtime LOooO0o/o0000Ooo;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\u000c\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u00192\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B\u001f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0006H\u0016J\u0008\u0010\u0014\u001a\u00020\u0010H\u0016J\t\u0010\u0015\u001a\u00020\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R\u0011\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlin/ranges/CharProgression;",
        "",
        "",
        "start",
        "endInclusive",
        "step",
        "",
        "(CCI)V",
        "first",
        "getFirst",
        "()C",
        "last",
        "getLast",
        "getStep",
        "()I",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "isEmpty",
        "iterator",
        "Lkotlin/collections/CharIterator;",
        "toString",
        "",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0o/o00ooo0O/Oooo0$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Character;",
        ">;",
        "LOooO0o/o00ooOoO/o000O00O/o00O0OO/OooO00o;"
    }
.end annotation


# static fields
.field public static final o0000o0o:LOooO0o/o00ooo0O/Oooo0$OooO00o;
    .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
    .end annotation
.end field


# instance fields
.field private final o0000o:C

.field private final o0000oO0:C

.field private final o0000oOO:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LOooO0o/o00ooo0O/Oooo0$OooO00o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LOooO0o/o00ooo0O/Oooo0$OooO00o;-><init>(LOooO0o/o00ooOoO/o000O00O/o0OOO0o;)V

    sput-object v0, LOooO0o/o00ooo0O/Oooo0;->o0000o0o:LOooO0o/o00ooo0O/Oooo0$OooO00o;

    return-void
.end method

.method public constructor <init>(CCI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_0

    .line 2
    iput-char p1, p0, LOooO0o/o00ooo0O/Oooo0;->o0000o:C

    .line 3
    invoke-static {p1, p2, p3}, LOooO0o/o00ooOO/Oooo000;->OooO0OO(III)I

    move-result p1

    int-to-char p1, p1

    iput-char p1, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oO0:C

    .line 4
    iput p3, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oOO:I

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be non-zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final OooO0Oo()C
    .locals 0

    .line 1
    iget-char p0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000o:C

    return p0
.end method

.method public final OooO0o()I
    .locals 0

    .line 1
    iget p0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oOO:I

    return p0
.end method

.method public final OooO0o0()C
    .locals 0

    .line 1
    iget-char p0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oO0:C

    return p0
.end method

.method public OooO0oO()LOooO0o/o00ooO00/o00oO0o;
    .locals 3
    .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
    .end annotation

    .line 1
    new-instance v0, LOooO0o/o00ooo0O/o000oOoO;

    iget-char v1, p0, LOooO0o/o00ooo0O/Oooo0;->o0000o:C

    iget-char v2, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oO0:C

    iget p0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oOO:I

    invoke-direct {v0, v1, v2, p0}, LOooO0o/o00ooo0O/o000oOoO;-><init>(CCI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build LOooO/OooO0OO/OooO00o/OooO;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, LOooO0o/o00ooo0O/Oooo0;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LOooO0o/o00ooo0O/Oooo0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LOooO0o/o00ooo0O/Oooo0;

    invoke-virtual {v0}, LOooO0o/o00ooo0O/Oooo0;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-char v0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000o:C

    check-cast p1, LOooO0o/o00ooo0O/Oooo0;

    iget-char v1, p1, LOooO0o/o00ooo0O/Oooo0;->o0000o:C

    if-ne v0, v1, :cond_2

    iget-char v0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oO0:C

    iget-char v1, p1, LOooO0o/o00ooo0O/Oooo0;->o0000oO0:C

    if-ne v0, v1, :cond_2

    iget p0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oOO:I

    iget p1, p1, LOooO0o/o00ooo0O/Oooo0;->o0000oOO:I

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO0o/o00ooo0O/Oooo0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-char v0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000o:C

    mul-int/lit8 v0, v0, 0x1f

    iget-char v1, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oO0:C

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oOO:I

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 3

    .line 1
    iget v0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oOO:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-char v0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000o:C

    iget-char p0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oO0:C

    invoke-static {v0, p0}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooOo00(II)I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_0
    iget-char v0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000o:C

    iget-char p0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oO0:C

    invoke-static {v0, p0}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooOo00(II)I

    move-result p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, LOooO0o/o00ooo0O/Oooo0;->OooO0oO()LOooO0o/o00ooO00/o00oO0o;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
    .end annotation

    .line 1
    iget v0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oOO:I

    const-string v1, " step "

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v2, p0, LOooO0o/o00ooo0O/Oooo0;->o0000o:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oO0:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oOO:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v2, p0, LOooO0o/o00ooo0O/Oooo0;->o0000o:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " downTo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oO0:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LOooO0o/o00ooo0O/Oooo0;->o0000oOO:I

    neg-int p0, p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
