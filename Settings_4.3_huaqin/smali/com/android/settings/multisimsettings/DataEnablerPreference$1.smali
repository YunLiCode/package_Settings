.class Lcom/android/settings/multisimsettings/DataEnablerPreference$1;
.super Ljava/lang/Object;
.source "DataEnablerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/multisimsettings/DataEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/multisimsettings/DataEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/multisimsettings/DataEnablerPreference;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/DataEnablerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 93
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 94
    .local v1, "isChecked":Z
    const-string v2, "DataEnablerPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange isChecked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/DataEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/DataEnablerPreference;->mConnManager:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/settings/multisimsettings/DataEnablerPreference;->access$100(Lcom/android/settings/multisimsettings/DataEnablerPreference;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/android/settings/multisimsettings/DataEnablerPreference$1;->this$0:Lcom/android/settings/multisimsettings/DataEnablerPreference;

    # getter for: Lcom/android/settings/multisimsettings/DataEnablerPreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/multisimsettings/DataEnablerPreference;->access$200(Lcom/android/settings/multisimsettings/DataEnablerPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_data"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_0

    move v2, v3

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 100
    :cond_1
    return v3
.end method
