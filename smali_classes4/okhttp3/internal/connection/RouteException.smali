.class public final Lokhttp3/internal/connection/RouteException;
.super Ljava/lang/RuntimeException;
.source "RouteException.java"


# static fields
.field private static final addSuppressedExceptionMethod:Ljava/lang/reflect/Method;


# instance fields
.field private lastException:Ljava/io/IOException;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sput-object v0, Lokhttp3/internal/connection/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput-object p1, p0, Lokhttp3/internal/connection/RouteException;->lastException:Ljava/io/IOException;

    return-void
.end method

.method private addSuppressedIfPossible(Ljava/io/IOException;Ljava/io/IOException;)V
    .locals 2

    .line 1
    sget-object p0, Lokhttp3/internal/connection/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public addConnectException(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RouteException;->lastException:Ljava/io/IOException;

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/connection/RouteException;->addSuppressedIfPossible(Ljava/io/IOException;Ljava/io/IOException;)V

    .line 2
    iput-object p1, p0, Lokhttp3/internal/connection/RouteException;->lastException:Ljava/io/IOException;

    return-void
.end method

.method public getLastConnectException()Ljava/io/IOException;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/RouteException;->lastException:Ljava/io/IOException;

    return-object p0
.end method
