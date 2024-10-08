.class public Lcom/miui/camerainfra/exif/ExifOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ExifOutputStream.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final STATE_FRAME_HEADER:I = 0x1

.field private static final STATE_JPEG_DATA:I = 0x2

.field private static final STATE_SOI:I = 0x0

.field private static final STREAMBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ExifOutputStream"


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mIccData:[B

.field private final mInterface:Lcom/miui/camerainfra/exif/ExifInterface;

.field private mSingleByteArray:[B

.field private mState:I

.field private writeDataForHeif:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/miui/camerainfra/exif/ExifInterface;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mState:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mSingleByteArray:[B

    const/4 v0, 0x4

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 5
    iput-boolean p1, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->writeDataForHeif:Z

    .line 6
    iput-object p2, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mInterface:Lcom/miui/camerainfra/exif/ExifInterface;

    return-void
.end method

.method private requestByteToBuffer(I[BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr p1, v0

    if-le p4, p1, :cond_0

    move p4, p1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return p4
.end method

.method private writeExifData(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/miui/camerainfra/exif/ExifInterface$ByteOrderedDataOutputStream;

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1, v2}, Lcom/miui/camerainfra/exif/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mInterface:Lcom/miui/camerainfra/exif/ExifInterface;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/miui/camerainfra/exif/ExifInterface;->setMimeType(I)V

    const-string v1, "ExifOutputStream"

    const-string/jumbo v2, "writeExifDataForHeif"

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 4
    fill-array-data v1, :array_0

    .line 5
    invoke-virtual {v0, v1}, Lcom/miui/camerainfra/exif/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    :cond_0
    const/16 v1, -0x1f

    .line 6
    invoke-virtual {v0, v1}, Lcom/miui/camerainfra/exif/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 7
    iget-object v2, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mInterface:Lcom/miui/camerainfra/exif/ExifInterface;

    invoke-virtual {v2, v0}, Lcom/miui/camerainfra/exif/ExifInterface;->writeExifSegment(Lcom/miui/camerainfra/exif/ExifInterface$ByteOrderedDataOutputStream;)I

    if-eqz p1, :cond_1

    .line 8
    iget-object p0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mInterface:Lcom/miui/camerainfra/exif/ExifInterface;

    const-string p1, "Xmp"

    invoke-virtual {p0, p1}, Lcom/miui/camerainfra/exif/ExifInterface;->getAttributeBytes(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Lcom/miui/camerainfra/exif/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 10
    array-length p1, p0

    sget-object v1, Lcom/miui/camerainfra/exif/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    array-length v2, v1

    add-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x2

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Lcom/miui/camerainfra/exif/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/miui/camerainfra/exif/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 12
    invoke-virtual {v0, p0}, Lcom/miui/camerainfra/exif/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x45t
        0x78t
        0x69t
        0x66t
    .end array-data
.end method


# virtual methods
.method public setIccData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mIccData:[B

    return-void
.end method

.method public setWriteDataForHeif(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->writeDataForHeif:Z

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mSingleByteArray:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 39
    invoke-virtual {p0, v0}, Lcom/miui/camerainfra/exif/ExifOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/camerainfra/exif/ExifOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mByteToSkip:I

    const/4 v1, 0x2

    if-gtz v0, :cond_0

    iget v2, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mByteToCopy:I

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mState:I

    if-eq v2, v1, :cond_10

    :cond_0
    if-lez p3, :cond_10

    if-lez v0, :cond_2

    if-le p3, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    sub-int/2addr p3, v2

    sub-int/2addr v0, v2

    .line 2
    iput v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mByteToSkip:I

    add-int/2addr p2, v2

    .line 3
    :cond_2
    iget v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mByteToCopy:I

    if-lez v0, :cond_4

    if-le p3, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, p3

    .line 4
    :goto_2
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p3, v0

    .line 5
    iget v2, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mByteToCopy:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mByteToCopy:I

    add-int/2addr p2, v0

    :cond_4
    if-nez p3, :cond_5

    return-void

    .line 6
    :cond_5
    iget v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_d

    if-eq v0, v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    .line 7
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/camerainfra/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v2

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    .line 8
    iget-object v2, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 9
    iget-object v2, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x27

    if-ne v2, v4, :cond_7

    .line 10
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 11
    iget-object v2, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 12
    :cond_7
    iget-object v2, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ge v2, v0, :cond_8

    return-void

    .line 13
    :cond_8
    iget-object v2, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 14
    iget-object v2, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x1f

    const v5, 0xffff

    if-ne v2, v4, :cond_9

    .line 15
    iget-object v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mByteToSkip:I

    .line 16
    iget-object v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mIccData:[B

    if-nez v0, :cond_c

    .line 17
    iput v1, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mState:I

    goto :goto_3

    :cond_9
    const/16 v4, -0x1e

    if-ne v2, v4, :cond_a

    .line 18
    iget-object v4, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mIccData:[B

    if-eqz v4, :cond_a

    .line 19
    iget-object v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mByteToSkip:I

    .line 20
    iput v1, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mState:I

    goto :goto_3

    .line 21
    :cond_a
    invoke-static {v2}, Lcom/miui/camerainfra/exif/JpegHeader;->isSofMarker(S)Z

    move-result v2

    if-nez v2, :cond_b

    .line 22
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 23
    iget-object v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mByteToCopy:I

    goto :goto_3

    .line 24
    :cond_b
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 25
    iput v1, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mState:I

    .line 26
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 27
    :cond_d
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/miui/camerainfra/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 28
    iget-object v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ge v0, v1, :cond_e

    return-void

    .line 29
    :cond_e
    iget-object v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 30
    iget-object v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v4, -0x28

    if-ne v0, v4, :cond_f

    .line 31
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 32
    iput v2, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mState:I

    .line 33
    iget-object v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 34
    iget-boolean v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->writeDataForHeif:Z

    invoke-direct {p0, v0}, Lcom/miui/camerainfra/exif/ExifOutputStream;->writeExifData(Z)V

    .line 35
    invoke-virtual {p0}, Lcom/miui/camerainfra/exif/ExifOutputStream;->writeIccProfileData()V

    goto/16 :goto_0

    .line 36
    :cond_f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Not a valid jpeg image, cannot write exif"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    if-lez p3, :cond_11

    .line 37
    iget-object p0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_11
    return-void
.end method

.method public writeExifForHeif()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/miui/camerainfra/exif/ExifOutputStream;->writeExifData(Z)V

    return-void
.end method

.method public writeIccProfileData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mIccData:[B

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/miui/camerainfra/exif/OrderedDataOutputStream;

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/miui/camerainfra/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/miui/camerainfra/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/miui/camerainfra/exif/OrderedDataOutputStream;

    const/16 v1, -0x1e

    .line 4
    invoke-virtual {v0, v1}, Lcom/miui/camerainfra/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/camerainfra/exif/OrderedDataOutputStream;

    .line 5
    iget-object v1, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mIccData:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/camerainfra/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/camerainfra/exif/OrderedDataOutputStream;

    const v1, 0x4943435f

    const v2, 0x50524f46

    const v3, 0x494c4500    # 836688.0f

    const/16 v4, 0x101

    .line 6
    invoke-virtual {v0, v1}, Lcom/miui/camerainfra/exif/OrderedDataOutputStream;->writeInt(I)Lcom/miui/camerainfra/exif/OrderedDataOutputStream;

    .line 7
    invoke-virtual {v0, v2}, Lcom/miui/camerainfra/exif/OrderedDataOutputStream;->writeInt(I)Lcom/miui/camerainfra/exif/OrderedDataOutputStream;

    .line 8
    invoke-virtual {v0, v3}, Lcom/miui/camerainfra/exif/OrderedDataOutputStream;->writeInt(I)Lcom/miui/camerainfra/exif/OrderedDataOutputStream;

    .line 9
    invoke-virtual {v0, v4}, Lcom/miui/camerainfra/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/camerainfra/exif/OrderedDataOutputStream;

    .line 10
    iget-object p0, p0, Lcom/miui/camerainfra/exif/ExifOutputStream;->mIccData:[B

    invoke-virtual {v0, p0}, Ljava/io/FilterOutputStream;->write([B)V

    return-void
.end method
