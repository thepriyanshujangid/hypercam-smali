.class public LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0;
.super Ljava/lang/Object;
.source "DateDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0$OooO;,
        LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0$OooO0o;,
        LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0$OooO0OO;,
        LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0$OooO00o;,
        LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0$OooO0O0;
    }
.end annotation


# static fields
.field private static final OooO00o:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0;->OooO00o:Ljava/util/HashSet;

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Class;

    .line 2
    const-class v2, Ljava/util/Calendar;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/util/GregorianCalendar;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v4, Ljava/sql/Date;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-class v4, Ljava/util/Date;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-class v4, Ljava/sql/Timestamp;

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    aget-object v2, v1, v3

    .line 4
    sget-object v4, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0;->OooO00o:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(Ljava/lang/Class;Ljava/lang/String;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOo00<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0;->OooO00o:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2
    const-class p1, Ljava/util/Calendar;

    if-ne p0, p1, :cond_0

    .line 3
    new-instance p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0$OooO00o;

    invoke-direct {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0$OooO00o;-><init>()V

    return-object p0

    .line 4
    :cond_0
    const-class p1, Ljava/util/Date;

    if-ne p0, p1, :cond_1

    .line 5
    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0$OooO0OO;->o0000oOO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0$OooO0OO;

    return-object p0

    .line 6
    :cond_1
    const-class p1, Ljava/sql/Date;

    if-ne p0, p1, :cond_2

    .line 7
    new-instance p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0$OooO0o;

    invoke-direct {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0$OooO0o;-><init>()V

    return-object p0

    .line 8
    :cond_2
    const-class p1, Ljava/sql/Timestamp;

    if-ne p0, p1, :cond_3

    .line 9
    new-instance p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0$OooO;

    invoke-direct {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0$OooO;-><init>()V

    return-object p0

    .line 10
    :cond_3
    const-class p1, Ljava/util/GregorianCalendar;

    if-ne p0, p1, :cond_4

    .line 11
    new-instance p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0$OooO00o;

    const-class p1, Ljava/util/GregorianCalendar;

    invoke-direct {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/OooOOO0$OooO00o;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method
