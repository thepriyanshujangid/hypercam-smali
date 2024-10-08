.class public Lcom/android/camera/constant/AlertConstant;
.super Ljava/lang/Object;
.source "AlertConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/constant/AlertConstant$RecordProcessState;,
        Lcom/android/camera/constant/AlertConstant$AlertCLearType;,
        Lcom/android/camera/constant/AlertConstant$AlertImageType;,
        Lcom/android/camera/constant/AlertConstant$ValueChangeType;,
        Lcom/android/camera/constant/AlertConstant$RecordState;
    }
.end annotation


# static fields
.field public static final ALERT_CLEAR:I = 0x1

.field public static final ALERT_IMAGE_TYPE_FLASH_ON:I = 0x1

.field public static final ALERT_IMAGE_TYPE_FLASH_TORCH:I = 0x2

.field public static final ALERT_IMAGE_TYPE_HDR_LIVE:I = 0x4

.field public static final ALERT_IMAGE_TYPE_HDR_ON:I = 0x3

.field public static final ALERT_IMAGE_TYPE_NULL:I = -0x1

.field public static final ALERT_IMAGE_TYPE_SOFT_LIGHT_ADJUST:I = 0x5

.field public static final ALERT_NOT_CLEAR:I = 0x2

.field public static final FLASH_TIP_TYPE:I = 0x2

.field public static final HDR_TIP_TYPE:I = 0x1

.field public static final RECORD_PROCESS_STATE_FINISH:I = 0x4

.field public static final RECORD_PROCESS_STATE_PAUSE:I = 0x3

.field public static final RECORD_PROCESS_STATE_POST_SAVING_FINISH:I = 0x6

.field public static final RECORD_PROCESS_STATE_POST_SAVING_START:I = 0x5

.field public static final RECORD_PROCESS_STATE_PREPARE:I = 0x0

.field public static final RECORD_PROCESS_STATE_RESUME:I = 0x2

.field public static final RECORD_PROCESS_STATE_START:I = 0x1

.field public static final RECORD_STATE_PAUSE:I = 0x3

.field public static final RECORD_STATE_RESUME:I = 0x4

.field public static final RECORD_STATE_START:I = 0x1

.field public static final RECORD_STATE_STOP:I = 0x2

.field public static final RECORD_STATE_UNKNOWN:I = 0x0

.field public static final UNKNOWN_TIP_TYPE:I = -0x1

.field public static final VALUE_CHANGE_TO_BEAUTY:I = 0x2

.field public static final VALUE_CHANGE_TO_BOKEH:I = 0x3

.field public static final VALUE_CHANGE_TO_DEPTH:I = 0x4

.field public static final VALUE_CHANGE_TO_MANUALLY_CONTRAST:I = 0xa

.field public static final VALUE_CHANGE_TO_MANUALLY_ET:I = 0x6

.field public static final VALUE_CHANGE_TO_MANUALLY_EXPOSURE:I = 0x8

.field public static final VALUE_CHANGE_TO_MANUALLY_FOCUS:I = 0x9

.field public static final VALUE_CHANGE_TO_MANUALLY_ISO:I = 0x7

.field public static final VALUE_CHANGE_TO_MANUALLY_SATURATION:I = 0xb

.field public static final VALUE_CHANGE_TO_MANUALLY_SHARPNESS:I = 0xc

.field public static final VALUE_CHANGE_TO_MANUALLY_WB:I = 0x5

.field public static final VALUE_CHANGE_TO_RESET:I = 0x0

.field public static final VALUE_CHANGE_TO_ZOOM:I = 0x1

.field public static final VALUE_CHANGE_TO_ZOOM_BY_SLIDE:I = 0xe

.field public static final VALUE_CHANGE_TO_ZOOM_RECORDING:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
