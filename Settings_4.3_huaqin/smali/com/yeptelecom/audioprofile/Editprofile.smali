.class public Lcom/yeptelecom/audioprofile/Editprofile;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Editprofile.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field protected static multiSimConfig:Ljava/lang/String;


# instance fields
.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mCurOrientation:I

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mEmergencyTone:Landroid/preference/ListPreference;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mIsSilentMode:Z

.field private mKey:Ljava/lang/String;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

.field private mSettingsCursor:Landroid/database/Cursor;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private mVibrat:Landroid/preference/CheckBoxPreference;

.field private mVolumePref:Lcom/yeptelecom/audioprofile/RingerVolumePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-string v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yeptelecom/audioprofile/Editprofile;->multiSimConfig:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/yeptelecom/audioprofile/Editprofile;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/yeptelecom/audioprofile/Editprofile;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yeptelecom/audioprofile/Editprofile;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/yeptelecom/audioprofile/Editprofile;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/Editprofile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private initPreference()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/Editprofile;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 224
    .local v1, "parent":Landroid/preference/PreferenceScreen;
    const-string v7, "phone_vibrate"

    invoke-virtual {p0, v7}, Lcom/yeptelecom/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    .line 225
    const-string v7, "audible_touch_tones"

    invoke-virtual {p0, v7}, Lcom/yeptelecom/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 226
    const-string v7, "audible_selection"

    invoke-virtual {p0, v7}, Lcom/yeptelecom/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 227
    const-string v7, "screen_lock_sounds"

    invoke-virtual {p0, v7}, Lcom/yeptelecom/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 228
    const-string v7, "haptic_feedback"

    invoke-virtual {p0, v7}, Lcom/yeptelecom/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 229
    const-string v7, "emergency_tone"

    invoke-virtual {p0, v7}, Lcom/yeptelecom/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mEmergencyTone:Landroid/preference/ListPreference;

    .line 230
    const-string v7, "ring_volume"

    invoke-virtual {p0, v7}, Lcom/yeptelecom/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    iput-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mVolumePref:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    .line 231
    const-string v7, "ringtone"

    invoke-virtual {p0, v7}, Lcom/yeptelecom/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 232
    .local v3, "parentRingtone":Landroid/preference/PreferenceGroup;
    const-string v7, "notifications"

    invoke-virtual {p0, v7}, Lcom/yeptelecom/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 233
    .local v2, "parentNotify":Landroid/preference/PreferenceGroup;
    const-string v7, "notifications_ringtone"

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;

    .line 237
    .local v0, "notify":Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;
    iget-boolean v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mIsSilentMode:Z

    if-eqz v7, :cond_1

    .line 238
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mVolumePref:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 242
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 243
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mVolumePref:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    if-eqz v7, :cond_2

    .line 248
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mVolumePref:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    iget-object v8, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->setProfile(Ljava/lang/String;)V

    .line 251
    :cond_2
    if-eqz v0, :cond_3

    .line 252
    const-string v7, "NOTIFICATION"

    invoke-virtual {v0, v7}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 253
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 254
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 257
    :cond_3
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/Editprofile;->isVoiceCapable()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 258
    const-string v7, "phone_ringtone"

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;

    .line 260
    .local v5, "voiceRingtone":Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;
    const-string v7, "phone_ringtone_2"

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;

    .line 263
    .local v6, "voiceRingtone2":Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;
    if-eqz v5, :cond_4

    .line 264
    const-string v7, "RING"

    invoke-virtual {v5, v7}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 266
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v5, v10}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 271
    :cond_4
    if-eqz v6, :cond_5

    .line 272
    const-string v7, "RING"

    invoke-virtual {v6, v7}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 274
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 275
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 281
    :cond_5
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/Editprofile;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 282
    const-string v7, "phone_msim"

    invoke-virtual {p0, v7}, Lcom/yeptelecom/audioprofile/Editprofile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/MSimTelephonyManager;

    .line 285
    .local v4, "tm":Landroid/telephony/MSimTelephonyManager;
    if-eqz v5, :cond_6

    .line 286
    const v7, 0x7f0b0801

    invoke-virtual {v5, v7}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->setTitle(I)V

    .line 287
    const v7, 0x7f0b0802

    invoke-virtual {v5, v7}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->setSummary(I)V

    .line 288
    invoke-virtual {v4, v9}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 289
    invoke-virtual {v5, v9}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->setEnabled(Z)V

    .line 293
    :cond_6
    invoke-virtual {v4, v10}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 295
    if-eqz v6, :cond_0

    .line 296
    invoke-virtual {v6, v9}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 300
    .end local v4    # "tm":Landroid/telephony/MSimTelephonyManager;
    :cond_7
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v7

    if-nez v7, :cond_9

    .line 302
    if-eqz v5, :cond_8

    .line 303
    invoke-virtual {v5, v9}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->setEnabled(Z)V

    .line 307
    :cond_8
    if-eqz v6, :cond_9

    .line 308
    invoke-virtual {v6, v9}, Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;->setEnabled(Z)V

    .line 312
    :cond_9
    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 316
    .end local v5    # "voiceRingtone":Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;
    .end local v6    # "voiceRingtone2":Lcom/yeptelecom/audioprofile/DefaultRingtonePreference;
    :cond_a
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/Editprofile;->isSmsCapable()Z

    move-result v7

    if-nez v7, :cond_b

    .line 317
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 319
    :cond_b
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 320
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method private isSmsCapable()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceCapable()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePreference()V
    .locals 5

    .prologue
    .line 328
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getVibrationEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 329
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getDtmfToneEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 330
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getSoundEffectEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 331
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getLockScreenEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 332
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getHapticFeedbackEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 335
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 337
    .local v0, "activePhoneType":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mEmergencyTone:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mEmergencyTone:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getEmergencyToneValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mEmergencyTone:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mVolumePref:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mVolumePref:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    invoke-virtual {v1}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->revertVolume()V

    .line 347
    :cond_1
    return-void
