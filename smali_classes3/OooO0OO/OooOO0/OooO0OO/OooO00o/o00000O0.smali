.class public final synthetic LOooO0OO/OooOO0/OooO0OO/OooO00o/o00000O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o0000o:Lcom/xiaomi/idm/api/IDMService;

.field public final synthetic o0000o0o:Lcom/xiaomi/idm/api/IDMServer$2;

.field public final synthetic o0000oO0:Lcom/xiaomi/idm/bean/ConnParam;

.field public final synthetic o0000oOO:I

.field public final synthetic o0000oOo:Ljava/lang/String;

.field public final synthetic o0000oo0:Lcom/xiaomi/idm/bean/EndPoint;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/idm/api/IDMServer$2;Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/bean/ConnParam;ILjava/lang/String;Lcom/xiaomi/idm/bean/EndPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooOO0/OooO0OO/OooO00o/o00000O0;->o0000o0o:Lcom/xiaomi/idm/api/IDMServer$2;

    iput-object p2, p0, LOooO0OO/OooOO0/OooO0OO/OooO00o/o00000O0;->o0000o:Lcom/xiaomi/idm/api/IDMService;

    iput-object p3, p0, LOooO0OO/OooOO0/OooO0OO/OooO00o/o00000O0;->o0000oO0:Lcom/xiaomi/idm/bean/ConnParam;

    iput p4, p0, LOooO0OO/OooOO0/OooO0OO/OooO00o/o00000O0;->o0000oOO:I

    iput-object p5, p0, LOooO0OO/OooOO0/OooO0OO/OooO00o/o00000O0;->o0000oOo:Ljava/lang/String;

    iput-object p6, p0, LOooO0OO/OooOO0/OooO0OO/OooO00o/o00000O0;->o0000oo0:Lcom/xiaomi/idm/bean/EndPoint;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, LOooO0OO/OooOO0/OooO0OO/OooO00o/o00000O0;->o0000o0o:Lcom/xiaomi/idm/api/IDMServer$2;

    iget-object v1, p0, LOooO0OO/OooOO0/OooO0OO/OooO00o/o00000O0;->o0000o:Lcom/xiaomi/idm/api/IDMService;

    iget-object v2, p0, LOooO0OO/OooOO0/OooO0OO/OooO00o/o00000O0;->o0000oO0:Lcom/xiaomi/idm/bean/ConnParam;

    iget v3, p0, LOooO0OO/OooOO0/OooO0OO/OooO00o/o00000O0;->o0000oOO:I

    iget-object v4, p0, LOooO0OO/OooOO0/OooO0OO/OooO00o/o00000O0;->o0000oOo:Ljava/lang/String;

    iget-object v5, p0, LOooO0OO/OooOO0/OooO0OO/OooO00o/o00000O0;->o0000oo0:Lcom/xiaomi/idm/bean/EndPoint;

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/idm/api/IDMServer$2;->OooO00o(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/bean/ConnParam;ILjava/lang/String;Lcom/xiaomi/idm/bean/EndPoint;)V

    return-void
.end method
