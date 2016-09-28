.class public Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.super Landroid/os/Handler;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$SetPreferredNwModeMessage;,
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;,
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;
    }
.end annotation


# static fields
.field public static final CURR_SUBID:Ljava/lang/String; = "curr_subid"

.field private static final DBG:Z = false

.field private static final DELAY_MILLIS:I = 0x1f4

.field private static final EVENT_GET_NETWORK_SELECTION_MODE_DONE:I = 0x2

.field private static final EVENT_SET_PREFERRED_NW_MODE:I = 0x8

.field private static final EVENT_SIM_ABSENT:I = 0x4

.field private static final EVENT_SIM_IO_ERROR:I = 0x6

.field private static final EVENT_SIM_LOADED:I = 0x3

.field private static final EVENT_SIM_LOCKED:I = 0x5

.field private static final EVENT_SIM_LOCKED_QUERY_ICCID_DONE:I = 0x1

.field private static final EVENT_SIM_UNKNOWN:I = 0x7

.field private static final EVENT_UPDATE_INSERTED_SIM_COUNT:I = 0x9

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final ICCID_STRING_FOR_NV:Ljava/lang/String; = "DUMMY_NV_ID"

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionInfoUpdater"

.field private static final PREF_LAST_SEEN_SIM_COUNT:Ljava/lang/String; = "previous_update_sim_count"

.field private static final PROJECT_SIM_NUM:I

.field public static final SIM_CHANGED:I = -0x1

.field public static final SIM_NEW:I = -0x2

.field public static final SIM_NOT_CHANGE:I = 0x0

.field public static final SIM_NOT_INSERT:I = -0x63

.field public static final SIM_REPOSITION:I = -0x3

.field public static final STATUS_NO_SIM_INSERTED:I = 0x0

.field public static final STATUS_SIM1_INSERTED:I = 0x1

.field public static final STATUS_SIM2_INSERTED:I = 0x2

.field public static final STATUS_SIM3_INSERTED:I = 0x4

.field public static final STATUS_SIM4_INSERTED:I = 0x8

.field private static mContext:Landroid/content/Context;

