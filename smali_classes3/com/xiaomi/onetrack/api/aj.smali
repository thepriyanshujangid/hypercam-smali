.class public Lcom/xiaomi/onetrack/api/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/aj;->b:Lcom/xiaomi/onetrack/api/m;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/aj;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "B"

    const-string v1, "H"

    const-string v2, "OneTrackImp"

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/aj;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/api/m;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/aj;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 3
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 4
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 5
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 7
    new-instance v14, Lcom/xiaomi/onetrack/api/i;

    invoke-direct {v14, v6}, Lcom/xiaomi/onetrack/api/i;-><init>(Lorg/json/JSONObject;)V

    .line 8
    iget-object v6, p0, Lcom/xiaomi/onetrack/api/aj;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v14}, Lcom/xiaomi/onetrack/api/i;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/onetrack/api/m;->c(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 10
    iget-object v5, p0, Lcom/xiaomi/onetrack/api/aj;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v14}, Lcom/xiaomi/onetrack/api/i;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 11
    iget-object v5, p0, Lcom/xiaomi/onetrack/api/aj;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v5}, Lcom/xiaomi/onetrack/api/m;->c(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v9

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/aj;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v5}, Lcom/xiaomi/onetrack/api/m;->e(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v10

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/aj;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v5}, Lcom/xiaomi/onetrack/api/m;->f(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v12

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/aj;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v5}, Lcom/xiaomi/onetrack/api/m;->g(Lcom/xiaomi/onetrack/api/m;)Z

    move-result v13

    move-object v7, v14

    invoke-static/range {v7 .. v13}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/i;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v5

    .line 12
    iget-object v6, p0, Lcom/xiaomi/onetrack/api/aj;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v6}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/j;

    move-result-object v6

    invoke-virtual {v14}, Lcom/xiaomi/onetrack/api/i;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v5, "h5 json is empty or has no \"H\" or \"B\" "

    .line 13
    invoke-static {v2, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trackEventFromH5 error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
