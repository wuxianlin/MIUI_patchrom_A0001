.class Landroid/content/pm/IPackageManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 2176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2178
    iput-object p1, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2176
    return-void
.end method


# virtual methods
.method public activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2508
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2512
    if-eqz p1, :cond_0

    .line 2513
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2514
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2519
    :goto_0
    if-eqz p2, :cond_1

    .line 2520
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2521
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2526
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2527
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2529
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 2532
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2535
    return v2

    .line 2517
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2531
    :catchall_0
    move-exception v3

    .line 2532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2531
    throw v3

    .line 2524
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2529
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_2
.end method

.method public addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V
    .locals 5
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;
    .param p2, "ownerPackage"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "targetUserId"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3913
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3915
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3916
    if-eqz p1, :cond_0

    .line 3917
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3918
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3923
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3924
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3925
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3926
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3927
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3928
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3931
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3910
    return-void

    .line 3921
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3930
    :catchall_0
    move-exception v2

    .line 3931
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3930
    throw v2
.end method

.method public addOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/content/pm/IOnPermissionsChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5238
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/pm/IOnPermissionsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5239
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5232
    return-void

    .line 5242
    :catchall_0
    move-exception v2

    .line 5243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5242
    throw v2
.end method

.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3639
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3641
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3642
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3643
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3644
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3636
    return-void

    .line 3646
    :catchall_0
    move-exception v2

    .line 3647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3646
    throw v2
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 6
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2672
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2675
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2676
    if-eqz p1, :cond_0

    .line 2677
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2678
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2683
    :goto_0
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2684
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2685
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2688
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2691
    return v2

    .line 2681
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2687
    :catchall_0
    move-exception v3

    .line 2688
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2687
    throw v3

    .line 2685
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 6
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4678
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4681
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4682
    if-eqz p1, :cond_0

    .line 4683
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4684
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4689
    :goto_0
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x71

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4690
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4691
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 4694
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4697
    return v2

    .line 4687
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4693
    :catchall_0
    move-exception v3

    .line 4694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4693
    throw v3

    .line 4691
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "activity"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3868
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3870
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3871
    if-eqz p1, :cond_0

    .line 3872
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3873
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3878
    :goto_0
    if-eqz p2, :cond_1

    .line 3879
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3880
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3885
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3886
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3887
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3890
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3865
    return-void

    .line 3876
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3889
    :catchall_0
    move-exception v2

    .line 3890
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3889
    throw v2

    .line 3883
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3771
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3774
    if-eqz p1, :cond_0

    .line 3775
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3776
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3781
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3782
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3783
    if-eqz p4, :cond_1

    .line 3784
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3785
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3790
    :goto_1
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3791
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3792
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3768
    return-void

    .line 3779
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3794
    :catchall_0
    move-exception v2

    .line 3795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3794
    throw v2

    .line 3788
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2182
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3048
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3049
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3052
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3053
    if-eqz p1, :cond_0

    .line 3054
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3055
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3060
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3061
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3062
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3063
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3064
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3065
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3068
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3071
    return v2

    .line 3058
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3067
    :catchall_0
    move-exception v3

    .line 3068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3067
    throw v3

    .line 3065
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2352
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2353
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2354
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2356
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2359
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2362
    return-object v2

    .line 2358
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 2359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2358
    throw v3
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2633
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2636
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2637
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2638
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2639
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2640
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2641
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2642
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2645
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2648
    return v2

    .line 2644
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2645
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2644
    throw v3
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2853
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2856
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2857
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2858
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2859
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2860
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2861
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2864
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2867
    return v2

    .line 2863
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2863
    throw v3
.end method

.method public checkUidPermission(Ljava/lang/String;I)I
    .locals 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2653
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2656
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2657
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2658
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2659
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2660
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2661
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2664
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2667
    return v2

    .line 2663
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2663
    throw v3
.end method

.method public checkUidSignatures(II)I
    .locals 6
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2872
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2875
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2876
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2877
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2878
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2879
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2880
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2883
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2886
    return v2

    .line 2882
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2882
    throw v3
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4317
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4318
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4319
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/content/pm/IPackageDataObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4320
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4321
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4322
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4312
    return-void

    .line 4324
    :catchall_0
    move-exception v2

    .line 4325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4324
    throw v2
.end method

.method public clearCrossProfileIntentFilters(ILjava/lang/String;)V
    .locals 5
    .param p1, "sourceUserId"    # I
    .param p2, "ownerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3938
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3940
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3941
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3942
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3943
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3944
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3935
    return-void

    .line 3946
    :catchall_0
    move-exception v2

    .line 3947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3946
    throw v2
.end method

.method public clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3897
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3899
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3900
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3901
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3902
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3903
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3894
    return-void

    .line 3905
    :catchall_0
    move-exception v2

    .line 3906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3905
    throw v2
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3832
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3833
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3835
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3836
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3837
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3838
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3830
    return-void

    .line 3840
    :catchall_0
    move-exception v2

    .line 3841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3840
    throw v2
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2336
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2337
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2338
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2341
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2344
    return-object v2

    .line 2340
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 2341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2340
    throw v3
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4293
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4296
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4297
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/content/pm/IPackageDataObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4298
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4299
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4302
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4290
    return-void

    .line 4301
    :catchall_0
    move-exception v2

    .line 4302
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4301
    throw v2
