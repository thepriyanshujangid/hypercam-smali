.class public Lorg/apache/poi/xslf/usermodel/XSLFTextRun$9;
.super Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;
.source "XSLFTextRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getTextCap()Lorg/apache/poi/xslf/usermodel/TextCap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<",
        "Lorg/apache/poi/xslf/usermodel/TextCap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$9;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-direct {p0, p2}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetCap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 3
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/TextCap;->values()[Lorg/apache/poi/xslf/usermodel/TextCap;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
