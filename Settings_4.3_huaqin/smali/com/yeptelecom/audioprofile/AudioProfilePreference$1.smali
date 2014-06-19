.class Lcom/yeptelecom/audioprofile/AudioProfilePreference$1;
.super Ljava/lang/Object;
.source "AudioProfilePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yeptelecom/audioprofile/AudioProfilePreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yeptelecom/audioprofile/AudioProfilePreference;


# direct methods
.method constructor <init>(Lcom/yeptelecom/audioprofile/AudioProfilePreference;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 176
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 177
    const-string v0, "profileKey"

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    invoke-virtual {v1}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfilePreference$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfilePreference;

    # getter for: Lcom/yeptelecom/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/yeptelecom/audioprofile/AudioProfilePreference;->access$000(Lcom/yeptelecom/audioprofile/AudioProfilePreference;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/yeptelecom/audioprofile/Editprofile;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 179
    return-void
.end method
