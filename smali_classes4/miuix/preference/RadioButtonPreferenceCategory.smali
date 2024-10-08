.class public Lmiuix/preference/RadioButtonPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "RadioButtonPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;,
        Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;,
        Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioButtonPreferenceCategory"


# instance fields
.field private mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

.field private mCheckedPosition:I

.field private mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 5
    sget v0, Lmiuix/preference/R$attr;->preferenceCategoryRadioStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 4
    new-instance p1, Lmiuix/preference/RadioButtonPreferenceCategory$1;

    invoke-direct {p1, p0}, Lmiuix/preference/RadioButtonPreferenceCategory$1;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;)V

    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    return-void
.end method

.method public static synthetic access$000(Lmiuix/preference/RadioButtonPreferenceCategory;Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/preference/RadioButtonPreferenceCategory;->checkPreferenceByInternal(Landroidx/preference/Preference;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$100(Lmiuix/preference/RadioButtonPreferenceCategory;Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    return-void
.end method

.method public static synthetic access$300(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPosition(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    return-void
.end method

.method private callChangeListenerByInternal(Ljava/lang/Object;Landroidx/preference/Preference;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private checkPreferenceByInternal(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 3
    :goto_0
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 4
    :cond_1
    invoke-direct {p0, p2, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->callChangeListenerByInternal(Ljava/lang/Object;Landroidx/preference/Preference;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    :cond_2
    return-void
.end method

.method private clearChecked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    return-void
.end method

.method private parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
    .locals 1

    .line 1
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-direct {v0, p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioSetPreferenceCategory;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    invoke-direct {v0, p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreference;)V

    return-object v0

    .line 5
    :cond_1
    instance-of v0, p1, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;

    check-cast p1, Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-direct {v0, p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioSetPreferenceCategory;)V

    return-object v0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only RadioButtonPreference or RadioSetPreferenceCategory can be added to RadioButtonPreferenceCategory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setCheckedPreferenceInternal(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .locals 0

    const/4 p0, 0x1

    .line 1
    invoke-virtual {p1, p0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    return-void
.end method

.method private updateCheckedPosition(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 5
    iput v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 4
    :cond_0
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    :cond_1
    return-void
.end method


# virtual methods
.method public addPreference(Landroidx/preference/Preference;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    move-result-object v0

    .line 2
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    if-nez v1, :cond_1

    .line 6
    iput-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already has a checked item, please check state of new add preference"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return p1
.end method

.method public getCheckedPosition()I
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPosition(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 3
    :cond_0
    iget p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    return p0
.end method

.method public getCheckedPreference()Landroidx/preference/Preference;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public removeAll()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    return-void
.end method

.method public removePreference(Landroidx/preference/Preference;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    move-result-object v0

    .line 2
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    .line 4
    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 7
    iput-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    :cond_0
    return p1
.end method

.method public setCheckedPosition(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreferenceInternal(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 4
    invoke-direct {p0, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 5
    iput p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    return-void
.end method

.method public setCheckedPreference(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0}, Lmiuix/preference/RadioButtonPreferenceCategory;->clearChecked()V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreferenceInternal(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 5
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 6
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPosition(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    return-void
.end method
