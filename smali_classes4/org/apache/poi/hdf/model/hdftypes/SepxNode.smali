.class public final Lorg/apache/poi/hdf/model/hdftypes/SepxNode;
.super Lorg/apache/poi/hdf/model/hdftypes/PropertyNode;
.source "SepxNode.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public _index:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/poi/hdf/model/hdftypes/PropertyNode;-><init>(II[B)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSepx()[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hdf/model/hdftypes/PropertyNode;->getGrpprl()[B

    move-result-object p0

    return-object p0
.end method
