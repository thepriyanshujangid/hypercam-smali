.class public Lorg/jcodec/containers/mp4/boxes/MetaBox;
.super Lorg/jcodec/containers/mp4/boxes/NodeBox;
.source "MetaBox.java"


# static fields
.field private static final FOURCC:Ljava/lang/String; = "meta"


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createMetaBox()Lorg/jcodec/containers/mp4/boxes/MetaBox;
    .locals 4

    .line 1
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MetaBox;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lorg/jcodec/containers/mp4/boxes/Header;->createHeader(Ljava/lang/String;J)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/MetaBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-object v0
.end method

.method private dropChildBox(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jcodec/containers/mp4/boxes/Box;

    .line 4
    invoke-virtual {p1}, Lorg/jcodec/containers/mp4/boxes/Box;->getFourcc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "meta"

    return-object v0
.end method

.method private getDataBox(Ljava/util/List;)Lorg/jcodec/containers/mp4/boxes/DataBox;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">;)",
            "Lorg/jcodec/containers/mp4/boxes/DataBox;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jcodec/containers/mp4/boxes/Box;

    .line 2
    instance-of v0, p1, Lorg/jcodec/containers/mp4/boxes/DataBox;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lorg/jcodec/containers/mp4/boxes/DataBox;

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getItunesMeta()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    const-class v1, Lorg/jcodec/containers/mp4/boxes/IListBox;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/IListBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v1

    check-cast v1, Lorg/jcodec/containers/mp4/boxes/IListBox;

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/boxes/IListBox;->getValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->getDataBox(Ljava/util/List;)Lorg/jcodec/containers/mp4/boxes/DataBox;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v2}, Lorg/jcodec/containers/mp4/boxes/DataBox;->getType()I

    move-result v4

    invoke-virtual {v2}, Lorg/jcodec/containers/mp4/boxes/DataBox;->getLocale()I

    move-result v5

    invoke-virtual {v2}, Lorg/jcodec/containers/mp4/boxes/DataBox;->getData()[B

    move-result-object v2

    invoke-static {v4, v5, v2}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->createOtherWithLocale(II[B)Lorg/jcodec/containers/mp4/boxes/MetaValue;

    move-result-object v2

    .line 7
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getKeyedMeta()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    const-class v1, Lorg/jcodec/containers/mp4/boxes/IListBox;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/IListBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v1

    check-cast v1, Lorg/jcodec/containers/mp4/boxes/IListBox;

    .line 3
    const-class v2, Lorg/jcodec/containers/mp4/boxes/MdtaBox;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/KeysBox;->fourcc()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->fourcc()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findAllPath(Lorg/jcodec/containers/mp4/boxes/Box;Ljava/lang/Class;[Ljava/lang/String;)[Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v2

    check-cast v2, [Lorg/jcodec/containers/mp4/boxes/MdtaBox;

    if-eqz v1, :cond_4

    .line 4
    array-length v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/boxes/IListBox;->getValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v3}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->getDataBox(Ljava/util/List;)Lorg/jcodec/containers/mp4/boxes/DataBox;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v3}, Lorg/jcodec/containers/mp4/boxes/DataBox;->getType()I

    move-result v6

    invoke-virtual {v3}, Lorg/jcodec/containers/mp4/boxes/DataBox;->getLocale()I

    move-result v7

    invoke-virtual {v3}, Lorg/jcodec/containers/mp4/boxes/DataBox;->getData()[B

    move-result-object v3

    invoke-static {v6, v7, v3}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->createOtherWithLocale(II[B)Lorg/jcodec/containers/mp4/boxes/MetaValue;

    move-result-object v3

    .line 9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    array-length v7, v2

    if-gt v6, v7, :cond_1

    .line 10
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v5

    aget-object v4, v2, v4

    invoke-virtual {v4}, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public setItunesMeta(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4
    const-class v1, Lorg/jcodec/containers/mp4/boxes/IListBox;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/IListBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v1

    check-cast v1, Lorg/jcodec/containers/mp4/boxes/IListBox;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/boxes/IListBox;->getValues()Ljava/util/Map;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jcodec/containers/mp4/boxes/MetaValue;

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v5}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getType()I

    move-result v6

    invoke-virtual {v5}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getLocale()I

    move-result v7

    invoke-virtual {v5}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getData()[B

    move-result-object v5

    invoke-static {v6, v7, v5}, Lorg/jcodec/containers/mp4/boxes/DataBox;->createDataBox(II[B)Lorg/jcodec/containers/mp4/boxes/DataBox;

    move-result-object v5

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/DataBox;->fourcc()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->dropChildBox(Ljava/util/List;Ljava/lang/String;)V

    .line 12
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jcodec/containers/mp4/boxes/MetaValue;

    .line 17
    invoke-virtual {v2}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getType()I

    move-result v4

    invoke-virtual {v2}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getLocale()I

    move-result v5

    invoke-virtual {v2}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getData()[B

    move-result-object v2

    invoke-static {v4, v5, v2}, Lorg/jcodec/containers/mp4/boxes/DataBox;->createDataBox(II[B)Lorg/jcodec/containers/mp4/boxes/DataBox;

    move-result-object v2

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 22
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 24
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 25
    :cond_5
    invoke-static {v1}, Lorg/jcodec/containers/mp4/boxes/IListBox;->createIListBox(Ljava/util/Map;)Lorg/jcodec/containers/mp4/boxes/IListBox;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->replaceBox(Lorg/jcodec/containers/mp4/boxes/Box;)V

    return-void
.end method

.method public setKeyedMeta(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/KeysBox;->createKeysBox()Lorg/jcodec/containers/mp4/boxes/KeysBox;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->createMdtaBox(Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/MdtaBox;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->add(Lorg/jcodec/containers/mp4/boxes/Box;)V

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jcodec/containers/mp4/boxes/MetaValue;

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v4}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getType()I

    move-result v6

    invoke-virtual {v4}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getLocale()I

    move-result v7

    invoke-virtual {v4}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getData()[B

    move-result-object v4

    invoke-static {v6, v7, v4}, Lorg/jcodec/containers/mp4/boxes/DataBox;->createDataBox(II[B)Lorg/jcodec/containers/mp4/boxes/DataBox;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v3, v2

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1}, Lorg/jcodec/containers/mp4/boxes/IListBox;->createIListBox(Ljava/util/Map;)Lorg/jcodec/containers/mp4/boxes/IListBox;

    move-result-object p1

    .line 11
    invoke-virtual {p0, v0}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->replaceBox(Lorg/jcodec/containers/mp4/boxes/Box;)V

    .line 12
    invoke-virtual {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->replaceBox(Lorg/jcodec/containers/mp4/boxes/Box;)V

    return-void
.end method
