.class public Lmiuix/view/HapticFeedbackConstants;
.super Ljava/lang/Object;
.source "HapticFeedbackConstants.java"


# static fields
.field private static final ILLEGAL_FEEDBACK:Ljava/lang/String; = "IllegalFeedback"

.field public static final MIUI_ALERT:I

.field public static final MIUI_BOUNDARY_SPATIAL:I

.field public static final MIUI_BOUNDARY_TIME:I

.field public static final MIUI_BUTTON_LARGE:I

.field public static final MIUI_BUTTON_MIDDLE:I

.field public static final MIUI_BUTTON_SMALL:I

.field public static final MIUI_FLICK:I

.field public static final MIUI_FLICK_LIGHT:I

.field public static final MIUI_GEAR_HEAVY:I

.field public static final MIUI_GEAR_LIGHT:I

.field public static final MIUI_HAPTIC_END:I

.field public static final MIUI_HAPTIC_START:I = 0x10000000

.field public static final MIUI_HAPTIC_VERSION_1_END:I

.field public static final MIUI_HAPTIC_VERSION_1_START:I

.field public static final MIUI_HAPTIC_VERSION_2_END:I

.field public static final MIUI_HAPTIC_VERSION_2_START:I

.field public static final MIUI_HOLD:I

.field public static final MIUI_KEYBOARD:I

.field public static final MIUI_KEYBOARD_CLICKY_DOWN_RTP:I = 0xc1

.field public static final MIUI_KEYBOARD_CLICKY_UP_RTP:I = 0xc2

.field public static final MIUI_KEYBOARD_LINEAR_DOWN_RTP:I = 0xc3

.field public static final MIUI_KEYBOARD_LINEAR_UP_RTP:I = 0xc4

.field public static final MIUI_LONG_PRESS:I

.field public static final MIUI_MESH_HEAVY:I

.field public static final MIUI_MESH_LIGHT:I

.field public static final MIUI_MESH_NORMAL:I

.field public static final MIUI_PICK_UP:I

.field public static final MIUI_POPUP_LIGHT:I

.field public static final MIUI_POPUP_NORMAL:I

.field public static final MIUI_SCROLL_EDGE:I

.field public static final MIUI_SWITCH:I

.field public static final MIUI_TAP_LIGHT:I

.field public static final MIUI_TAP_NORMAL:I

.field public static final MIUI_TRIGGER_DRAWER:I

.field public static final MIUI_VIRTUAL_RELEASE:I

.field public static final MIUI_ZAXIS_SWITCH:I

.field private static final NAMES:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, Lmiuix/view/HapticFeedbackConstants;->NAMES:Landroidx/collection/SparseArrayCompat;

    const/high16 v0, 0x10000000

    .line 2
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_1_START:I

    .line 3
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_VIRTUAL_RELEASE:I

    const v0, 0x10000001

    .line 4
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    const v0, 0x10000002

    .line 5
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    const v0, 0x10000003

    .line 6
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK:I

    const v0, 0x10000004

    .line 7
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    const v0, 0x10000005

    .line 8
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_HEAVY:I

    const v0, 0x10000006

    .line 9
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    const v0, 0x10000007

    .line 10
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_LIGHT:I

    const v0, 0x10000008

    .line 11
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_LONG_PRESS:I

    const v0, 0x10000009

    .line 12
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    const v0, 0x1000000a

    .line 13
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    const v0, 0x1000000b

    .line 14
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_PICK_UP:I

    const v0, 0x1000000c

    .line 15
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    const v0, 0x1000000d

    .line 16
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TRIGGER_DRAWER:I

    const v0, 0x1000000e

    .line 17
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK_LIGHT:I

    const v0, 0x1000000f

    .line 18
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HOLD:I

    const v0, 0x10000010

    .line 19
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_1_END:I

    .line 20
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_2_START:I

    .line 21
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_SPATIAL:I

    const v0, 0x10000011

    .line 22
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_TIME:I

    const v0, 0x10000012

    .line 23
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_LARGE:I

    const v0, 0x10000013

    .line 24
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_MIDDLE:I

    const v0, 0x10000014

    .line 25
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    const v0, 0x10000015

    .line 26
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_LIGHT:I

    const v0, 0x10000016

    .line 27
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_HEAVY:I

    const v0, 0x10000017

    .line 28
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_KEYBOARD:I

    const v0, 0x10000018

    .line 29
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_ALERT:I

    const v0, 0x10000019

    .line 30
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    const v0, 0x1000001a

    .line 31
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_2_END:I

    .line 32
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_END:I

    .line 33
    invoke-static {}, Lmiuix/view/HapticFeedbackConstants;->buildNames()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildNames()V
    .locals 3

    .line 1
    sget-object v0, Lmiuix/view/HapticFeedbackConstants;->NAMES:Landroidx/collection/SparseArrayCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_VIRTUAL_RELEASE:I

    const-string v2, "MIUI_VIRTUAL_RELEASE"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 2
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    const-string v2, "MIUI_TAP_NORMAL"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 3
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    const-string v2, "MIUI_TAP_LIGHT"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 4
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK:I

    const-string v2, "MIUI_FLICK"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 5
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    const-string v2, "MIUI_SWITCH"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 6
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_HEAVY:I

    const-string v2, "MIUI_MESH_HEAVY"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 7
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    const-string v2, "MIUI_MESH_NORMAL"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 8
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_LIGHT:I

    const-string v2, "MIUI_MESH_LIGHT"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 9
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_LONG_PRESS:I

    const-string v2, "MIUI_LONG_PRESS"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 10
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    const-string v2, "MIUI_POPUP_NORMAL"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 11
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    const-string v2, "MIUI_POPUP_LIGHT"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 12
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_PICK_UP:I

    const-string v2, "MIUI_PICK_UP"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 13
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    const-string v2, "MIUI_SCROLL_EDGE"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 14
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TRIGGER_DRAWER:I

    const-string v2, "MIUI_TRIGGER_DRAWER"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 15
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK_LIGHT:I

    const-string v2, "MIUI_FLICK_LIGHT"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 16
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_HOLD:I

    const-string v2, "MIUI_HOLD"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 17
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_SPATIAL:I

    const-string v2, "MIUI_BOUNDARY_SPATIAL"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 18
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_TIME:I

    const-string v2, "MIUI_BOUNDARY_TIME"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 19
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_LARGE:I

    const-string v2, "MIUI_BUTTON_LARGE"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 20
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_MIDDLE:I

    const-string v2, "MIUI_BUTTON_MIDDLE"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 21
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    const-string v2, "MIUI_BUTTON_SMALL"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 22
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_LIGHT:I

    const-string v2, "MIUI_GEAR_LIGHT"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 23
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_HEAVY:I

    const-string v2, "MIUI_GEAR_HEAVY"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 24
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_KEYBOARD:I

    const-string v2, "MIUI_KEYBOARD"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 25
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ALERT:I

    const-string v2, "MIUI_ALERT"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 26
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    const-string v2, "MIUI_ZAXIS_SWITCH"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public static nameOf(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lmiuix/view/HapticFeedbackConstants;->NAMES:Landroidx/collection/SparseArrayCompat;

    const-string v1, "IllegalFeedback"

    invoke-virtual {v0, p0, v1}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
