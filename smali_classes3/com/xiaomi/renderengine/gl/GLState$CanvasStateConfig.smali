.class public Lcom/xiaomi/renderengine/gl/GLState$CanvasStateConfig;
.super Ljava/lang/Object;
.source "GLState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/renderengine/gl/GLState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CanvasStateConfig"
.end annotation


# instance fields
.field public mAlpha:F

.field public mBlendAlpha:F

.field public mModelMatrix:[F

.field public mTexMatrix:[F


# direct methods
.method public constructor <init>([F[FFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modelMatrix",
            "texMatrix",
            "alpha",
            "blendAlpha"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Lcom/xiaomi/renderengine/gl/GLState$CanvasStateConfig;->mModelMatrix:[F

    new-array v2, v0, [F

    .line 3
    iput-object v2, p0, Lcom/xiaomi/renderengine/gl/GLState$CanvasStateConfig;->mTexMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    iput v2, p0, Lcom/xiaomi/renderengine/gl/GLState$CanvasStateConfig;->mAlpha:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 5
    iput v2, p0, Lcom/xiaomi/renderengine/gl/GLState$CanvasStateConfig;->mBlendAlpha:F

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object p1, p0, Lcom/xiaomi/renderengine/gl/GLState$CanvasStateConfig;->mTexMatrix:[F

    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput p3, p0, Lcom/xiaomi/renderengine/gl/GLState$CanvasStateConfig;->mAlpha:F

    .line 9
    iput p4, p0, Lcom/xiaomi/renderengine/gl/GLState$CanvasStateConfig;->mBlendAlpha:F

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/renderengine/gl/GLState$CanvasStateConfig;->mAlpha:F

    return p0
.end method

.method public getBlendAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/renderengine/gl/GLState$CanvasStateConfig;->mBlendAlpha:F

    return p0
.end method

.method public getModelMatrix()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/gl/GLState$CanvasStateConfig;->mModelMatrix:[F

    return-object p0
.end method

.method public getTexMatrix()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/gl/GLState$CanvasStateConfig;->mTexMatrix:[F

    return-object p0
.end method
