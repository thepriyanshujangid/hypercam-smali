.class public final Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;
.super Ljava/lang/Object;
.source "RegularExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Context"
.end annotation


# instance fields
.field public charTarget:[C

.field public ciTarget:Ljava/text/CharacterIterator;

.field public inuse:Z

.field public length:I

.field public limit:I

.field public match:Lorg/apache/xmlbeans/impl/regex/Match;

.field public offsets:[I

.field public start:I

.field public strTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return-void
.end method

.method private resetCommon(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    .line 4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->offsets:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eq v0, p1, :cond_1

    .line 5
    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->offsets:[I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 6
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->offsets:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public reset(Ljava/lang/String;III)V
    .locals 0

    .line 5
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->strTarget:Ljava/lang/String;

    .line 6
    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    .line 7
    iput p3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    .line 8
    invoke-direct {p0, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->resetCommon(I)V

    return-void
.end method

.method public reset(Ljava/text/CharacterIterator;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->ciTarget:Ljava/text/CharacterIterator;

    .line 2
    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    .line 3
    iput p3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    .line 4
    invoke-direct {p0, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->resetCommon(I)V

    return-void
.end method

.method public reset([CIII)V
    .locals 0

    .line 9
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->charTarget:[C

    .line 10
    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    .line 11
    iput p3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    .line 12
    invoke-direct {p0, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->resetCommon(I)V

    return-void
.end method
