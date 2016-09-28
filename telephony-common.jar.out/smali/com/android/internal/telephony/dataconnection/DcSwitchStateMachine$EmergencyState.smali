.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 176
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get8(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 177
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isEmergency()Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EmergencyState: isEmergency() is false. deferMessage msg.what=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 179
    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 178
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    .line 181
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get9(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 182
    return v3

    .line 185
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 232
    :pswitch_0
    return v4

    .line 187
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get9(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 236
    :goto_0
    return v3

    .line 192
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v4, "EmergencyState: ignoring EVENT_EMERGENCY_CALL_STARTED"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get9(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get7(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v5

    if-ne v2, v5, :cond_1

    const/4 v1, 0x1

    .line 199
    .local v1, "val":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    if-eqz v1, :cond_2

    move v2, v3

    :goto_2
    const v4, 0x44004

    invoke-virtual {v5, p1, v4, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_0

    .line 197
    .end local v1    # "val":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "val":Z
    goto :goto_1

    :cond_2
    move v2, v4

    .line 199
    goto :goto_2

    .line 204
    .end local v1    # "val":Z
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get9(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get7(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v5

    if-eq v2, v5, :cond_4

    .line 205
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get9(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    move-result-object v5

    if-ne v2, v5, :cond_5

    const/4 v1, 0x1

    .line 210
    .restart local v1    # "val":Z
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    .line 211
    if-eqz v1, :cond_3

    move v4, v3

    :cond_3
    const v5, 0x44006

    .line 210
    invoke-virtual {v2, p1, v5, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_0

    .line 204
    .end local v1    # "val":Z
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "val":Z
    goto :goto_3

    .line 205
    .end local v1    # "val":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "val":Z
    goto :goto_3

    .line 222
    .end local v1    # "val":Z
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EmergencyState: deferMessage msg.what=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x44000
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
