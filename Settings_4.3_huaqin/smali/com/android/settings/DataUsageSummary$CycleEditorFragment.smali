.class public Lcom/android/settings/DataUsageSummary$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1799
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 1803
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1812
    :goto_0
    return-void

    .line 1805
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1806
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "template"

    # getter for: Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$2600(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1808
    new-instance v1, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;-><init>()V

    .line 1809
    .local v1, "dialog":Lcom/android/settings/DataUsageSummary$CycleEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1810
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1811
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "cycleEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    .line 1816
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 1817
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings/DataUsageSummary;

    .line 1818
    .local v5, "target":Lcom/android/settings/DataUsageSummary;
    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$2700(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v3

    .line 1820
    .local v3, "editor":Lcom/android/settings/net/NetworkPolicyEditor;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1821
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 1823
    .local v9, "dialogInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040028

    const/4 v1, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 1824
    .local v10, "view":Landroid/view/View;
    const v0, 0x7f080059

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 1826
    .local v2, "cycleDayPicker":Landroid/widget/NumberPicker;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 1827
    .local v4, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v4}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v8

    .line 1829
    .local v8, "cycleDay":I
    invoke-virtual {v2, v12}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1830
    const/16 v0, 0x1f

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1831
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1832
    invoke-virtual {v2, v12}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1834
    const v0, 0x7f0b06cf

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1835
    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1837
    const v11, 0x7f0b06d1

    new-instance v0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual {v6, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1851
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
