.class Lcom/android/settings/deviceinfo/MSimStatus$2;
.super Landroid/telephony/PhoneStateListener;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MSimStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MSimStatus;

.field final synthetic val$subscription:I


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MSimStatus;II)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    iput p3, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->val$subscription:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    # getter for: Lcom/android/settings/deviceinfo/MSimStatus;->mDataState:[I
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MSimStatus;->access$600(Lcom/android/settings/deviceinfo/MSimStatus;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->val$subscription:I

    aput p1, v0, v1

    .line 469
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->val$subscription:I

    # invokes: Lcom/android/settings/deviceinfo/MSimStatus;->updateDataState(I)V
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->access$700(Lcom/android/settings/deviceinfo/MSimStatus;I)V

    .line 470
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->val$subscription:I

    # invokes: Lcom/android/settings/deviceinfo/MSimStatus;->updateNetworkType(I)V
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->access$500(Lcom/android/settings/deviceinfo/MSimStatus;I)V

    .line 471
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    # getter for: Lcom/android/settings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MSimStatus;->access$300(Lcom/android/settings/deviceinfo/MSimStatus;)[Landroid/telephony/ServiceState;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->val$subscription:I

    aput-object p1, v0, v1

    .line 463
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->val$subscription:I

    # invokes: Lcom/android/settings/deviceinfo/MSimStatus;->updateServiceState(I)V
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->access$400(Lcom/android/settings/deviceinfo/MSimStatus;I)V

    .line 464
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->val$subscription:I

    # invokes: Lcom/android/settings/deviceinfo/MSimStatus;->updateNetworkType(I)V
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->access$500(Lcom/android/settings/deviceinfo/MSimStatus;I)V

    .line 465
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    # getter for: Lcom/android/settings/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MSimStatus;->access$200(Lcom/android/settings/deviceinfo/MSimStatus;)[Landroid/telephony/SignalStrength;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->val$subscription:I

    aput-object p1, v0, v1

    .line 457
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->val$subscription:I

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->updateSignalStrength(I)V

    .line 458
    return-void
.end method