.end method


# virtual methods
.method public isMultiSimEnabled()Z
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcom/yeptelecom/audioprofile/Editprofile;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yeptelecom/audioprofile/Editprofile;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yeptelecom/audioprofile/Editprofile;->multiSimConfig:Ljava/lang/String;

    const-string v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 434
    const-string v0, "Settings/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCurOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mCurOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 437
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mCurOrientation:I

    if-eq v0, v1, :cond_0

    .line 438
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mCurOrientation:I

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/Editprofile;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    .line 441
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 117
    .local v0, "activePhoneType":I
    const v5, 0x7f050015

    invoke-virtual {p0, v5}, Lcom/yeptelecom/audioprofile/Editprofile;->addPreferencesFromResource(I)V

    .line 118
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/yeptelecom/audioprofile/Editprofile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 120
    const/4 v5, 0x2

    if-eq v5, v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/Editprofile;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "emergency_tone"

    invoke-virtual {p0, v6}, Lcom/yeptelecom/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/Editprofile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 126
    .local v2, "parentActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v4, 0x1

    .line 129
    .local v4, "singlePane":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 130
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, ":android:show_fragment_args"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 135
    .local v1, "bundle":Landroid/os/Bundle;
    :goto_1
    const-string v5, "Settings/EditProfile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate activity = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",singlePane = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",bundle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v5, "profileKey"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    .line 140
    const-string v5, "audioprofile"

    invoke-virtual {p0, v5}, Lcom/yeptelecom/audioprofile/Editprofile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    .line 141
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-static {v5}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v3

    .line 143
    .local v3, "scenario":Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    sget-object v5, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v5}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mIsSilentMode:Z

    .line 144
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/Editprofile;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mCurOrientation:I

    .line 146
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/Editprofile;->initPreference()V

    .line 147
    return-void

    .line 126
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "scenario":Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    .end local v4    # "singlePane":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 133
    .restart local v4    # "singlePane":Z
    :cond_3
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/Editprofile;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 192
    const-string v0, "Settings/EditProfile"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mVolumePref:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "Settings/EditProfile"

    const-string v1, "pref is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mVolumePref:Lcom/yeptelecom/audioprofile/RingerVolumePreference;

    invoke-virtual {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->stopPlaying()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    .line 206
    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 350
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "key":Ljava/lang/String;
    const-string v3, "emergency_tone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 354
    .local v2, "value":I
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setEmergencyToneValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v2    # "value":I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Settings/EditProfile"

    const-string v4, "could not persist emergency tone setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 408
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone_vibrate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 410
    .local v0, "isVibrate":Z
    const-string v1, "Settings/EditProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set vibrate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setVibrationEnabled(Ljava/lang/String;Z)V

    .line 423
    .end local v0    # "isVibrate":Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 412
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audible_touch_tones"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setDtmfToneEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audible_selection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 415
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setSoundEffectEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 417
    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_lock_sounds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 418
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setLockScreenEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 419
    :cond_4
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "haptic_feedback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 368
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 370
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/Editprofile;->updatePreference()V

    .line 372
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "name":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mIsSilentMode:Z

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    if-nez v1, :cond_0

    .line 375
    new-instance v1, Lcom/yeptelecom/audioprofile/Editprofile$1;

    invoke-direct {v1, p0, v0}, Lcom/yeptelecom/audioprofile/Editprofile$1;-><init>(Lcom/yeptelecom/audioprofile/Editprofile;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    .line 392
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v1, v2}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 395
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 174
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 176
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/Editprofile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    .line 180
    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-direct {v0, v1, v3, v7, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 182
    return-void
.end method
