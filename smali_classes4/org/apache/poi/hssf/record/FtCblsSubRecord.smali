.class public final Lorg/apache/poi/hssf/record/FtCblsSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "FtCblsSubRecord.java"


# static fields
.field private static final ENCODED_SIZE:I = 0x14

.field public static final sid:S = 0xcs


# instance fields
.field private reserved:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    .line 4
    new-array p2, p2, [B

    .line 5
    invoke-interface {p1, p2}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 6
    iput-object p2, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    return-void

    .line 7
    :cond_0
    new-instance p0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected size ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FtCblsSubRecord;-><init>()V

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    array-length v1, p0

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 3
    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput-object v2, v0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    array-length p0, p0

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    const/16 v0, 0xc

    .line 1
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 3
    iget-object p0, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[FtCbls ]"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "  size     = "

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->getDataSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "  reserved = "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    invoke-static {p0}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "[/FtCbls ]"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
