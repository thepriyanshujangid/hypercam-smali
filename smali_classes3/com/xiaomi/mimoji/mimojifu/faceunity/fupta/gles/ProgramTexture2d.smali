.class public Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTexture2d;
.super Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Program;
.source "ProgramTexture2d.java"


# static fields
.field private static final FRAGMENT_SHADER_2D:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private maPositionLoc:I

.field private maTextureCoordLoc:I

.field private muMVPMatrixLoc:I

.field private muTexMatrixLoc:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Program;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public drawFrame(I[F[F)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureId",
            "texMatrix",
            "mvpMatrix"
        }
    .end annotation

    const-string v0, "draw start"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v0, 0x84c0

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 5
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 6
    iget p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->muMVPMatrixLoc:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p1, "glUniformMatrix4fv"

    .line 7
    invoke-static {p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 8
    iget p3, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->muTexMatrixLoc:I

    invoke-static {p3, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 9
    invoke-static {p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 10
    iget p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray"

    .line 11
    invoke-static {p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 12
    iget v3, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->maPositionLoc:I

    iget-object p2, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Program;->mDrawable2d:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    .line 13
    invoke-virtual {p2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Drawable2d;->vertexArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 14
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p2, "glVertexAttribPointer"

    .line 15
    invoke-static {p2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 16
    iget p3, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->maTextureCoordLoc:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 17
    invoke-static {p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 18
    iget v3, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->maTextureCoordLoc:I

    iget-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Program;->mDrawable2d:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    .line 19
    invoke-virtual {p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Drawable2d;->texCoordArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 20
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 21
    invoke-static {p2}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Program;->mDrawable2d:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    invoke-virtual {p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Drawable2d;->vertexCount()I

    move-result p1

    const/4 p2, 0x5

    invoke-static {p2, v2, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 23
    invoke-static {p1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 24
    iget p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 25
    iget p0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->maTextureCoordLoc:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 26
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 27
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public getDrawable2d()Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Drawable2d;
    .locals 0

    .line 1
    new-instance p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/Drawable2dFull;

    invoke-direct {p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/Drawable2dFull;-><init>()V

    return-object p0
.end method

.method public getLocations()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->maPositionLoc:I

    .line 2
    invoke-static {v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 3
    iget v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->maTextureCoordLoc:I

    .line 4
    invoke-static {v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->muMVPMatrixLoc:I

    .line 6
    invoke-static {v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 7
    iget v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    const-string/jumbo v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->muTexMatrixLoc:I

    .line 8
    invoke-static {v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    return-void
.end method
