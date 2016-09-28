.class final Lcom/android/server/display/LiveDisplayController$SettingsObserver;
.super Lcom/android/server/pm/UserContentObserver;
.source "LiveDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LiveDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final DISPLAY_AUTO_OUTDOOR_MODE_URI:Landroid/net/Uri;

.field private final DISPLAY_COLOR_ADJUSTMENT_URI:Landroid/net/Uri;

.field private final DISPLAY_COLOR_ENHANCE_URI:Landroid/net/Uri;

.field private final DISPLAY_LOW_POWER_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/display/LiveDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LiveDisplayController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/LiveDisplayController;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->this$0:Lcom/android/server/display/LiveDisplayController;

    .line 261
    invoke-static {p1}, Lcom/android/server/display/LiveDisplayController;->-get4(Lcom/android/server/display/LiveDisplayController;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserContentObserver;-><init>(Landroid/os/Handler;)V

    .line 247
    const-string/jumbo v0, "display_temperature_day"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 246
    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

    .line 249
    const-string/jumbo v0, "display_temperature_night"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 248
    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

    .line 251
    const-string/jumbo v0, "display_temperature_mode"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 250
    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

    .line 253
    const-string/jumbo v0, "display_auto_outdoor_mode"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 252
    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_AUTO_OUTDOOR_MODE_URI:Landroid/net/Uri;

    .line 255
    const-string/jumbo v0, "display_low_power"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 254
    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_LOW_POWER_URI:Landroid/net/Uri;

    .line 257
    const-string/jumbo v0, "display_color_enhance"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 256
    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_COLOR_ENHANCE_URI:Landroid/net/Uri;

    .line 259
    const-string/jumbo v0, "display_color_adjustment"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 258
    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_COLOR_ADJUSTMENT_URI:Landroid/net/Uri;

    .line 260
    return-void
.end method


# virtual methods
.method public register(Z)V
    .locals 7
    .param p1, "register"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 265
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v3}, Lcom/android/server/display/LiveDisplayController;->-get1(Lcom/android/server/display/LiveDisplayController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 266
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 267
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v6, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 268
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v6, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 269
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v6, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 270
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_AUTO_OUTDOOR_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v6, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 271
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_LOW_POWER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v6, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 272
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_COLOR_ENHANCE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v6, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 273
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_COLOR_ADJUSTMENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v6, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 274
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v3}, Lcom/android/server/display/LiveDisplayController;->-get5(Lcom/android/server/display/LiveDisplayController;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v3}, Lcom/android/server/display/LiveDisplayController;->-get5(Lcom/android/server/display/LiveDisplayController;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v3

    invoke-virtual {v3}, Lcyanogenmod/hardware/CMHardwareManager;->getNumGammaControls()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "display_gamma_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-static {v3}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 278
    .local v1, "gammaUri":Landroid/net/Uri;
    invoke-virtual {v0, v1, v6, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v1    # "gammaUri":Landroid/net/Uri;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->observe()V

    .line 264
    :goto_1
    return-void

    .line 283
    :cond_1
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->unobserve()V

    goto :goto_1
.end method

.method protected update()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v0}, Lcom/android/server/display/LiveDisplayController;->-wrap5(Lcom/android/server/display/LiveDisplayController;)V

    .line 289
    return-void
.end method
