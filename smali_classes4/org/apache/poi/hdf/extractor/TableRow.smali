.class public final Lorg/apache/poi/hdf/extractor/TableRow;
.super Ljava/lang/Object;
.source "TableRow.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public _cells:Ljava/util/ArrayList;

.field public _descriptor:Lorg/apache/poi/hdf/extractor/TAP;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lorg/apache/poi/hdf/extractor/TAP;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/poi/hdf/extractor/TableRow;->_cells:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lorg/apache/poi/hdf/extractor/TableRow;->_descriptor:Lorg/apache/poi/hdf/extractor/TAP;

    return-void
.end method


# virtual methods
.method public getCells()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/hdf/extractor/TableRow;->_cells:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTAP()Lorg/apache/poi/hdf/extractor/TAP;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/hdf/extractor/TableRow;->_descriptor:Lorg/apache/poi/hdf/extractor/TAP;

    return-object p0
.end method
