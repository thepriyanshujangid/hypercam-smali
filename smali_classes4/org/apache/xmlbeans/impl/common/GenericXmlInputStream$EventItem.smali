.class public Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;
.super Ljava/lang/Object;
.source "GenericXmlInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventItem"
.end annotation


# instance fields
.field public final _event:Lorg/apache/xmlbeans/xml/stream/XMLEvent;

.field public _next:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

.field private final synthetic this$0:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;Lorg/apache/xmlbeans/xml/stream/XMLEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->this$0:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->_event:Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    return-void
.end method


# virtual methods
.method public getName()Lorg/apache/xmlbeans/xml/stream/XMLName;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->_event:Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    invoke-interface {p0}, Lorg/apache/xmlbeans/xml/stream/XMLEvent;->getName()Lorg/apache/xmlbeans/xml/stream/XMLName;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->_event:Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    invoke-interface {p0}, Lorg/apache/xmlbeans/xml/stream/XMLEvent;->getType()I

    move-result p0

    return p0
.end method

.method public hasName()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->_event:Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    invoke-interface {p0}, Lorg/apache/xmlbeans/xml/stream/XMLEvent;->hasName()Z

    move-result p0

    return p0
.end method