.end method

.method public deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3603
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3605
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3606
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3607
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3608
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3609
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3610
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3611
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3600
    return-void

    .line 3613
    :catchall_0
    move-exception v2

    .line 3614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3613
    throw v2
.end method

.method public deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3577
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3579
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3580
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3581
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/content/pm/IPackageDeleteObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3582
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3583
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3584
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3585
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3574
    return-void

    .line 3587
    :catchall_0
    move-exception v2

    .line 3588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3587
    throw v2
.end method

.method public enterSafeMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4417
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4419
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4420
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4421
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4414
    return-void

    .line 4423
    :catchall_0
    move-exception v2

    .line 4424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4423
    throw v2
.end method

.method public extendVerificationTimeout(IIJ)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "verificationCodeAtTimeout"    # I
    .param p3, "millisecondsToDelay"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4771
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4772
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4774
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4775
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4776
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4777
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 4778
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4779
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4782
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4769
    return-void

    .line 4781
    :catchall_0
    move-exception v2

    .line 4782
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4781
    throw v2
.end method

.method public finishPackageInstall(I)V
    .locals 5
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3545
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3547
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3548
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3549
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3550
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3542
    return-void

    .line 3552
    :catchall_0
    move-exception v2

    .line 3553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3552
    throw v2
.end method

.method public forceDexOpt(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4527
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4529
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4531
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4532
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4524
    return-void

    .line 4534
    :catchall_0
    move-exception v2

    .line 4535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4534
    throw v2
.end method

.method public freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
    .locals 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J
    .param p4, "pi"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4264
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4266
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4268
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4269
    if-eqz p4, :cond_0

    .line 4270
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4271
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4276
    :goto_0
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4277
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4261
    return-void

    .line 4274
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4279
    :catchall_0
    move-exception v2

    .line 4280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4279
    throw v2
.end method

.method public freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    .locals 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J
    .param p4, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4226
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4228
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4229
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4230
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4231
    if-eqz p4, :cond_0

    invoke-interface {p4}, Landroid/content/pm/IPackageDataObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4232
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4233
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4236
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4223
    return-void

    .line 4235
    :catchall_0
    move-exception v2

    .line 4236
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4235
    throw v2
.end method

.method public getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2477
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2480
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2481
    if-eqz p1, :cond_0

    .line 2482
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2483
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2488
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2489
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2490
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2491
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2492
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2493
    sget-object v3, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2500
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2503
    return-object v2

    .line 2486
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2499
    :catchall_0
    move-exception v3

    .line 2500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2499
    throw v3

    .line 2496
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/ActivityInfo;
    goto :goto_1
.end method

.method public getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4863
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4866
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4867
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4868
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4869
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4870
    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4873
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4876
    return-object v2

    .line 4872
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    :catchall_0
    move-exception v3

    .line 4873
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4872
    throw v3
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 6
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2434
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2437
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2438
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2439
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2440
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2441
    sget-object v3, Landroid/content/pm/PermissionGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2444
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2447
    return-object v2

    .line 2443
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :catchall_0
    move-exception v3

    .line 2444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2443
    throw v3
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2999
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3002
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3003
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3004
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3005
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3006
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3009
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3012
    return-object v2

    .line 3008
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3009
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3008
    throw v3
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;I)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4166
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4169
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4170
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4171
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4172
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x59

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4173
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4174
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4177
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4180
    return v2

    .line 4176
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4176
    throw v3
.end method

.method public getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5063
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5066
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5067
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5068
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5069
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x86

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5070
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5071
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5074
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5077
    return v2

    .line 5071
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5073
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5073
    throw v3
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2452
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2455
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2457
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2458
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2459
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2461
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2462
    sget-object v3, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2469
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2472
    return-object v2

    .line 2465
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 2468
    .end local v2    # "_result":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    .line 2469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2468
    throw v3
.end method

