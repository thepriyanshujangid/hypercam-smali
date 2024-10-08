.class public Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;
.super Ljava/lang/Object;
.source "FastmotionTextureVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FastmotionTextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaleManager"
.end annotation


# instance fields
.field private mVideoSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

.field private mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FastmotionTextureVideoView$Size;Lcom/android/camera/ui/FastmotionTextureVideoView$Size;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewSize",
            "videoSize"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    .line 3
    iput-object p2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mVideoSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    return-void
.end method

.method private fitCenter()Landroid/graphics/Matrix;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->getFitScale(I)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method private fitXY()Landroid/graphics/Matrix;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v0, v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->getMatrix(FFI)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method private getCropScale(I)Landroid/graphics/Matrix;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pivotPoint"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v0}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mVideoSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mVideoSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v2}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float v0, v2, v0

    div-float/2addr v2, v1

    .line 4
    invoke-direct {p0, v0, v2, p1}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->getMatrix(FFI)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method private getFitScale(I)Landroid/graphics/Matrix;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pivotPoint"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v0}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mVideoSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mVideoSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v2}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v0, v2, v0

    div-float/2addr v2, v1

    .line 4
    invoke-direct {p0, v0, v2, p1}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->getMatrix(FFI)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method private getLeftTopFullAutoScale()Landroid/graphics/Matrix;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->fitCenter()Landroid/graphics/Matrix;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v2}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mVideoSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mVideoSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v2}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 4
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mVideoSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v2}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mVideoSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v3}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 5
    iget-object v3, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v3}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object p0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-object v0
.end method

.method private getLeftTopFullScale()Landroid/graphics/Matrix;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->fitCenter()Landroid/graphics/Matrix;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v2}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    const v2, 0x3fe38e39

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-object v0
.end method

.method private getMatrix(FFFF)Landroid/graphics/Matrix;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sx",
            "sy",
            "px",
            "py"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-object p0
.end method

.method private getMatrix(FFI)Landroid/graphics/Matrix;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sx",
            "sy",
            "pivotPoint"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 3
    iget-object p3, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {p3}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal PivotPoint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p3, 0x0

    .line 5
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method private getNoScale()Landroid/graphics/Matrix;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mVideoSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v0}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mVideoSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v2}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->getMatrix(FFI)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method private getOriginalScale(I)Landroid/graphics/Matrix;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pivotPoint"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mVideoSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v0}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mVideoSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->mViewSize:Lcom/android/camera/ui/FastmotionTextureVideoView$Size;

    invoke-virtual {v2}, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->getMatrix(FFI)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getScaleMatrix(I)Landroid/graphics/Matrix;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scalableType"
        }
    .end annotation

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->getLeftTopFullAutoScale()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->getLeftTopFullScale()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->getNoScale()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->fitCenter()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->fitXY()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->getOriginalScale(I)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FastmotionTextureVideoView$ScaleManager;->getCropScale(I)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
