.class public Lorg/dom4j/dom/DOMDocument;
.super Lorg/dom4j/tree/DefaultDocument;
.source "DOMDocument.java"

# interfaces
.implements Lorg/w3c/dom/Document;


# static fields
.field private static final DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/dom4j/dom/DOMDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    check-cast v0, Lorg/dom4j/dom/DOMDocumentFactory;

    sput-object v0, Lorg/dom4j/dom/DOMDocument;->DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/dom4j/tree/DefaultDocument;-><init>()V

    .line 2
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultDocument;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/dom/DOMElement;Lorg/dom4j/dom/DOMDocumentType;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lorg/dom4j/tree/DefaultDocument;-><init>(Ljava/lang/String;Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V

    .line 12
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/dom/DOMDocumentType;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultDocument;-><init>(Lorg/dom4j/DocumentType;)V

    .line 8
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/dom/DOMElement;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultDocument;-><init>(Lorg/dom4j/Element;)V

    .line 6
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/dom/DOMElement;Lorg/dom4j/dom/DOMDocumentType;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultDocument;-><init>(Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V

    .line 10
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    return-void
.end method

.method private checkNewChildNode(Lorg/w3c/dom/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/16 p1, 0x8

    if-eq p0, p1, :cond_1

    const/4 p1, 0x7

    if-eq p0, p1, :cond_1

    const/16 p1, 0xa

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const/4 p1, 0x3

    const-string v0, "Given node cannot be a child of document"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private init()V
    .locals 1

    .line 1
    sget-object v0, Lorg/dom4j/dom/DOMDocument;->DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultDocument;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMDocument;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 2
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->cloneNode(Lorg/dom4j/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/CDATASection;

    return-object p0
.end method

.method public createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createComment(Ljava/lang/String;)Lorg/dom4j/Comment;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Comment;

    return-object p0
.end method

.method public createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .locals 0

    .line 1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/DocumentFactory;->createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/EntityReference;

    return-object p0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    return-object p0
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Text;

    return-object p0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->content()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object p0

    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMDocumentType(Lorg/dom4j/DocumentType;)Lorg/w3c/dom/DocumentType;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentElement()Lorg/w3c/dom/Element;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object p0

    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMElement(Lorg/dom4j/Node;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/dom4j/tree/DefaultDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lorg/dom4j/dom/DOMDocument;->DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;

    return-object p0

    .line 3
    :cond_0
    invoke-super {p0}, Lorg/dom4j/tree/DefaultDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object p0

    return-object p0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->elementByID(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object p0

    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMElement(Lorg/dom4j/Node;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v0, p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagName(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v0, p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagNameNS(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->node(I)Lorg/dom4j/Node;

    move-result-object p0

    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/DOMImplementation;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/DOMImplementation;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lorg/dom4j/dom/DOMDocument;->DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;

    return-object p0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->nodeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->node(I)Lorg/dom4j/Node;

    move-result-object p0

    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLocalName(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNamespaceURI(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNextSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "#document"

    return-object p0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getParentNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPrefix(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPreviousSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public hasAttributes()Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasAttributes(Lorg/dom4j/Node;)Z

    move-result p0

    return p0
.end method

.method public hasChildNodes()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->nodeCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMDocument;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 2
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->insertBefore(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->isSupported(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->removeChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMDocument;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 2
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->replaceChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setPrefix(Lorg/dom4j/Node;Ljava/lang/String;)V

    return-void
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->supports(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
