.class public final LOooO0o/o00ooOOo/oo0o0Oo/OooO0O0;
.super Ljava/lang/Object;
.source "PathUtils.kt"


# annotations
.annotation runtime LOooO0o/o0000Ooo;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001d\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001e\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u001e\u0010\u000b\u001a\n \u0007*\u0004\u0018\u00010\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "LOooO0o/o00ooOOo/oo0o0Oo/OooO0O0;",
        "",
        "Ljava/nio/file/Path;",
        "path",
        "base",
        "OooO00o",
        "(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;",
        "kotlin.jvm.PlatformType",
        "OooO0O0",
        "Ljava/nio/file/Path;",
        "parentPath",
        "emptyPath",
        "<init>",
        "()V",
        "kotlin-stdlib-jdk7"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final OooO00o:Ljava/nio/file/Path;

.field private static final OooO0O0:Ljava/nio/file/Path;

.field public static final OooO0OO:LOooO0o/o00ooOOo/oo0o0Oo/OooO0O0;
    .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LOooO0o/o00ooOOo/oo0o0Oo/OooO0O0;

    invoke-direct {v0}, LOooO0o/o00ooOOo/oo0o0Oo/OooO0O0;-><init>()V

    sput-object v0, LOooO0o/o00ooOOo/oo0o0Oo/OooO0O0;->OooO0OO:LOooO0o/o00ooOOo/oo0o0Oo/OooO0O0;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, ""

    .line 2
    invoke-static {v2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    sput-object v1, LOooO0o/o00ooOOo/oo0o0Oo/OooO0O0;->OooO00o:Ljava/nio/file/Path;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".."

    .line 3
    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, LOooO0o/o00ooOOo/oo0o0Oo/OooO0O0;->OooO0O0:Ljava/nio/file/Path;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 5
    .param p1    # Ljava/nio/file/Path;
        .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
        .end annotation
    .end param
    .param p2    # Ljava/nio/file/Path;
        .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
        .end annotation
    .end param
    .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
    .end annotation

    const-string p0, "path"

    invoke-static {p1, p0}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "base"

    invoke-static {p2, p0}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object p0

    .line 2
    invoke-interface {p1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    const-string v0, "bn"

    .line 4
    invoke-static {p0, v0}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooOOOO(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/nio/file/Path;->getNameCount()I

    move-result v0

    const-string v1, "pn"

    invoke-static {p1, v1}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooOOOO(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/nio/file/Path;->getNameCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 5
    invoke-interface {p0, v2}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v3

    sget-object v4, LOooO0o/o00ooOOo/oo0o0Oo/OooO0O0;->OooO0O0:Ljava/nio/file/Path;

    invoke-static {v3, v4}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooO0oO(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p1, v2}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3, v4}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooO0oO(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to compute relative path"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    :goto_1
    invoke-static {p1, p0}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooO0oO(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    sget-object v0, LOooO0o/o00ooOOo/oo0o0Oo/OooO0O0;->OooO00o:Ljava/nio/file/Path;

    invoke-static {p0, v0}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooO0oO(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "rn"

    .line 9
    invoke-static {p2, p1}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooOOOO(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object p1

    const-string v0, "rn.fileSystem"

    invoke-static {p1, v0}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooOOOO(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object p1

    const-string v2, "rn.fileSystem.separator"

    invoke-static {p1, v2}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooOOOO(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v2, v3}, LOooO0o/o00oooo0/o00000;->o000OOoO(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-interface {p2}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object p1

    invoke-interface {p2}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object p2

    invoke-static {p2, v0}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooOOOO(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p0, p2}, LOooO0o/o00oooo0/o00000OO;->o0O000o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, p2

    :goto_2
    const-string p0, "r"

    .line 11
    invoke-static {p1, p0}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooOOOO(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