.field protected static mIccId:[Ljava/lang/String;

.field private static mInsertSimState:[I

.field private static mPhone:[Lcom/android/internal/telephony/Phone;


# instance fields
.field private mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

.field private mCurrentSimCount:I

.field private mCurrentlyActiveUserId:I

.field private mIsShutdown:Z

.field private mLockedSims:Ljava/util/BitSet;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mLockedSims:Ljava/util/BitSet;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/content/pm/IPackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsShutdown:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->update(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 113
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    .line 114
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 121
    iput v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentSimCount:I

    .line 122
    new-instance v1, Ljava/util/BitSet;

    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mLockedSims:Ljava/util/BitSet;

    .line 184
    new-instance v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    const-string/jumbo v1, "Constructor invoked"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 127
    sput-object p1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 128
    sput-object p2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 129
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 130
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 131
    iput-boolean v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsShutdown:Z

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    new-instance v1, Lcom/android/internal/telephony/CarrierServiceBindHelper;

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    .line 139
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->initializeCarrierApps()V

    .line 124
    return-void
.end method

.method private broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 831
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 837
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 838
    const-string/jumbo v1, "phoneName"

    const-string/jumbo v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    const-string/jumbo v1, "ss"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED LOADED reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 843
    const/4 v2, 0x0

    .line 842
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 844
    const-string/jumbo v2, " for mCardIndex : "

    .line 842
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 845
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    .line 846
    const/4 v2, -0x1

    .line 845
    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 830
    return-void
.end method

.method private handleSimLoaded(I)V
    .locals 24
    .param p1, "slotId"    # I

    .prologue
    .line 420
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "handleSimStateLoadedInternal: slotId: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 425
    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v19, v19, p1

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v11

    .line 426
    .local v11, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v11, :cond_0

    .line 427
    const-string/jumbo v19, "onRecieve: IccRecords null"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 428
    return-void

    .line 430
    :cond_0
    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_1

    .line 431
    const-string/jumbo v19, "onRecieve: IccID null"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 432
    return-void

    .line 434
    :cond_1
    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, p1

    .line 435
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->update(I)V

    .line 437
    const v15, 0x7fffffff

    .line 438
    .local v15, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v16

    .line 439
    .local v16, "subIds":[I
    if-eqz v16, :cond_2

    .line 440
    const/16 v19, 0x0

    aget v15, v16, v19

    .line 443
    :cond_2
    invoke-static {v15}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 444
    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    .line 445
    .local v10, "operator":Ljava/lang/String;
    if-eqz v10, :cond_7

    .line 446
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v19

    move/from16 v0, v19

    if-ne v15, v0, :cond_3

    .line 447
    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v10, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 449
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v15}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    .line 453
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    .line 454
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v6

    .line 455
    .local v6, "msisdn":Ljava/lang/String;
    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 457
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v6, :cond_4

    .line 458
    new-instance v9, Landroid/content/ContentValues;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 459
    .local v9, "number":Landroid/content/ContentValues;
    const-string/jumbo v19, "number"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sget-object v19, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 461
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "_id="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 462
    int-to-long v0, v15

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    .line 461
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 462
    const/16 v21, 0x0

    .line 460
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v4, v0, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 465
    .end local v9    # "number":Landroid/content/ContentValues;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v17

    .line 467
    .local v17, "subInfo":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v12

    .line 468
    .local v12, "simCarrierName":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 470
    .local v7, "name":Landroid/content/ContentValues;
    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v19

    .line 471
    const/16 v20, 0x2

    .line 470
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 472
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 473
    move-object v8, v12

    .line 477
    .local v8, "nameToSet":Ljava/lang/String;
    :goto_1
    const-string/jumbo v19, "display_name"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "sim name = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 479
    sget-object v19, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 480
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "_id="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 481
    int-to-long v0, v15

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    .line 480
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 481
    const/16 v21, 0x0

    .line 479
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v4, v0, v7, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 487
    .end local v8    # "nameToSet":Ljava/lang/String;
    :cond_5
    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 488
    .local v13, "sp":Landroid/content/SharedPreferences;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "curr_subid"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 490
    .local v14, "storedSubId":I
    if-eq v14, v15, :cond_6

    .line 491
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setDefaultDataSubNetworkType(II)V

    .line 493
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 494
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "curr_subid"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v5, v0, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 495
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 502
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "msisdn":Ljava/lang/String;
    .end local v7    # "name":Landroid/content/ContentValues;
    .end local v10    # "operator":Ljava/lang/String;
    .end local v12    # "simCarrierName":Ljava/lang/String;
    .end local v13    # "sp":Landroid/content/SharedPreferences;
    .end local v14    # "storedSubId":I
    .end local v17    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    :goto_2
    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v19

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    move/from16 v22, v0

    .line 502
    invoke-static/range {v19 .. v22}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)V

    .line 505
    const-string/jumbo v19, "LOADED"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string/jumbo v19, "LOADED"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 419
    return-void

    .line 451
    .restart local v10    # "operator":Ljava/lang/String;
    :cond_7
    const-string/jumbo v19, "EVENT_RECORDS_LOADED Operator name is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 475
    .restart local v4    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v6    # "msisdn":Ljava/lang/String;
    .restart local v7    # "name":Landroid/content/ContentValues;
    .restart local v12    # "simCarrierName":Ljava/lang/String;
    .restart local v17    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "CARD "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, p1, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "nameToSet":Ljava/lang/String;
    goto/16 :goto_1

    .line 498
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "msisdn":Ljava/lang/String;
    .end local v7    # "name":Landroid/content/ContentValues;
    .end local v8    # "nameToSet":Ljava/lang/String;
    .end local v10    # "operator":Ljava/lang/String;
    .end local v12    # "simCarrierName":Ljava/lang/String;
    .end local v17    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_9
    const-string/jumbo v19, "Invalid subId, could not update ContentResolver"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handleSimLocked(ILjava/lang/String;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 386
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, p1

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " hot plug in"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 388
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v4, v2, p1

    .line 391
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 394
    :goto_0
    if-eqz v0, :cond_3

    .line 395
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v2, p1

    .line 396
    .local v1, "iccId":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 397
    const-string/jumbo v2, "Querying IccId"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 400
    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    invoke-direct {v2, p2, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    .line 399
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 398
    const/16 v3, 0x2fe2

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 409
    .end local v1    # "iccId":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->update(I)V

    .line 385
    return-void

    .line 392
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .local v0, "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    goto :goto_0

    .line 402
    .end local v0    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v1    # "iccId":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NOT Querying IccId its already set sIccid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 403
    const-string/jumbo v2, "LOCKED"

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 404
    const-string/jumbo v2, "LOCKED"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 407
    .end local v1    # "iccId":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sFh["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is null, ignore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initializeCarrierApps()V
    .locals 5

    .prologue
    .line 147
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    .line 149
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 150
    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    .line 149
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 176
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iput v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    .line 180
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)V

    .line 142
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t get current user ID; guessing it\'s 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "oldIccId"    # [Ljava/lang/String;

    .prologue
    .line 818
    const/4 v1, 0x1

    .line 819
    .local v1, "newSim":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 820
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 821
    const/4 v1, 0x0

    .line 825
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "newSim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 827
    return v1

    .line 819
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 855
    const-string/jumbo v0, "SubscriptionInfoUpdater"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void
.end method

.method private previousUpdateSimCount()I
    .locals 3

    .prologue
    .line 802
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 803
    const-string/jumbo v1, "previous_update_sim_count"

    const/4 v2, 0x0

    .line 802
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setPreferredNwModeForSlot(IIILandroid/os/Message;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "subId"    # I
    .param p3, "networkType"    # I
    .param p4, "message"    # Landroid/os/Message;

    .prologue
    .line 585
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-interface {v0, p3, p4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 586
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 586
    invoke-static {v0, v1, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 584
    return-void
.end method

.method private setPreviousUpdateSimCount(I)V
    .locals 2
    .param p1, "simCount"    # I

    .prologue
    .line 807
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 809
    const-string/jumbo v1, "previous_update_sim_count"

    .line 807
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 806
    return-void
.end method

.method private update(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 413
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 414
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 412
    :cond_0
    return-void
.end method

.method private updateCarrierServices(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "simState"    # Ljava/lang/String;

    .prologue
    .line 594
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 593
    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 595
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0, p1, p2}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 596
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->updateForPhoneId(ILjava/lang/String;)V

    .line 592
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 850
    const-string/jumbo v0, "[dispose]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 851
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 849
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 859
    const-string/jumbo v0, "SubscriptionInfoUpdater:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method protected getInsertedSimCount()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentSimCount:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 294
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 371
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown msg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 297
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    .line 298
    .local v6, "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    iget v4, v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    .line 299
    .local v4, "slotId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleMessage : <EVENT_SIM_LOCKED_QUERY_ICCID_DONE> SIM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 300
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_2

    .line 301
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 302
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 303
    .local v1, "data":[B
    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    array-length v8, v1

    invoke-static {v1, v9, v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 312
    .end local v1    # "data":[B
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sIccId["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->update(I)V

    .line 314
    const-string/jumbo v7, "LOCKED"

    .line 315
    iget-object v8, v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    .line 314
    invoke-direct {p0, v4, v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string/jumbo v7, ""

    sget-object v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 317
    const-string/jumbo v7, "LOCKED"

    invoke-direct {p0, v4, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_1
    const-string/jumbo v7, "Null ar"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 306
    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string/jumbo v8, ""

    aput-object v8, v7, v4

    goto :goto_1

    .line 309
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string/jumbo v8, ""

    aput-object v8, v7, v4

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Query IccId fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 323
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "slotId":I
    .end local v6    # "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 324
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 325
    .local v5, "slotId":Ljava/lang/Integer;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_3

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_3

    .line 326
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 327
    .local v3, "modes":[I
    aget v7, v3, v9

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 328
    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-interface {v7, v10}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 331
    .end local v3    # "modes":[I
    :cond_3
    const-string/jumbo v7, "EVENT_GET_NETWORK_SELECTION_MODE_DONE: error getting network mode."

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "slotId":Ljava/lang/Integer;
    :pswitch_2
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V

    goto/16 :goto_0

    .line 341
    :pswitch_3
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsent(I)V

    goto/16 :goto_0

    .line 345
    :pswitch_4
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLocked(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 349
    :pswitch_5
    iget v7, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v8, "UNKNOWN"

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 353
    :pswitch_6
    iget v7, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v8, "CARD_IO_ERROR"

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 357
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 358
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SetPreferredNwModeMessage;

    .line 359
    .local v2, "mode":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SetPreferredNwModeMessage;
    iget v7, v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SetPreferredNwModeMessage;->slotId:I

    iget v8, v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SetPreferredNwModeMessage;->subId:I

    iget v9, v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SetPreferredNwModeMessage;->networkType:I

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setPreferredNwModeForSlot(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 363
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "mode":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SetPreferredNwModeMessage;
    :pswitch_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "EVENT_UPDATE_INSERTED_SIM_COUNT: locked sims: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mLockedSims:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->cardinality()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x9

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 366
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update inserted sim count, current sim count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentSimCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected handleSimAbsent(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 600
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, p1

    .line 604
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->update(I)V

    .line 605
    const-string/jumbo v0, "ABSENT"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 599
    return-void

    .line 601
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " hot plug out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected isAllIccIdQueryDone()Z
    .locals 3

    .prologue
    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 248
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wait for SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IccId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x0

    return v1

    .line 247
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_1
    const-string/jumbo v1, "All IccIds query complete"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 255
    const/4 v1, 0x1

    return v1
.end method

.method public setDefaultDataSubNetworkType(II)V
    .locals 22
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 510
    const v19, 0x7fffffff

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 511
    const-string/jumbo v19, "SubscriptionInfoUpdater"

    const-string/jumbo v20, "setDefaultDataSubNetworkType called with DEFAULT_SUB_ID"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void

    .line 515
    :cond_0
    sget v8, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 520
    .local v8, "networkType":I
    :try_start_0
    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 521
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "preferred_network_mode"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 519
    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 537
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getUserNwMode(I)I

    move-result v18

    .line 538
    .local v18, "userNwType":I
    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    move/from16 v0, v18

    if-eq v0, v8, :cond_1

    .line 539
    move/from16 v8, v18

    .line 541
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v19

    .line 542
    sget-object v20, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 541
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    .line 545
    .local v6, "isDsds":Z
    :goto_1
    const-string/jumbo v19, "ro.ril.multi_rat_capable"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 547
    .local v7, "isMultiRat":Z
    if-eqz v6, :cond_2

    if-eqz v7, :cond_4

    .line 575
    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setPreferredNwModeForSlot(IIILandroid/os/Message;)V

    .line 579
    :goto_2
    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v19, v19, p1

    .line 580
    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 579
    invoke-interface/range {v19 .. v20}, Lcom/android/internal/telephony/Phone;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 509
    return-void

    .line 522
    .end local v6    # "isDsds":Z
    .end local v7    # "isMultiRat":Z
    .end local v18    # "userNwType":I
    :catch_0
    move-exception v14

    .line 524
    .local v14, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v19, "Settings Exception reading value at subid for Settings.Global.PREFERRED_NETWORK_MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 528
    :try_start_1
    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 529
    const-string/jumbo v20, "preferred_network_mode"

    .line 527
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    goto :goto_0

    .line 530
    :catch_1
    move-exception v11

    .line 531
    .local v11, "retrySnfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v19, "SubscriptionInfoUpdater"

    const-string/jumbo v20, "Settings Exception Reading Value At Index for Settings.Global.PREFERRED_NETWORK_MODE"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 541
    .end local v11    # "retrySnfe":Landroid/provider/Settings$SettingNotFoundException;
    .end local v14    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v18    # "userNwType":I
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "isDsds":Z
    goto :goto_1

    .line 548
    .restart local v7    # "isMultiRat":Z
    :cond_4
    const/4 v9, 0x1

    .line 549
    .local v9, "networkType2":I
    const v12, 0x7fffffff

    .line 550
    .local v12, "slotId1":I
    const v13, 0x7fffffff

    .line 551
    .local v13, "slotId2":I
    const v15, 0x7fffffff

    .line 552
    .local v15, "subId1":I
    const v16, 0x7fffffff

    .line 554
    .local v16, "subId2":I
    const/16 v17, 0x0

    .local v17, "targetSlotId":I
    :goto_3
    sget v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 555
    sget-object v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v10, v19, v17

    .line 556
    .local v10, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    .line 558
    .local v5, "id":I
    move/from16 v0, p2

    if-ne v5, v0, :cond_5

    .line 559
    move/from16 v12, v17

    .line 560
    move v15, v5

    .line 554
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 564
    :cond_5
    move/from16 v16, v5

    .line 565
    move/from16 v13, v17

    goto :goto_4

    .line 571
    .end local v5    # "id":I
    .end local v10    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_6
    new-instance v19, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SetPreferredNwModeMessage;

    move-object/from16 v0, v19

    invoke-direct {v0, v12, v15, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SetPreferredNwModeMessage;-><init>(III)V

    .line 570
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 572
    .local v4, "continuation":Landroid/os/Message;
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v1, v9, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setPreferredNwModeForSlot(IIILandroid/os/Message;)V

    goto/16 :goto_2
.end method

.method public setDisplayNameForNewSub(Ljava/lang/String;II)V
    .locals 8
    .param p1, "newSubName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "newNameSource"    # I

    .prologue
    .line 259
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 260
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_3

    .line 262
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v0

    .line 263
    .local v0, "oldNameSource":I
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 264
    .local v1, "oldSubName":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[setDisplayNameForNewSub] subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 265
    const-string/jumbo v4, ", oldSimName = "

    .line 264
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 265
    const-string/jumbo v4, ", oldNameSource = "

    .line 264
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 266
    const-string/jumbo v4, ", newSubName = "

    .line 264
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 266
    const-string/jumbo v4, ", newNameSource = "

    .line 264
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 267
    if-eqz v1, :cond_0

    .line 268
    if-nez v0, :cond_2

    .line 269
    if-eqz p1, :cond_2

    .line 272
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 273
    int-to-long v6, p3

    .line 272
    invoke-virtual {v3, p1, v4, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    .line 258
    .end local v0    # "oldNameSource":I
    .end local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 270
    .restart local v0    # "oldNameSource":I
    .restart local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    if-eqz p1, :cond_1

    .line 271
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 276
    .end local v0    # "oldNameSource":I
    .end local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SUB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " SubInfo not created yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateSubIdForNV(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 609
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string/jumbo v1, "DUMMY_NV_ID"

    aput-object v1, v0, p1

    .line 610
    const-string/jumbo v0, "[updateSubIdForNV]+ scheduled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 611
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->update(I)V

    .line 608
    return-void
.end method

.method protected declared-synchronized updateSubscriptionInfoByIccId()V
    .locals 24

    .prologue
    monitor-enter p0

    .line 619
    :try_start_0
    const-string/jumbo v21, "updateSubscriptionInfoByIccId:+ Start"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 622
    const/16 v21, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v19, 0x0

    .line 623
    .local v19, "update":Z
    :goto_0
    if-eqz v19, :cond_0

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionManager;->clearSubscriptionInfo()V

    .line 627
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    sget v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v21

    if-ge v5, v0, :cond_2

    .line 628
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, 0x0

    aput v22, v21, v5

    .line 627
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 622
    .end local v5    # "i":I
    .end local v19    # "update":Z
    :cond_1
    const/16 v19, 0x1

    .restart local v19    # "update":Z
    goto :goto_0

    .line 631
    .restart local v5    # "i":I
    :cond_2
    sget v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 632
    .local v7, "insertedSimCount":I
    const/4 v5, 0x0

    :goto_2
    sget v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v21

    if-ge v5, v0, :cond_4

    .line 633
    const-string/jumbo v21, ""

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v5

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 634
    add-int/lit8 v7, v7, -0x1

    .line 635
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, -0x63

    aput v22, v21, v5

    .line 632
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 638
    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "insertedSimCount = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 639
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentSimCount:I

    .line 641
    const/4 v6, 0x0

    .line 642
    .local v6, "index":I
    const/4 v5, 0x0

    :goto_3
    sget v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v21

    if-ge v5, v0, :cond_8

    .line 643
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v21, v21, v5

    const/16 v22, -0x63

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 642
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 646
    :cond_6
    const/4 v6, 0x2

    .line 647
    add-int/lit8 v8, v5, 0x1

    .local v8, "j":I
    :goto_4
    sget v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v21

    if-ge v8, v0, :cond_5

    .line 648
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v21, v21, v8

    if-nez v21, :cond_7

    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v21, v21, v5

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v8

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 649
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, 0x1

    aput v22, v21, v5

    .line 650
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aput v6, v21, v8

    .line 651
    add-int/lit8 v6, v6, 0x1

    .line 647
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 656
    .end local v8    # "j":I
    :cond_8
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 657
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    sget v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v21

    new-array v13, v0, [Ljava/lang/String;

    .line 658
    .local v13, "oldIccId":[Ljava/lang/String;
    const/4 v5, 0x0

    :goto_5
    sget v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v21

    if-ge v5, v0, :cond_e

    .line 659
    const/16 v21, 0x0

    aput-object v21, v13, v5

    .line 661
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v21

    .line 662
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v22

    .line 661
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIdWithCheck(IZLjava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 663
    .local v14, "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v14, :cond_c

    .line 664
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v5

    .line 665
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "updateSubscriptionInfoByIccId: oldSubId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 666
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v21

    .line 665
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 667
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v21, v21, v5

    if-nez v21, :cond_9

    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v21, v21, v5

    aget-object v22, v13, v5

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 670
    :cond_9
    :goto_6
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v21, v21, v5

    if-eqz v21, :cond_a

    .line 671
    new-instance v20, Landroid/content/ContentValues;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/content/ContentValues;-><init>(I)V

    .line 672
    .local v20, "value":Landroid/content/ContentValues;
    const-string/jumbo v21, "sim_id"

    .line 673
    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 672
    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    sget-object v22, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 675
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "_id="

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 676
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 675
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 676
    const/16 v23, 0x0

    .line 674
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 658
    .end local v20    # "value":Landroid/content/ContentValues;
    :cond_a
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 668
    :cond_b
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, -0x1

    aput v22, v21, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v5    # "i":I
    .end local v6    # "index":I
    .end local v7    # "insertedSimCount":I
    .end local v13    # "oldIccId":[Ljava/lang/String;
    .end local v14    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v19    # "update":Z
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .line 679
    .restart local v4    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v5    # "i":I
    .restart local v6    # "index":I
    .restart local v7    # "insertedSimCount":I
    .restart local v13    # "oldIccId":[Ljava/lang/String;
    .restart local v14    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v19    # "update":Z
    :cond_c
    :try_start_1
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v21, v21, v5

    if-nez v21, :cond_d

    .line 681
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, -0x1

    aput v22, v21, v5

    .line 683
    :cond_d
    const-string/jumbo v21, ""

    aput-object v21, v13, v5

    .line 684
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "updateSubscriptionInfoByIccId: No SIM in slot "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " last time"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_7

    .line 688
    .end local v14    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_e
    const/4 v5, 0x0

    :goto_8
    sget v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v21

    if-ge v5, v0, :cond_f

    .line 689
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "updateSubscriptionInfoByIccId: oldIccId["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "] = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v13, v5

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 690
    const-string/jumbo v22, ", sIccId["

    .line 689
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 690
    const-string/jumbo v22, "] = "

    .line 689
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 690
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v5

    .line 689
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 688
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 694
    :cond_f
    const/4 v10, 0x0

    .line 695
    .local v10, "nNewCardCount":I
    const/4 v11, 0x0

    .line 696
    .local v11, "nNewSimStatus":I
    const/4 v5, 0x0

    :goto_9
    sget v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v21

    if-ge v5, v0, :cond_14

    .line 697
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v21, v21, v5

    const/16 v22, -0x63

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 698
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "updateSubscriptionInfoByIccId: No SIM inserted in slot "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " this time"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 696
    :cond_10
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 700
    :cond_11
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v21, v21, v5

    if-lez v21, :cond_13

    if-eqz v19, :cond_13

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v23, v23, v5

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 704
    sget-object v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v23, v23, v5

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 703
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    .line 705
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "SUB"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v5, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " has invalid IccId"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 709
    :cond_12
    :goto_b
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v21, v21, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 710
    add-int/lit8 v10, v10, 0x1

    .line 711
    packed-switch v5, :pswitch_data_0

    .line 726
    :goto_c
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, -0x2

    aput v22, v21, v5

    goto :goto_a

    .line 706
    :cond_13
    if-eqz v19, :cond_12

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v5

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_b

    .line 713
    :pswitch_0
    or-int/lit8 v11, v11, 0x1

    .line 714
    goto :goto_c

    .line 716
    :pswitch_1
    or-int/lit8 v11, v11, 0x2

    .line 717
    goto :goto_c

    .line 719
    :pswitch_2
    or-int/lit8 v11, v11, 0x4

    .line 720
    goto :goto_c

    .line 731
    :cond_14
    const/4 v5, 0x0

    :goto_d
    sget v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v21

    if-ge v5, v0, :cond_16

    .line 732
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v21, v21, v5

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 733
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, -0x3

    aput v22, v21, v5

    .line 735
    :cond_15
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "updateSubscriptionInfoByIccId: sInsertSimState["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "] = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 736
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v22, v22, v5

    .line 735
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 731
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 739
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v17

    .line 740
    .local v17, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v17, :cond_18

    const/4 v12, 0x0

    .line 741
    .local v12, "nSubCount":I
    :goto_e
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "updateSubscriptionInfoByIccId: nSubCount = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 742
    const/4 v5, 0x0

    :goto_f
    if-ge v5, v12, :cond_19

    .line 743
    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/SubscriptionInfo;

    .line 745
    .local v18, "temp":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    .line 746
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v22

    .line 745
    invoke-virtual/range {v21 .. v22}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v9

    .line 748
    .local v9, "msisdn":Ljava/lang/String;
    if-eqz v9, :cond_17

    .line 749
    new-instance v20, Landroid/content/ContentValues;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/content/ContentValues;-><init>(I)V

    .line 750
    .restart local v20    # "value":Landroid/content/ContentValues;
    const-string/jumbo v21, "number"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    sget-object v21, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 752
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "_id="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 753
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 752
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 753
    const/16 v23, 0x0

    .line 751
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 742
    .end local v20    # "value":Landroid/content/ContentValues;
    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 740
    .end local v9    # "msisdn":Ljava/lang/String;
    .end local v12    # "nSubCount":I
    .end local v18    # "temp":Landroid/telephony/SubscriptionInfo;
    :cond_18
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v12

    .restart local v12    # "nSubCount":I
    goto :goto_e

    .line 757
    :cond_19
    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsShutdown:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1c

    .line 794
    :cond_1a
    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsShutdown:Z

    move/from16 v21, v0

    if-eqz v21, :cond_21

    .line 798
    :cond_1b
    :goto_10
    const-string/jumbo v21, "updateSubscriptionInfoByIccId:- SsubscriptionInfo update complete"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 618
    return-void

    .line 757
    :cond_1c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mLockedSims:Ljava/util/BitSet;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/BitSet;->cardinality()I

    move-result v21

    if-nez v21, :cond_1a

    .line 758
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->previousUpdateSimCount()I

    move-result v15

    .line 759
    .local v15, "previousUpdateSimCount":I
    if-eq v15, v7, :cond_1e

    .line 760
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "number of sims changed, resetting sms prompt, old sim count: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 762
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v7, v0, :cond_1f

    sget v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1f

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionManager;->clearDefaultsForInactiveSubIds()V

    .line 767
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneFactory;->setSMSPromptEnabled(Z)V

    .line 770
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 771
    const-string/jumbo v22, "multi_sim_data_call"

    .line 772
    const/16 v23, -0x1

    .line 770
    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 774
    .local v16, "realStoredDataSub":I
    const/16 v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_1d

    .line 775
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v21

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_1d

    .line 776
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "switching data off; real stored sub: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 777
    const-string/jumbo v22, ", and we think the default sub id is now: "

    .line 776
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 778
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v22

    .line 776
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 779
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    .line 788
    .end local v16    # "realStoredDataSub":I
    :cond_1d
    :goto_11
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setPreviousUpdateSimCount(I)V

    .line 792
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 793
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    goto/16 :goto_10

    .line 782
    :cond_1f
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v7, v0, :cond_1d

    .line 786
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v21

    .line 785
    invoke-static/range {v21 .. v21}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v21

    if-eqz v21, :cond_20

    const/16 v21, 0x0

    :goto_12
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneFactory;->setSMSPromptEnabled(Z)V

    goto :goto_11

    :cond_20
    const/16 v21, 0x1

    goto :goto_12

    .line 796
    .end local v15    # "previousUpdateSimCount":I
    :cond_21
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_10

    .line 711
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
