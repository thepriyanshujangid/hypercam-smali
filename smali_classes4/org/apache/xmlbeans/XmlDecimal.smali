.class public interface abstract Lorg/apache/xmlbeans/XmlDecimal;
.super Ljava/lang/Object;
.source "XmlDecimal.java"

# interfaces
.implements Lorg/apache/xmlbeans/XmlAnySimpleType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/XmlDecimal$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getBuiltinTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "_BI_decimal"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->typeForHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlDecimal;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract bigDecimalValue()Ljava/math/BigDecimal;
.end method

.method public abstract getBigDecimalValue()Ljava/math/BigDecimal;
.end method

.method public abstract set(Ljava/math/BigDecimal;)V
.end method

.method public abstract setBigDecimalValue(Ljava/math/BigDecimal;)V
.end method
