.class public final Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IDMSecurityManagerProto.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "filterCommParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;",
        "Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParamOrBuilder;"
    }
.end annotation


# static fields
.field public static final COMMTYPE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final PID_FIELD_NUMBER:I = 0x2

.field public static final UID_FIELD_NUMBER:I = 0x3


# instance fields
.field private commType_:I

.field private pid_:I

.field private uid_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    .line 3
    const-class v1, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$8500()Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    return-object v0
.end method

.method public static synthetic access$8600(Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->setCommType(I)V

    return-void
.end method

.method public static synthetic access$8700(Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->clearCommType()V

    return-void
.end method

.method public static synthetic access$8800(Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->setPid(I)V

    return-void
.end method

.method public static synthetic access$8900(Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->clearPid()V

    return-void
.end method

.method public static synthetic access$9000(Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->setUid(I)V

    return-void
.end method

.method public static synthetic access$9100(Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->clearUid()V

    return-void
.end method

.method private clearCommType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->commType_:I

    return-void
.end method

.method private clearPid()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->pid_:I

    return-void
.end method

.method private clearUid()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->uid_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;)Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCommType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->commType_:I

    return-void
.end method

.method private setPid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->pid_:I

    return-void
.end method

.method private setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->uid_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    .line 3
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    .line 5
    const-class p1, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    monitor-enter p1

    .line 6
    :try_start_0
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    .line 7
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 9
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 10
    :pswitch_3
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    return-object p0

    :pswitch_4
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "commType_"

    aput-object p3, p0, p2

    const-string p2, "pid_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string/jumbo p2, "uid_"

    aput-object p2, p0, p1

    const-string p1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004"

    .line 11
    sget-object p2, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_5
    new-instance p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam$Builder;-><init>(Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$1;)V

    return-object p0

    .line 13
    :pswitch_6
    new-instance p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;-><init>()V

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

.method public getCommType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->commType_:I

    return p0
.end method

.method public getPid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->pid_:I

    return p0
.end method

.method public getUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/IDMSecurityManagerProto$filterCommParam;->uid_:I

    return p0
.end method
