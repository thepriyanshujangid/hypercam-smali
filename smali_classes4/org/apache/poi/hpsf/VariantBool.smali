.class public Lorg/apache/poi/hpsf/VariantBool;
.super Ljava/lang/Object;
.source "VariantBool.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final SIZE:I = 0x2

.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _value:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hpsf/VariantBool;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/VariantBool;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 3
    iput-boolean p2, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    return-void

    :cond_0
    const v0, 0xffff

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    return-void

    .line 5
    :cond_1
    sget-object v0, Lorg/apache/poi/hpsf/VariantBool;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const-string v4, "VARIANT_BOOL value \'"

    const-string v5, "\' is incorrect"

    invoke-virtual {v0, v2, v4, v3, v5}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    move p2, v1

    .line 6
    :cond_2
    iput-boolean p2, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    return-void
.end method


# virtual methods
.method public getValue()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    return p0
.end method

.method public setValue(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    return-void
.end method
