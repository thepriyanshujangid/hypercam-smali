.class public Lcom/xiaomi/onetrack/api/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Thread;

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Lcom/xiaomi/onetrack/api/k;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/k;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/k;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/l;->a:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/l;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/k;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/l;->a:Ljava/lang/Thread;

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/l;->b:Ljava/lang/Throwable;

    invoke-static {v0, v1, p0}, Lcom/xiaomi/onetrack/api/k;->a(Lcom/xiaomi/onetrack/api/k;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
