.class public Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;
.super Ljava/lang/Object;
.source "SchemaAnnotationImpl.java"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributeImpl"
.end annotation


# instance fields
.field private _name:Ljavax/xml/namespace/QName;

.field private _value:Ljava/lang/String;

.field private _valueUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;->_name:Ljavax/xml/namespace/QName;

    .line 3
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;->_value:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;->_valueUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljavax/xml/namespace/QName;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;->_name:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;->_value:Ljava/lang/String;

    return-object p0
.end method

.method public getValueUri()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;->_valueUri:Ljava/lang/String;

    return-object p0
.end method
