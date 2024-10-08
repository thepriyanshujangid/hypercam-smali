.class public Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;
.super Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;
.source "MessagePropertiesChunk.java"


# instance fields
.field private attachmentCount:J

.field private nextAttachmentId:J

.field private nextRecipientId:J

.field private recipientCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttachmentCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->attachmentCount:J

    return-wide v0
.end method

.method public getNextAttachmentId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->nextAttachmentId:J

    return-wide v0
.end method

.method public getNextRecipientId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->nextRecipientId:J

    return-wide v0
.end method

.method public getRecipientCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->recipientCount:J

    return-wide v0
.end method

.method public readValue(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readLong(Ljava/io/InputStream;)J

    .line 2
    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readUInt(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->nextRecipientId:J

    .line 3
    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readUInt(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->nextAttachmentId:J

    .line 4
    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readUInt(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->recipientCount:J

    .line 5
    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readUInt(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->attachmentCount:J

    .line 6
    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readLong(Ljava/io/InputStream;)J

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->readProperties(Ljava/io/InputStream;)V

    return-void
.end method

.method public writeValue(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 1
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    iget-wide v1, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->nextRecipientId:J

    invoke-static {v1, v2, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 3
    iget-wide v1, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->nextAttachmentId:J

    invoke-static {v1, v2, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 4
    iget-wide v1, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->recipientCount:J

    invoke-static {v1, v2, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 5
    iget-wide v1, p0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;->attachmentCount:J

    invoke-static {v1, v2, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    new-array v0, v0, [B

    .line 6
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/poi/hsmf/datatypes/PropertiesChunk;->writeProperties(Ljava/io/OutputStream;)V

    return-void
.end method
