.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList$Member;
.super Ljava/lang/Object;
.source "NamespaceList.java"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Member"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList$Member$Factory;,
        Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList$Member$Enum;
    }
.end annotation


# static fields
.field public static final ANY:Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList$Member$Enum;

.field public static final INT_ANY:I = 0x1

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList$1;->class$org$apache$xmlbeans$impl$xb$xmlconfig$NamespaceList$Member:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.xb.xmlconfig.NamespaceList$Member"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList$1;->class$org$apache$xmlbeans$impl$xb$xmlconfig$NamespaceList$Member:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLCONFIG"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "anonc6fftype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList$Member;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "##any"

    .line 2
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList$Member$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList$Member$Enum;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList$Member;->ANY:Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList$Member$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
