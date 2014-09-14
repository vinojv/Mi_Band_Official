.class public interface abstract Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile;
.super Ljava/lang/Object;


# static fields
.field public static final ALIAS_LEN:I = 0xa

.field public static final NOTIFY_AUTHENTICATION_FAILED:I = 0x6

.field public static final NOTIFY_AUTHENTICATION_SUCCESS:I = 0x5

.field public static final NOTIFY_CONN_PARAM_UPDATE_FAILED:I = 0x3

.field public static final NOTIFY_CONN_PARAM_UPDATE_SUCCESS:I = 0x4

.field public static final NOTIFY_DEVICE_MALFUNCTION:I = 0xff

.field public static final NOTIFY_FIRMWARE_UPDATE_FAILED:I = 0x1

.field public static final NOTIFY_FIRMWARE_UPDATE_SUCCESS:I = 0x2

.field public static final NOTIFY_FITNESS_GOAL_ACHIEVED:I = 0x7

.field public static final NOTIFY_FW_CHECK_FAILED:I = 0xb

.field public static final NOTIFY_FW_CHECK_SUCCESS:I = 0xc

.field public static final NOTIFY_LOW_BATTERY:I = 0x11

.field public static final NOTIFY_NORMAL:I = 0x0

.field public static final NOTIFY_PAIR_CANCEL:I = 0xd

.field public static final NOTIFY_RESET_AUTHENTICATION_FAILED:I = 0x9

.field public static final NOTIFY_RESET_AUTHENTICATION_SUCCESS:I = 0xa

.field public static final NOTIFY_SET_LATENCY_SUCCESS:I = 0x8

.field public static final NOTIFY_UNKNOWN:I = -0x1

.field public static final UUID_CHARACTERISTIC_ACTIVITY_DATA:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_BATTERY:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_DATE_TIME:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_DEVICE_INFO:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_DEVICE_NAME:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_FIRMWARE_DATA:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_LE_PARAMS:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_NOTIFICATION:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_REALTIME_STEPS:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_STATISTICS:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_TEST:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_USER_INFO:Ljava/util/UUID;

.field public static final UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

.field public static final UUID_SERVICE_MILI_SERVICE128:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "2c7de9fb-f2f1-4a72-9d6d-8922db3f1550"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Helper;->UUID128(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile;->UUID_SERVICE_MILI_SERVICE128:Ljava/util/UUID;

    const-string v0, "FEE0"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Helper;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    const-string v0, "FF01"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Helper;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile;->UUID_CHARACTERISTIC_DEVICE_INFO:Ljava/util/UUID;

    const-string v0, "FF02"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Helper;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile;->UUID_CHARACTERISTIC_DEVICE_NAME:Ljava/util/UUID;

    const-string v0, "FF03"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Helper;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile;->UUID_CHARACTERISTIC_NOTIFICATION:Ljava/util/UUID;

    const-string v0, "FF04"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Helper;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile;->UUID_CHARACTERISTIC_USER_INFO:Ljava/util/UUID;

    const-string v0, "FF05"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Helper;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile;->UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

    const-string v0, "FF06"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Helper;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile;->UUID_CHARACTERISTIC_REALTIME_STEPS:Ljava/util/UUID;

    const-string v0, "FF07"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Helper;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile;->UUID_CHARACTERISTIC_ACTIVITY_DATA:Ljava/util/UUID;

    const-string v0, "FF08"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Helper;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile;->UUID_CHARACTERISTIC_FIRMWARE_DATA:Ljava/util/UUID;

    const-string v0, "FF09"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Helper;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile;->UUID_CHARACTERISTIC_LE_PARAMS:Ljava/util/UUID;

    const-string v0, "FF0A"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Helper;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile;->UUID_CHARACTERISTIC_DATE_TIME:Ljava/util/UUID;

    const-string v0, "FF0B"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Helper;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile;->UUID_CHARACTERISTIC_STATISTICS:Ljava/util/UUID;

    const-string v0, "FF0C"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Helper;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile;->UUID_CHARACTERISTIC_BATTERY:Ljava/util/UUID;

    const-string v0, "FF0D"

    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/util/Helper;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile;->UUID_CHARACTERISTIC_TEST:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$UserInfo;)Z
.end method

.method public abstract enableRealtimeStepNotification(ZLcom/xiaomi/hm/bleservice/profile/IMiLiProfile$IRealtimeStepsChangedCB;)Z
.end method

.method public abstract getActivities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$ActivityDataFragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActivitySyncingProgress()Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;
.end method

.method public abstract getDeviceInfo()Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;
.end method

.method public abstract getFirmwareUpdatingProgress()Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;
.end method

.method public abstract getRealtimeSteps()I
.end method

.method public abstract setGoal(BI)Z
.end method

.method public abstract setTimer(BBLjava/util/Calendar;BB)Z
.end method

.method public abstract setUserInfo(Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$UserInfo;)Z
.end method

.method public abstract updateFirmware(III[B)Z
.end method