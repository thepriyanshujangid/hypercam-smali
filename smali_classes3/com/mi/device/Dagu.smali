.class public Lcom/mi/device/Dagu;
.super Lcom/mi/device/Common;
.source "Dagu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mi/device/Common;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooO0O0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public OooO0Oo()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    const-string v0, "XIAOMI"

    const-string v1, "PAD 5 PRO 12.4"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public OooO0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOOOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOOoo()Ljava/lang/String;
    .locals 0

    const-string p0, "mfnr:1"

    return-object p0
.end method

.method public OooOo00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOo0o()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public OooOoO()J
    .locals 2

    const-wide/32 v0, 0x21999a

    return-wide v0
.end method

.method public OooOoO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOooO()I
    .locals 0

    const/16 p0, 0x168

    return p0
.end method

.method public OooOooo()I
    .locals 0

    const/16 p0, 0x190

    return p0
.end method

.method public Oooo0o0()Ljava/lang/String;
    .locals 0

    const-string p0, "3.2"

    return-object p0
.end method

.method public OoooO()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "v2"

    return-object p0
.end method

.method public OoooOOo()Ljava/lang/String;
    .locals 0

    const-string p0, "186:162:163:171:181"

    return-object p0
.end method

.method public Ooooo00()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooooO0()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public OoooooO()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000()I
    .locals 0

    const/16 p0, 0x7d

    return p0
.end method

.method public o0000()I
    .locals 0

    const p0, 0x1312d00

    return p0
.end method

.method public o000000o()F
    .locals 0

    const/high16 p0, 0x41200000    # 10.0f

    return p0
.end method

.method public o00000oO()I
    .locals 0

    const/16 p0, 0x143

    return p0
.end method

.method public o0000O()S
    .locals 0

    .line 1
    sget-object p0, Lcom/mi/device/SlowMotionEnum;->o0000o0o:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result p0

    return p0
.end method

.method public o0000OO()Ljava/lang/String;
    .locals 0

    const-string p0, "4:8160x6144"

    return-object p0
.end method

.method public o0000Ooo()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public o0000o0()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public o0000oo()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o000O0()Lcom/mi/device/Common$BokehAdjustType;
    .locals 0

    .line 1
    sget-object p0, Lcom/mi/device/Common$BokehAdjustType;->o0000oO0:Lcom/mi/device/Common$BokehAdjustType;

    return-object p0
.end method

.method public o000O0Oo()Ljava/lang/String;
    .locals 0

    const-string p0, "MACRO:WIDE:ULTRA_WIDE:SAT"

    return-object p0
.end method

.method public o000O0o()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public o000O0o0()Ljava/lang/String;
    .locals 0

    const-string p0, "capture:0.6:1.0:2.0"

    return-object p0
.end method

.method public o000O0oO()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public o000OO0O()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o000Oooo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o000o0OO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000o0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000o0oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000o0oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000oOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000oo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o000ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O00()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00O0000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O000o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0O()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public o00O0O00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0Ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0o00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0oo0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00O0ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO00O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOOo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OOOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo0oO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoO0o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OoOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Ooo00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Ooo0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OooOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OooOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o000O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o000o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o00O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0OOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0Ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0o0O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o0o0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0oO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o0oo()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public o00o0oo0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oO00O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oO0O()Ljava/lang/String;
    .locals 0

    const-string p0, "auto"

    return-object p0
.end method

.method public o00oOOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOOOO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oOOOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOo0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOoOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOoOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oo0O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oo0Oo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oo0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooO00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooo()S
    .locals 0

    .line 1
    sget-object p0, Lcom/mi/device/SlowMotionEnum;->o0000o0o:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result p0

    return p0
.end method

.method public o00ooo00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooo0O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00ooo0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oooOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oooOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooooO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00ooooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00oO0()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public o0O0O0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OO0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OOOo()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "ultra_wide:macro:pro:capture_intent"

    return-object p0
.end method

.method public o0O0OOo()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public o0O0Oo0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0Oo0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OoO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0OoOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OooO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0o000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oO0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oO0o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0oOo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oo0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0ooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0ooO0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0ooOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO000()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0OO00o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0Ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0oOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO0oo0()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "true"

    return-object p0
.end method

.method public o0OO0ooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OOooO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OOoooO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0OoO00O()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OoOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OooO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0oO0O0o()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public o0oO0Ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo0oO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
