.class public final LOooO0o/o00oooo0/o00Oo0$OooO0O0;
.super Ljava/lang/Object;
.source "Regex.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime LOooO0o/o0000Ooo;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000 \u000e2\u00060\u0001j\u0002`\u0002:\u0001\u000eB\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000c\u001a\u00020\rH\u0002R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/text/Regex$Serialized;",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "pattern",
        "",
        "flags",
        "",
        "(Ljava/lang/String;I)V",
        "getFlags",
        "()I",
        "getPattern",
        "()Ljava/lang/String;",
        "readResolve",
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

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0o/o00oooo0/o00Oo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0o/o00oooo0/o00Oo0$OooO0O0$OooO00o;
    }
.end annotation


# static fields
.field private static final o0000o:J

.field public static final o0000o0o:LOooO0o/o00oooo0/o00Oo0$OooO0O0$OooO00o;
    .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
    .end annotation
.end field


# instance fields
.field private final o0000oO0:Ljava/lang/String;
    .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
    .end annotation
.end field

.field private final o0000oOO:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LOooO0o/o00oooo0/o00Oo0$OooO0O0$OooO00o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LOooO0o/o00oooo0/o00Oo0$OooO0O0$OooO00o;-><init>(LOooO0o/o00ooOoO/o000O00O/o0OOO0o;)V

    sput-object v0, LOooO0o/o00oooo0/o00Oo0$OooO0O0;->o0000o0o:LOooO0o/o00oooo0/o00Oo0$OooO0O0$OooO00o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
        .end annotation
    .end param

    const-string v0, "pattern"

    invoke-static {p1, v0}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0o/o00oooo0/o00Oo0$OooO0O0;->o0000oO0:Ljava/lang/String;

    iput p2, p0, LOooO0o/o00oooo0/o00Oo0$OooO0O0;->o0000oOO:I

    return-void
.end method

.method private final OooO0OO()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, LOooO0o/o00oooo0/o00Oo0;

    iget-object v1, p0, LOooO0o/o00oooo0/o00Oo0$OooO0O0;->o0000oO0:Ljava/lang/String;

    iget p0, p0, LOooO0o/o00oooo0/o00Oo0$OooO0O0;->o0000oOO:I

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    const-string v1, "compile(pattern, flags)"

    invoke-static {p0, v1}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooOOOO(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, LOooO0o/o00oooo0/o00Oo0;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method


# virtual methods
.method public final OooO00o()I
    .locals 0

    .line 1
    iget p0, p0, LOooO0o/o00oooo0/o00Oo0$OooO0O0;->o0000oOO:I

    return p0
.end method

.method public final OooO0O0()Ljava/lang/String;
    .locals 0
    .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
    .end annotation

    .line 1
    iget-object p0, p0, LOooO0o/o00oooo0/o00Oo0$OooO0O0;->o0000oO0:Ljava/lang/String;

    return-object p0
.end method
