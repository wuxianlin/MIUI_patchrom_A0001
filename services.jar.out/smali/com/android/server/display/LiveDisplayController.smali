.class public Lcom/android/server/display/LiveDisplayController;
.super Ljava/lang/Object;
.source "LiveDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LiveDisplayController$SettingsObserver;,
        Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;,
        Lcom/android/server/display/LiveDisplayController$1;,
        Lcom/android/server/display/LiveDisplayController$2;
    }
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = "|"

.field public static final MODE_AUTO:I = 0x2

.field public static final MODE_DAY:I = 0x4

.field public static final MODE_NIGHT:I = 0x1

.field public static final MODE_OFF:I = 0x0

.field public static final MODE_OUTDOOR:I = 0x3

.field private static final MSG_UPDATE_LIVE_DISPLAY:I = 0x1

.field private static final OFF_TEMPERATURE:I = 0x1964

.field private static final TAG:Ljava/lang/String; = "LiveDisplay"

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x36ee80L


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mColorAdjustment:[F

.field private mColorEnhancement:Z

.field private mColorTemperature:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentLux:F

.field private mDayTemperature:I

.field private mDefaultDayTemperature:I

.field private mDefaultNightTemperature:I

.field private mDefaultOutdoorLux:I

.field private final mHandler:Landroid/os/Handler;

.field private mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mHintCounter:I

.field private mInitialized:Z

.field private mLowPerformance:Z

.field private mLowPower:Z

.field private mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

.field private mMode:I

.field private mNightTemperature:I

.field private mObserver:Lcom/android/server/display/LiveDisplayController$SettingsObserver;

.field private mOutdoorMode:Z

.field private mOutdoorModeIsSelfManaged:Z

.field private final mRGB:[F

.field private mSunset:Z

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field private mUseColorEnhancement:Z

.field private mUseLowPower:Z

.field private mUseOutdoorMode:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/display/LiveDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mColorTemperature:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/LiveDisplayController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/LiveDisplayController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mCurrentLux:F

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/LiveDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mDayTemperature:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/display/LiveDisplayController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/LiveDisplayController;)Lcyanogenmod/hardware/CMHardwareManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/display/LiveDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mInitialized:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/display/LiveDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/display/LiveDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mNightTemperature:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/display/LiveDisplayController;)Lcom/android/server/twilight/TwilightManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/LiveDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/LiveDisplayController;I)V
    .locals 0
    .param p1, "temperature"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/LiveDisplayController;->setDisplayTemperature(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/LiveDisplayController;Lcom/android/server/twilight/TwilightState;)V
    .locals 0
    .param p1, "twilight"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/LiveDisplayController;->updateColorEnhancement(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/LiveDisplayController;Lcom/android/server/twilight/TwilightState;)V
    .locals 0
    .param p1, "twilight"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/LiveDisplayController;->updateColorTemperature(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/LiveDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/LiveDisplayController;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/display/LiveDisplayController;Lcom/android/server/twilight/TwilightState;)V
    .locals 0
    .param p1, "twilight"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/LiveDisplayController;->updateOutdoorMode(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/display/LiveDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/LiveDisplayController;->updateSettings()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/display/LiveDisplayController;Lcom/android/server/twilight/TwilightState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/LiveDisplayController;->updateUserHint(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/16 v0, 0x1964

    iput v0, p0, Lcom/android/server/display/LiveDisplayController;->mColorTemperature:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/LiveDisplayController;->mCurrentLux:F

    .line 96
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    .line 97
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mRGB:[F

    .line 100
    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mSunset:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mInitialized:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z

    .line 117
    new-instance v0, Lcom/android/server/display/LiveDisplayController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/LiveDisplayController$1;-><init>(Lcom/android/server/display/LiveDisplayController;)V

    .line 116
    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 593
    new-instance v0, Lcom/android/server/display/LiveDisplayController$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/LiveDisplayController$2;-><init>(Lcom/android/server/display/LiveDisplayController;)V

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 126
    iput-object p1, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    .line 127
    new-instance v0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;-><init>(Lcom/android/server/display/LiveDisplayController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mHandler:Landroid/os/Handler;

    .line 125
    return-void

    .line 96
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 97
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static adj(JJJ)F
    .locals 10
    .param p0, "now"    # J
    .param p2, "sunset"    # J
    .param p4, "sunrise"    # J

    .prologue
    const-wide/32 v8, 0x36ee80

    const-wide/16 v6, 0x0

    const v4, 0x4a5bba00    # 3600000.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 478
    cmp-long v0, p2, v6

    if-ltz v0, :cond_0

    cmp-long v0, p4, v6

    if-gez v0, :cond_1

    .line 480
    :cond_0
    return v3

    .line 479
    :cond_1
    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    cmp-long v0, p0, p4

    if-gtz v0, :cond_0

    .line 483
    add-long v0, p2, v8

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 485
    sub-long v0, p0, p2

    long-to-float v0, v0

    div-float/2addr v0, v4

    .line 484
    invoke-static {v3, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0

    .line 488
    :cond_2
    sub-long v0, p4, v8

    cmp-long v0, p0, v0

    if-lez v0, :cond_3

    .line 490
    sub-long v0, p4, p0

    long-to-float v0, v0

    div-float/2addr v0, v4

    .line 489
    invoke-static {v3, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0

    .line 493
    :cond_3
    return v2
.end method

.method private getTwilightK(Lcom/android/server/twilight/TwilightState;)I
    .locals 8
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    .line 504
    const/high16 v6, 0x3f800000    # 1.0f

    .line 506
    .local v6, "adjustment":F
    if-eqz p1, :cond_0

    .line 507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 508
    .local v0, "now":J
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->getYesterdaySunset()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->getTodaySunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/LiveDisplayController;->adj(JJJ)F

    move-result v7

    .line 509
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->getTodaySunset()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->getTomorrowSunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/LiveDisplayController;->adj(JJJ)F

    move-result v2

    .line 508
    mul-float v6, v7, v2

    .line 512
    .end local v0    # "now":J
    :cond_0
    iget v2, p0, Lcom/android/server/display/LiveDisplayController;->mNightTemperature:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/display/LiveDisplayController;->mDayTemperature:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    return v2
.end method

.method private saveUserHint(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 534
    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    if-ne v0, p1, :cond_0

    .line 535
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 538
    const-string/jumbo v1, "live_display_hinted"

    .line 540
    const/4 v2, -0x2

    .line 537
    invoke-static {v0, v1, p1, v2}, Lcyanogenmod/providers/CMSettings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 541
    iput p1, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    .line 533
    return-void
.end method

.method private static screenRefresh()V
    .locals 6

    .prologue
    .line 521
    :try_start_0
    const-string/jumbo v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 522
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 524
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 525
    const/16 v3, 0x3ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_0
    :goto_0
    return-void

    .line 528
    :catch_0
    move-exception v1

    .line 529
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "LiveDisplay"

    const-string/jumbo v4, "Failed to refresh screen"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized setDisplayTemperature(I)V
    .locals 9
    .param p1, "temperature"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    monitor-enter p0

    .line 329
    :try_start_0
    iput p1, p0, Lcom/android/server/display/LiveDisplayController;->mColorTemperature:I

    .line 331
    invoke-static {p1}, Lcyanogenmod/util/ColorUtils;->temperatureToRGB(I)[F

    move-result-object v3

    .line 333
    .local v3, "rgb":[F
    iget-boolean v4, p0, Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z

    if-nez v4, :cond_0

    .line 334
    const/4 v4, 0x0

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 335
    const/4 v4, 0x1

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 336
    const/4 v4, 0x2

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 339
    :cond_0
    const/4 v4, 0x0

    aget v4, v3, v4

    iget-object v5, p0, Lcom/android/server/display/LiveDisplayController;->mRGB:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    const/4 v4, 0x1

    aget v4, v3, v4

    iget-object v5, p0, Lcom/android/server/display/LiveDisplayController;->mRGB:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    const/4 v4, 0x2

    aget v4, v3, v4

    iget-object v5, p0, Lcom/android/server/display/LiveDisplayController;->mRGB:[F

    const/4 v6, 0x2

    aget v5, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    monitor-exit p0

    .line 341
    return-void

    .line 344
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/display/LiveDisplayController;->mRGB:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v3, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 346
    const-string/jumbo v4, "LiveDisplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adjust display temperature to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 347
    const-string/jumbo v6, "K [r="

    .line 346
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 347
    const/4 v6, 0x0

    aget v6, v3, v6

    .line 346
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 347
    const-string/jumbo v6, " g="

    .line 346
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 347
    const/4 v6, 0x1

    aget v6, v3, v6

    .line 346
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 347
    const-string/jumbo v6, " b="

    .line 346
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 347
    const/4 v6, 0x2

    aget v6, v3, v6

    .line 346
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 347
    const-string/jumbo v6, "]"

    .line 346
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v4, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 351
    iget-object v4, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 352
    const-string/jumbo v5, "live_display_color_matrix"

    .line 353
    const/4 v6, 0x0

    .line 354
    const/4 v7, -0x2

    .line 351
    invoke-static {v4, v5, v6, v7}, Lcyanogenmod/providers/CMSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 356
    iget-object v4, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v4}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayColorCalibrationMax()I

    move-result v2

    .line 357
    .local v2, "max":I
    iget-object v4, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/4 v5, 0x3

    new-array v5, v5, [I

    .line 358
    const/4 v6, 0x0

    aget v6, v3, v6

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 359
    const/4 v6, 0x1

    aget v6, v3, v6

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x1

    aput v6, v5, v7

    .line 360
    const/4 v6, 0x2

    aget v6, v3, v6

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x2

    aput v6, v5, v7

    .line 357
    invoke-virtual {v4, v5}, Lcyanogenmod/hardware/CMHardwareManager;->setDisplayColorCalibration([I)Z

    .line 362
    invoke-static {}, Lcom/android/server/display/LiveDisplayController;->screenRefresh()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "max":I
    :goto_0
    monitor-exit p0

    .line 328
    return-void

    .line 364
    :cond_2
    const/4 v1, 0x0

    .line 365
    .local v1, "colorMatrixStr":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_2
    aget v4, v3, v4

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    const/4 v4, 0x1

    aget v4, v3, v4

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_5

    .line 366
    :cond_3
    :goto_1
    const/16 v4, 0x10

    new-array v0, v4, [Ljava/lang/Float;

    .line 367
    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    .line 368
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v0, v5

    const/4 v4, 0x1

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v0, v5

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v0, v5

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v0, v5

    .line 369
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v0, v5

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v0, v5

    const/4 v4, 0x2

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v5, 0xa

    aput-object v4, v0, v5

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v5, 0xb

    aput-object v4, v0, v5

    .line 370
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v5, 0xc

    aput-object v4, v0, v5

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v5, 0xd

    aput-object v4, v0, v5

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v5, 0xe

    aput-object v4, v0, v5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v5, 0xf

    aput-object v4, v0, v5

    .line 371
    .local v0, "colorMatrix":[Ljava/lang/Float;
    const-string/jumbo v4, " "

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 376
    .end local v0    # "colorMatrix":[Ljava/lang/Float;
    .end local v1    # "colorMatrixStr":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 377
    const-string/jumbo v5, "live_display_color_matrix"

    .line 379
    const/4 v6, -0x2

    .line 376
    invoke-static {v4, v5, v1, v6}, Lcyanogenmod/providers/CMSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 381
    iget-object v4, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->applyAdjustments(Landroid/content/Context;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .end local v3    # "rgb":[F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 365
    .restart local v1    # "colorMatrixStr":Ljava/lang/String;
    .restart local v3    # "rgb":[F
    :cond_5
    const/4 v4, 0x2

    :try_start_3
    aget v4, v3, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_4

    goto/16 :goto_1
.end method

.method private stringArrayToIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 239
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 240
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    return-object v1
.end method

.method private declared-synchronized updateColorEnhancement(Lcom/android/server/twilight/TwilightState;)V
    .locals 8
    .param p1, "twilight"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    monitor-enter p0

    .line 424
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/LiveDisplayController;->mUseColorEnhancement:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    .line 425
    return-void

    .line 428
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 429
    const-string/jumbo v3, "display_color_enhance"

    .line 430
    const/4 v4, 0x1

    .line 431
    const/4 v5, -0x2

    .line 428
    invoke-static {v2, v3, v4, v5}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v6, :cond_2

    const/4 v1, 0x1

    .line 433
    .local v1, "value":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    .line 434
    iget v2, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    if-eq v2, v6, :cond_1

    .line 435
    iget v2, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    if-ne v2, v7, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    .line 434
    if-eqz v2, :cond_3

    :cond_1
    const/4 v0, 0x0

    .line 437
    .local v0, "enabled":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/display/LiveDisplayController;->mColorEnhancement:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_5

    monitor-exit p0

    .line 438
    return-void

    .line 428
    .end local v0    # "enabled":Z
    .end local v1    # "value":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "value":Z
    goto :goto_0

    .line 434
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "enabled":Z
    goto :goto_1

    .line 433
    .end local v0    # "enabled":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_1

    .line 441
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    .line 442
    iput-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mColorEnhancement:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 423
    return-void

    .end local v0    # "enabled":Z
    .end local v1    # "value":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized updateColorTemperature(Lcom/android/server/twilight/TwilightState;)V
    .locals 4
    .param p1, "twilight"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    monitor-enter p0

    .line 305
    :try_start_0
    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mDayTemperature:I

    .line 306
    .local v0, "temperature":I
    iget v1, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z

    if-eqz v1, :cond_3

    .line 307
    :cond_0
    const/16 v0, 0x1964

    .line 314
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 317
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/server/display/LiveDisplayController;->mColorTemperature:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 318
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/android/server/display/LiveDisplayController;->mColorTemperature:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 319
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/server/display/LiveDisplayController$3;

    invoke-direct {v2, p0}, Lcom/android/server/display/LiveDisplayController$3;-><init>(Lcom/android/server/display/LiveDisplayController;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 325
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 304
    return-void

    .line 308
    :cond_3
    :try_start_1
    iget v1, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    if-ne v1, v2, :cond_4

    .line 309
    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mNightTemperature:I

    goto :goto_0

    .line 310
    :cond_4
    iget v1, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    if-ne v1, v3, :cond_1

    .line 311
    invoke-direct {p0, p1}, Lcom/android/server/display/LiveDisplayController;->getTwilightK(Lcom/android/server/twilight/TwilightState;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .end local v0    # "temperature":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateGamma()V
    .locals 6

    .prologue
    .line 223
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    return-void

    .line 226
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 227
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v3}, Lcyanogenmod/hardware/CMHardwareManager;->getNumGammaControls()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 229
    const-string/jumbo v3, "|"

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "display_gamma_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-static {v0, v3, v4}, Lcyanogenmod/providers/CMSettings$Secure;->getDelimitedStringAsList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 231
    .local v1, "gammaValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 232
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-direct {p0, v1}, Lcom/android/server/display/LiveDisplayController;->stringArrayToIntArray(Ljava/util/List;)[I

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcyanogenmod/hardware/CMHardwareManager;->setDisplayGammaCalibration(I[I)Z

    .line 227
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "gammaValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private declared-synchronized updateLowPowerMode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    monitor-enter p0

    .line 449
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/LiveDisplayController;->mUseLowPower:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    .line 450
    return-void

    .line 453
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 454
    const-string/jumbo v3, "display_low_power"

    .line 455
    const/4 v4, 0x1

    .line 456
    const/4 v5, -0x2

    .line 453
    invoke-static {v2, v3, v4, v5}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v6, :cond_1

    const/4 v1, 0x1

    .line 458
    .local v1, "value":Z
    :goto_0
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/server/display/LiveDisplayController;->mCurrentLux:F

    iget v3, p0, Lcom/android/server/display/LiveDisplayController;->mDefaultOutdoorLux:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    const/4 v0, 0x1

    .line 460
    .local v0, "enabled":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/display/LiveDisplayController;->mLowPower:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_3

    monitor-exit p0

    .line 461
    return-void

    .line 453
    .end local v0    # "enabled":Z
    .end local v1    # "value":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "value":Z
    goto :goto_0

    .line 458
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_1

    .line 464
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    .line 465
    iput-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mLowPower:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 448
    return-void

    .end local v0    # "enabled":Z
    .end local v1    # "value":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized updateOutdoorMode(Lcom/android/server/twilight/TwilightState;)V
    .locals 7
    .param p1, "twilight"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v6, 0x1

    monitor-enter p0

    .line 392
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/LiveDisplayController;->mUseOutdoorMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    .line 393
    return-void

    .line 396
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 397
    const-string/jumbo v3, "display_auto_outdoor_mode"

    .line 398
    const/4 v4, 0x1

    .line 399
    const/4 v5, -0x2

    .line 396
    invoke-static {v2, v3, v4, v5}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v6, :cond_1

    const/4 v1, 0x1

    .line 402
    .local v1, "value":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/display/LiveDisplayController;->mOutdoorModeIsSelfManaged:Z

    if-eqz v2, :cond_2

    .line 403
    move v0, v1

    .line 412
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/display/LiveDisplayController;->mOutdoorMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_8

    monitor-exit p0

    .line 413
    return-void

    .line 396
    .end local v1    # "value":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "value":Z
    goto :goto_0

    .line 405
    :cond_2
    :try_start_2
    iget-boolean v2, p0, Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z

    if-nez v2, :cond_7

    .line 406
    iget v2, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 407
    if-eqz v1, :cond_3

    iget v2, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 408
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 407
    :cond_3
    const/4 v0, 0x0

    .local v0, "enabled":Z
    goto :goto_1

    .line 406
    .end local v0    # "enabled":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "enabled":Z
    goto :goto_1

    .line 409
    .end local v0    # "enabled":Z
    :cond_5
    iget v2, p0, Lcom/android/server/display/LiveDisplayController;->mCurrentLux:F

    iget v3, p0, Lcom/android/server/display/LiveDisplayController;->mDefaultOutdoorLux:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "enabled":Z
    goto :goto_1

    .end local v0    # "enabled":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_1

    .line 405
    .end local v0    # "enabled":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_1

    .line 416
    .end local v0    # "enabled":Z
    :cond_8
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v3, 0x100

    invoke-virtual {v2, v3, v0}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    .line 417
    iput-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mOutdoorMode:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 391
    return-void

    .end local v1    # "value":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private updateSettings()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 174
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 175
    const-string/jumbo v4, "display_temperature_day"

    .line 176
    iget v5, p0, Lcom/android/server/display/LiveDisplayController;->mDefaultDayTemperature:I

    .line 174
    invoke-static {v3, v4, v5, v7}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/LiveDisplayController;->mDayTemperature:I

    .line 178
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 179
    const-string/jumbo v4, "display_temperature_night"

    .line 180
    iget v5, p0, Lcom/android/server/display/LiveDisplayController;->mDefaultNightTemperature:I

    .line 178
    invoke-static {v3, v4, v5, v7}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/LiveDisplayController;->mNightTemperature:I

    .line 182
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 183
    const-string/jumbo v4, "display_temperature_mode"

    .line 182
    invoke-static {v3, v4, v6, v7}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    .line 188
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 189
    const-string/jumbo v4, "live_display_hinted"

    .line 190
    const/4 v5, -0x3

    .line 188
    invoke-static {v3, v4, v5, v7}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    .line 194
    iget v3, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    if-eqz v3, :cond_0

    .line 195
    invoke-direct {p0, v8}, Lcom/android/server/display/LiveDisplayController;->saveUserHint(I)V

    .line 199
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 200
    const-string/jumbo v4, "display_color_adjustment"

    .line 199
    invoke-static {v3, v4, v7}, Lcyanogenmod/providers/CMSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "colorAdjustmentTemp":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 203
    const/4 v0, 0x0

    .line 204
    :goto_0
    if-eqz v0, :cond_1

    array-length v3, v0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 205
    :cond_1
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v3, "1.0"

    aput-object v3, v0, v6

    const-string/jumbo v3, "1.0"

    aput-object v3, v0, v8

    const-string/jumbo v3, "1.0"

    aput-object v3, v0, v9

    .line 208
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 209
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 210
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x2

    aput v4, v3, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_1
    iget v3, p0, Lcom/android/server/display/LiveDisplayController;->mCurrentLux:F

    invoke-virtual {p0, v3}, Lcom/android/server/display/LiveDisplayController;->updateLiveDisplay(F)V

    .line 219
    invoke-direct {p0}, Lcom/android/server/display/LiveDisplayController;->updateGamma()V

    .line 173
    return-void

    .line 203
    :cond_3
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "colorAdjustment":[Ljava/lang/String;
    goto :goto_0

    .line 211
    .end local v0    # "colorAdjustment":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "LiveDisplay"

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    aput v10, v3, v6

    .line 214
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    aput v10, v3, v8

    .line 215
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    aput v10, v3, v9

    goto :goto_1
.end method

.method private updateUserHint(Lcom/android/server/twilight/TwilightState;)V
    .locals 11
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v10, 0x0

    const v9, 0x3f060043

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 555
    if-eqz p1, :cond_0

    iget v5, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    if-ne v5, v8, :cond_1

    .line 556
    :cond_0
    return-void

    .line 558
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/display/LiveDisplayController;->mSunset:Z

    if-eqz v5, :cond_3

    :cond_2
    const/4 v4, 0x0

    .line 559
    .local v4, "transition":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/display/LiveDisplayController;->mSunset:Z

    .line 560
    if-nez v4, :cond_4

    .line 561
    return-void

    .line 558
    .end local v4    # "transition":Z
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "transition":Z
    goto :goto_0

    .line 564
    :cond_4
    iget v5, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    if-gtz v5, :cond_5

    .line 565
    iget v5, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    .line 566
    iget v5, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    invoke-direct {p0, v5}, Lcom/android/server/display/LiveDisplayController;->saveUserHint(I)V

    .line 568
    :cond_5
    iget v5, p0, Lcom/android/server/display/LiveDisplayController;->mHintCounter:I

    if-nez v5, :cond_6

    .line 570
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.settings.LIVEDISPLAY_SETTINGS"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    const/high16 v6, 0x8000000

    .line 571
    invoke-static {v5, v7, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 573
    .local v3, "result":Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 574
    iget-object v6, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 575
    const v7, 0x3f060038

    .line 574
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 573
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 576
    iget-object v6, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 573
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 578
    const v6, 0x3f020001

    .line 573
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 579
    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v7, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    .line 573
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 586
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v5, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 587
    .local v2, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v10, v8, v5, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 589
    invoke-direct {p0, v8}, Lcom/android/server/display/LiveDisplayController;->saveUserHint(I)V

    .line 553
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "nm":Landroid/app/NotificationManager;
    .end local v3    # "result":Landroid/app/PendingIntent;
    :cond_6
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 634
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 635
    const-string/jumbo v0, "LiveDisplay Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDayTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LiveDisplayController;->mDayTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mNightTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LiveDisplayController;->mNightTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 639
    const-string/jumbo v0, "LiveDisplay Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "disabled in powersave mode"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSunset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mSunset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LiveDisplayController;->mColorTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mColorAdjustment=[r: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 644
    const-string/jumbo v1, " b:"

    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 644
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mColorAdjustment:[F

    aget v1, v1, v4

    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 644
    const-string/jumbo v1, "]"

    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mRGB=[r:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mRGB:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mRGB:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mRGB:[F

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mOutdoorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mUseOutdoorMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mOutdoorMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mColorEnhancement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mUseColorEnhancement:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mColorEnhancement:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mUseLowPower:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/display/LiveDisplayController;->mLowPower:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    return-void

    .line 640
    :cond_0
    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 646
    :cond_1
    const-string/jumbo v0, "N/A"

    goto :goto_1

    .line 647
    :cond_2
    const-string/jumbo v0, "N/A"

    goto :goto_2

    .line 648
    :cond_3
    const-string/jumbo v0, "N/A"

    goto :goto_3
.end method

.method systemReady()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 131
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 133
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 134
    const v2, 0x3f070001

    .line 133
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/LiveDisplayController;->mDefaultDayTemperature:I

    .line 135
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 136
    const v2, 0x3f070002

    .line 135
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/LiveDisplayController;->mDefaultNightTemperature:I

    .line 137
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 138
    const v2, 0x3f070003

    .line 137
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/LiveDisplayController;->mDefaultOutdoorLux:I

    .line 141
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v1

    .line 140
    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mUseOutdoorMode:Z

    .line 142
    iget-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mUseOutdoorMode:Z

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSunlightEnhancementSelfManaged()Z

    move-result v1

    .line 142
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mOutdoorModeIsSelfManaged:Z

    .line 146
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v1, v4}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v1

    .line 145
    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mUseLowPower:Z

    .line 147
    iget-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mUseLowPower:Z

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v1, v4}, Lcyanogenmod/hardware/CMHardwareManager;->get(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mLowPower:Z

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v1, v3}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v1

    .line 151
    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mUseColorEnhancement:Z

    .line 153
    iget-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mUseColorEnhancement:Z

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v1, v3}, Lcyanogenmod/hardware/CMHardwareManager;->get(I)Z

    move-result v1

    .line 154
    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mColorEnhancement:Z

    .line 158
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/LiveDisplayController;->updateSettings()V

    .line 160
    new-instance v1, Lcom/android/server/display/LiveDisplayController$SettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/display/LiveDisplayController$SettingsObserver;-><init>(Lcom/android/server/display/LiveDisplayController;)V

    iput-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mObserver:Lcom/android/server/display/LiveDisplayController$SettingsObserver;

    .line 161
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mObserver:Lcom/android/server/display/LiveDisplayController$SettingsObserver;

    invoke-virtual {v1, v4}, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->register(Z)V

    .line 163
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 164
    .local v0, "pmi":Landroid/os/PowerManagerInternal;
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 165
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z

    .line 167
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/twilight/TwilightManager;

    iput-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 168
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v3}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 170
    iput-boolean v4, p0, Lcom/android/server/display/LiveDisplayController;->mInitialized:Z

    .line 130
    return-void

    .line 143
    .end local v0    # "pmi":Landroid/os/PowerManagerInternal;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateLiveDisplay()V
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/android/server/display/LiveDisplayController;->mCurrentLux:F

    invoke-virtual {p0, v0}, Lcom/android/server/display/LiveDisplayController;->updateLiveDisplay(F)V

    .line 294
    return-void
.end method

.method declared-synchronized updateLiveDisplay(F)V
    .locals 2
    .param p1, "lux"    # F

    .prologue
    monitor-enter p0

    .line 299
    :try_start_0
    iput p1, p0, Lcom/android/server/display/LiveDisplayController;->mCurrentLux:F

    .line 300
    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 298
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
