.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$Archive;,
        Lcom/android/server/notification/NotificationManagerService$ToastRecord;,
        Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;,
        Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;,
        Lcom/android/server/notification/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$NotificationListeners;,
        Lcom/android/server/notification/NotificationManagerService$DumpFilter;,
        Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationManagerService$PolicyAccess;,
        Lcom/android/server/notification/NotificationManagerService$1;,
        Lcom/android/server/notification/NotificationManagerService$2;,
        Lcom/android/server/notification/NotificationManagerService$3;,
        Lcom/android/server/notification/NotificationManagerService$4;,
        Lcom/android/server/notification/NotificationManagerService$5;,
        Lcom/android/server/notification/NotificationManagerService$6;,
        Lcom/android/server/notification/NotificationManagerService$7;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final DBG:Z

.field private static final DB_VERSION:I = 0x1

.field static final DEFAULT_STREAM_TYPE:I = 0x5

.field static final DEFAULT_VIBRATE_PATTERN:[J

.field static final ENABLE_BLOCKED_NOTIFICATIONS:Z = true

.field static final ENABLE_BLOCKED_TOASTS:Z = true

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static final EVENTLOG_ENQUEUE_STATUS_IGNORED:I = 0x2

.field private static final EVENTLOG_ENQUEUE_STATUS_NEW:I = 0x0

.field private static final EVENTLOG_ENQUEUE_STATUS_UPDATE:I = 0x1

.field private static final FILTER_MSG_URI:Landroid/net/Uri;

.field private static final IS_FILTERED_QUERY:Ljava/lang/String; = "normalized_text=? AND package_name=?"

.field static final JUNK_SCORE:I = -0x3e8

.field private static final LIGHT_BRIGHTNESS_MAXIMUM:I = 0xff

.field static final LONG_DELAY:I = 0xdac

.field static final MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_CALL_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field static final MESSAGE_LISTENER_HINTS_CHANGED:I = 0x7

.field static final MESSAGE_LISTENER_NOTIFICATION_FILTER_CHANGED:I = 0x8

.field static final MESSAGE_RANKING_CONFIG_CHANGE:I = 0x5

.field static final MESSAGE_RECONSIDER_RANKING:I = 0x4

.field static final MESSAGE_SAVE_POLICY_FILE:I = 0x3

.field static final MESSAGE_SEND_RANKING_UPDATE:I = 0x6

.field static final MESSAGE_TIMEOUT:I = 0x2

.field private static final MY_PID:I

.field private static final MY_UID:I

.field static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field private static final REASON_DELEGATE_CANCEL:I = 0x2

.field private static final REASON_DELEGATE_CANCEL_ALL:I = 0x3

.field private static final REASON_DELEGATE_CLICK:I = 0x1

.field private static final REASON_DELEGATE_ERROR:I = 0x4

.field private static final REASON_GROUP_OPTIMIZATION:I = 0xd

.field private static final REASON_GROUP_SUMMARY_CANCELED:I = 0xc

.field private static final REASON_LISTENER_CANCEL:I = 0xa

.field private static final REASON_LISTENER_CANCEL_ALL:I = 0xb

.field private static final REASON_NOMAN_CANCEL:I = 0x8

.field private static final REASON_NOMAN_CANCEL_ALL:I = 0x9

.field private static final REASON_PACKAGE_BANNED:I = 0x7

.field private static final REASON_PACKAGE_CHANGED:I = 0x5

.field private static final REASON_USER_STOPPED:I = 0x6

.field static final SCORE_DISPLAY_THRESHOLD:I = -0x14

.field static final SCORE_INTERRUPTION_THRESHOLD:I = -0xa

.field static final SCORE_ONGOING_HIGHER:Z = false

.field static final SHORT_DELAY:I = 0x7d0

.field static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final UPDATE_MSG_URI:Landroid/net/Uri;

.field static final VIBRATE_PATTERN_MAXLEN:I = 0x11


# instance fields
.field private mActiveMedia:Z

.field private mAdjustableNotificationLedBrightness:Z

.field private mAm:Landroid/app/IActivityManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field mAttentionLight:Lcom/android/server/lights/Light;

.field mAudioManager:Landroid/media/AudioManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private mAutoGenerateNotificationColor:Z

.field private mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBuzzBeepBlinked:Ljava/lang/Runnable;

.field private mCallState:I

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mDefaultNotificationColor:I

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mDefaultVibrationPattern:[J

.field private mDisableDuckingWhileMedia:Z

.field private mDisableNotificationEffects:Z

.field private mEffectsSuppressor:Landroid/content/ComponentName;

.field private mFallbackVibrationPattern:[J

.field final mForegroundToken:Landroid/os/IBinder;

.field private final mGeneratedPackageLedColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

.field private mInCall:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field private mInterruptionFilter:I

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerHints:I

.field private mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field private final mListenersDisablingEffects:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiColorNotificationLed:Z

.field private mMultipleLedsEnabledSetting:Z

.field private mMultipleNotificationLeds:Z

.field private final mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private mNotificationLedBrightnessLevel:I

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPulseCustomLedValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPulseEnabled:Z

.field final mNotificationsByKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageNameMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private mRankingHelper:Lcom/android/server/notification/RankingHelper;

.field private final mRankingThread:Landroid/os/HandlerThread;

.field private mScreenOn:Z

.field private mScreenOnDefault:Z

.field private mScreenOnEnabled:Z

.field private final mService:Landroid/os/IBinder;

.field private mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field private mSoundNotificationKey:Ljava/lang/String;

.field private final mSpamCache:Landroid/util/SparseIntArray;

.field private mSpamExecutor:Ljava/util/concurrent/ExecutorService;

.field private mSpamFilterObserver:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

.field mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field final mSummaryByGroupKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field mSystemReady:Z

.field final mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUseAttentionLight:Z

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field private mVibrateNotificationKey:Ljava/lang/String;

.field mVibrator:Landroid/os/Vibrator;

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->FILTER_MSG_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressor:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mGeneratedPackageLedColors:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMultipleNotificationLeds:Z

    return v0
.end method

.method static synthetic -get22(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseCustomLedValues:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOnDefault:Z

    return v0
.end method

.method static synthetic -get26(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOnEnabled:Z

    return v0
.end method

.method static synthetic -get27(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSpamCache:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSpamExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic -get3()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->UPDATE_MSG_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get30(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSpamFilterObserver:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    return-object v0
.end method

.method static synthetic -get31(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object v0
.end method

.method static synthetic -get32(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic -get33(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAdjustableNotificationLedBrightness:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mActiveMedia:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGenerateNotificationColor:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedBrightnessLevel:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOnEnabled:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableDuckingWhileMedia:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMultipleLedsEnabledSetting:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "reason"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    return-void
.end method

.method static synthetic -wrap14(Ljava/lang/String;)V
    .locals 0
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap15(Ljava/lang/String;)V
    .locals 0
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap16()V
    .locals 0

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0
    .param p1, "hints"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isLedNotificationForcedOn(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0
    .param p1, "interruptionFilter"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleRankingConfigChange()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "customLedValuesString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->parseNotificationPulseCustomValuesString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/notification/NotificationManagerService;Ljava/io/InputStream;Z)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "forRestore"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;Z)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateDisableDucking()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;)Z
    .locals 1
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "basePkg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isNotificationSpam(Landroid/app/Notification;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;Z)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "forBackup"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->removeUnusedGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->getSpamCacheHash(Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 167
    const-string/jumbo v1, "NotificationService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 168
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 169
    const-string/jumbo v1, "debug.child_notifs"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 168
    :cond_0
    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 185
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 265
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 266
    const-string/jumbo v1, "content"

    .line 265
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 267
    const-string/jumbo v1, "com.cyanogenmod.spam"

    .line 265
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 268
    const-string/jumbo v1, "messages"

    .line 265
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->FILTER_MSG_URI:Landroid/net/Uri;

    .line 271
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 272
    const-string/jumbo v1, "content"

    .line 271
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 273
    const-string/jumbo v1, "com.cyanogenmod.spam"

    .line 271
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 274
    const-string/jumbo v1, "message"

    .line 271
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 275
    const-string/jumbo v1, "inc_count"

    .line 271
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->UPDATE_MSG_URI:Landroid/net/Uri;

    .line 344
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 345
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 165
    return-void

    .line 185
    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1136
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 234
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 236
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ranker"

    .line 237
    const/16 v2, 0xa

    .line 236
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    .line 248
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedBrightnessLevel:I

    .line 251
    iput-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mMultipleLedsEnabledSetting:Z

    .line 253
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGenerateNotificationColor:Z

    .line 255
    iput-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOnEnabled:Z

    .line 256
    iput-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOnDefault:Z

    .line 263
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSpamExecutor:Ljava/util/concurrent/ExecutorService;

    .line 283
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    .line 286
    iput v3, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 289
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 290
    iput-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 294
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mGeneratedPackageLedColors:Ljava/util/Map;

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 304
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 303
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 306
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 307
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$PolicyAccess;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    .line 321
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    .line 335
    new-instance v0, Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 561
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 757
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 834
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1115
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mBuzzBeepBlinked:Ljava/lang/Runnable;

    .line 1373
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    .line 2329
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    .line 2650
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2649
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 1137
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSpamCache:Landroid/util/SparseIntArray;

    .line 1135
    return-void
.end method

.method private applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 3001
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 3000
    return-void
.end method

.method private static audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;
    .locals 5
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v4, 0x0

    .line 2830
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_0

    .line 2831
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iget-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2834
    :cond_0
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2836
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2837
    iget v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 2836
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0

    .line 2833
    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object v0

    .line 2839
    :cond_2
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 2840
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    return-object v0

    .line 2842
    :cond_3
    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "Invalid stream type: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method private buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 35
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 2665
    const/4 v14, 0x0

    .line 2666
    .local v14, "buzz":Z
    const/4 v12, 0x0

    .line 2667
    .local v12, "beep":Z
    const/4 v13, 0x0

    .line 2669
    .local v13, "blink":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v26

    .line 2672
    .local v26, "notification":Landroid/app/Notification;
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/notification/NotificationRecord;->score:I

    const/16 v5, -0xa

    if-lt v4, v5, :cond_9

    const/4 v10, 0x1

    .line 2673
    .local v10, "aboveThreshold":Z
    :goto_0
    if-eqz v10, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_0
    const/4 v15, 0x0

    .line 2674
    .local v15, "canInterrupt":Z
    :goto_1
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2675
    :cond_1
    const-string/jumbo v4, "NotificationService"

    .line 2676
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " canInterrupt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2677
    const-string/jumbo v6, " intercept="

    .line 2676
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2677
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v6

    .line 2676
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2675
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .line 2683
    .local v30, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    .line 2685
    .local v18, "currentUser":I
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2689
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v19

    .line 2690
    .local v19, "disableEffects":Ljava/lang/String;
    if-eqz v19, :cond_3

    .line 2691
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 2694
    :cond_3
    if-nez v19, :cond_4

    .line 2695
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v4, :cond_b

    .line 2696
    move-object/from16 v0, v26

    iget v4, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_b

    .line 2809
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v34

    .line 2810
    .local v34, "wasShowLights":Z
    if-nez v15, :cond_23

    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->isLedNotificationForcedOn(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 2811
    if-nez v15, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->getAllowLights()Z

    move-result v16

    .line 2812
    :goto_3
    move-object/from16 v0, v26

    iget v4, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_25

    if-eqz v16, :cond_25

    .line 2813
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2814
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 2815
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    if-eqz v4, :cond_5

    .line 2816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    invoke-virtual {v4}, Lcom/android/server/lights/Light;->pulse()V

    .line 2818
    :cond_5
    const/4 v13, 0x1

    .line 2822
    :cond_6
    :goto_4
    if-nez v14, :cond_7

    if-nez v12, :cond_7

    if-eqz v13, :cond_8

    .line 2823
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 2824
    if-eqz v14, :cond_26

    const/4 v4, 0x1

    move v6, v4

    :goto_5
    if-eqz v12, :cond_27

    const/4 v4, 0x1

    move v5, v4

    :goto_6
    if-eqz v13, :cond_28

    const/4 v4, 0x1

    .line 2823
    :goto_7
    invoke-static {v7, v6, v5, v4}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;III)V

    .line 2825
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mBuzzBeepBlinked:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2664
    :cond_8
    return-void

    .line 2672
    .end local v10    # "aboveThreshold":Z
    .end local v15    # "canInterrupt":Z
    .end local v18    # "currentUser":I
    .end local v19    # "disableEffects":Ljava/lang/String;
    .end local v30    # "token":J
    .end local v34    # "wasShowLights":Z
    :cond_9
    const/4 v10, 0x0

    .restart local v10    # "aboveThreshold":Z
    goto/16 :goto_0

    .line 2673
    :cond_a
    const/4 v15, 0x1

    .restart local v15    # "canInterrupt":Z
    goto/16 :goto_1

    .line 2684
    .restart local v30    # "token":J
    :catchall_0
    move-exception v4

    .line 2685
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2684
    throw v4

    .line 2697
    .restart local v18    # "currentUser":I
    .restart local v19    # "disableEffects":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    .line 2698
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    move/from16 v0, v18

    if-ne v4, v0, :cond_12

    .line 2694
    :cond_c
    :goto_8
    if-eqz v15, :cond_4

    .line 2701
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 2694
    if-eqz v4, :cond_4

    .line 2702
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_4

    .line 2703
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v4, :cond_d

    const-string/jumbo v4, "NotificationService"

    const-string/jumbo v5, "Interrupting!"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    :cond_d
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 2713
    move-object/from16 v0, v26

    iget v4, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_13

    .line 2714
    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 2715
    move-object/from16 v0, v26

    iget-object v5, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2714
    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v32

    .line 2717
    :goto_9
    const/16 v29, 0x0

    .line 2718
    .local v29, "soundUri":Landroid/net/Uri;
    const/16 v22, 0x0

    .line 2720
    .local v22, "hasValidSound":Z
    if-eqz v32, :cond_15

    .line 2721
    sget-object v29, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 2724
    .local v29, "soundUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 2726
    .local v28, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "notification_sound"

    .line 2725
    move-object/from16 v0, v28

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    const/16 v22, 0x1

    .line 2732
    .end local v28    # "resolver":Landroid/content/ContentResolver;
    .end local v29    # "soundUri":Landroid/net/Uri;
    :cond_e
    :goto_a
    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableDuckingWhileMedia:Z

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mActiveMedia:Z

    if-eqz v4, :cond_17

    .line 2762
    :cond_f
    :goto_b
    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/app/Notification;->vibrate:[J

    if-eqz v4, :cond_1b

    const/16 v21, 0x1

    .line 2767
    .local v21, "hasCustomVibrate":Z
    :goto_c
    if-nez v21, :cond_1d

    if-eqz v22, :cond_1d

    .line 2769
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    .line 2770
    const/4 v5, 0x1

    .line 2769
    if-ne v4, v5, :cond_1c

    const/16 v17, 0x1

    .line 2774
    .local v17, "convertSoundToVibration":Z
    :goto_d
    move-object/from16 v0, v26

    iget v4, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1e

    const/16 v33, 0x1

    .line 2776
    .local v33, "useDefaultVibrate":Z
    :goto_e
    if-nez v33, :cond_10

    if-nez v17, :cond_10

    if-eqz v21, :cond_4

    .line 2777
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    if-eqz v4, :cond_4

    .line 2779
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 2781
    if-nez v33, :cond_11

    if-eqz v17, :cond_21

    .line 2784
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 2786
    .local v24, "identity":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v6

    .line 2787
    if-eqz v33, :cond_1f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultVibrationPattern:[J

    .line 2789
    :goto_f
    move-object/from16 v0, v26

    iget v8, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_20

    .line 2790
    const/4 v8, 0x0

    :goto_10
    invoke-static/range {v26 .. v26}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    move-result-object v9

    .line 2786
    invoke-virtual/range {v4 .. v9}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2791
    const/4 v14, 0x1

    .line 2793
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 2699
    .end local v17    # "convertSoundToVibration":Z
    .end local v21    # "hasCustomVibrate":Z
    .end local v22    # "hasValidSound":Z
    .end local v24    # "identity":J
    .end local v33    # "useDefaultVibrate":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v4

    .line 2694
    if-eqz v4, :cond_4

    goto/16 :goto_8

    .line 2713
    :cond_13
    const/16 v32, 0x1

    .local v32, "useDefaultSound":Z
    goto/16 :goto_9

    .line 2725
    .end local v32    # "useDefaultSound":Z
    .restart local v22    # "hasValidSound":Z
    .restart local v28    # "resolver":Landroid/content/ContentResolver;
    .restart local v29    # "soundUri":Landroid/net/Uri;
    :cond_14
    const/16 v22, 0x0

    goto/16 :goto_a

    .line 2727
    .end local v28    # "resolver":Landroid/content/ContentResolver;
    .local v29, "soundUri":Landroid/net/Uri;
    :cond_15
    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v4, :cond_e

    .line 2728
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v29, v0

    .line 2729
    .local v29, "soundUri":Landroid/net/Uri;
    if-eqz v29, :cond_16

    const/16 v22, 0x1

    goto/16 :goto_a

    :cond_16
    const/16 v22, 0x0

    goto/16 :goto_a

    .line 2734
    .end local v29    # "soundUri":Landroid/net/Uri;
    :cond_17
    move-object/from16 v0, v26

    iget v4, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1a

    const/16 v23, 0x1

    .line 2735
    .local v23, "looping":Z
    :goto_11
    invoke-static/range {v26 .. v26}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    move-result-object v11

    .line 2736
    .local v11, "audioAttributes":Landroid/media/AudioAttributes;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 2739
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 2740
    invoke-static {v11}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v5

    .line 2739
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-eqz v4, :cond_f

    .line 2741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v4

    if-nez v4, :cond_f

    .line 2742
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 2745
    .restart local v24    # "identity":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v27

    .line 2746
    .local v27, "player":Landroid/media/IRingtonePlayer;
    if-eqz v27, :cond_19

    .line 2747
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v4, :cond_18

    const-string/jumbo v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Playing sound "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2748
    const-string/jumbo v6, " with attributes "

    .line 2747
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    :cond_18
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v23

    invoke-interface {v0, v1, v4, v2, v11}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2751
    const/4 v12, 0x1

    .line 2755
    :cond_19
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_b

    .line 2734
    .end local v11    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v23    # "looping":Z
    .end local v24    # "identity":J
    .end local v27    # "player":Landroid/media/IRingtonePlayer;
    :cond_1a
    const/16 v23, 0x0

    .restart local v23    # "looping":Z
    goto :goto_11

    .line 2753
    .restart local v11    # "audioAttributes":Landroid/media/AudioAttributes;
    .restart local v24    # "identity":J
    :catch_0
    move-exception v20

    .line 2755
    .local v20, "e":Landroid/os/RemoteException;
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_b

    .line 2754
    .end local v20    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    .line 2755
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2754
    throw v4

    .line 2762
    .end local v11    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v23    # "looping":Z
    .end local v24    # "identity":J
    :cond_1b
    const/16 v21, 0x0

    .restart local v21    # "hasCustomVibrate":Z
    goto/16 :goto_c

    .line 2769
    :cond_1c
    const/16 v17, 0x0

    .restart local v17    # "convertSoundToVibration":Z
    goto/16 :goto_d

    .line 2767
    .end local v17    # "convertSoundToVibration":Z
    :cond_1d
    const/16 v17, 0x0

    .restart local v17    # "convertSoundToVibration":Z
    goto/16 :goto_d

    .line 2774
    :cond_1e
    const/16 v33, 0x0

    .restart local v33    # "useDefaultVibrate":Z
    goto/16 :goto_e

    .line 2788
    .restart local v24    # "identity":J
    :cond_1f
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_f

    .line 2790
    :cond_20
    const/4 v8, -0x1

    goto/16 :goto_10

    .line 2792
    :catchall_2
    move-exception v4

    .line 2793
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2792
    throw v4

    .line 2795
    .end local v24    # "identity":J
    :cond_21
    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/app/Notification;->vibrate:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 2798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v6

    .line 2799
    move-object/from16 v0, v26

    iget-object v7, v0, Landroid/app/Notification;->vibrate:[J

    .line 2800
    move-object/from16 v0, v26

    iget v8, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_22

    .line 2801
    const/4 v8, 0x0

    :goto_12
    invoke-static/range {v26 .. v26}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    move-result-object v9

    .line 2798
    invoke-virtual/range {v4 .. v9}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    .line 2802
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 2801
    :cond_22
    const/4 v8, -0x1

    goto :goto_12

    .line 2810
    .end local v17    # "convertSoundToVibration":Z
    .end local v21    # "hasCustomVibrate":Z
    .end local v22    # "hasValidSound":Z
    .end local v33    # "useDefaultVibrate":Z
    .restart local v34    # "wasShowLights":Z
    :cond_23
    const/16 v16, 0x1

    .local v16, "canInterruptWithLight":Z
    goto/16 :goto_3

    .line 2811
    .end local v16    # "canInterruptWithLight":Z
    :cond_24
    const/16 v16, 0x0

    .restart local v16    # "canInterruptWithLight":Z
    goto/16 :goto_3

    .line 2819
    .end local v16    # "canInterruptWithLight":Z
    :cond_25
    if-eqz v34, :cond_6

    .line 2820
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    goto/16 :goto_4

    .line 2824
    :cond_26
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_5

    :cond_27
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_6

    :cond_28
    const/4 v4, 0x0

    goto/16 :goto_7
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 3647
    packed-switch p0, :pswitch_data_0

    .line 3651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3648
    :pswitch_0
    const-string/jumbo v0, "CALL_STATE_IDLE"

    return-object v0

    .line 3649
    :pswitch_1
    const-string/jumbo v0, "CALL_STATE_RINGING"

    return-object v0

    .line 3650
    :pswitch_2
    const-string/jumbo v0, "CALL_STATE_OFFHOOK"

    return-object v0

    .line 3647
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "reason"    # I

    .prologue
    .line 3397
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v16

    .line 3398
    .local v16, "n":Landroid/app/Notification;
    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3399
    return-void

    .line 3402
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3403
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v7

    .line 3405
    .local v7, "userId":I
    if-nez v4, :cond_2

    .line 3406
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No package for group summary: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    :cond_1
    return-void

    .line 3410
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 3411
    .local v12, "N":I
    add-int/lit8 v15, v12, -0x1

    .local v15, "i":I
    :goto_0
    if-ltz v15, :cond_4

    .line 3412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 3413
    .local v13, "childR":Lcom/android/server/notification/NotificationRecord;
    iget-object v14, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3414
    .local v14, "childSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupChild()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3415
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3414
    if-eqz v2, :cond_3

    .line 3416
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    .line 3417
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v10, p5

    move-object/from16 v11, p4

    .line 3416
    invoke-static/range {v2 .. v11}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 3418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3419
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v13, v2, v1}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 3411
    :cond_3
    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    .line 3396
    .end local v13    # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v14    # "childSbn":Landroid/service/notification/StatusBarNotification;
    :cond_4
    return-void
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 15
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    .prologue
    .line 3146
    if-eqz p2, :cond_0

    .line 3147
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v12, :cond_0

    .line 3149
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3159
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 3160
    const/4 v12, 0x1

    move-object/from16 v0, p1

    iput-boolean v12, v0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 3161
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12, v13}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V

    .line 3164
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 3167
    .local v2, "canceledKey":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3168
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 3169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3171
    .local v8, "identity":J
    :try_start_1
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v12}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v7

    .line 3172
    .local v7, "player":Landroid/media/IRingtonePlayer;
    if-eqz v7, :cond_2

    .line 3173
    invoke-interface {v7}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3177
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3182
    .end local v7    # "player":Landroid/media/IRingtonePlayer;
    .end local v8    # "identity":J
    :cond_3
    :goto_1
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3183
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 3184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3186
    .restart local v8    # "identity":J
    :try_start_2
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v12}, Landroid/os/Vibrator;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3189
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3194
    .end local v8    # "identity":J
    :cond_4
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3197
    packed-switch p3, :pswitch_data_0

    .line 3210
    :goto_2
    :pswitch_0
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3211
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    .line 3212
    .local v5, "groupKey":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 3213
    .local v6, "groupSummary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3214
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3218
    :cond_5
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12, v13}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    .line 3220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 3222
    .local v10, "now":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v14

    .line 3221
    move/from16 v0, p3

    invoke-static {v2, v0, v12, v13, v14}, Lcom/android/server/EventLogTags;->writeNotificationCanceled(Ljava/lang/String;IIII)V

    .line 3144
    return-void

    .line 3150
    .end local v2    # "canceledKey":Ljava/lang/String;
    .end local v5    # "groupKey":Ljava/lang/String;
    .end local v6    # "groupSummary":Lcom/android/server/notification/NotificationRecord;
    .end local v10    # "now":J
    :catch_0
    move-exception v4

    .line 3153
    .local v4, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v12, "NotificationService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "canceled PendingIntent for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3175
    .end local v4    # "ex":Landroid/app/PendingIntent$CanceledException;
    .restart local v2    # "canceledKey":Ljava/lang/String;
    .restart local v8    # "identity":J
    :catch_1
    move-exception v3

    .line 3177
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 3176
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v12

    .line 3177
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3176
    throw v12

    .line 3188
    :catchall_1
    move-exception v12

    .line 3189
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3188
    throw v12

    .line 3202
    .end local v8    # "identity":J
    :pswitch_1
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    goto/16 :goto_2

    .line 3206
    :pswitch_2
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    goto/16 :goto_2

    .line 3197
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static checkCallerIsSameApp(Ljava/lang/String;)V
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3630
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3632
    .local v2, "uid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 3633
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    .line 3632
    invoke-interface {v3, p0, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3634
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 3635
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3641
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 3642
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3637
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :try_start_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3638
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3639
    const-string/jumbo v5, " which is owned by uid "

    .line 3638
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3639
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3638
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3629
    :cond_1
    return-void
.end method

.method private static checkCallerIsSystem()V
    .locals 3

    .prologue
    .line 3616
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3617
    return-void

    .line 3619
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3623
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3624
    return-void

    .line 3626
    :cond_0
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 3622
    return-void
.end method

.method private checkNotificationOp(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 516
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 3095
    if-ge p0, p1, :cond_0

    .end local p1    # "low":I
    :goto_0
    return p1

    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 2128
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2129
    const v2, 0x11200b6

    .line 2128
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2130
    .local v0, "smsRingtone":Z
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    if-eqz v1, :cond_0

    .line 2131
    const-string/jumbo v1, "booleanState"

    return-object v1

    .line 2133
    :cond_0
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2134
    const-string/jumbo v1, "listenerHints"

    return-object v1

    .line 2136
    :cond_1
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2140
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 2137
    :cond_3
    if-nez v0, :cond_2

    .line 2138
    const-string/jumbo v1, "callState"

    return-object v1
.end method

.method private dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 2144
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2146
    .local v2, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v10, "service"

    const-string/jumbo v11, "Notification Manager"

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2147
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2149
    .local v1, "bans":Lorg/json/JSONArray;
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->getPackageBans(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Landroid/util/ArrayMap;

    move-result-object v5

    .line 2150
    .local v5, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "userId$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 2151
    .local v8, "userId":Ljava/lang/Integer;
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "packageName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2152
    .local v6, "packageName":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2153
    .local v0, "ban":Lorg/json/JSONObject;
    const-string/jumbo v10, "userId"

    invoke-virtual {v0, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2154
    const-string/jumbo v10, "packageName"

    invoke-virtual {v0, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2155
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2158
    .end local v0    # "ban":Lorg/json/JSONObject;
    .end local v5    # "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packageName$iterator":Ljava/util/Iterator;
    .end local v8    # "userId":Ljava/lang/Integer;
    .end local v9    # "userId$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 2161
    :cond_1
    :try_start_2
    const-string/jumbo v10, "bans"

    invoke-virtual {v2, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2162
    const-string/jumbo v10, "stats"

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v11, p2}, Lcom/android/server/notification/NotificationUsageStats;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2166
    .end local v1    # "bans":Lorg/json/JSONArray;
    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2143
    return-void

    .line 2163
    :catch_1
    move-exception v4

    .line 2164
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .locals 2
    .param p1, "target"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method

.method private generateLedColorForNotification(Lcom/android/server/notification/NotificationRecord;)I
    .locals 8
    .param p1, "ledNotification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 3538
    iget-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGenerateNotificationColor:Z

    if-nez v6, :cond_0

    .line 3539
    iget v6, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    return v6

    .line 3541
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService;->mMultiColorNotificationLed:Z

    if-nez v6, :cond_1

    .line 3542
    iget v6, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    return v6

    .line 3544
    :cond_1
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3545
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/notification/NotificationManagerService;->mapPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3546
    .local v3, "mapping":Ljava/lang/String;
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    .line 3548
    .local v0, "color":I
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mGeneratedPackageLedColors:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3549
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mGeneratedPackageLedColors:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    return v6

    .line 3552
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 3555
    .local v5, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3561
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcyanogenmod/util/ColorUtils;->generateAlertColorFromDrawable(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 3562
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mGeneratedPackageLedColors:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3564
    return v0

    .line 3556
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 3557
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "NotificationService"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3558
    return v0
.end method

.method private getLedValuesForNotification(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;
    .locals 3
    .param p1, "ledNotification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 3533
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3534
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseCustomLedValues:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->mapPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;

    return-object v1
.end method

.method static getLongArray(Landroid/content/res/Resources;II[J)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I
    .param p2, "maxlen"    # I
    .param p3, "def"    # [J

    .prologue
    .line 1123
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1124
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 1125
    return-object p3

    .line 1127
    :cond_0
    array-length v4, v0

    if-le v4, p2, :cond_1

    move v2, p2

    .line 1128
    .local v2, "len":I
    :goto_0
    new-array v3, v2, [J

    .line 1129
    .local v3, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1130
    aget v4, v0, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 1129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1127
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "out":[J
    :cond_1
    array-length v2, v0

    .restart local v2    # "len":I
    goto :goto_0

    .line 1132
    .restart local v1    # "i":I
    .restart local v3    # "out":[J
    :cond_2
    return-object v3
.end method

.method private getPackageBans(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Landroid/util/ArrayMap;
    .locals 12
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2302
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 2303
    .local v1, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2304
    .local v5, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 2305
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 2306
    .local v10, "userId":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2307
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    invoke-virtual {v3, v11, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v6

    .line 2308
    .local v6, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 2309
    .local v2, "packageCount":I
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 2310
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    iget-object v4, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2311
    .local v4, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2312
    :cond_1
    invoke-virtual {v3, v4, v10}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v7

    .line 2313
    .local v7, "uid":I
    invoke-direct {p0, v4, v7}, Lcom/android/server/notification/NotificationManagerService;->checkNotificationOp(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2314
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2309
    .end local v7    # "uid":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2318
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2319
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2320
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 2323
    .end local v0    # "p":I
    .end local v2    # "packageCount":I
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v10    # "userId":I
    :cond_4
    return-object v1
.end method

.method private getSpamCacheHash(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method private handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .locals 16
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .prologue
    .line 2565
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2566
    .local v15, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 2567
    .local v9, "n":Landroid/app/Notification;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    .line 2568
    .local v7, "group":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v8

    .line 2570
    .local v8, "isSummary":Z
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    .line 2571
    :goto_0
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v10

    .line 2572
    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {v12}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v11

    .line 2574
    :goto_2
    if-eqz v11, :cond_0

    .line 2575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .line 2576
    .local v14, "removedSummary":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p2

    if-eq v14, v0, :cond_0

    .line 2578
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 2579
    .local v13, "removedKey":Ljava/lang/String;
    :goto_3
    const-string/jumbo v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removed summary didn\'t match old notification: old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2580
    const-string/jumbo v3, ", removed="

    .line 2579
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    .end local v13    # "removedKey":Ljava/lang/String;
    .end local v14    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    if-eqz v8, :cond_1

    .line 2584
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2591
    :cond_1
    if-eqz v11, :cond_2

    if-eqz v8, :cond_7

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2564
    :cond_2
    :goto_4
    return-void

    .line 2570
    :cond_3
    const/4 v12, 0x0

    .local v12, "oldN":Landroid/app/Notification;
    goto :goto_0

    .line 2571
    .end local v12    # "oldN":Landroid/app/Notification;
    :cond_4
    const/4 v10, 0x0

    .local v10, "oldGroup":Ljava/lang/String;
    goto :goto_1

    .line 2572
    .end local v10    # "oldGroup":Ljava/lang/String;
    :cond_5
    const/4 v11, 0x0

    .local v11, "oldIsSummary":Z
    goto :goto_2

    .line 2578
    .end local v11    # "oldIsSummary":Z
    .restart local v14    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_6
    const-string/jumbo v13, "<null>"

    .restart local v13    # "removedKey":Ljava/lang/String;
    goto :goto_3

    .line 2592
    .end local v13    # "removedKey":Ljava/lang/String;
    .end local v14    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_7
    const/4 v5, 0x0

    .line 2593
    const/16 v6, 0xc

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 2592
    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    goto :goto_4
.end method

.method private handleListenerHintsChanged(I)V
    .locals 2
    .param p1, "hints"    # I

    .prologue
    .line 3035
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3036
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3034
    return-void

    .line 3035
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleListenerInterruptionFilterChanged(I)V
    .locals 2
    .param p1, "interruptionFilter"    # I

    .prologue
    .line 3041
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3042
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3040
    return-void

    .line 3041
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleRankingConfigChange()V
    .locals 8

    .prologue
    .line 2977
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2978
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2979
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2980
    .local v2, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v4, v0, [I

    .line 2981
    .local v4, "visibilities":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2982
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 2983
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2984
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v5

    aput v5, v4, v1

    .line 2985
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v5, v3}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 2981
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2987
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2988
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 2989
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 2990
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2991
    aget v5, v4, v1

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v7

    if-eq v5, v7, :cond_2

    .line 2992
    :cond_1
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->scheduleSendRankingUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 2993
    return-void

    .line 2987
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    monitor-exit v6

    .line 2976
    return-void

    .line 2977
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "visibilities":[I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private handleRankingReconsideration(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2947
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Lcom/android/server/notification/RankingReconsideration;

    if-nez v9, :cond_0

    return-void

    .line 2948
    :cond_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/notification/RankingReconsideration;

    .line 2949
    .local v5, "recon":Lcom/android/server/notification/RankingReconsideration;
    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->run()V

    .line 2951
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v10

    .line 2952
    :try_start_0
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2953
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    if-nez v6, :cond_1

    monitor-exit v10

    .line 2954
    return-void

    .line 2956
    :cond_1
    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v2

    .line 2957
    .local v2, "indexBefore":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    .line 2958
    .local v4, "interceptBefore":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v8

    .line 2959
    .local v8, "visibilityBefore":I
    invoke-virtual {v5, v6}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 2960
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 2961
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 2962
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v1

    .line 2963
    .local v1, "indexAfter":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    .line 2964
    .local v3, "interceptAfter":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 2965
    .local v7, "visibilityAfter":I
    if-ne v2, v1, :cond_2

    if-eq v4, v3, :cond_5

    :cond_2
    const/4 v0, 0x1

    .line 2967
    .local v0, "changed":Z
    :goto_0
    if-eqz v4, :cond_3

    if-eqz v3, :cond_7

    :cond_3
    :goto_1
    monitor-exit v10

    .line 2971
    if-eqz v0, :cond_4

    .line 2972
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->scheduleSendRankingUpdate()V

    .line 2946
    :cond_4
    return-void

    .line 2966
    .end local v0    # "changed":Z
    :cond_5
    if-eq v8, v7, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0

    .end local v0    # "changed":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 2968
    :cond_7
    :try_start_2
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2951
    .end local v0    # "changed":Z
    .end local v1    # "indexAfter":I
    .end local v2    # "indexBefore":I
    .end local v3    # "interceptAfter":Z
    .end local v4    # "interceptBefore":Z
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v7    # "visibilityAfter":I
    .end local v8    # "visibilityBefore":I
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method private handleSavePolicyFile()V
    .locals 5

    .prologue
    .line 468
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v3, "handleSavePolicyFile"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v3

    .line 472
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 479
    .local v1, "stream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;Z)V

    .line 480
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    .line 486
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 467
    return-void

    .line 473
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v4, "Failed to save policy file"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 475
    return-void

    .line 481
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 482
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v4, "Failed to save policy file, restoring backup"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 469
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleSendRankingUpdate()V
    .locals 2

    .prologue
    .line 3016
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3017
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3015
    return-void

    .line 3016
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    .line 2903
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Timeout pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2905
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v0

    .line 2906
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 2907
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 2901
    return-void

    .line 2904
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private importOldBlockDb()V
    .locals 7

    .prologue
    .line 1298
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->loadPolicyFile()V

    .line 1300
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1301
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1302
    .local v2, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1304
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1305
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x0

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1306
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1310
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 1297
    return-void
.end method

.method private static isCallerSystem()Z
    .locals 1

    .prologue
    .line 3612
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private isLedNotificationForcedOn(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v3, 0x0

    .line 3425
    if-eqz p1, :cond_0

    .line 3426
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 3427
    .local v0, "n":Landroid/app/Notification;
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 3428
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.forceShowLights"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 3431
    .end local v0    # "n":Landroid/app/Notification;
    :cond_0
    return v3
.end method

.method private isNotificationSpam(Landroid/app/Notification;Ljava/lang/String;)Z
    .locals 8
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "basePkg"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 3103
    invoke-static {p1}, Lcom/android/internal/util/cm/SpamFilter;->getNormalizedNotificationContent(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    .line 3105
    .local v0, "normalizedContent":Ljava/lang/CharSequence;
    invoke-direct {p0, v0, p2}, Lcom/android/server/notification/NotificationManagerService;->getSpamCacheHash(Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v2

    .line 3107
    .local v2, "notificationHash":I
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mSpamCache:Landroid/util/SparseIntArray;

    monitor-enter v5

    .line 3108
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mSpamCache:Landroid/util/SparseIntArray;

    const/4 v6, -0x1

    invoke-virtual {v4, v2, v6}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .local v3, "notificationId":I
    monitor-exit v5

    .line 3110
    if-eq v3, v7, :cond_0

    .line 3111
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3112
    .local v1, "notifIdString":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mSpamExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/android/server/notification/NotificationManagerService$10;

    invoke-direct {v5, p0, v1}, Lcom/android/server/notification/NotificationManagerService$10;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 3122
    .end local v1    # "notifIdString":Ljava/lang/String;
    :cond_0
    if-eq v3, v7, :cond_1

    const/4 v4, 0x1

    :goto_0
    return v4

    .line 3107
    .end local v3    # "notificationId":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 3122
    .restart local v3    # "notificationId":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static isUidSystem(I)Z
    .locals 4
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3607
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3608
    .local v0, "appid":I
    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3e9

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3712
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3713
    const/4 v0, 0x0

    return v0

    .line 3716
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private listenForCallState()V
    .locals 3

    .prologue
    .line 3656
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$12;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$12;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3663
    const/16 v2, 0x20

    .line 3656
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3655
    return-void
.end method

.method private loadPolicyFile()V
    .locals 8

    .prologue
    .line 440
    sget-boolean v5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "NotificationService"

    const-string/jumbo v6, "loadPolicyFile"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v6

    .line 442
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    const/4 v4, 0x0

    .line 446
    .local v4, "infile":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    .line 447
    .local v4, "infile":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 457
    :try_start_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "infile":Ljava/io/FileInputStream;
    :goto_0
    monitor-exit v6

    .line 439
    return-void

    .line 454
    :catch_0
    move-exception v3

    .line 455
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string/jumbo v5, "NotificationService"

    const-string/jumbo v7, "Unable to parse notification policy"

    invoke-static {v5, v7, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 457
    :try_start_4
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 441
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 452
    :catch_1
    move-exception v2

    .line 453
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string/jumbo v5, "NotificationService"

    const-string/jumbo v7, "Unable to parse notification policy"

    invoke-static {v5, v7, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 457
    :try_start_6
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 450
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 451
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v5, "NotificationService"

    const-string/jumbo v7, "Unable to read notification policy"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 457
    :try_start_8
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 448
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 457
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 456
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v5

    .line 457
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 456
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 11
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3673
    const/4 v7, -0x1

    .line 3674
    .local v7, "speedBumpIndex":I
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3675
    .local v0, "N":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3676
    .local v4, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3677
    .local v2, "interceptedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 3678
    .local v8, "visibilityOverrides":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 3679
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 3680
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v9, p1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 3678
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3683
    :cond_1
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3684
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3685
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3687
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v9

    .line 3688
    const/16 v10, -0x3e8

    .line 3687
    if-eq v9, v10, :cond_3

    .line 3689
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 3690
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v10

    .line 3689
    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3693
    :cond_3
    const/4 v9, -0x1

    if-ne v7, v9, :cond_0

    .line 3695
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v9

    if-nez v9, :cond_0

    .line 3700
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v9

    if-gtz v9, :cond_0

    .line 3701
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->priority:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_0

    .line 3702
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    goto :goto_1

    .line 3705
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 3706
    .local v5, "keysAr":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 3707
    .local v3, "interceptedKeysAr":[Ljava/lang/String;
    new-instance v9, Landroid/service/notification/NotificationRankingUpdate;

    invoke-direct {v9, v5, v3, v8, v7}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)V

    return-object v9
.end method

.method private mapPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3568
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageNameMappings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3569
    return-object p1

    .line 3571
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageNameMappings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private noteNotificationOp(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 506
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    const-string/jumbo v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifications are disabled by AppOps for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return v3

    .line 511
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .prologue
    .line 3294
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3295
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v0

    .line 3294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 3281
    if-eq p2, v2, :cond_0

    .line 3283
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 3279
    :cond_0
    :goto_0
    return v0

    .line 3285
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    if-eq v1, p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseNotificationPulseCustomValuesString(Ljava/lang/String;)V
    .locals 12
    .param p1, "customLedValuesString"    # Ljava/lang/String;

    .prologue
    .line 3501
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3502
    return-void

    .line 3505
    :cond_0
    const-string/jumbo v6, "\\|"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v4, v7, v6

    .line 3506
    .local v4, "packageValuesString":Ljava/lang/String;
    const-string/jumbo v9, "="

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3507
    .local v3, "packageValues":[Ljava/lang/String;
    array-length v9, v3

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    .line 3508
    const-string/jumbo v9, "NotificationService"

    const-string/jumbo v10, "Error parsing custom led values for unknown package"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3511
    :cond_1
    const/4 v9, 0x0

    aget-object v2, v3, v9

    .line 3512
    .local v2, "packageName":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v3, v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3513
    .local v5, "values":[Ljava/lang/String;
    array-length v9, v5

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    .line 3514
    const-string/jumbo v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error parsing custom led values \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3515
    const/4 v11, 0x1

    aget-object v11, v3, v11

    .line 3514
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3515
    const-string/jumbo v11, "\' for "

    .line 3514
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3518
    :cond_2
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3520
    .local v1, "ledValues":Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;->color:I

    .line 3521
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;->onMS:I

    .line 3522
    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;->offMS:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3528
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseCustomLedValues:Ljava/util/HashMap;

    invoke-virtual {v9, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3523
    :catch_0
    move-exception v0

    .line 3524
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error parsing custom led values \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3525
    const/4 v11, 0x1

    aget-object v11, v3, v11

    .line 3524
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3525
    const-string/jumbo v11, "\' for "

    .line 3524
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3500
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "ledValues":Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageValues":[Ljava/lang/String;
    .end local v4    # "packageValuesString":Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private readPolicyXml(Ljava/io/InputStream;Z)V
    .locals 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 410
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 411
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 415
    const/4 v3, 0x1

    .line 416
    .local v3, "version":I
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    if-eq v2, v6, :cond_4

    .line 417
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 419
    const-string/jumbo v4, "notification-policy"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 421
    const-string/jumbo v4, "version"

    invoke-interface {v0, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 420
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 434
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 435
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v4, v0, p2}, Lcom/android/server/notification/RankingHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 422
    :cond_1
    const-string/jumbo v4, "blocked-packages"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    :cond_2
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 424
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 425
    const-string/jumbo v4, "package"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 426
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    .line 427
    const-string/jumbo v5, "name"

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 426
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 428
    :cond_3
    const-string/jumbo v4, "blocked-packages"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    goto :goto_1

    .line 409
    .end local v1    # "tag":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private removeUnusedGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z
    .locals 11
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .prologue
    .line 2614
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez v0, :cond_5

    .line 2616
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notificationGroupsDesired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2617
    const/4 v0, 0x0

    return v0

    .line 2620
    :cond_0
    iget-object v9, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2621
    .local v9, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    .line 2622
    .local v6, "group":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v8

    .line 2623
    .local v8, "isSummary":Z
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupChild()Z

    move-result v7

    .line 2625
    .local v7, "isChild":Z
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    .line 2626
    .local v10, "summary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v7, :cond_4

    if-eqz v10, :cond_4

    .line 2628
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1

    .line 2629
    const-string/jumbo v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring group child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " due to existing summary "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2630
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 2629
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    :cond_1
    if-eqz p2, :cond_3

    .line 2634
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_2

    .line 2635
    const-string/jumbo v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Canceling old version of ignored group child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    :cond_2
    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 2639
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 2640
    :cond_4
    if-eqz v8, :cond_5

    .line 2642
    const/4 v4, 0x0

    .line 2643
    const/16 v5, 0xd

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    .line 2642
    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    .line 2646
    .end local v6    # "group":Ljava/lang/String;
    .end local v7    # "isChild":Z
    .end local v8    # "isSummary":Z
    .end local v9    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v10    # "summary":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private scheduleInterruptionFilterChanged(I)V
    .locals 3
    .param p1, "listenerInterruptionFilter"    # I

    .prologue
    const/16 v2, 0x8

    .line 3027
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 3028
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 3031
    const/4 v1, 0x0

    .line 3028
    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3026
    return-void
.end method

.method private scheduleListenerHintsChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x7

    .line 3022
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 3023
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3021
    return-void
.end method

.method private scheduleSendRankingUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 3010
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 3011
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3012
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3009
    return-void
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    .line 2895
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2896
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2897
    .local v2, "m":Landroid/os/Message;
    iget v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0xdac

    :goto_0
    int-to-long v0, v3

    .line 2898
    .local v0, "delay":J
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2893
    return-void

    .line 2897
    .end local v0    # "delay":J
    :cond_0
    const/16 v3, 0x7d0

    goto :goto_0
.end method

.method private sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1290
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1291
    const/high16 v2, 0x40000000    # 2.0f

    .line 1290
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1291
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    .line 1290
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1289
    return-void
.end method

.method private updateDisableDucking()V
    .locals 3

    .prologue
    .line 1100
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 1101
    return-void

    .line 1103
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1104
    const-string/jumbo v2, "media_session"

    .line 1103
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    .line 1105
    .local v0, "mediaSessionManager":Landroid/media/session/MediaSessionManager;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 1106
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableDuckingWhileMedia:Z

    if-eqz v1, :cond_1

    .line 1107
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    .line 1099
    :cond_1
    return-void
.end method

.method private updateEffectsSuppressorLocked()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1357
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1358
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 1359
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1358
    :cond_0
    const/4 v0, 0x0

    .local v0, "suppressor":Landroid/content/ComponentName;
    goto :goto_0

    .line 1360
    .end local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->traceEffectsSuppressorChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1361
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressor:Landroid/content/ComponentName;

    .line 1362
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/server/notification/ZenModeHelper;->setEffectsSuppressed(Z)V

    .line 1363
    const-string/jumbo v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    .line 1356
    return-void

    :cond_2
    move v1, v2

    .line 1362
    goto :goto_1
.end method

.method private updateInterruptionFilterLocked()V
    .locals 2

    .prologue
    .line 1367
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    .line 1368
    .local v0, "interruptionFilter":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    if-ne v0, v1, :cond_0

    return-void

    .line 1369
    :cond_0
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 1370
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleInterruptionFilterChanged(I)V

    .line 1366
    return-void
.end method

.method private updateListenerHintsLocked()V
    .locals 3

    .prologue
    .line 1349
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1350
    .local v0, "hints":I
    :goto_0
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    if-ne v0, v1, :cond_1

    return-void

    .line 1349
    .end local v0    # "hints":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "hints":I
    goto :goto_0

    .line 1351
    :cond_1
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceListenerHintsChanged(III)V

    .line 1352
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 1353
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleListenerHintsChanged(I)V

    .line 1348
    return-void
.end method

.method private updateNotificationPulse()V
    .locals 2

    .prologue
    .line 3601
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3602
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3600
    return-void

    .line 3601
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private writePolicyXml(Ljava/io/OutputStream;Z)V
    .locals 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 490
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 491
    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 492
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 493
    const-string/jumbo v1, "notification-policy"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 494
    const-string/jumbo v1, "version"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 496
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/RankingHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 497
    const-string/jumbo v1, "notification-policy"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 489
    return-void
.end method


# virtual methods
.method cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .locals 15
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # I
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p6, "includeCurrentProfiles"    # Z

    .prologue
    .line 3357
    if-nez p5, :cond_1

    const/4 v8, 0x0

    .line 3359
    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move/from16 v7, p4

    .line 3358
    invoke-static/range {v1 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 3361
    const/4 v12, 0x0

    .line 3362
    .local v12, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3363
    .local v11, "N":I
    add-int/lit8 v13, v11, -0x1

    .end local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .local v13, "i":I
    :goto_1
    if-ltz v13, :cond_5

    .line 3364
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .line 3365
    .local v14, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz p6, :cond_2

    .line 3366
    move/from16 v0, p3

    invoke-direct {p0, v14, v0}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3363
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 3357
    .end local v11    # "N":I
    .end local v13    # "i":I
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    .local v8, "listenerName":Ljava/lang/String;
    goto :goto_0

    .line 3370
    .end local v8    # "listenerName":Ljava/lang/String;
    .restart local v11    # "N":I
    .restart local v13    # "i":I
    .restart local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    move/from16 v0, p3

    invoke-direct {p0, v14, v0}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3375
    :cond_3
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x22

    if-nez v1, :cond_0

    .line 3377
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3378
    const/4 v1, 0x1

    move/from16 v0, p4

    invoke-direct {p0, v14, v1, v0}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 3380
    if-nez v12, :cond_4

    .line 3381
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3383
    :cond_4
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3386
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3387
    .local v10, "M":I
    :goto_3
    const/4 v13, 0x0

    :goto_4
    if-ge v13, v10, :cond_7

    .line 3388
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 3389
    const/16 v9, 0xc

    move-object v4, p0

    move/from16 v6, p1

    move/from16 v7, p2

    .line 3388
    invoke-direct/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    .line 3387
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 3386
    .end local v10    # "M":I
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "M":I
    goto :goto_3

    .line 3391
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 3356
    return-void
.end method

.method cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 15
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "mustHaveFlags"    # I
    .param p5, "mustNotHaveFlags"    # I
    .param p6, "doit"    # Z
    .param p7, "userId"    # I
    .param p8, "reason"    # I
    .param p9, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3305
    if-nez p9, :cond_1

    const/4 v8, 0x0

    :goto_0
    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p8

    .line 3306
    invoke-static/range {v1 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 3310
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3312
    .local v11, "N":I
    const/4 v12, 0x0

    .line 3313
    .local v12, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    add-int/lit8 v13, v11, -0x1

    .end local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .local v13, "i":I
    :goto_1
    if-ltz v13, :cond_7

    .line 3314
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .line 3315
    .local v14, "r":Lcom/android/server/notification/NotificationRecord;
    move/from16 v0, p7

    invoke-direct {p0, v14, v0}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 3313
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 3305
    .end local v11    # "N":I
    .end local v13    # "i":I
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    move-object/from16 v0, p9

    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    .local v8, "listenerName":Ljava/lang/String;
    goto :goto_0

    .line 3319
    .end local v8    # "listenerName":Ljava/lang/String;
    .restart local v11    # "N":I
    .restart local v13    # "i":I
    .restart local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    :try_start_1
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    if-eqz p3, :cond_0

    .line 3322
    :cond_3
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v1

    and-int v1, v1, p4

    move/from16 v0, p4

    if-ne v1, v0, :cond_0

    .line 3325
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v1

    and-int v1, v1, p5

    if-nez v1, :cond_0

    .line 3328
    if-eqz p3, :cond_4

    iget-object v1, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3331
    :cond_4
    if-nez v12, :cond_5

    .line 3332
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3334
    :cond_5
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3335
    if-nez p6, :cond_6

    .line 3336
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 3338
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3339
    const/4 v1, 0x0

    move/from16 v0, p8

    invoke-direct {p0, v14, v1, v0}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 3310
    .end local v11    # "N":I
    .end local v13    # "i":I
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 3341
    .restart local v11    # "N":I
    .restart local v13    # "i":I
    :cond_7
    if-eqz p6, :cond_8

    if-eqz v12, :cond_8

    .line 3342
    :try_start_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3343
    .local v10, "M":I
    const/4 v13, 0x0

    :goto_3
    if-ge v13, v10, :cond_8

    .line 3344
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 3345
    const/16 v9, 0xc

    move-object v4, p0

    move/from16 v6, p1

    move/from16 v7, p2

    .line 3344
    invoke-direct/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    .line 3343
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 3348
    .end local v10    # "M":I
    :cond_8
    if-eqz v12, :cond_9

    .line 3349
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3351
    :cond_9
    if-eqz v12, :cond_a

    const/4 v1, 0x1

    :goto_4
    monitor-exit v2

    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_4
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 14
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "mustHaveFlags"    # I
    .param p7, "mustNotHaveFlags"    # I
    .param p8, "sendDelete"    # Z
    .param p9, "userId"    # I
    .param p10, "reason"    # I
    .param p11, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3237
    iget-object v13, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$11;

    move-object v1, p0

    move-object/from16 v2, p11

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, p9

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p10

    move/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/notification/NotificationManagerService$11;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZ)V

    invoke-virtual {v13, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3232
    return-void
.end method

.method cancelToastLocked(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 2874
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2876
    .local v1, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :try_start_0
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v2}, Landroid/app/ITransientNotification;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2883
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2884
    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveLocked(I)V

    .line 2885
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2889
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V

    .line 2873
    :cond_0
    return-void

    .line 2877
    :catch_0
    move-exception v0

    .line 2878
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Object died trying to hide notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2879
    const-string/jumbo v4, " in package "

    .line 2878
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2879
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    .line 2878
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 2170
    const-string/jumbo v20, "Current Notification Manager state"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2171
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 2172
    const-string/jumbo v20, " (filtered to "

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v20, ")"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2174
    :cond_0
    const/16 v20, 0x3a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 2176
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    move/from16 v19, v0

    .line 2178
    :goto_0
    if-nez v19, :cond_4

    .line 2179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 2180
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2181
    .local v4, "N":I
    if-lez v4, :cond_3

    .line 2182
    const-string/jumbo v20, "  Toast Queue:"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2183
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_2

    .line 2184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    const-string/jumbo v22, "    "

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2183
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2176
    .end local v4    # "N":I
    .end local v8    # "i":I
    :cond_1
    const/16 v19, 0x0

    .local v19, "zenOnly":Z
    goto :goto_0

    .line 2186
    .end local v19    # "zenOnly":Z
    .restart local v4    # "N":I
    .restart local v8    # "i":I
    :cond_2
    const-string/jumbo v20, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "i":I
    :cond_3
    monitor-exit v21

    .line 2191
    .end local v4    # "N":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 2192
    if-nez v19, :cond_f

    .line 2193
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2194
    .restart local v4    # "N":I
    if-lez v4, :cond_8

    .line 2195
    const-string/jumbo v20, "  Notification List:"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2196
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v4, :cond_7

    .line 2197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/notification/NotificationRecord;

    .line 2198
    .local v11, "nr":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    iget-object v0, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 2199
    :cond_5
    const-string/jumbo v20, "    "

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    move/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2196
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2179
    .end local v4    # "N":I
    .end local v8    # "i":I
    .end local v11    # "nr":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v20

    monitor-exit v21

    throw v20

    .line 2201
    .restart local v4    # "N":I
    .restart local v8    # "i":I
    :cond_7
    :try_start_2
    const-string/jumbo v20, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2204
    .end local v8    # "i":I
    :cond_8
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    .line 2205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2206
    if-lez v4, :cond_b

    .line 2207
    const-string/jumbo v20, "  Lights List:"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2208
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v4, :cond_a

    .line 2209
    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_9

    .line 2210
    const-string/jumbo v20, "  > "

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2214
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2208
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2212
    :cond_9
    const-string/jumbo v20, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 2191
    .end local v4    # "N":I
    .end local v8    # "i":I
    :catchall_1
    move-exception v20

    monitor-exit v21

    throw v20

    .line 2216
    .restart local v4    # "N":I
    .restart local v8    # "i":I
    :cond_a
    :try_start_3
    const-string/jumbo v20, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2218
    .end local v8    # "i":I
    :cond_b
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "  mUseAttentionLight="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2219
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "  mNotificationPulseEnabled="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2220
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "  mSoundNotificationKey="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2221
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "  mVibrateNotificationKey="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2222
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "  mDisableNotificationEffects="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2223
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "  mCallState="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2224
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "  mSystemReady="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2226
    :cond_c
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "  mArchive="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2228
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v8, 0x0

    .line 2229
    .restart local v8    # "i":I
    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 2230
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/service/notification/StatusBarNotification;

    .line 2231
    .local v16, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz p2, :cond_e

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 2232
    :cond_e
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "    "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2233
    add-int/lit8 v8, v8, 0x1

    const/16 v20, 0x5

    move/from16 v0, v20

    if-lt v8, v0, :cond_d

    .line 2234
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_f

    const-string/jumbo v20, "    ..."

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2240
    .end local v4    # "N":I
    .end local v8    # "i":I
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    .end local v16    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_f
    if-nez v19, :cond_10

    .line 2241
    const-string/jumbo v20, "\n  Usage Stats:"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v20, v0

    const-string/jumbo v22, "    "

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2245
    :cond_10
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    if-eqz v19, :cond_12

    .line 2246
    :cond_11
    const-string/jumbo v20, "\n  Zen Mode:"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2247
    const-string/jumbo v20, "    mInterruptionFilter="

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    move-object/from16 v20, v0

    const-string/jumbo v22, "    "

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2250
    const-string/jumbo v20, "\n  Zen Log:"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2251
    const-string/jumbo v20, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2254
    :cond_12
    if-nez v19, :cond_15

    .line 2255
    const-string/jumbo v20, "\n  Ranking Config:"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v20, v0

    const-string/jumbo v22, "    "

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2258
    const-string/jumbo v20, "\n  Notification listeners:"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2260
    const-string/jumbo v20, "    mListenerHints: "

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2261
    const-string/jumbo v20, "    mListenersDisablingEffects: ("

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 2263
    .restart local v4    # "N":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    if-ge v8, v4, :cond_14

    .line 2264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 2265
    .local v10, "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-lez v8, :cond_13

    const/16 v20, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2266
    :cond_13
    iget-object v0, v10, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2263
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2268
    .end local v10    # "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_14
    const/16 v20, 0x29

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 2270
    .end local v4    # "N":I
    .end local v8    # "i":I
    :cond_15
    const-string/jumbo v20, "\n  Policy access:"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2271
    const-string/jumbo v20, "    mPolicyAccess: "

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2273
    const-string/jumbo v20, "\n  Condition providers:"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2276
    const-string/jumbo v20, "\n  Group summaries:"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "entry$iterator":Ljava/util/Iterator;
    :cond_16
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2278
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/NotificationRecord;

    .line 2279
    .local v15, "r":Lcom/android/server/notification/NotificationRecord;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "    "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, " -> "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    if-eq v0, v15, :cond_16

    .line 2281
    const-string/jumbo v20, "!!!!!!LEAK: Record not found in mNotificationsByKey."

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2282
    const-string/jumbo v20, "      "

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    move/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_6

    .line 2287
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v15    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_17
    :try_start_4
    const-string/jumbo v20, "\n  Banned Packages:"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2288
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getPackageBans(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Landroid/util/ArrayMap;

    move-result-object v12

    .line 2289
    .local v12, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v12}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "userId$iterator":Ljava/util/Iterator;
    :cond_18
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_19

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 2290
    .local v17, "userId":Ljava/lang/Integer;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "packageName$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_18

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2291
    .local v13, "packageName":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "    "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, ": "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    .line 2294
    .end local v12    # "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "packageName$iterator":Ljava/util/Iterator;
    .end local v17    # "userId":Ljava/lang/Integer;
    .end local v18    # "userId$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    :cond_19
    monitor-exit v21

    .line 2169
    return-void
.end method

.method enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    .locals 19
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "idOut"    # [I
    .param p9, "incomingUserId"    # I

    .prologue
    .line 2365
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_0

    .line 2366
    const-string/jumbo v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enqueueNotificationInternal: pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2367
    const-string/jumbo v3, " notification="

    .line 2366
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 2370
    invoke-static/range {p3 .. p3}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "android"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 2371
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->-wrap0(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Ljava/lang/String;)Z

    move-result v16

    .line 2374
    .local v16, "isNotificationFromListener":Z
    const-string/jumbo v6, "enqueueNotification"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p9

    move-object/from16 v7, p1

    .line 2373
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 2375
    .local v11, "userId":I
    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 2379
    .local v10, "user":Landroid/os/UserHandle;
    if-nez v12, :cond_1

    if-eqz v16, :cond_4

    .line 2400
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    if-nez p7, :cond_8

    .line 2401
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "null not allowed: pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2402
    const-string/jumbo v3, " id="

    .line 2401
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2402
    const-string/jumbo v3, " notification="

    .line 2401
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2370
    .end local v10    # "user":Landroid/os/UserHandle;
    .end local v11    # "userId":I
    .end local v16    # "isNotificationFromListener":Z
    :cond_3
    const/4 v12, 0x1

    .local v12, "isSystemNotification":Z
    goto :goto_0

    .line 2380
    .end local v12    # "isSystemNotification":Z
    .restart local v10    # "user":Landroid/os/UserHandle;
    .restart local v11    # "userId":I
    .restart local v16    # "isNotificationFromListener":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2381
    const/4 v14, 0x0

    .line 2382
    .local v14, "count":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2383
    .local v13, "N":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v13, :cond_5

    .line 2384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/notification/NotificationRecord;

    .line 2385
    .local v17, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    if-ne v1, v11, :cond_7

    .line 2386
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    move/from16 v0, p6

    if-ne v1, v0, :cond_6

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    monitor-exit v2

    goto/16 :goto_1

    .line 2389
    .restart local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 2390
    const/16 v1, 0x32

    if-lt v14, v1, :cond_7

    .line 2391
    :try_start_1
    const-string/jumbo v1, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package has already posted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2392
    const-string/jumbo v4, " notifications.  Not showing more.  package="

    .line 2391
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 2393
    return-void

    .line 2383
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2380
    .end local v13    # "N":I
    .end local v15    # "i":I
    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2405
    .end local v14    # "count":I
    :cond_8
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2406
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->isValid()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2407
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid notification (): pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2408
    const-string/jumbo v3, " id="

    .line 2407
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2408
    const-string/jumbo v3, " notification="

    .line 2407
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2412
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v18, v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$9;

    move-object/from16 v2, p0

    move-object/from16 v3, p7

    move-object/from16 v4, p1

    move/from16 v5, p3

    move-object/from16 v6, p2

    move/from16 v7, p6

    move-object/from16 v8, p5

    move/from16 v9, p4

    invoke-direct/range {v1 .. v12}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILandroid/os/UserHandle;IZ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2552
    const/4 v1, 0x0

    aput p6, p8, v1

    .line 2364
    return-void
.end method

.method indexOfNotificationLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3591
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3592
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3593
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3594
    return v1

    .line 3592
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3597
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    .line 3577
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 3578
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3579
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3580
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 3581
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p3, :cond_0

    .line 3582
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 3581
    if-eqz v4, :cond_0

    .line 3582
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3581
    if-eqz v4, :cond_0

    .line 3583
    return v0

    .line 3579
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3586
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;

    .prologue
    .line 2915
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2916
    .local v0, "cbak":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 2917
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2918
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2919
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2920
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 2921
    return v1

    .line 2918
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2924
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_1
    const/4 v5, -0x1

    return v5
.end method

.method keepProcessAliveLocked(I)V
    .locals 9
    .param p1, "pid"    # I

    .prologue
    const/4 v6, 0x0

    .line 2930
    const/4 v5, 0x0

    .line 2931
    .local v5, "toastCount":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 2932
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2933
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2934
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2935
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget v7, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    if-ne v7, p1, :cond_0

    .line 2936
    add-int/lit8 v5, v5, 0x1

    .line 2933
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2940
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v5, :cond_2

    const/4 v6, 0x1

    :cond_2
    invoke-interface {v7, v8, p1, v6}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2928
    :goto_1
    return-void

    .line 2941
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 1315
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 1317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 1320
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 1321
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 1322
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->onSystemReady()V

    .line 1324
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateDisableDucking()V

    .line 1314
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    .line 1329
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSpamFilterObserver:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->observe()V

    .line 1330
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onBootPhaseAppsCanStart()V

    .line 1331
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 20

    .prologue
    .line 1142
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 1144
    .local v18, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 1145
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1146
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 1147
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1149
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 1148
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1151
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1155
    const v1, 0x1070040

    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 1159
    .local v13, "extractorNames":[Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 1160
    new-instance v1, Lcom/android/server/notification/RankingHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1161
    new-instance v3, Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5}, Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 1160
    invoke-direct {v1, v2, v3, v5, v13}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1164
    new-instance v1, Lcom/android/server/notification/ConditionProviders;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 1165
    new-instance v1, Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 1185
    new-instance v19, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1186
    .local v19, "systemDir":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "notification_policy.xml"

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 1188
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->importOldBlockDb()V

    .line 1190
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 1191
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    .line 1194
    const-class v1, Lcom/android/server/lights/LightsManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/lights/LightsManager;

    .line 1195
    .local v15, "lights":Lcom/android/server/lights/LightsManager;
    const/4 v1, 0x4

    invoke-virtual {v15, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 1196
    const/4 v1, 0x5

    invoke-virtual {v15, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 1199
    const v1, 0x1060104

    .line 1198
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    .line 1201
    const v1, 0x10e0054

    .line 1200
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    .line 1203
    const v1, 0x10e0055

    .line 1202
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    .line 1206
    const v1, 0x1120048

    .line 1205
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mMultiColorNotificationLed:Z

    .line 1208
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseCustomLedValues:Ljava/util/HashMap;

    .line 1210
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageNameMappings:Ljava/util/Map;

    .line 1212
    const v1, 0x107000b

    .line 1211
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 1213
    .local v11, "defaultMapping":[Ljava/lang/String;
    const/4 v1, 0x0

    array-length v2, v11

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v17, v11, v1

    .line 1214
    .local v17, "mapping":Ljava/lang/String;
    const-string/jumbo v3, "\\|"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1215
    .local v16, "map":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageNameMappings:Ljava/util/Map;

    const/4 v5, 0x0

    aget-object v5, v16, v5

    const/4 v6, 0x1

    aget-object v6, v16, v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1156
    .end local v11    # "defaultMapping":[Ljava/lang/String;
    .end local v13    # "extractorNames":[Ljava/lang/String;
    .end local v15    # "lights":Lcom/android/server/lights/LightsManager;
    .end local v16    # "map":[Ljava/lang/String;
    .end local v17    # "mapping":Ljava/lang/String;
    .end local v19    # "systemDir":Ljava/io/File;
    :catch_0
    move-exception v12

    .line 1157
    .local v12, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    new-array v13, v1, [Ljava/lang/String;

    .restart local v13    # "extractorNames":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1221
    .end local v12    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v11    # "defaultMapping":[Ljava/lang/String;
    .restart local v15    # "lights":Lcom/android/server/lights/LightsManager;
    .restart local v19    # "systemDir":Ljava/io/File;
    :cond_0
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 1219
    const v2, 0x107003b

    .line 1220
    const/16 v3, 0x11

    .line 1218
    move-object/from16 v0, v18

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultVibrationPattern:[J

    .line 1226
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 1224
    const v2, 0x107003c

    .line 1225
    const/16 v3, 0x11

    .line 1223
    move-object/from16 v0, v18

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    .line 1229
    const v1, 0x3f050003

    .line 1228
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAdjustableNotificationLedBrightness:Z

    .line 1231
    const v1, 0x3f050004

    .line 1230
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mMultipleNotificationLeds:Z

    .line 1233
    const v1, 0x112002d

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    .line 1239
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1240
    const-string/jumbo v2, "device_provisioned"

    const/4 v3, 0x0

    .line 1239
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 1241
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    .line 1243
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->initZenMode()V

    .line 1244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->readAllowLightsFromSettings()V

    .line 1245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 1247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 1248
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->listenForCallState()V

    .line 1251
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 1252
    .local v14, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1253
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1254
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1255
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1256
    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1257
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1258
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1259
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1260
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1262
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1263
    .local v4, "pkgFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1264
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1265
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1266
    const-string/jumbo v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1267
    const-string/jumbo v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1268
    const-string/jumbo v1, "package"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1269
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    .line 1270
    const/4 v6, 0x0

    .line 1269
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1272
    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1273
    .local v8, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    .line 1274
    const/4 v10, 0x0

    .line 1273
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1276
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    .line 1277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    .line 1279
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSpamFilterObserver:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    .line 1280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSpamFilterObserver:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->observe()V

    .line 1282
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 1283
    const v2, 0x10e005b

    .line 1282
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 1285
    const-string/jumbo v1, "notification"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1286
    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1141
    return-void
.end method

.method public savePolicyFile()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 463
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 464
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendEmptyMessage(I)Z

    .line 462
    return-void
.end method

.method sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 3126
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 3127
    .local v1, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3128
    return-void

    .line 3132
    :cond_0
    const/16 v3, 0x40

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3133
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3134
    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3135
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 3136
    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3137
    .local v2, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3138
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3141
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3125
    return-void
.end method

.method setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1336
    const-string/jumbo v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    const-string/jumbo v0, "en"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "abling notifications for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1339
    if-eqz p3, :cond_1

    move v0, v4

    .line 1338
    :goto_1
    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2, p1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1342
    if-eqz p3, :cond_2

    .line 1335
    :goto_2
    return-void

    .line 1336
    :cond_0
    const-string/jumbo v0, "dis"

    goto :goto_0

    :cond_1
    move v0, v6

    .line 1339
    goto :goto_1

    .line 1343
    :cond_2
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1344
    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    .line 1343
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    goto :goto_2
.end method

.method showNextToastLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2848
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2849
    :goto_0
    if-eqz v2, :cond_3

    .line 2850
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Show pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    :cond_0
    :try_start_0
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v3}, Landroid/app/ITransientNotification;->show()V

    .line 2853
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2854
    return-void

    .line 2855
    :catch_0
    move-exception v0

    .line 2856
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2857
    const-string/jumbo v5, " in package "

    .line 2856
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2857
    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    .line 2856
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2860
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 2861
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2863
    :cond_1
    iget v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveLocked(I)V

    .line 2864
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 2865
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    goto/16 :goto_0

    .line 2867
    .end local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_2
    const/4 v2, 0x0

    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    goto/16 :goto_0

    .line 2847
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "index":I
    .end local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_3
    return-void
.end method

.method updateLightsLocked()V
    .locals 11

    .prologue
    .line 3438
    const/4 v2, 0x0

    .line 3439
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3451
    :cond_1
    if-nez v2, :cond_3

    .line 3452
    const/4 v0, 0x0

    .line 3461
    .local v0, "enableLed":Z
    :goto_1
    if-nez v0, :cond_7

    .line 3462
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v8}, Lcom/android/server/lights/Light;->turnOff()V

    .line 3463
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v8}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    .line 3435
    :goto_2
    return-void

    .line 3440
    .end local v0    # "enableLed":Z
    :cond_2
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3441
    .local v7, "owner":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 3442
    .local v2, "ledNotification":Lcom/android/server/notification/NotificationRecord;
    if-nez v2, :cond_0

    .line 3443
    const-string/jumbo v8, "NotificationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "LED Notification does not exist: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3453
    .end local v2    # "ledNotification":Lcom/android/server/notification/NotificationRecord;
    .end local v7    # "owner":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->isLedNotificationForcedOn(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3454
    const/4 v0, 0x1

    .restart local v0    # "enableLed":Z
    goto :goto_1

    .line 3455
    .end local v0    # "enableLed":Z
    :cond_4
    iget-boolean v8, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOnEnabled:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    if-eqz v8, :cond_6

    .line 3456
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "enableLed":Z
    goto :goto_1

    .line 3458
    .end local v0    # "enableLed":Z
    :cond_6
    const/4 v0, 0x1

    .restart local v0    # "enableLed":Z
    goto :goto_1

    .line 3465
    :cond_7
    iget-object v8, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 3466
    .local v6, "ledno":Landroid/app/Notification;
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->getLedValuesForNotification(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;

    move-result-object v5

    .line 3471
    .local v5, "ledValues":Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;
    if-eqz v5, :cond_c

    .line 3472
    iget v8, v5, Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;->color:I

    if-eqz v8, :cond_9

    iget v1, v5, Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;->color:I

    .line 3473
    .local v1, "ledARGB":I
    :goto_3
    iget v8, v5, Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;->onMS:I

    if-ltz v8, :cond_a

    iget v4, v5, Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;->onMS:I

    .line 3474
    .local v4, "ledOnMS":I
    :goto_4
    iget v8, v5, Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;->offMS:I

    if-ltz v8, :cond_b

    iget v3, v5, Lcom/android/server/notification/NotificationManagerService$NotificationLedValues;->offMS:I

    .line 3486
    .local v3, "ledOffMS":I
    :goto_5
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    iget v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLedBrightnessLevel:I

    .line 3487
    iget-boolean v10, p0, Lcom/android/server/notification/NotificationManagerService;->mMultipleLedsEnabledSetting:Z

    .line 3486
    invoke-virtual {v8, v9, v10}, Lcom/android/server/lights/Light;->setModes(IZ)V

    .line 3489
    iget-boolean v8, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-eqz v8, :cond_8

    .line 3491
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    const/4 v9, 0x1

    invoke-virtual {v8, v1, v9, v4, v3}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 3496
    :cond_8
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v8, v1, v4, v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightPulse(III)V

    goto/16 :goto_2

    .line 3472
    .end local v1    # "ledARGB":I
    .end local v3    # "ledOffMS":I
    .end local v4    # "ledOnMS":I
    :cond_9
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    .restart local v1    # "ledARGB":I
    goto :goto_3

    .line 3473
    :cond_a
    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    .restart local v4    # "ledOnMS":I
    goto :goto_4

    .line 3474
    :cond_b
    iget v3, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    .restart local v3    # "ledOffMS":I
    goto :goto_5

    .line 3475
    .end local v1    # "ledARGB":I
    .end local v3    # "ledOffMS":I
    .end local v4    # "ledOnMS":I
    :cond_c
    iget v8, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_d

    .line 3476
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->generateLedColorForNotification(Lcom/android/server/notification/NotificationRecord;)I

    move-result v1

    .line 3477
    .restart local v1    # "ledARGB":I
    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    .line 3478
    .restart local v4    # "ledOnMS":I
    iget v3, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    .restart local v3    # "ledOffMS":I
    goto :goto_5

    .line 3480
    .end local v1    # "ledARGB":I
    .end local v3    # "ledOffMS":I
    .end local v4    # "ledOnMS":I
    :cond_d
    iget v1, v6, Landroid/app/Notification;->ledARGB:I

    .line 3481
    .restart local v1    # "ledARGB":I
    iget v4, v6, Landroid/app/Notification;->ledOnMS:I

    .line 3482
    .restart local v4    # "ledOnMS":I
    iget v3, v6, Landroid/app/Notification;->ledOffMS:I

    .restart local v3    # "ledOffMS":I
    goto :goto_5
.end method
