.class public final synthetic LOooO0OO/OooOO0/OooO0oO/Oooo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o0000o:Landroid/view/SurfaceHolder;

.field public final synthetic o0000o0o:Lcom/xiaomi/renderengine/RenderEngine;

.field public final synthetic o0000oO0:I

.field public final synthetic o0000oOO:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;Landroid/view/SurfaceHolder;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooOO0/OooO0oO/Oooo0;->o0000o0o:Lcom/xiaomi/renderengine/RenderEngine;

    iput-object p2, p0, LOooO0OO/OooOO0/OooO0oO/Oooo0;->o0000o:Landroid/view/SurfaceHolder;

    iput p3, p0, LOooO0OO/OooOO0/OooO0oO/Oooo0;->o0000oO0:I

    iput p4, p0, LOooO0OO/OooOO0/OooO0oO/Oooo0;->o0000oOO:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO0OO/OooOO0/OooO0oO/Oooo0;->o0000o0o:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v1, p0, LOooO0OO/OooOO0/OooO0oO/Oooo0;->o0000o:Landroid/view/SurfaceHolder;

    iget v2, p0, LOooO0OO/OooOO0/OooO0oO/Oooo0;->o0000oO0:I

    iget p0, p0, LOooO0OO/OooOO0/OooO0oO/Oooo0;->o0000oOO:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/xiaomi/renderengine/RenderEngine;->OooO(Landroid/view/SurfaceHolder;II)V

    return-void
.end method