.method public getBlockUninstallForUser(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5119
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5122
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5124
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5125
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x89

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5126
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5127
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5130
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5133
    return v2

    .line 5127
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5129
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5129
    throw v3
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4116
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4119
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4120
    if-eqz p1, :cond_0

    .line 4121
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4122
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4127
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4128
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x57

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4129
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4130
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4133
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4136
    return v2

    .line 4125
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4132
    :catchall_0
    move-exception v3

    .line 4133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4132
    throw v3
.end method

.method public getComposedIconInfo()Landroid/app/ComposedIconInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5358
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5361
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5362
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x95

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5363
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5364
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 5365
    sget-object v3, Landroid/app/ComposedIconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ComposedIconInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5372
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5375
    return-object v2

    .line 5368
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/app/ComposedIconInfo;
    goto :goto_0

    .line 5371
    .end local v2    # "_result":Landroid/app/ComposedIconInfo;
    :catchall_0
    move-exception v3

    .line 5372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5371
    throw v3
.end method

.method public getDefaultAppsBackup(I)[B
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3991
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3994
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3995
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3996
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x51

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3997
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3998
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4001
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4004
    return-object v2

    .line 4000
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 4001
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4000
    throw v3
.end method

.method public getDefaultBrowserPackageName(I)Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4899
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4900
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4903
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4904
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4905
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4906
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4907
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4910
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4913
    return-object v2

    .line 4909
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4909
    throw v3
.end method

.method public getFlagsForUid(I)I
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2945
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2948
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2949
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2950
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2951
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2952
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2955
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2958
    return v2

    .line 2954
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2955
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2954
    throw v3
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4062
    .local p1, "outHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4063
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4066
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4067
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4068
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4069
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4070
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4075
    :goto_0
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4081
    return-object v2

    .line 4073
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/ComponentName;
    goto :goto_0

    .line 4077
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_0
    move-exception v3

    .line 4078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4077
    throw v3
.end method

.method public getInstallLocation()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4720
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4723
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4724
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x73

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4725
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4726
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4729
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4732
    return v2

    .line 4728
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4728
    throw v3
.end method

.method public getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3319
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3322
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3324
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3325
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x33

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3326
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3327
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3328
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3335
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3338
    return-object v2

    .line 3331
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    goto :goto_0

    .line 3334
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_0
    move-exception v3

    .line 3335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3334
    throw v3
.end method

.method public getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3258
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3261
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3263
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3264
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3266
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3267
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3274
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3277
    return-object v2

    .line 3270
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    goto :goto_0

    .line 3273
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_0
    move-exception v3

    .line 3274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3273
    throw v3
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3621
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3624
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3625
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3626
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3628
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3631
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3634
    return-object v2

    .line 3630
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3630
    throw v3
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3443
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3446
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3447
    if-eqz p1, :cond_0

    .line 3448
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3449
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3454
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3455
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3456
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3457
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 3458
    sget-object v3, Landroid/content/pm/InstrumentationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/InstrumentationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3465
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3468
    return-object v2

    .line 3452
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3464
    :catchall_0
    move-exception v3

    .line 3465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3464
    throw v3

    .line 3461
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/InstrumentationInfo;
    goto :goto_1
.end method

.method public getIntentFilterVerificationBackup(I)[B
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4025
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4028
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4029
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4030
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4031
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4032
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4035
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4038
    return-object v2

    .line 4034
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 4035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4034
    throw v3
.end method

.method public getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4845
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4848
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4849
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4850
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4851
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4852
    sget-object v3, Landroid/content/pm/IntentFilterVerificationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4855
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4858
    return-object v2

    .line 4854
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    :catchall_0
    move-exception v3

    .line 4855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4854
    throw v3
.end method

.method public getIntentVerificationStatus(Ljava/lang/String;I)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4806
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4809
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4810
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4811
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4812
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x78

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4813
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4814
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4817
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4820
    return v2

    .line 4816
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4816
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2186
    const-string/jumbo v0, "android.content.pm.IPackageManager"

    return-object v0
.end method

.method public getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5138
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5141
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5142
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5143
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5144
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5145
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5146
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 5147
    sget-object v3, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/KeySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5154
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5157
    return-object v2

    .line 5150
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/KeySet;
    goto :goto_0

    .line 5153
    .end local v2    # "_result":Landroid/content/pm/KeySet;
    :catchall_0
    move-exception v3

    .line 5154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5153
    throw v3
.end method

.method public getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3702
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3705
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3706
    if-eqz p1, :cond_0

    .line 3707
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3708
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3713
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3714
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3715
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x45

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3716
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3717
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 3718
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3725
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3728
    return-object v2

    .line 3711
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3724
    :catchall_0
    move-exception v3

    .line 3725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3724
    throw v3

    .line 3721
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/ResolveInfo;
    goto :goto_1
.end method

.method public getMoveStatus(I)I
    .locals 6
    .param p1, "moveId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4593
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4596
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4597
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4598
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4599
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4600
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4603
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4606
    return v2

    .line 4602
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4602
    throw v3
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2909
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2912
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2913
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2914
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2915
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2916
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2919
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2922
    return-object v2

    .line 2918
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 2919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2918
    throw v3
.end method

.method public getPackageGids(Ljava/lang/String;I)[I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2292
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2296
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2297
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2298
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2299
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2300
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2303
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2306
    return-object v2

    .line 2302
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2302
    throw v3
.end method

.method public getPackageGidsEtc(Ljava/lang/String;II)[I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2311
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2314
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2316
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2317
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2318
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2319
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2320
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2323
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2326
    return-object v2

    .line 2322
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2322
    throw v3
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2228
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2231
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2232
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2233
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2234
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2235
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2236
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2237
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2238
    sget-object v3, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2245
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2248
    return-object v2

    .line 2241
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 2244
    .end local v2    # "_result":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v3

    .line 2245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2244
    throw v3
.end method

.method public getPackageInstaller()Landroid/content/pm/IPackageInstaller;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5082
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5085
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5086
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x87

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5087
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5088
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageInstaller$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstaller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5091
    .local v2, "_result":Landroid/content/pm/IPackageInstaller;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5094
    return-object v2

    .line 5090
    .end local v2    # "_result":Landroid/content/pm/IPackageInstaller;
    :catchall_0
    move-exception v3

    .line 5091
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5090
    throw v3
.end method

.method public getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageStatsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4340
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4343
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4344
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4345
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/content/pm/IPackageStatsObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4346
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4347
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4337
    return-void

    .line 4349
    :catchall_0
    move-exception v2

    .line 4350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4349
    throw v2
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2258
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2259
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2260
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2261
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2264
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2267
    return v2

    .line 2263
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2263
    throw v3
.end method

.method public getPackageUidEtc(Ljava/lang/String;II)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2272
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2275
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2278
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2279
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2280
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2281
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2284
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2287
    return v2

    .line 2283
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2283
    throw v3
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2891
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2894
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2895
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2896
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2897
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2898
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2901
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2904
    return-object v2

    .line 2900
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 2901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2900
    throw v3
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3288
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3291
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3293
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3294
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3295
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3297
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3298
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3305
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3308
    return-object v2

    .line 3301
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    goto :goto_0

    .line 3304
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_0
    move-exception v3

    .line 3305
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3304
    throw v3
.end method

.method public getPermissionControllerPackageName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5301
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5304
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5305
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x92

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5306
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5307
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5310
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5313
    return-object v2

    .line 5309
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 5310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5309
    throw v3
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2759
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2762
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2764
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2765
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2766
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2767
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2768
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2771
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2774
    return v2

    .line 2770
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2770
    throw v3
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2410
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2413
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2414
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2415
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2416
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2417
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2418
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2419
    sget-object v3, Landroid/content/pm/PermissionGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2426
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2429
    return-object v2

    .line 2422
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/PermissionGroupInfo;
    goto :goto_0

    .line 2425
    .end local v2    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :catchall_0
    move-exception v3

    .line 2426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2425
    throw v3
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2367
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2370
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2371
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2372
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2373
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2374
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2375
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2376
    sget-object v3, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2383
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2386
    return-object v2

    .line 2379
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/PermissionInfo;
    goto :goto_0

    .line 2382
    .end local v2    # "_result":Landroid/content/pm/PermissionInfo;
    :catchall_0
    move-exception v3

    .line 2383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2382
    throw v3
.end method

.method public getPersistentApplications(I)Ljava/util/List;
    .locals 6
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3352
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3353
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3354
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3356
    sget-object v3, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3359
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3362
    return-object v2

    .line 3358
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_0
    move-exception v3

    .line 3359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3358
    throw v3
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 6
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3847
    .local p1, "outFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3848
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3851
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3852
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3853
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3854
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3855
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3856
    .local v2, "_result":I
    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 3857
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3863
    return v2

    .line 3859
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3859
    throw v3
.end method

.method public getPreferredActivityBackup(I)[B
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3957
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3960
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3961
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3962
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3963
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3964
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3967
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3970
    return-object v2

    .line 3966
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 3967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3966
    throw v3
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 6
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3669
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3672
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3673
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3674
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x43

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3675
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3676
    sget-object v3, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3679
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3682
    return-object v2

    .line 3678
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_0
    move-exception v3

    .line 3679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3678
    throw v3
.end method

.method public getPrivateFlagsForUid(I)I
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2963
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2966
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2967
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2968
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2969
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2970
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2973
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2976
    return v2

    .line 2972
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2973
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2972
    throw v3
.end method

.method public getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2602
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2605
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2606
    if-eqz p1, :cond_0

    .line 2607
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2608
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2613
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2614
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2615
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2616
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2617
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2618
    sget-object v3, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2625
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2628
    return-object v2

    .line 2611
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2624
    :catchall_0
    move-exception v3

    .line 2625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2624
    throw v3

    .line 2621
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/ProviderInfo;
    goto :goto_1
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2540
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2543
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2544
    if-eqz p1, :cond_0

    .line 2545
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2546
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2551
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2552
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2553
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2554
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2555
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2556
    sget-object v3, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2563
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2566
    return-object v2

    .line 2549
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2562
    :catchall_0
    move-exception v3

    .line 2563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2562
    throw v3

    .line 2559
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/ActivityInfo;
    goto :goto_1
.end method

.method public getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2571
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2574
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2575
    if-eqz p1, :cond_0

    .line 2576
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2577
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2582
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2583
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2584
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2585
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2586
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2587
    sget-object v3, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2594
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2597
    return-object v2

    .line 2580
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2593
    :catchall_0
    move-exception v3

    .line 2594
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2593
    throw v3

    .line 2590
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/ServiceInfo;
    goto :goto_1
.end method

.method public getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5162
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5165
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5166
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5167
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5168
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5169
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 5170
    sget-object v3, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/KeySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5177
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5180
    return-object v2

    .line 5173
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/KeySet;
    goto :goto_0

    .line 5176
    .end local v2    # "_result":Landroid/content/pm/KeySet;
    :catchall_0
    move-exception v3

    .line 5177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5176
    throw v3
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4382
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4385
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4386
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x61

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4387
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4388
    sget-object v3, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/FeatureInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4391
    .local v2, "_result":[Landroid/content/pm/FeatureInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4394
    return-object v2

    .line 4390
    .end local v2    # "_result":[Landroid/content/pm/FeatureInfo;
    :catchall_0
    move-exception v3

    .line 4391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4390
    throw v3
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4361
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4364
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4365
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x60

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4366
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4367
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4370
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4373
    return-object v2

    .line 4369
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4369
    throw v3
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .locals 6
    .param p1, "sharedUserName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2927
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2930
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2931
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2932
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2933
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2934
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2937
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2940
    return v2

    .line 2936
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2936
    throw v3
.end method

.method public getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4918
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4921
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4922
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4923
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4924
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4925
    sget-object v3, Landroid/content/pm/VerifierDeviceIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4932
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4935
    return-object v2

    .line 4928
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/VerifierDeviceIdentity;
    goto :goto_0

    .line 4931
    .end local v2    # "_result":Landroid/content/pm/VerifierDeviceIdentity;
    :catchall_0
    move-exception v3

    .line 4932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4931
    throw v3
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5265
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5267
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5268
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5269
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5270
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x90

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5271
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5262
    return-void

    .line 5273
    :catchall_0
    move-exception v2

    .line 5274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5273
    throw v2
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2711
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2713
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2714
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2715
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2716
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2717
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2718
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2708
    return-void

    .line 2720
    :catchall_0
    move-exception v2

    .line 2721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2720
    throw v2
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4399
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4402
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4404
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4405
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4406
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4409
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4412
    return v2

    .line 4406
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4408
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4408
    throw v3
.end method

.method public hasSystemUidErrors()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4462
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4465
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4466
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x66

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4468
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4471
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4474
    return v2

    .line 4468
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4470
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4470
    throw v3
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;I)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4737
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4740
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4741
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4742
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4743
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x74

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4744
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4745
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4748
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4751
    return v2

    .line 4747
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4747
    throw v3
.end method

.method public installPackage(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V
    .locals 5
    .param p1, "originPath"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p6, "packageAbiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3492
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3494
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3496
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/content/pm/IPackageInstallObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3497
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3498
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3499
    if-eqz p5, :cond_1

    .line 3500
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3501
    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/content/pm/VerificationParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3506
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3507
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3508
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3489
    return-void

    .line 3504
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3510
    :catchall_0
    move-exception v2

    .line 3511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3510
    throw v2
.end method

.method public installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;I)V
    .locals 5
    .param p1, "originPath"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p6, "packageAbiOverride"    # Ljava/lang/String;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3518
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3520
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3521
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3522
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/content/pm/IPackageInstallObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3523
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3524
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3525
    if-eqz p5, :cond_1

    .line 3526
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3527
    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/content/pm/VerificationParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3532
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3533
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3534
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3535
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3515
    return-void

    .line 3530
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3537
    :catchall_0
    move-exception v2

    .line 3538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3537
    throw v2
.end method

.method public isComponentProtected(Ljava/lang/String;ILandroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5399
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5402
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5404
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5405
    if-eqz p3, :cond_0

    .line 5406
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5407
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5412
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5413
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x97

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5414
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5415
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 5418
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5421
    return v2

    .line 5410
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5417
    :catchall_0
    move-exception v3

    .line 5418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5417
    throw v3

    .line 5415
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public isFirstBoot()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4940
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4943
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4944
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4945
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4946
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4949
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4952
    return v2

    .line 4946
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4948
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4948
    throw v3
.end method

.method public isOnlyCoreApps()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4957
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4960
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4961
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4962
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4963
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4966
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4969
    return v2

    .line 4963
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4965
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4965
    throw v3
.end method

.method public isPackageAvailable(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2209
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2212
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2213
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2214
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2215
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2217
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2220
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2223
    return v2

    .line 2217
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2219
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2219
    throw v3
.end method

.method public isPackageFrozen(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2191
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2194
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2195
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2196
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2197
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2198
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2201
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2204
    return v2

    .line 2198
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2200
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2200
    throw v3
.end method

.method public isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5185
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5188
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5189
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5190
    if-eqz p2, :cond_0

    .line 5191
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5192
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5197
    :goto_0
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5198
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5199
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 5202
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5205
    return v2

    .line 5195
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5201
    :catchall_0
    move-exception v3

    .line 5202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5201
    throw v3

    .line 5199
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5210
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5213
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5214
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5215
    if-eqz p2, :cond_0

    .line 5216
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5217
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5222
    :goto_0
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5223
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5224
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 5227
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5230
    return v2

    .line 5220
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5226
    :catchall_0
    move-exception v3

    .line 5227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5226
    throw v3

    .line 5224
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public isPermissionEnforced(Ljava/lang/String;)Z
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5007
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5010
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5011
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5012
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x83

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5013
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5014
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5017
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5020
    return v2

    .line 5014
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5016
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5016
    throw v3
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5281
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5284
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5285
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5286
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5287
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5288
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x91

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5289
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5290
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5293
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5296
    return v2

    .line 5290
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5292
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5292
    throw v3
.end method

.method public isProtectedBroadcast(Ljava/lang/String;)Z
    .locals 6
    .param p1, "actionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2835
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2838
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2839
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2840
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2841
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2842
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2845
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2848
    return v2

    .line 2842
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2844
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2845
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2844
    throw v3
.end method

.method public isSafeMode()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4431
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4434
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4435
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4436
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4437
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4440
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4443
    return v2

    .line 4437
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4439
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4440
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4439
    throw v3
.end method

.method public isStorageLow()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5026
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5029
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5030
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x84

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5031
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5032
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5035
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5038
    return v2

    .line 5032
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5034
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5034
    throw v3
.end method

.method public isUidPrivileged(I)Z
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2981
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2984
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2985
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2986
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2987
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2988
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2991
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2994
    return v2

    .line 2988
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2990
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2991
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2990
    throw v3
.end method

.method public isUpgrade()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4974
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4977
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4978
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x81

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4979
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4980
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4983
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4986
    return v2

    .line 4980
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4982
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4982
    throw v3
.end method

.method public movePackage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4641
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4644
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4646
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4647
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4648
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4649
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4652
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4655
    return v2

    .line 4651
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4651
    throw v3
.end method

.method public movePrimaryStorage(Ljava/lang/String;)I
    .locals 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4660
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4663
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4665
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x70

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4666
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4667
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4670
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4673
    return v2

    .line 4669
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4670
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4669
    throw v3
.end method

.method public nextPackageToClean(Landroid/content/pm/PackageCleanItem;)Landroid/content/pm/PackageCleanItem;
    .locals 6
    .param p1, "lastPackage"    # Landroid/content/pm/PackageCleanItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4564
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4567
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4568
    if-eqz p1, :cond_0

    .line 4569
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4570
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageCleanItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4575
    :goto_0
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4576
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4577
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 4578
    sget-object v3, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageCleanItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4585
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4588
    return-object v2

    .line 4573
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4584
    :catchall_0
    move-exception v3

    .line 4585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4584
    throw v3

    .line 4581
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/PackageCleanItem;
    goto :goto_1
.end method

.method public performBootDexOpt()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4483
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4485
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4486
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4487
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4480
    return-void

    .line 4489
    :catchall_0
    move-exception v2

    .line 4490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4489
    throw v2
.end method

.method public performDexOptIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4508
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4513
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4514
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x68

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4515
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4516
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4519
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4522
    return v2

    .line 4516
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4518
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4518
    throw v3
.end method

.method public processThemeResources(Ljava/lang/String;)I
    .locals 6
    .param p1, "themePkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5380
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5383
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5384
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5385
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x96

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5386
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5387
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5390
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5393
    return v2

    .line 5389
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 5390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5389
    throw v3
.end method

.method public queryContentProviders(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3421
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3422
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3423
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3424
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3425
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3426
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3427
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3428
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3435
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3438
    return-object v2

    .line 3431
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    goto :goto_0

    .line 3434
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_0
    move-exception v3

    .line 3435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3434
    throw v3
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3473
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3476
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3477
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3478
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3479
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x39

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3480
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3481
    sget-object v3, Landroid/content/pm/InstrumentationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3484
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3487
    return-object v2

    .line 3483
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    :catchall_0
    move-exception v3

    .line 3484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3483
    throw v3
.end method

.method public queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3076
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3079
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3080
    if-eqz p1, :cond_0

    .line 3081
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3082
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3087
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3088
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3089
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3090
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3091
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3092
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3095
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3098
    return-object v2

    .line 3085
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3094
    :catchall_0
    move-exception v3

    .line 3095
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3094
    throw v3
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "caller"    # Landroid/content/ComponentName;
    .param p2, "specifics"    # [Landroid/content/Intent;
    .param p3, "specificTypes"    # [Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3103
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3107
    if-eqz p1, :cond_0

    .line 3108
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3109
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3114
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3115
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3116
    if-eqz p4, :cond_1

    .line 3117
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3118
    const/4 v3, 0x0

    invoke-virtual {p4, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3123
    :goto_1
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3124
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3125
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3126
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3127
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3128
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3131
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3134
    return-object v2

    .line 3112
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3130
    :catchall_0
    move-exception v3

    .line 3131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3130
    throw v3

    .line 3121
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3225
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3228
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3229
    if-eqz p1, :cond_0

    .line 3230
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3231
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3236
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3237
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3238
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3239
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3241
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3244
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3247
    return-object v2

    .line 3234
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3243
    :catchall_0
    move-exception v3

    .line 3244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3243
    throw v3
.end method

.method public queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3139
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3142
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3143
    if-eqz p1, :cond_0

    .line 3144
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3145
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3150
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3151
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3152
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3153
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3154
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3155
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3158
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3161
    return-object v2

    .line 3148
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3157
    :catchall_0
    move-exception v3

    .line 3158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3157
    throw v3
.end method

.method public queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3198
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3202
    if-eqz p1, :cond_0

    .line 3203
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3204
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3209
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3210
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3211
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3212
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3213
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3214
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3217
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3220
    return-object v2

    .line 3207
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3216
    :catchall_0
    move-exception v3

    .line 3217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3216
    throw v3
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2396
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2397
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2398
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2399
    sget-object v3, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2402
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2405
    return-object v2

    .line 2401
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :catchall_0
    move-exception v3

    .line 2402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2401
    throw v3
.end method

.method public querySyncProviders(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3399
    .local p1, "outNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "outInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3400
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3402
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3404
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3405
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3406
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3407
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 3408
    sget-object v2, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p2, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3397
    return-void

    .line 3410
    :catchall_0
    move-exception v2

    .line 3411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3410
    throw v2
.end method

.method public registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    .locals 5
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4611
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4613
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4614
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/pm/IPackageMoveObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4615
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4616
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4608
    return-void

    .line 4618
    :catchall_0
    move-exception v2

    .line 4619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4618
    throw v2
.end method

.method public removeOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/content/pm/IOnPermissionsChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5250
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5252
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5253
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/pm/IOnPermissionsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5254
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5255
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5247
    return-void

    .line 5257
    :catchall_0
    move-exception v2

    .line 5258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5257
    throw v2
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3654
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3656
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3657
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3658
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3659
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3662
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3651
    return-void

    .line 3661
    :catchall_0
    move-exception v2

    .line 3662
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3661
    throw v2
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2696
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2698
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2700
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2701
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2693
    return-void

    .line 2703
    :catchall_0
    move-exception v2

    .line 2704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2703
    throw v2
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3802
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3804
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3805
    if-eqz p1, :cond_0

    .line 3806
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3807
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3812
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3813
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3814
    if-eqz p4, :cond_1

    .line 3815
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3816
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3821
    :goto_1
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3822
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3823
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3826
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3799
    return-void

    .line 3810
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3825
    :catchall_0
    move-exception v2

    .line 3826
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3825
    throw v2

    .line 3819
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public resetApplicationPreferences(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3687
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3689
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3690
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3691
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3692
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3684
    return-void

    .line 3694
    :catchall_0
    move-exception v2

    .line 3695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3694
    throw v2
.end method

.method public resetRuntimePermissions()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2745
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2747
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2748
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2749
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2752
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2742
    return-void

    .line 2751
    :catchall_0
    move-exception v2

    .line 2752
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2751
    throw v2
.end method

.method public resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3367
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3370
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3371
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3372
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3373
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3374
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3375
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3376
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3377
    sget-object v3, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3384
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3387
    return-object v2

    .line 3380
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/ProviderInfo;
    goto :goto_0

    .line 3383
    .end local v2    # "_result":Landroid/content/pm/ProviderInfo;
    :catchall_0
    move-exception v3

    .line 3384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3383
    throw v3
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3017
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3020
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3021
    if-eqz p1, :cond_0

    .line 3022
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3023
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3028
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3029
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3030
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3031
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3032
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3033
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 3034
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3041
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3044
    return-object v2

    .line 3026
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3040
    :catchall_0
    move-exception v3

    .line 3041
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3040
    throw v3

    .line 3037
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/ResolveInfo;
    goto :goto_1
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3166
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3169
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3170
    if-eqz p1, :cond_0

    .line 3171
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3172
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3177
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3178
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3179
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3180
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3182
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 3183
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3190
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3193
    return-object v2

    .line 3175
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3189
    :catchall_0
    move-exception v3

    .line 3190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3189
    throw v3

    .line 3186
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/ResolveInfo;
    goto :goto_1
.end method

.method public restoreDefaultApps([BI)V
    .locals 5
    .param p1, "backup"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4008
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4009
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4011
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4012
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4013
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4014
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4015
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4006
    return-void

    .line 4017
    :catchall_0
    move-exception v2

    .line 4018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4017
    throw v2
.end method

.method public restoreIntentFilterVerification([BI)V
    .locals 5
    .param p1, "backup"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4043
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4045
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4046
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4047
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4048
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4049
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4040
    return-void

    .line 4051
    :catchall_0
    move-exception v2

    .line 4052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4051
    throw v2
.end method

.method public restorePreferredActivities([BI)V
    .locals 5
    .param p1, "backup"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3975
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3977
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3978
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3979
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3980
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3981
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3984
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3972
    return-void

    .line 3983
    :catchall_0
    move-exception v2

    .line 3984
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3983
    throw v2
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2728
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2730
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2731
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2732
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2733
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2734
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2735
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2725
    return-void

    .line 2737
    :catchall_0
    move-exception v2

    .line 2738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2737
    throw v2
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4144
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4146
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4148
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4149
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4150
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4151
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4152
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4153
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4141
    return-void

    .line 4155
    :catchall_0
    move-exception v2

    .line 4156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4155
    throw v2
.end method

.method public setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 5042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5043
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5046
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5047
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5048
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5049
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5050
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x85

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5051
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5052
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 5055
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5058
    return v2

    .line 5052
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5054
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5054
    throw v3
.end method

.method public setBlockUninstallForUser(Ljava/lang/String;ZI)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "blockUninstall"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 5098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5099
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5102
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5103
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5104
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5105
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5106
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x88

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5107
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5108
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 5111
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5114
    return v2

    .line 5108
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5110
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5110
    throw v3
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4089
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4091
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4092
    if-eqz p1, :cond_0

    .line 4093
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4094
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4099
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4100
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4101
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4102
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4103
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4086
    return-void

    .line 4097
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4105
    :catchall_0
    move-exception v2

    .line 4106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4105
    throw v2
.end method

.method public setComponentProtectedSetting(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "newState"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5319
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5321
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5322
    if-eqz p1, :cond_0

    .line 5323
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5324
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5329
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5330
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5331
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x93

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5332
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5316
    return-void

    .line 5327
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5334
    :catchall_0
    move-exception v2

    .line 5335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5334
    throw v2

    :cond_1
    move v2, v3

    .line 5329
    goto :goto_1
.end method

.method public setDefaultBrowserPackageName(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4881
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4884
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4885
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4886
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4887
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4888
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4889
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4892
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4895
    return v2

    .line 4889
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4891
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4892
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4891
    throw v3
.end method

.method public setInstallLocation(I)Z
    .locals 6
    .param p1, "loc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4702
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4705
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4706
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4707
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x72

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4708
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4709
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4712
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4715
    return v2

    .line 4709
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4711
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4711
    throw v3
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3560
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3562
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3564
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3565
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3566
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3557
    return-void

    .line 3568
    :catchall_0
    move-exception v2

    .line 3569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3568
    throw v2
.end method

.method public setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "filter"    # Landroid/content/IntentFilter;
    .param p5, "match"    # I
    .param p6, "activity"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3733
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3735
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3736
    if-eqz p1, :cond_0

    .line 3737
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3738
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3743
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3744
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3745
    if-eqz p4, :cond_1

    .line 3746
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3747
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3752
    :goto_1
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3753
    if-eqz p6, :cond_2

    .line 3754
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3755
    const/4 v2, 0x0

    invoke-virtual {p6, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3760
    :goto_2
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3761
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3764
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3730
    return-void

    .line 3741
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3763
    :catchall_0
    move-exception v2

    .line 3764
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3763
    throw v2

    .line 3750
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 3758
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public setPackageStoppedState(Ljava/lang/String;ZI)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stopped"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4191
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4192
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4193
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4194
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4195
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4196
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4186
    return-void

    .line 4198
    :catchall_0
    move-exception v2

    .line 4199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4198
    throw v2
.end method

.method public setPermissionEnforced(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "enforced"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4991
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4993
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4994
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4995
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4996
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x82

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4997
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4988
    return-void

    .line 4999
    :catchall_0
    move-exception v2

    .line 5000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4999
    throw v2
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2815
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2818
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2819
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2820
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2821
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2822
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2823
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2824
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2827
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2830
    return v2

    .line 2824
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2826
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2826
    throw v3
.end method

.method public systemReady()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4448
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4450
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4451
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4452
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4445
    return-void

    .line 4454
    :catchall_0
    move-exception v2

    .line 4455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4454
    throw v2
.end method

.method public unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    .locals 5
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4626
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4628
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4629
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/pm/IPackageMoveObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4630
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4631
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4623
    return-void

    .line 4633
    :catchall_0
    move-exception v2

    .line 4634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4633
    throw v2
.end method

.method public updateExternalMediaStatus(ZZ)V
    .locals 5
    .param p1, "mounted"    # Z
    .param p2, "reportStatus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4548
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4550
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4551
    if-eqz p1, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4552
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4553
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4554
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4545
    return-void

    :cond_0
    move v4, v3

    .line 4551
    goto :goto_0

    :cond_1
    move v2, v3

    .line 4552
    goto :goto_1

    .line 4556
    :catchall_0
    move-exception v2

    .line 4557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4556
    throw v2
.end method

.method public updateIconMapping(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5343
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5345
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5347
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x94

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5348
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5340
    return-void

    .line 5350
    :catchall_0
    move-exception v2

    .line 5351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5350
    throw v2
.end method

.method public updateIntentVerificationStatus(Ljava/lang/String;II)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4825
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4828
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4829
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4830
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4831
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4832
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x79

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4833
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4834
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4837
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4840
    return v2

    .line 4834
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4836
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4836
    throw v3
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 5
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2779
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2781
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2782
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2783
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2784
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2785
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2786
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2787
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2788
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2776
    return-void

    .line 2790
    :catchall_0
    move-exception v2

    .line 2791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2790
    throw v2
.end method

.method public updatePermissionFlagsForAllApps(III)V
    .locals 5
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2798
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2800
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2801
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2802
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2803
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2804
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2805
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2808
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2795
    return-void

    .line 2807
    :catchall_0
    move-exception v2

    .line 2808
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2807
    throw v2
.end method

.method public verifyIntentFilter(IILjava/util/List;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "verificationCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4788
    .local p3, "failedDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4789
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4791
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4792
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4793
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4794
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4795
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4796
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4786
    return-void

    .line 4798
    :catchall_0
    move-exception v2

    .line 4799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4798
    throw v2
.end method

.method public verifyPendingInstall(II)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "verificationCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4756
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4758
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4759
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4760
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4761
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x75

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4762
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4753
    return-void

    .line 4764
    :catchall_0
    move-exception v2

    .line 4765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4764
    throw v2
.end method
