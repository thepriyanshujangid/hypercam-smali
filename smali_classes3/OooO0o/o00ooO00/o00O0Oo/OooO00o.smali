.class public abstract LOooO0o/o00ooO00/o00O0Oo/OooO00o;
.super LOooO0o/o00ooO00/OooOOO0;
.source "MapBuilder.kt"


# annotations
.annotation runtime LOooO0o/o0000Ooo;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010&\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008 \u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00040\u0002*\u0004\u0008\u0001\u0010\u0003*\u0004\u0008\u0002\u0010\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00028\u0000H\u0086\u0002\u00a2\u0006\u0002\u0010\nJ\u001c\u0010\u000b\u001a\u00020\u00082\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0002H&\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlin/collections/builders/AbstractMapBuilderEntrySet;",
        "E",
        "",
        "K",
        "V",
        "Lkotlin/collections/AbstractMutableSet;",
        "()V",
        "contains",
        "",
        "element",
        "(Ljava/util/Map$Entry;)Z",
        "containsEntry",
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Ljava/util/Map$Entry<",
        "+TK;+TV;>;K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LOooO0o/o00ooO00/OooOOO0<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO0o/o00ooO00/OooOOO0;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO0O0(Ljava/util/Map$Entry;)Z
    .locals 1
    .param p1    # Ljava/util/Map$Entry;
        .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, LOooO0o/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, LOooO0o/o00ooO00/o00O0Oo/OooO00o;->OooO0OO(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public abstract OooO0OO(Ljava/util/Map$Entry;)Z
    .param p1    # Ljava/util/Map$Entry;
        .annotation build LOooO/OooO0OO/OooO00o/OooO0o;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation
.end method

.method public bridge OooO0Oo(Ljava/util/Map$Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, LOooO0o/o00ooO00/o00O0Oo/OooO00o;->OooO0O0(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, LOooO0o/o00ooO00/o00O0Oo/OooO00o;->OooO0Oo(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
