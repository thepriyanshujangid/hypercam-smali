.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabs;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabs$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabs;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sE130CAA0A01A7CDE5A2B4FEB8B311707"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttabsa2aatype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabs;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewTab()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;
.end method

.method public abstract getTabArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;
.end method

.method public abstract getTabArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;
.end method

.method public abstract getTabList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewTab(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;
.end method

.method public abstract removeTab(I)V
.end method

.method public abstract setTabArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;)V
.end method

.method public abstract setTabArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;)V
.end method

.method public abstract sizeOfTabArray()I
.end method
