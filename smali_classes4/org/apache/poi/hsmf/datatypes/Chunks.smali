.class public final Lorg/apache/poi/hsmf/datatypes/Chunks;
.super Ljava/lang/Object;
.source "Chunks.java"

# interfaces
.implements Lorg/apache/poi/hsmf/datatypes/ChunkGroup;


# instance fields
.field private allChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hsmf/datatypes/Chunk;",
            ">;"
        }
    .end annotation
.end field

.field public conversationTopic:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field public displayBCCChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field public displayCCChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field public displayFromChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field public displayToChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field public emailFromChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field public htmlBodyChunkBinary:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

.field public htmlBodyChunkString:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field public messageClass:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field public messageHeaders:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field public messageId:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field public messageProperties:Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;

.field public rtfBodyChunk:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

.field public sentByServerType:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field public subjectChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

.field public submissionChunk:Lorg/apache/poi/hsmf/datatypes/MessageSubmissionChunk;

.field public textBodyChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->allChunks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAll()[Lorg/apache/poi/hsmf/datatypes/Chunk;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->allChunks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/hsmf/datatypes/Chunk;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hsmf/datatypes/Chunk;

    return-object p0
.end method

.method public getChunks()[Lorg/apache/poi/hsmf/datatypes/Chunk;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/Chunks;->getAll()[Lorg/apache/poi/hsmf/datatypes/Chunk;

    move-result-object p0

    return-object p0
.end method

.method public record(Lorg/apache/poi/hsmf/datatypes/Chunk;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->MESSAGE_CLASS:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->messageClass:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->INTERNET_MESSAGE_ID:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->messageId:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->MESSAGE_SUBMISSION_ID:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_2

    .line 6
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/MessageSubmissionChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->submissionChunk:Lorg/apache/poi/hsmf/datatypes/MessageSubmissionChunk;

    goto/16 :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->RECEIVED_BY_ADDRTYPE:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_3

    .line 8
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->sentByServerType:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto/16 :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->TRANSPORT_MESSAGE_HEADERS:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_4

    .line 10
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->messageHeaders:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto/16 :goto_0

    .line 11
    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->CONVERSATION_TOPIC:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_5

    .line 12
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->conversationTopic:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto/16 :goto_0

    .line 13
    :cond_5
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->SUBJECT:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_6

    .line 14
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->subjectChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto/16 :goto_0

    .line 15
    :cond_6
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->ORIGINAL_SUBJECT:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_7

    goto/16 :goto_0

    .line 16
    :cond_7
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->DISPLAY_TO:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_8

    .line 17
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->displayToChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto/16 :goto_0

    .line 18
    :cond_8
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->DISPLAY_CC:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_9

    .line 19
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->displayCCChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto/16 :goto_0

    .line 20
    :cond_9
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->DISPLAY_BCC:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_a

    .line 21
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->displayBCCChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto/16 :goto_0

    .line 22
    :cond_a
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->SENDER_EMAIL_ADDRESS:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_b

    .line 23
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->emailFromChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto :goto_0

    .line 24
    :cond_b
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->SENDER_NAME:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_c

    .line 25
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->displayFromChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto :goto_0

    .line 26
    :cond_c
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->BODY:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_d

    .line 27
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->textBodyChunk:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    goto :goto_0

    .line 28
    :cond_d
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->BODY_HTML:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_f

    .line 29
    instance-of v0, p1, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    if-eqz v0, :cond_e

    .line 30
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/StringChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->htmlBodyChunkString:Lorg/apache/poi/hsmf/datatypes/StringChunk;

    .line 31
    :cond_e
    instance-of v0, p1, Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    if-eqz v0, :cond_11

    .line 32
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->htmlBodyChunkBinary:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    goto :goto_0

    .line 33
    :cond_f
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->RTF_COMPRESSED:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_10

    .line 34
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->rtfBodyChunk:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    goto :goto_0

    .line 35
    :cond_10
    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->UNKNOWN:Lorg/apache/poi/hsmf/datatypes/MAPIProperty;

    iget v1, v1, Lorg/apache/poi/hsmf/datatypes/MAPIProperty;->id:I

    if-ne v0, v1, :cond_11

    instance-of v0, p1, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;

    if-eqz v0, :cond_11

    .line 36
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->messageProperties:Lorg/apache/poi/hsmf/datatypes/MessagePropertiesChunk;

    .line 37
    :cond_11
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/Chunks;->allChunks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
