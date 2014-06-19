.class Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceClickListener;
.super Ljava/lang/Object;
.source "MultiSimConfiguration.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/multisimsettings/MultiSimConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NamePreferenceClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/multisimsettings/MultiSimConfiguration;


# direct methods
.method private constructor <init>(Lcom/android/settings/multisimsettings/MultiSimConfiguration;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceClickListener;->this$0:Lcom/android/settings/multisimsettings/MultiSimConfiguration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/multisimsettings/MultiSimConfiguration;Lcom/android/settings/multisimsettings/MultiSimConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/multisimsettings/MultiSimConfiguration;
    .param p2, "x1"    # Lcom/android/settings/multisimsettings/MultiSimConfiguration$1;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceClickListener;-><init>(Lcom/android/settings/multisimsettings/MultiSimConfiguration;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceClickListener;->this$0:Lcom/android/settings/multisimsettings/MultiSimConfiguration;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->access$300(Lcom/android/settings/multisimsettings/MultiSimConfiguration;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 158
    .local v0, "et":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceClickListener;->this$0:Lcom/android/settings/multisimsettings/MultiSimConfiguration;

    iget-object v2, p0, Lcom/android/settings/multisimsettings/MultiSimConfiguration$NamePreferenceClickListener;->this$0:Lcom/android/settings/multisimsettings/MultiSimConfiguration;

    # getter for: Lcom/android/settings/multisimsettings/MultiSimConfiguration;->mSubscription:I
    invoke-static {v2}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->access$200(Lcom/android/settings/multisimsettings/MultiSimConfiguration;)I

    move-result v2

    # invokes: Lcom/android/settings/multisimsettings/MultiSimConfiguration;->getMultiSimName(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/multisimsettings/MultiSimConfiguration;->access$400(Lcom/android/settings/multisimsettings/MultiSimConfiguration;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
