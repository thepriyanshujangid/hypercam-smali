.class public Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;
.super Ljava/lang/Object;
.source "XiaomiAlgoVideoInterpolatorImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$EncodeUpdateListener;,
        Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;,
        Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;
    }
.end annotation


# static fields
.field private static final AVOID_BLURRED_SCREEN:I = 0x3

.field private static final DECODE_THREAD_NAME:Ljava/lang/String; = "DecodeThread"

.field private static final ENCODE_THREAD_NAME:Ljava/lang/String; = "EncodeThread"

.field private static final FRAME_RATE_NORMAL:I = 0x1e

.field private static final INTERPOLATOR_ACCURACY:I = 0x1

.field private static final MAX_BUFFER_SIZE:I = 0xf

.field private static final TAG:Ljava/lang/String; = "XiaomiAlgoVideoInterpolatorImp"

.field private static final TOTAL_FRAME_SIZE:I = 0x1a9


# instance fields
.field private mDecodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

.field private mDecodedFrameNumber:I

.field private mDecoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

.field private mDegree:I

.field private final mDstPath:Ljava/lang/String;

.field private mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

.field private mEncodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

.field private mEncoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;

.field private mFirstAndInsertFrameQuantity:I

.field private mFirstNormalFrameQuantity:I

.field private mFrameBuffer:[Ljava/nio/ByteBuffer;

.field private mFrameIndexBeginInterpolation:I

.field private mFrameIndexStopInterpolation:I

.field private mFrameMapping:[I

.field private mFrameSizeInterpolation:I

.field private mMiAlgoVersion:I

.field private mNeedDump:Z

.field private mOriginFPS:I

.field private mOriginVideoTrack:I

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipSizeOrigin2Normal:I

.field private mSkipSizeTarget2Normal:I

.field private mSkipSizeTarget2Origin:I

.field private final mSrcPath:Ljava/lang/String;

.field private final mSupportEditor:Z

.field private mTargetFPS:I

.field private mVideoEndNormalTime:I

.field private mYuvFile:Ljava/io/File;

.field private seek:Ljava/lang/Long;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;IIIJLandroid/graphics/Bitmap;[FZZI)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcFPS",
            "dstFPS",
            "src",
            "dst",
            "startTime",
            "slowTime",
            "endTime",
            "seekTo",
            "bitmap",
            "ratio",
            "supportEditor",
            "needDump",
            "version"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v4, 0x3c0

    .line 2
    iput v4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mTargetFPS:I

    const/16 v4, 0xf0

    .line 3
    iput v4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mOriginFPS:I

    const/16 v5, 0x1d

    .line 4
    iput v5, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFirstNormalFrameQuantity:I

    const/16 v5, 0x78

    .line 5
    iput v5, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFirstAndInsertFrameQuantity:I

    const/16 v5, 0x96

    .line 6
    iput v5, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecodedFrameNumber:I

    const/4 v5, 0x1

    .line 7
    iput v5, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mVideoEndNormalTime:I

    const/16 v5, 0x3c0

    const/16 v6, 0x1e

    .line 8
    div-int/2addr v5, v6

    iput v5, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSkipSizeTarget2Normal:I

    const/16 v5, 0x3c0

    .line 9
    div-int/2addr v5, v4

    iput v5, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSkipSizeTarget2Origin:I

    .line 10
    div-int/2addr v4, v6

    iput v4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSkipSizeOrigin2Normal:I

    .line 11
    iput v5, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameSizeInterpolation:I

    .line 12
    iput v6, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameIndexBeginInterpolation:I

    const/16 v4, 0x186

    .line 13
    iput v4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameIndexStopInterpolation:I

    .line 14
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v5, 0xf

    invoke-direct {v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/nio/ByteBuffer;

    .line 15
    iput-object v5, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameBuffer:[Ljava/nio/ByteBuffer;

    const/16 v5, 0x1a9

    new-array v5, v5, [I

    .line 16
    iput-object v5, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameMapping:[I

    const/4 v5, 0x0

    .line 17
    iput-boolean v5, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mNeedDump:Z

    const/4 v5, 0x0

    .line 18
    iput-object v5, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mYuvFile:Ljava/io/File;

    .line 19
    iput v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mOriginFPS:I

    .line 20
    iput v2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mTargetFPS:I

    move/from16 v7, p14

    .line 21
    iput v7, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mMiAlgoVersion:I

    .line 22
    div-int/lit8 v7, v2, 0x1e

    iput v7, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSkipSizeTarget2Normal:I

    .line 23
    div-int/2addr v2, v1

    iput v2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSkipSizeTarget2Origin:I

    .line 24
    div-int/2addr v1, v6

    iput v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSkipSizeOrigin2Normal:I

    .line 25
    iput v2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameSizeInterpolation:I

    mul-int/lit8 v1, p5, 0x1e

    .line 26
    iput v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameIndexBeginInterpolation:I

    add-int v2, p5, p6

    mul-int/2addr v2, v6

    .line 27
    iput v2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameIndexStopInterpolation:I

    add-int/lit8 v2, v1, -0x3

    .line 28
    iput v2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFirstNormalFrameQuantity:I

    mul-int/lit8 v2, p6, 0x1e

    .line 29
    div-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFirstAndInsertFrameQuantity:I

    mul-int/lit8 v2, v3, 0x1e

    add-int/2addr v1, v2

    .line 30
    iput v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecodedFrameNumber:I

    .line 31
    iput v3, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mVideoEndNormalTime:I

    move/from16 v1, p12

    .line 32
    iput-boolean v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSupportEditor:Z

    move-object/from16 v1, p4

    .line 33
    iput-object v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDstPath:Ljava/lang/String;

    move-object v2, p3

    .line 34
    iput-object v2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSrcPath:Ljava/lang/String;

    .line 35
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->seek:Ljava/lang/Long;

    .line 36
    new-instance v3, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    const-string v4, "DecodeThread"

    invoke-direct {v3, v4}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    .line 37
    new-instance v3, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    const-string v4, "EncodeThread"

    invoke-direct {v3, v4}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    .line 38
    new-instance v3, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

    iget-object v4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    invoke-static {v4}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;->access$000(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;)Landroid/os/Handler;

    move-result-object v8

    iget v11, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecodedFrameNumber:I

    move-object v6, v3

    move-object v7, p3

    move-wide/from16 v9, p8

    invoke-direct/range {v6 .. v11}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;-><init>(Ljava/lang/String;Landroid/os/Handler;JI)V

    iput-object v3, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

    .line 39
    invoke-virtual {v3}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->getMediaParamsHolder()Lcom/miui/extravideo/common/MediaParamsHolder;

    move-result-object v2

    .line 40
    iget v3, v2, Lcom/miui/extravideo/common/MediaParamsHolder;->videoDegree:I

    iput v3, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDegree:I

    .line 41
    new-instance v4, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;

    iget v6, v2, Lcom/miui/extravideo/common/MediaParamsHolder;->videoWidth:I

    iget v7, v2, Lcom/miui/extravideo/common/MediaParamsHolder;->videoHeight:I

    iget-object v8, v2, Lcom/miui/extravideo/common/MediaParamsHolder;->mimeType:Ljava/lang/String;

    iget-object v9, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    .line 42
    invoke-static {v9}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;->access$000(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 p5, v4

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v3

    move-object/from16 p9, v8

    move-object/from16 p10, p4

    move-object/from16 p11, v9

    invoke-direct/range {p5 .. p11}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;-><init>(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;

    .line 43
    iget-object v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

    new-instance v3, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;

    invoke-direct {v3, p0, v2}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$DecodeUpdateListener;-><init>(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;Lcom/miui/extravideo/common/MediaParamsHolder;)V

    invoke-virtual {v1, v3}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->setListener(Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync$DecodeUpdateListener;)V

    .line 44
    iget-object v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;

    new-instance v2, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$EncodeUpdateListener;

    invoke-direct {v2, p0, v5}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$EncodeUpdateListener;-><init>(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$1;)V

    invoke-virtual {v1, v2}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;->setListener(Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync$EncodeUpdateListener;)V

    .line 45
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->initMapping()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;[BJI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->putBufferToQueue([BJI)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameIndexBeginInterpolation:I

    return p0
.end method

.method public static synthetic access$1200(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameIndexStopInterpolation:I

    return p0
.end method

.method public static synthetic access$1300(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mVideoEndNormalTime:I

    return p0
.end method

.method public static synthetic access$1400(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->putEndFlagToQueue()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->notifyTaskError()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->getBufferFromQueue()Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameMapping:[I

    return-object p0
.end method

.method public static synthetic access$200(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->notifyTaskFinish()V

    return-void
.end method

.method public static synthetic access$2100(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->deleteBadFile()V

    return-void
.end method

.method public static synthetic access$2200(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mNeedDump:Z

    return p0
.end method

.method public static synthetic access$2400(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mYuvFile:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mMiAlgoVersion:I

    return p0
.end method

.method public static synthetic access$400(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)[Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameBuffer:[Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFirstNormalFrameQuantity:I

    return p0
.end method

.method public static synthetic access$600(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSkipSizeOrigin2Normal:I

    return p0
.end method

.method public static synthetic access$700(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFirstAndInsertFrameQuantity:I

    return p0
.end method

.method public static synthetic access$800(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;Ljava/nio/ByteBuffer;IIJI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->putBufferToQueue(Ljava/nio/ByteBuffer;IIJI)V

    return-void
.end method

.method private addMetaData()V
    .locals 7

    const-string v0, "jcodec"

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDstPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/jcodec/movtool/MetadataEditor;->createFrom(Ljava/io/File;)Lorg/jcodec/movtool/MetadataEditor;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lorg/jcodec/movtool/MetadataEditor;->getKeyedMeta()Ljava/util/Map;

    move-result-object v2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "com.xiaomi.capture_framerate"

    .line 4
    iget v6, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mTargetFPS:I

    invoke-static {v6}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->createInt(I)Lorg/jcodec/containers/mp4/boxes/MetaValue;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v5, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSupportEditor:Z

    if-eqz v5, :cond_0

    iget p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mOriginVideoTrack:I

    const/4 v5, -0x1

    if-eq p0, v5, :cond_0

    const-string v5, "com.xiaomi.capture_origin_track"

    .line 6
    invoke-static {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->createInt(I)Lorg/jcodec/containers/mp4/boxes/MetaValue;

    move-result-object p0

    invoke-interface {v2, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    .line 7
    invoke-virtual {v1, p0}, Lorg/jcodec/movtool/MetadataEditor;->save(Z)V

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cost: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "error \n"

    .line 9
    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private addOriginVideoToTrack()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSupportEditor:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDstPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".tempResult"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 5
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSrcPath:Ljava/lang/String;

    iget v5, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDegree:I

    iget-object v6, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->seek:Ljava/lang/Long;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiMediaUtils;->mixVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)I

    move-result v2

    iput v2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mOriginVideoTrack:I

    const/4 p0, -0x1

    if-eq v2, p0, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :goto_0
    return-void
.end method

.method private deleteBadFile()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDstPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private getBufferFromQueue()Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "XiaomiAlgoVideoInterpolatorImp"

    .line 2
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private initMapping()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameMapping:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$doDecodeAndEncode$0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->notifyTaskError()V

    return-void
.end method

.method private notifyTaskError()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/miui/extravideo/interpolation/EncodeListener;->onError()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    :cond_0
    return-void
.end method

.method private notifyTaskFinish()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->releaseFrameBuffer()V

    .line 2
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->addOriginVideoToTrack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    const-string v2, "XiaomiAlgoVideoInterpolatorImp"

    .line 3
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/miui/extravideo/interpolation/EncodeListener;->onError()V

    .line 6
    iput-object v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    :cond_0
    return-void

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->addMetaData()V

    .line 8
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lcom/miui/extravideo/interpolation/EncodeListener;->onEncodeFinish()V

    .line 10
    iput-object v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    :cond_2
    return-void
.end method

.method private putBufferToQueue(Ljava/nio/ByteBuffer;IIJI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "yuvData",
            "width",
            "height",
            "presentationTimeUs",
            "representativeIndex"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;

    invoke-direct {v0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;-><init>()V

    mul-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x3

    .line 9
    div-int/lit8 p2, p2, 0x2

    new-array p2, p2, [B

    iput-object p2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->data:[B

    .line 10
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 p1, 0x0

    .line 12
    iput p1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->flag:I

    .line 13
    iput-wide p4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->presentationTimeUs:J

    .line 14
    iput p6, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->representativeIndex:I

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "XiaomiAlgoVideoInterpolatorImp"

    .line 16
    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private putBufferToQueue([BJI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "yuvData",
            "presentationTimeUs",
            "representativeIndex"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;

    invoke-direct {v0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;-><init>()V

    .line 2
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->data:[B

    const/4 p1, 0x0

    .line 3
    iput p1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->flag:I

    .line 4
    iput-wide p2, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->presentationTimeUs:J

    .line 5
    iput p4, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->representativeIndex:I

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "XiaomiAlgoVideoInterpolatorImp"

    .line 7
    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private putEndFlagToQueue()V
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;

    invoke-direct {v0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;-><init>()V

    const/4 v1, 0x4

    .line 2
    iput v1, v0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoEncodeBufferHolder;->flag:I

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "XiaomiAlgoVideoInterpolatorImp"

    .line 4
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private releaseFrameBuffer()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameBuffer:[Ljava/nio/ByteBuffer;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "XiaomiAlgoVideoInterpolatorImp"

    const-string v4, "release Jnis Graphic buffer"

    .line 2
    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v2, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mFrameBuffer:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;->freeBuffer(Ljava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->lambda$doDecodeAndEncode$0()V

    return-void
.end method

.method public doDecodeAndEncode()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

    iget v1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mSkipSizeOrigin2Normal:I

    invoke-virtual {v0, v1}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->setSkipFrameTimes(I)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;

    invoke-virtual {v0}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoDecoderAsync;->start()V

    .line 3
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncoder:Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;

    invoke-virtual {v0}, Lcom/miui/extravideoxmalgo/xaiomiAlogMedia/XiaomiAlgoEncoderAsync;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "XiaomiAlgoVideoInterpolatorImp"

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    invoke-static {v0}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;->access$000(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0oo/OooO00o/OooO00o/OooOOO0;

    invoke-direct {v1, p0}, LOooO0OO/OooO0oo/OooO00o/OooO00o/OooOOO0;-><init>(Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 8
    iget-object p0, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mDecodeThread:Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp$XiaomiMediaCodecHandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :goto_0
    return-void
.end method

.method public setEncodeListener(Lcom/miui/extravideo/interpolation/EncodeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodeListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    return-void
.end method
