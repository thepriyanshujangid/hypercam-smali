.class public interface abstract Lorg/apache/xmlbeans/SchemaModelGroup;
.super Ljava/lang/Object;
.source "SchemaModelGroup.java"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaComponent;
.implements Lorg/apache/xmlbeans/SchemaAnnotated;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/SchemaModelGroup$Ref;
    }
.end annotation


# virtual methods
.method public abstract getComponentType()I
.end method

.method public abstract getName()Ljavax/xml/namespace/QName;
.end method

.method public abstract getUserData()Ljava/lang/Object;
.end method
