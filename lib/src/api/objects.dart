import 'base_classes.dart';
import 'utils.dart';

@reflector
class Error extends TdObject {
  @override
  String get tdType => 'error';

  int code;
  String message;

  @override
  Map<String, dynamic> get params => {
    'code': code,
    'message': message,
  };

  Error({
    this.code,
    this.message,
  });

  Error.fromJson(Map<String, dynamic> json) {
    code = tryConvertToTdObject(json['code']);
    message = tryConvertToTdObject(json['message']);
  }
}

@reflector
class Ok extends TdObject {
  @override
  String get tdType => 'ok';

  @override
  Map<String, dynamic> get params => {};

  Ok();

  Ok.fromJson(Map<String, dynamic> json);
}

@reflector
class TdlibParameters extends TdObject {
  @override
  String get tdType => 'tdlibParameters';

  bool useTestDc;
  String databaseDirectory;
  String filesDirectory;
  bool useFileDatabase;
  bool useChatInfoDatabase;
  bool useMessageDatabase;
  bool useSecretChats;
  int apiId;
  String apiHash;
  String systemLanguageCode;
  String deviceModel;
  String systemVersion;
  String applicationVersion;
  bool enableStorageOptimizer;
  bool ignoreFileNames;

  @override
  Map<String, dynamic> get params => {
    'use_test_dc': useTestDc,
    'database_directory': databaseDirectory,
    'files_directory': filesDirectory,
    'use_file_database': useFileDatabase,
    'use_chat_info_database': useChatInfoDatabase,
    'use_message_database': useMessageDatabase,
    'use_secret_chats': useSecretChats,
    'api_id': apiId,
    'api_hash': apiHash,
    'system_language_code': systemLanguageCode,
    'device_model': deviceModel,
    'system_version': systemVersion,
    'application_version': applicationVersion,
    'enable_storage_optimizer': enableStorageOptimizer,
    'ignore_file_names': ignoreFileNames,
  };

  TdlibParameters({
    this.useTestDc,
    this.databaseDirectory,
    this.filesDirectory,
    this.useFileDatabase,
    this.useChatInfoDatabase,
    this.useMessageDatabase,
    this.useSecretChats,
    this.apiId,
    this.apiHash,
    this.systemLanguageCode,
    this.deviceModel,
    this.systemVersion,
    this.applicationVersion,
    this.enableStorageOptimizer,
    this.ignoreFileNames,
  });

  TdlibParameters.fromJson(Map<String, dynamic> json) {
    useTestDc = tryConvertToTdObject(json['use_test_dc']);
    databaseDirectory = tryConvertToTdObject(json['database_directory']);
    filesDirectory = tryConvertToTdObject(json['files_directory']);
    useFileDatabase = tryConvertToTdObject(json['use_file_database']);
    useChatInfoDatabase = tryConvertToTdObject(json['use_chat_info_database']);
    useMessageDatabase = tryConvertToTdObject(json['use_message_database']);
    useSecretChats = tryConvertToTdObject(json['use_secret_chats']);
    apiId = tryConvertToTdObject(json['api_id']);
    apiHash = tryConvertToTdObject(json['api_hash']);
    systemLanguageCode = tryConvertToTdObject(json['system_language_code']);
    deviceModel = tryConvertToTdObject(json['device_model']);
    systemVersion = tryConvertToTdObject(json['system_version']);
    applicationVersion = tryConvertToTdObject(json['application_version']);
    enableStorageOptimizer = tryConvertToTdObject(json['enable_storage_optimizer']);
    ignoreFileNames = tryConvertToTdObject(json['ignore_file_names']);
  }
}

abstract class AuthenticationCodeType extends TdObject {}

@reflector
class AuthenticationCodeTypeTelegramMessage extends AuthenticationCodeType {
  @override
  String get tdType => 'authenticationCodeTypeTelegramMessage';

  int length;

  @override
  Map<String, dynamic> get params => {
    'length': length,
  };

  AuthenticationCodeTypeTelegramMessage({
    this.length,
  });

  AuthenticationCodeTypeTelegramMessage.fromJson(Map<String, dynamic> json) {
    length = tryConvertToTdObject(json['length']);
  }
}

@reflector
class AuthenticationCodeTypeSms extends AuthenticationCodeType {
  @override
  String get tdType => 'authenticationCodeTypeSms';

  int length;

  @override
  Map<String, dynamic> get params => {
    'length': length,
  };

  AuthenticationCodeTypeSms({
    this.length,
  });

  AuthenticationCodeTypeSms.fromJson(Map<String, dynamic> json) {
    length = tryConvertToTdObject(json['length']);
  }
}

@reflector
class AuthenticationCodeTypeCall extends AuthenticationCodeType {
  @override
  String get tdType => 'authenticationCodeTypeCall';

  int length;

  @override
  Map<String, dynamic> get params => {
    'length': length,
  };

  AuthenticationCodeTypeCall({
    this.length,
  });

  AuthenticationCodeTypeCall.fromJson(Map<String, dynamic> json) {
    length = tryConvertToTdObject(json['length']);
  }
}

@reflector
class AuthenticationCodeTypeFlashCall extends AuthenticationCodeType {
  @override
  String get tdType => 'authenticationCodeTypeFlashCall';

  String pattern;

  @override
  Map<String, dynamic> get params => {
    'pattern': pattern,
  };

  AuthenticationCodeTypeFlashCall({
    this.pattern,
  });

  AuthenticationCodeTypeFlashCall.fromJson(Map<String, dynamic> json) {
    pattern = tryConvertToTdObject(json['pattern']);
  }
}

@reflector
class AuthenticationCodeInfo extends TdObject {
  @override
  String get tdType => 'authenticationCodeInfo';

  String phoneNumber;
  AuthenticationCodeType type;
  AuthenticationCodeType nextType;
  int timeout;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
    'type': type,
    'next_type': nextType,
    'timeout': timeout,
  };

  AuthenticationCodeInfo({
    this.phoneNumber,
    this.type,
    this.nextType,
    this.timeout,
  });

  AuthenticationCodeInfo.fromJson(Map<String, dynamic> json) {
    phoneNumber = tryConvertToTdObject(json['phone_number']);
    type = tryConvertToTdObject(json['type']);
    nextType = tryConvertToTdObject(json['next_type']);
    timeout = tryConvertToTdObject(json['timeout']);
  }
}

@reflector
class EmailAddressAuthenticationCodeInfo extends TdObject {
  @override
  String get tdType => 'emailAddressAuthenticationCodeInfo';

  String emailAddressPattern;
  int length;

  @override
  Map<String, dynamic> get params => {
    'email_address_pattern': emailAddressPattern,
    'length': length,
  };

  EmailAddressAuthenticationCodeInfo({
    this.emailAddressPattern,
    this.length,
  });

  EmailAddressAuthenticationCodeInfo.fromJson(Map<String, dynamic> json) {
    emailAddressPattern = tryConvertToTdObject(json['email_address_pattern']);
    length = tryConvertToTdObject(json['length']);
  }
}

@reflector
class TextEntity extends TdObject {
  @override
  String get tdType => 'textEntity';

  int offset;
  int length;
  TextEntityType type;

  @override
  Map<String, dynamic> get params => {
    'offset': offset,
    'length': length,
    'type': type,
  };

  TextEntity({
    this.offset,
    this.length,
    this.type,
  });

  TextEntity.fromJson(Map<String, dynamic> json) {
    offset = tryConvertToTdObject(json['offset']);
    length = tryConvertToTdObject(json['length']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class TextEntities extends TdObject {
  @override
  String get tdType => 'textEntities';

  List<TextEntity> entities;

  @override
  Map<String, dynamic> get params => {
    'entities': entities,
  };

  TextEntities({
    this.entities,
  });

  TextEntities.fromJson(Map<String, dynamic> json) {
    entities = tryConvertToTdObject(json['entities']);
  }
}

@reflector
class FormattedText extends TdObject {
  @override
  String get tdType => 'formattedText';

  String text;
  List<TextEntity> entities;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'entities': entities,
  };

  FormattedText({
    this.text,
    this.entities,
  });

  FormattedText.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    entities = tryConvertToTdObject(json['entities']);
  }
}

@reflector
class TermsOfService extends TdObject {
  @override
  String get tdType => 'termsOfService';

  FormattedText text;
  int minUserAge;
  bool showPopup;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'min_user_age': minUserAge,
    'show_popup': showPopup,
  };

  TermsOfService({
    this.text,
    this.minUserAge,
    this.showPopup,
  });

  TermsOfService.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    minUserAge = tryConvertToTdObject(json['min_user_age']);
    showPopup = tryConvertToTdObject(json['show_popup']);
  }
}

abstract class AuthorizationState extends TdObject {}

@reflector
class AuthorizationStateWaitTdlibParameters extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitTdlibParameters';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateWaitTdlibParameters();

  AuthorizationStateWaitTdlibParameters.fromJson(Map<String, dynamic> json);
}

@reflector
class AuthorizationStateWaitEncryptionKey extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitEncryptionKey';

  bool isEncrypted;

  @override
  Map<String, dynamic> get params => {
    'is_encrypted': isEncrypted,
  };

  AuthorizationStateWaitEncryptionKey({
    this.isEncrypted,
  });

  AuthorizationStateWaitEncryptionKey.fromJson(Map<String, dynamic> json) {
    isEncrypted = tryConvertToTdObject(json['is_encrypted']);
  }
}

@reflector
class AuthorizationStateWaitPhoneNumber extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitPhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateWaitPhoneNumber();

  AuthorizationStateWaitPhoneNumber.fromJson(Map<String, dynamic> json);
}

@reflector
class AuthorizationStateWaitCode extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitCode';

  AuthenticationCodeInfo codeInfo;

  @override
  Map<String, dynamic> get params => {
    'code_info': codeInfo,
  };

  AuthorizationStateWaitCode({
    this.codeInfo,
  });

  AuthorizationStateWaitCode.fromJson(Map<String, dynamic> json) {
    codeInfo = tryConvertToTdObject(json['code_info']);
  }
}

@reflector
class AuthorizationStateWaitRegistration extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitRegistration';

  TermsOfService termsOfService;

  @override
  Map<String, dynamic> get params => {
    'terms_of_service': termsOfService,
  };

  AuthorizationStateWaitRegistration({
    this.termsOfService,
  });

  AuthorizationStateWaitRegistration.fromJson(Map<String, dynamic> json) {
    termsOfService = tryConvertToTdObject(json['terms_of_service']);
  }
}

@reflector
class AuthorizationStateWaitPassword extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitPassword';

  String passwordHint;
  bool hasRecoveryEmailAddress;
  String recoveryEmailAddressPattern;

  @override
  Map<String, dynamic> get params => {
    'password_hint': passwordHint,
    'has_recovery_email_address': hasRecoveryEmailAddress,
    'recovery_email_address_pattern': recoveryEmailAddressPattern,
  };

  AuthorizationStateWaitPassword({
    this.passwordHint,
    this.hasRecoveryEmailAddress,
    this.recoveryEmailAddressPattern,
  });

  AuthorizationStateWaitPassword.fromJson(Map<String, dynamic> json) {
    passwordHint = tryConvertToTdObject(json['password_hint']);
    hasRecoveryEmailAddress = tryConvertToTdObject(json['has_recovery_email_address']);
    recoveryEmailAddressPattern = tryConvertToTdObject(json['recovery_email_address_pattern']);
  }
}

@reflector
class AuthorizationStateReady extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateReady';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateReady();

  AuthorizationStateReady.fromJson(Map<String, dynamic> json);
}

@reflector
class AuthorizationStateLoggingOut extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateLoggingOut';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateLoggingOut();

  AuthorizationStateLoggingOut.fromJson(Map<String, dynamic> json);
}

@reflector
class AuthorizationStateClosing extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateClosing';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateClosing();

  AuthorizationStateClosing.fromJson(Map<String, dynamic> json);
}

@reflector
class AuthorizationStateClosed extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateClosed';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateClosed();

  AuthorizationStateClosed.fromJson(Map<String, dynamic> json);
}

@reflector
class PasswordState extends TdObject {
  @override
  String get tdType => 'passwordState';

  bool hasPassword;
  String passwordHint;
  bool hasRecoveryEmailAddress;
  bool hasPassportData;
  EmailAddressAuthenticationCodeInfo recoveryEmailAddressCodeInfo;

  @override
  Map<String, dynamic> get params => {
    'has_password': hasPassword,
    'password_hint': passwordHint,
    'has_recovery_email_address': hasRecoveryEmailAddress,
    'has_passport_data': hasPassportData,
    'recovery_email_address_code_info': recoveryEmailAddressCodeInfo,
  };

  PasswordState({
    this.hasPassword,
    this.passwordHint,
    this.hasRecoveryEmailAddress,
    this.hasPassportData,
    this.recoveryEmailAddressCodeInfo,
  });

  PasswordState.fromJson(Map<String, dynamic> json) {
    hasPassword = tryConvertToTdObject(json['has_password']);
    passwordHint = tryConvertToTdObject(json['password_hint']);
    hasRecoveryEmailAddress = tryConvertToTdObject(json['has_recovery_email_address']);
    hasPassportData = tryConvertToTdObject(json['has_passport_data']);
    recoveryEmailAddressCodeInfo = tryConvertToTdObject(json['recovery_email_address_code_info']);
  }
}

@reflector
class RecoveryEmailAddress extends TdObject {
  @override
  String get tdType => 'recoveryEmailAddress';

  String recoveryEmailAddress;

  @override
  Map<String, dynamic> get params => {
    'recovery_email_address': recoveryEmailAddress,
  };

  RecoveryEmailAddress({
    this.recoveryEmailAddress,
  });

  RecoveryEmailAddress.fromJson(Map<String, dynamic> json) {
    recoveryEmailAddress = tryConvertToTdObject(json['recovery_email_address']);
  }
}

@reflector
class TemporaryPasswordState extends TdObject {
  @override
  String get tdType => 'temporaryPasswordState';

  bool hasPassword;
  int validFor;

  @override
  Map<String, dynamic> get params => {
    'has_password': hasPassword,
    'valid_for': validFor,
  };

  TemporaryPasswordState({
    this.hasPassword,
    this.validFor,
  });

  TemporaryPasswordState.fromJson(Map<String, dynamic> json) {
    hasPassword = tryConvertToTdObject(json['has_password']);
    validFor = tryConvertToTdObject(json['valid_for']);
  }
}

@reflector
class LocalFile extends TdObject {
  @override
  String get tdType => 'localFile';

  String path;
  bool canBeDownloaded;
  bool canBeDeleted;
  bool isDownloadingActive;
  bool isDownloadingCompleted;
  int downloadOffset;
  int downloadedPrefixSize;
  int downloadedSize;

  @override
  Map<String, dynamic> get params => {
    'path': path,
    'can_be_downloaded': canBeDownloaded,
    'can_be_deleted': canBeDeleted,
    'is_downloading_active': isDownloadingActive,
    'is_downloading_completed': isDownloadingCompleted,
    'download_offset': downloadOffset,
    'downloaded_prefix_size': downloadedPrefixSize,
    'downloaded_size': downloadedSize,
  };

  LocalFile({
    this.path,
    this.canBeDownloaded,
    this.canBeDeleted,
    this.isDownloadingActive,
    this.isDownloadingCompleted,
    this.downloadOffset,
    this.downloadedPrefixSize,
    this.downloadedSize,
  });

  LocalFile.fromJson(Map<String, dynamic> json) {
    path = tryConvertToTdObject(json['path']);
    canBeDownloaded = tryConvertToTdObject(json['can_be_downloaded']);
    canBeDeleted = tryConvertToTdObject(json['can_be_deleted']);
    isDownloadingActive = tryConvertToTdObject(json['is_downloading_active']);
    isDownloadingCompleted = tryConvertToTdObject(json['is_downloading_completed']);
    downloadOffset = tryConvertToTdObject(json['download_offset']);
    downloadedPrefixSize = tryConvertToTdObject(json['downloaded_prefix_size']);
    downloadedSize = tryConvertToTdObject(json['downloaded_size']);
  }
}

@reflector
class RemoteFile extends TdObject {
  @override
  String get tdType => 'remoteFile';

  String id;
  bool isUploadingActive;
  bool isUploadingCompleted;
  int uploadedSize;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'is_uploading_active': isUploadingActive,
    'is_uploading_completed': isUploadingCompleted,
    'uploaded_size': uploadedSize,
  };

  RemoteFile({
    this.id,
    this.isUploadingActive,
    this.isUploadingCompleted,
    this.uploadedSize,
  });

  RemoteFile.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    isUploadingActive = tryConvertToTdObject(json['is_uploading_active']);
    isUploadingCompleted = tryConvertToTdObject(json['is_uploading_completed']);
    uploadedSize = tryConvertToTdObject(json['uploaded_size']);
  }
}

@reflector
class File extends TdObject {
  @override
  String get tdType => 'file';

  int id;
  int size;
  int expectedSize;
  LocalFile local;
  RemoteFile remote;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'size': size,
    'expected_size': expectedSize,
    'local': local,
    'remote': remote,
  };

  File({
    this.id,
    this.size,
    this.expectedSize,
    this.local,
    this.remote,
  });

  File.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    size = tryConvertToTdObject(json['size']);
    expectedSize = tryConvertToTdObject(json['expected_size']);
    local = tryConvertToTdObject(json['local']);
    remote = tryConvertToTdObject(json['remote']);
  }
}

abstract class InputFile extends TdObject {}

@reflector
class InputFileId extends InputFile {
  @override
  String get tdType => 'inputFileId';

  int id;

  @override
  Map<String, dynamic> get params => {
    'id': id,
  };

  InputFileId({
    this.id,
  });

  InputFileId.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
  }
}

@reflector
class InputFileRemote extends InputFile {
  @override
  String get tdType => 'inputFileRemote';

  String id;

  @override
  Map<String, dynamic> get params => {
    'id': id,
  };

  InputFileRemote({
    this.id,
  });

  InputFileRemote.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
  }
}

@reflector
class InputFileLocal extends InputFile {
  @override
  String get tdType => 'inputFileLocal';

  String path;

  @override
  Map<String, dynamic> get params => {
    'path': path,
  };

  InputFileLocal({
    this.path,
  });

  InputFileLocal.fromJson(Map<String, dynamic> json) {
    path = tryConvertToTdObject(json['path']);
  }
}

@reflector
class InputFileGenerated extends InputFile {
  @override
  String get tdType => 'inputFileGenerated';

  String originalPath;
  String conversion;
  int expectedSize;

  @override
  Map<String, dynamic> get params => {
    'original_path': originalPath,
    'conversion': conversion,
    'expected_size': expectedSize,
  };

  InputFileGenerated({
    this.originalPath,
    this.conversion,
    this.expectedSize,
  });

  InputFileGenerated.fromJson(Map<String, dynamic> json) {
    originalPath = tryConvertToTdObject(json['original_path']);
    conversion = tryConvertToTdObject(json['conversion']);
    expectedSize = tryConvertToTdObject(json['expected_size']);
  }
}

@reflector
class PhotoSize extends TdObject {
  @override
  String get tdType => 'photoSize';

  String type;
  File photo;
  int width;
  int height;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'photo': photo,
    'width': width,
    'height': height,
  };

  PhotoSize({
    this.type,
    this.photo,
    this.width,
    this.height,
  });

  PhotoSize.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
    photo = tryConvertToTdObject(json['photo']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
  }
}

@reflector
class Minithumbnail extends TdObject {
  @override
  String get tdType => 'minithumbnail';

  int width;
  int height;
  String data;

  @override
  Map<String, dynamic> get params => {
    'width': width,
    'height': height,
    'data': data,
  };

  Minithumbnail({
    this.width,
    this.height,
    this.data,
  });

  Minithumbnail.fromJson(Map<String, dynamic> json) {
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    data = tryConvertToTdObject(json['data']);
  }
}

abstract class MaskPoint extends TdObject {}

@reflector
class MaskPointForehead extends MaskPoint {
  @override
  String get tdType => 'maskPointForehead';

  @override
  Map<String, dynamic> get params => {};

  MaskPointForehead();

  MaskPointForehead.fromJson(Map<String, dynamic> json);
}

@reflector
class MaskPointEyes extends MaskPoint {
  @override
  String get tdType => 'maskPointEyes';

  @override
  Map<String, dynamic> get params => {};

  MaskPointEyes();

  MaskPointEyes.fromJson(Map<String, dynamic> json);
}

@reflector
class MaskPointMouth extends MaskPoint {
  @override
  String get tdType => 'maskPointMouth';

  @override
  Map<String, dynamic> get params => {};

  MaskPointMouth();

  MaskPointMouth.fromJson(Map<String, dynamic> json);
}

@reflector
class MaskPointChin extends MaskPoint {
  @override
  String get tdType => 'maskPointChin';

  @override
  Map<String, dynamic> get params => {};

  MaskPointChin();

  MaskPointChin.fromJson(Map<String, dynamic> json);
}

@reflector
class MaskPosition extends TdObject {
  @override
  String get tdType => 'maskPosition';

  MaskPoint point;
  double xShift;
  double yShift;
  double scale;

  @override
  Map<String, dynamic> get params => {
    'point': point,
    'x_shift': xShift,
    'y_shift': yShift,
    'scale': scale,
  };

  MaskPosition({
    this.point,
    this.xShift,
    this.yShift,
    this.scale,
  });

  MaskPosition.fromJson(Map<String, dynamic> json) {
    point = tryConvertToTdObject(json['point']);
    xShift = tryConvertToTdObject(json['x_shift']);
    yShift = tryConvertToTdObject(json['y_shift']);
    scale = tryConvertToTdObject(json['scale']);
  }
}

@reflector
class PollOption extends TdObject {
  @override
  String get tdType => 'pollOption';

  String text;
  int voterCount;
  int votePercentage;
  bool isChosen;
  bool isBeingChosen;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'voter_count': voterCount,
    'vote_percentage': votePercentage,
    'is_chosen': isChosen,
    'is_being_chosen': isBeingChosen,
  };

  PollOption({
    this.text,
    this.voterCount,
    this.votePercentage,
    this.isChosen,
    this.isBeingChosen,
  });

  PollOption.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    voterCount = tryConvertToTdObject(json['voter_count']);
    votePercentage = tryConvertToTdObject(json['vote_percentage']);
    isChosen = tryConvertToTdObject(json['is_chosen']);
    isBeingChosen = tryConvertToTdObject(json['is_being_chosen']);
  }
}

@reflector
class Animation extends TdObject {
  @override
  String get tdType => 'animation';

  int duration;
  int width;
  int height;
  String fileName;
  String mimeType;
  Minithumbnail minithumbnail;
  PhotoSize thumbnail;
  File animation;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
    'width': width,
    'height': height,
    'file_name': fileName,
    'mime_type': mimeType,
    'minithumbnail': minithumbnail,
    'thumbnail': thumbnail,
    'animation': animation,
  };

  Animation({
    this.duration,
    this.width,
    this.height,
    this.fileName,
    this.mimeType,
    this.minithumbnail,
    this.thumbnail,
    this.animation,
  });

  Animation.fromJson(Map<String, dynamic> json) {
    duration = tryConvertToTdObject(json['duration']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    fileName = tryConvertToTdObject(json['file_name']);
    mimeType = tryConvertToTdObject(json['mime_type']);
    minithumbnail = tryConvertToTdObject(json['minithumbnail']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    animation = tryConvertToTdObject(json['animation']);
  }
}

@reflector
class Audio extends TdObject {
  @override
  String get tdType => 'audio';

  int duration;
  String title;
  String performer;
  String fileName;
  String mimeType;
  Minithumbnail albumCoverMinithumbnail;
  PhotoSize albumCoverThumbnail;
  File audio;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
    'title': title,
    'performer': performer,
    'file_name': fileName,
    'mime_type': mimeType,
    'album_cover_minithumbnail': albumCoverMinithumbnail,
    'album_cover_thumbnail': albumCoverThumbnail,
    'audio': audio,
  };

  Audio({
    this.duration,
    this.title,
    this.performer,
    this.fileName,
    this.mimeType,
    this.albumCoverMinithumbnail,
    this.albumCoverThumbnail,
    this.audio,
  });

  Audio.fromJson(Map<String, dynamic> json) {
    duration = tryConvertToTdObject(json['duration']);
    title = tryConvertToTdObject(json['title']);
    performer = tryConvertToTdObject(json['performer']);
    fileName = tryConvertToTdObject(json['file_name']);
    mimeType = tryConvertToTdObject(json['mime_type']);
    albumCoverMinithumbnail = tryConvertToTdObject(json['album_cover_minithumbnail']);
    albumCoverThumbnail = tryConvertToTdObject(json['album_cover_thumbnail']);
    audio = tryConvertToTdObject(json['audio']);
  }
}

@reflector
class Document extends TdObject {
  @override
  String get tdType => 'document';

  String fileName;
  String mimeType;
  Minithumbnail minithumbnail;
  PhotoSize thumbnail;
  File document;

  @override
  Map<String, dynamic> get params => {
    'file_name': fileName,
    'mime_type': mimeType,
    'minithumbnail': minithumbnail,
    'thumbnail': thumbnail,
    'document': document,
  };

  Document({
    this.fileName,
    this.mimeType,
    this.minithumbnail,
    this.thumbnail,
    this.document,
  });

  Document.fromJson(Map<String, dynamic> json) {
    fileName = tryConvertToTdObject(json['file_name']);
    mimeType = tryConvertToTdObject(json['mime_type']);
    minithumbnail = tryConvertToTdObject(json['minithumbnail']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    document = tryConvertToTdObject(json['document']);
  }
}

@reflector
class Photo extends TdObject {
  @override
  String get tdType => 'photo';

  bool hasStickers;
  Minithumbnail minithumbnail;
  List<PhotoSize> sizes;

  @override
  Map<String, dynamic> get params => {
    'has_stickers': hasStickers,
    'minithumbnail': minithumbnail,
    'sizes': sizes,
  };

  Photo({
    this.hasStickers,
    this.minithumbnail,
    this.sizes,
  });

  Photo.fromJson(Map<String, dynamic> json) {
    hasStickers = tryConvertToTdObject(json['has_stickers']);
    minithumbnail = tryConvertToTdObject(json['minithumbnail']);
    sizes = tryConvertToTdObject(json['sizes']);
  }
}

@reflector
class Sticker extends TdObject {
  @override
  String get tdType => 'sticker';

  int setId;
  int width;
  int height;
  String emoji;
  bool isAnimated;
  bool isMask;
  MaskPosition maskPosition;
  PhotoSize thumbnail;
  File sticker;

  @override
  Map<String, dynamic> get params => {
    'set_id': setId,
    'width': width,
    'height': height,
    'emoji': emoji,
    'is_animated': isAnimated,
    'is_mask': isMask,
    'mask_position': maskPosition,
    'thumbnail': thumbnail,
    'sticker': sticker,
  };

  Sticker({
    this.setId,
    this.width,
    this.height,
    this.emoji,
    this.isAnimated,
    this.isMask,
    this.maskPosition,
    this.thumbnail,
    this.sticker,
  });

  Sticker.fromJson(Map<String, dynamic> json) {
    setId = tryConvertToTdObject(json['set_id']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    emoji = tryConvertToTdObject(json['emoji']);
    isAnimated = tryConvertToTdObject(json['is_animated']);
    isMask = tryConvertToTdObject(json['is_mask']);
    maskPosition = tryConvertToTdObject(json['mask_position']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    sticker = tryConvertToTdObject(json['sticker']);
  }
}

@reflector
class Video extends TdObject {
  @override
  String get tdType => 'video';

  int duration;
  int width;
  int height;
  String fileName;
  String mimeType;
  bool hasStickers;
  bool supportsStreaming;
  Minithumbnail minithumbnail;
  PhotoSize thumbnail;
  File video;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
    'width': width,
    'height': height,
    'file_name': fileName,
    'mime_type': mimeType,
    'has_stickers': hasStickers,
    'supports_streaming': supportsStreaming,
    'minithumbnail': minithumbnail,
    'thumbnail': thumbnail,
    'video': video,
  };

  Video({
    this.duration,
    this.width,
    this.height,
    this.fileName,
    this.mimeType,
    this.hasStickers,
    this.supportsStreaming,
    this.minithumbnail,
    this.thumbnail,
    this.video,
  });

  Video.fromJson(Map<String, dynamic> json) {
    duration = tryConvertToTdObject(json['duration']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    fileName = tryConvertToTdObject(json['file_name']);
    mimeType = tryConvertToTdObject(json['mime_type']);
    hasStickers = tryConvertToTdObject(json['has_stickers']);
    supportsStreaming = tryConvertToTdObject(json['supports_streaming']);
    minithumbnail = tryConvertToTdObject(json['minithumbnail']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    video = tryConvertToTdObject(json['video']);
  }
}

@reflector
class VideoNote extends TdObject {
  @override
  String get tdType => 'videoNote';

  int duration;
  int length;
  Minithumbnail minithumbnail;
  PhotoSize thumbnail;
  File video;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
    'length': length,
    'minithumbnail': minithumbnail,
    'thumbnail': thumbnail,
    'video': video,
  };

  VideoNote({
    this.duration,
    this.length,
    this.minithumbnail,
    this.thumbnail,
    this.video,
  });

  VideoNote.fromJson(Map<String, dynamic> json) {
    duration = tryConvertToTdObject(json['duration']);
    length = tryConvertToTdObject(json['length']);
    minithumbnail = tryConvertToTdObject(json['minithumbnail']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    video = tryConvertToTdObject(json['video']);
  }
}

@reflector
class VoiceNote extends TdObject {
  @override
  String get tdType => 'voiceNote';

  int duration;
  String waveform;
  String mimeType;
  File voice;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
    'waveform': waveform,
    'mime_type': mimeType,
    'voice': voice,
  };

  VoiceNote({
    this.duration,
    this.waveform,
    this.mimeType,
    this.voice,
  });

  VoiceNote.fromJson(Map<String, dynamic> json) {
    duration = tryConvertToTdObject(json['duration']);
    waveform = tryConvertToTdObject(json['waveform']);
    mimeType = tryConvertToTdObject(json['mime_type']);
    voice = tryConvertToTdObject(json['voice']);
  }
}

@reflector
class Contact extends TdObject {
  @override
  String get tdType => 'contact';

  String phoneNumber;
  String firstName;
  String lastName;
  String vcard;
  int userId;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
    'first_name': firstName,
    'last_name': lastName,
    'vcard': vcard,
    'user_id': userId,
  };

  Contact({
    this.phoneNumber,
    this.firstName,
    this.lastName,
    this.vcard,
    this.userId,
  });

  Contact.fromJson(Map<String, dynamic> json) {
    phoneNumber = tryConvertToTdObject(json['phone_number']);
    firstName = tryConvertToTdObject(json['first_name']);
    lastName = tryConvertToTdObject(json['last_name']);
    vcard = tryConvertToTdObject(json['vcard']);
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class Location extends TdObject {
  @override
  String get tdType => 'location';

  double latitude;
  double longitude;

  @override
  Map<String, dynamic> get params => {
    'latitude': latitude,
    'longitude': longitude,
  };

  Location({
    this.latitude,
    this.longitude,
  });

  Location.fromJson(Map<String, dynamic> json) {
    latitude = tryConvertToTdObject(json['latitude']);
    longitude = tryConvertToTdObject(json['longitude']);
  }
}

@reflector
class Venue extends TdObject {
  @override
  String get tdType => 'venue';

  Location location;
  String title;
  String address;
  String provider;
  String id;
  String type;

  @override
  Map<String, dynamic> get params => {
    'location': location,
    'title': title,
    'address': address,
    'provider': provider,
    'id': id,
    'type': type,
  };

  Venue({
    this.location,
    this.title,
    this.address,
    this.provider,
    this.id,
    this.type,
  });

  Venue.fromJson(Map<String, dynamic> json) {
    location = tryConvertToTdObject(json['location']);
    title = tryConvertToTdObject(json['title']);
    address = tryConvertToTdObject(json['address']);
    provider = tryConvertToTdObject(json['provider']);
    id = tryConvertToTdObject(json['id']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class Game extends TdObject {
  @override
  String get tdType => 'game';

  int id;
  String shortName;
  String title;
  FormattedText text;
  String description;
  Photo photo;
  Animation animation;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'short_name': shortName,
    'title': title,
    'text': text,
    'description': description,
    'photo': photo,
    'animation': animation,
  };

  Game({
    this.id,
    this.shortName,
    this.title,
    this.text,
    this.description,
    this.photo,
    this.animation,
  });

  Game.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    shortName = tryConvertToTdObject(json['short_name']);
    title = tryConvertToTdObject(json['title']);
    text = tryConvertToTdObject(json['text']);
    description = tryConvertToTdObject(json['description']);
    photo = tryConvertToTdObject(json['photo']);
    animation = tryConvertToTdObject(json['animation']);
  }
}

@reflector
class Poll extends TdObject {
  @override
  String get tdType => 'poll';

  int id;
  String question;
  List<PollOption> options;
  int totalVoterCount;
  bool isClosed;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'question': question,
    'options': options,
    'total_voter_count': totalVoterCount,
    'is_closed': isClosed,
  };

  Poll({
    this.id,
    this.question,
    this.options,
    this.totalVoterCount,
    this.isClosed,
  });

  Poll.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    question = tryConvertToTdObject(json['question']);
    options = tryConvertToTdObject(json['options']);
    totalVoterCount = tryConvertToTdObject(json['total_voter_count']);
    isClosed = tryConvertToTdObject(json['is_closed']);
  }
}

@reflector
class ProfilePhoto extends TdObject {
  @override
  String get tdType => 'profilePhoto';

  int id;
  File small;
  File big;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'small': small,
    'big': big,
  };

  ProfilePhoto({
    this.id,
    this.small,
    this.big,
  });

  ProfilePhoto.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    small = tryConvertToTdObject(json['small']);
    big = tryConvertToTdObject(json['big']);
  }
}

@reflector
class ChatPhoto extends TdObject {
  @override
  String get tdType => 'chatPhoto';

  File small;
  File big;

  @override
  Map<String, dynamic> get params => {
    'small': small,
    'big': big,
  };

  ChatPhoto({
    this.small,
    this.big,
  });

  ChatPhoto.fromJson(Map<String, dynamic> json) {
    small = tryConvertToTdObject(json['small']);
    big = tryConvertToTdObject(json['big']);
  }
}

abstract class LinkState extends TdObject {}

@reflector
class LinkStateNone extends LinkState {
  @override
  String get tdType => 'linkStateNone';

  @override
  Map<String, dynamic> get params => {};

  LinkStateNone();

  LinkStateNone.fromJson(Map<String, dynamic> json);
}

@reflector
class LinkStateKnowsPhoneNumber extends LinkState {
  @override
  String get tdType => 'linkStateKnowsPhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  LinkStateKnowsPhoneNumber();

  LinkStateKnowsPhoneNumber.fromJson(Map<String, dynamic> json);
}

@reflector
class LinkStateIsContact extends LinkState {
  @override
  String get tdType => 'linkStateIsContact';

  @override
  Map<String, dynamic> get params => {};

  LinkStateIsContact();

  LinkStateIsContact.fromJson(Map<String, dynamic> json);
}

abstract class UserType extends TdObject {}

@reflector
class UserTypeRegular extends UserType {
  @override
  String get tdType => 'userTypeRegular';

  @override
  Map<String, dynamic> get params => {};

  UserTypeRegular();

  UserTypeRegular.fromJson(Map<String, dynamic> json);
}

@reflector
class UserTypeDeleted extends UserType {
  @override
  String get tdType => 'userTypeDeleted';

  @override
  Map<String, dynamic> get params => {};

  UserTypeDeleted();

  UserTypeDeleted.fromJson(Map<String, dynamic> json);
}

@reflector
class UserTypeBot extends UserType {
  @override
  String get tdType => 'userTypeBot';

  bool canJoinGroups;
  bool canReadAllGroupMessages;
  bool isInline;
  String inlineQueryPlaceholder;
  bool needLocation;

  @override
  Map<String, dynamic> get params => {
    'can_join_groups': canJoinGroups,
    'can_read_all_group_messages': canReadAllGroupMessages,
    'is_inline': isInline,
    'inline_query_placeholder': inlineQueryPlaceholder,
    'need_location': needLocation,
  };

  UserTypeBot({
    this.canJoinGroups,
    this.canReadAllGroupMessages,
    this.isInline,
    this.inlineQueryPlaceholder,
    this.needLocation,
  });

  UserTypeBot.fromJson(Map<String, dynamic> json) {
    canJoinGroups = tryConvertToTdObject(json['can_join_groups']);
    canReadAllGroupMessages = tryConvertToTdObject(json['can_read_all_group_messages']);
    isInline = tryConvertToTdObject(json['is_inline']);
    inlineQueryPlaceholder = tryConvertToTdObject(json['inline_query_placeholder']);
    needLocation = tryConvertToTdObject(json['need_location']);
  }
}

@reflector
class UserTypeUnknown extends UserType {
  @override
  String get tdType => 'userTypeUnknown';

  @override
  Map<String, dynamic> get params => {};

  UserTypeUnknown();

  UserTypeUnknown.fromJson(Map<String, dynamic> json);
}

@reflector
class BotCommand extends TdObject {
  @override
  String get tdType => 'botCommand';

  String command;
  String description;

  @override
  Map<String, dynamic> get params => {
    'command': command,
    'description': description,
  };

  BotCommand({
    this.command,
    this.description,
  });

  BotCommand.fromJson(Map<String, dynamic> json) {
    command = tryConvertToTdObject(json['command']);
    description = tryConvertToTdObject(json['description']);
  }
}

@reflector
class BotInfo extends TdObject {
  @override
  String get tdType => 'botInfo';

  String description;
  List<BotCommand> commands;

  @override
  Map<String, dynamic> get params => {
    'description': description,
    'commands': commands,
  };

  BotInfo({
    this.description,
    this.commands,
  });

  BotInfo.fromJson(Map<String, dynamic> json) {
    description = tryConvertToTdObject(json['description']);
    commands = tryConvertToTdObject(json['commands']);
  }
}

@reflector
class User extends TdObject {
  @override
  String get tdType => 'user';

  int id;
  String firstName;
  String lastName;
  String username;
  String phoneNumber;
  UserStatus status;
  ProfilePhoto profilePhoto;
  LinkState outgoingLink;
  LinkState incomingLink;
  bool isVerified;
  bool isSupport;
  String restrictionReason;
  bool isScam;
  bool haveAccess;
  UserType type;
  String languageCode;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'first_name': firstName,
    'last_name': lastName,
    'username': username,
    'phone_number': phoneNumber,
    'status': status,
    'profile_photo': profilePhoto,
    'outgoing_link': outgoingLink,
    'incoming_link': incomingLink,
    'is_verified': isVerified,
    'is_support': isSupport,
    'restriction_reason': restrictionReason,
    'is_scam': isScam,
    'have_access': haveAccess,
    'type': type,
    'language_code': languageCode,
  };

  User({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.phoneNumber,
    this.status,
    this.profilePhoto,
    this.outgoingLink,
    this.incomingLink,
    this.isVerified,
    this.isSupport,
    this.restrictionReason,
    this.isScam,
    this.haveAccess,
    this.type,
    this.languageCode,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    firstName = tryConvertToTdObject(json['first_name']);
    lastName = tryConvertToTdObject(json['last_name']);
    username = tryConvertToTdObject(json['username']);
    phoneNumber = tryConvertToTdObject(json['phone_number']);
    status = tryConvertToTdObject(json['status']);
    profilePhoto = tryConvertToTdObject(json['profile_photo']);
    outgoingLink = tryConvertToTdObject(json['outgoing_link']);
    incomingLink = tryConvertToTdObject(json['incoming_link']);
    isVerified = tryConvertToTdObject(json['is_verified']);
    isSupport = tryConvertToTdObject(json['is_support']);
    restrictionReason = tryConvertToTdObject(json['restriction_reason']);
    isScam = tryConvertToTdObject(json['is_scam']);
    haveAccess = tryConvertToTdObject(json['have_access']);
    type = tryConvertToTdObject(json['type']);
    languageCode = tryConvertToTdObject(json['language_code']);
  }
}

@reflector
class UserFullInfo extends TdObject {
  @override
  String get tdType => 'userFullInfo';

  bool isBlocked;
  bool canBeCalled;
  bool hasPrivateCalls;
  String bio;
  String shareText;
  int groupInCommonCount;
  BotInfo botInfo;

  @override
  Map<String, dynamic> get params => {
    'is_blocked': isBlocked,
    'can_be_called': canBeCalled,
    'has_private_calls': hasPrivateCalls,
    'bio': bio,
    'share_text': shareText,
    'group_in_common_count': groupInCommonCount,
    'bot_info': botInfo,
  };

  UserFullInfo({
    this.isBlocked,
    this.canBeCalled,
    this.hasPrivateCalls,
    this.bio,
    this.shareText,
    this.groupInCommonCount,
    this.botInfo,
  });

  UserFullInfo.fromJson(Map<String, dynamic> json) {
    isBlocked = tryConvertToTdObject(json['is_blocked']);
    canBeCalled = tryConvertToTdObject(json['can_be_called']);
    hasPrivateCalls = tryConvertToTdObject(json['has_private_calls']);
    bio = tryConvertToTdObject(json['bio']);
    shareText = tryConvertToTdObject(json['share_text']);
    groupInCommonCount = tryConvertToTdObject(json['group_in_common_count']);
    botInfo = tryConvertToTdObject(json['bot_info']);
  }
}

@reflector
class UserProfilePhoto extends TdObject {
  @override
  String get tdType => 'userProfilePhoto';

  int id;
  int addedDate;
  List<PhotoSize> sizes;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'added_date': addedDate,
    'sizes': sizes,
  };

  UserProfilePhoto({
    this.id,
    this.addedDate,
    this.sizes,
  });

  UserProfilePhoto.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    addedDate = tryConvertToTdObject(json['added_date']);
    sizes = tryConvertToTdObject(json['sizes']);
  }
}

@reflector
class UserProfilePhotos extends TdObject {
  @override
  String get tdType => 'userProfilePhotos';

  int totalCount;
  List<UserProfilePhoto> photos;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'photos': photos,
  };

  UserProfilePhotos({
    this.totalCount,
    this.photos,
  });

  UserProfilePhotos.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    photos = tryConvertToTdObject(json['photos']);
  }
}

@reflector
class Users extends TdObject {
  @override
  String get tdType => 'users';

  int totalCount;
  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'user_ids': userIds,
  };

  Users({
    this.totalCount,
    this.userIds,
  });

  Users.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    userIds = tryConvertToTdObject(json['user_ids']);
  }
}

@reflector
class ChatPermissions extends TdObject {
  @override
  String get tdType => 'chatPermissions';

  bool canSendMessages;
  bool canSendMediaMessages;
  bool canSendPolls;
  bool canSendOtherMessages;
  bool canAddWebPagePreviews;
  bool canChangeInfo;
  bool canInviteUsers;
  bool canPinMessages;

  @override
  Map<String, dynamic> get params => {
    'can_send_messages': canSendMessages,
    'can_send_media_messages': canSendMediaMessages,
    'can_send_polls': canSendPolls,
    'can_send_other_messages': canSendOtherMessages,
    'can_add_web_page_previews': canAddWebPagePreviews,
    'can_change_info': canChangeInfo,
    'can_invite_users': canInviteUsers,
    'can_pin_messages': canPinMessages,
  };

  ChatPermissions({
    this.canSendMessages,
    this.canSendMediaMessages,
    this.canSendPolls,
    this.canSendOtherMessages,
    this.canAddWebPagePreviews,
    this.canChangeInfo,
    this.canInviteUsers,
    this.canPinMessages,
  });

  ChatPermissions.fromJson(Map<String, dynamic> json) {
    canSendMessages = tryConvertToTdObject(json['can_send_messages']);
    canSendMediaMessages = tryConvertToTdObject(json['can_send_media_messages']);
    canSendPolls = tryConvertToTdObject(json['can_send_polls']);
    canSendOtherMessages = tryConvertToTdObject(json['can_send_other_messages']);
    canAddWebPagePreviews = tryConvertToTdObject(json['can_add_web_page_previews']);
    canChangeInfo = tryConvertToTdObject(json['can_change_info']);
    canInviteUsers = tryConvertToTdObject(json['can_invite_users']);
    canPinMessages = tryConvertToTdObject(json['can_pin_messages']);
  }
}

abstract class ChatMemberStatus extends TdObject {}

@reflector
class ChatMemberStatusCreator extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusCreator';

  bool isMember;

  @override
  Map<String, dynamic> get params => {
    'is_member': isMember,
  };

  ChatMemberStatusCreator({
    this.isMember,
  });

  ChatMemberStatusCreator.fromJson(Map<String, dynamic> json) {
    isMember = tryConvertToTdObject(json['is_member']);
  }
}

@reflector
class ChatMemberStatusAdministrator extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusAdministrator';

  bool canBeEdited;
  bool canChangeInfo;
  bool canPostMessages;
  bool canEditMessages;
  bool canDeleteMessages;
  bool canInviteUsers;
  bool canRestrictMembers;
  bool canPinMessages;
  bool canPromoteMembers;

  @override
  Map<String, dynamic> get params => {
    'can_be_edited': canBeEdited,
    'can_change_info': canChangeInfo,
    'can_post_messages': canPostMessages,
    'can_edit_messages': canEditMessages,
    'can_delete_messages': canDeleteMessages,
    'can_invite_users': canInviteUsers,
    'can_restrict_members': canRestrictMembers,
    'can_pin_messages': canPinMessages,
    'can_promote_members': canPromoteMembers,
  };

  ChatMemberStatusAdministrator({
    this.canBeEdited,
    this.canChangeInfo,
    this.canPostMessages,
    this.canEditMessages,
    this.canDeleteMessages,
    this.canInviteUsers,
    this.canRestrictMembers,
    this.canPinMessages,
    this.canPromoteMembers,
  });

  ChatMemberStatusAdministrator.fromJson(Map<String, dynamic> json) {
    canBeEdited = tryConvertToTdObject(json['can_be_edited']);
    canChangeInfo = tryConvertToTdObject(json['can_change_info']);
    canPostMessages = tryConvertToTdObject(json['can_post_messages']);
    canEditMessages = tryConvertToTdObject(json['can_edit_messages']);
    canDeleteMessages = tryConvertToTdObject(json['can_delete_messages']);
    canInviteUsers = tryConvertToTdObject(json['can_invite_users']);
    canRestrictMembers = tryConvertToTdObject(json['can_restrict_members']);
    canPinMessages = tryConvertToTdObject(json['can_pin_messages']);
    canPromoteMembers = tryConvertToTdObject(json['can_promote_members']);
  }
}

@reflector
class ChatMemberStatusMember extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusMember';

  @override
  Map<String, dynamic> get params => {};

  ChatMemberStatusMember();

  ChatMemberStatusMember.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatMemberStatusRestricted extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusRestricted';

  bool isMember;
  int restrictedUntilDate;
  ChatPermissions permissions;

  @override
  Map<String, dynamic> get params => {
    'is_member': isMember,
    'restricted_until_date': restrictedUntilDate,
    'permissions': permissions,
  };

  ChatMemberStatusRestricted({
    this.isMember,
    this.restrictedUntilDate,
    this.permissions,
  });

  ChatMemberStatusRestricted.fromJson(Map<String, dynamic> json) {
    isMember = tryConvertToTdObject(json['is_member']);
    restrictedUntilDate = tryConvertToTdObject(json['restricted_until_date']);
    permissions = tryConvertToTdObject(json['permissions']);
  }
}

@reflector
class ChatMemberStatusLeft extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusLeft';

  @override
  Map<String, dynamic> get params => {};

  ChatMemberStatusLeft();

  ChatMemberStatusLeft.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatMemberStatusBanned extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusBanned';

  int bannedUntilDate;

  @override
  Map<String, dynamic> get params => {
    'banned_until_date': bannedUntilDate,
  };

  ChatMemberStatusBanned({
    this.bannedUntilDate,
  });

  ChatMemberStatusBanned.fromJson(Map<String, dynamic> json) {
    bannedUntilDate = tryConvertToTdObject(json['banned_until_date']);
  }
}

@reflector
class ChatMember extends TdObject {
  @override
  String get tdType => 'chatMember';

  int userId;
  int inviterUserId;
  int joinedChatDate;
  ChatMemberStatus status;
  BotInfo botInfo;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'inviter_user_id': inviterUserId,
    'joined_chat_date': joinedChatDate,
    'status': status,
    'bot_info': botInfo,
  };

  ChatMember({
    this.userId,
    this.inviterUserId,
    this.joinedChatDate,
    this.status,
    this.botInfo,
  });

  ChatMember.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    inviterUserId = tryConvertToTdObject(json['inviter_user_id']);
    joinedChatDate = tryConvertToTdObject(json['joined_chat_date']);
    status = tryConvertToTdObject(json['status']);
    botInfo = tryConvertToTdObject(json['bot_info']);
  }
}

@reflector
class ChatMembers extends TdObject {
  @override
  String get tdType => 'chatMembers';

  int totalCount;
  List<ChatMember> members;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'members': members,
  };

  ChatMembers({
    this.totalCount,
    this.members,
  });

  ChatMembers.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    members = tryConvertToTdObject(json['members']);
  }
}

abstract class ChatMembersFilter extends TdObject {}

@reflector
class ChatMembersFilterContacts extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterContacts';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterContacts();

  ChatMembersFilterContacts.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatMembersFilterAdministrators extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterAdministrators';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterAdministrators();

  ChatMembersFilterAdministrators.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatMembersFilterMembers extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterMembers';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterMembers();

  ChatMembersFilterMembers.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatMembersFilterRestricted extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterRestricted';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterRestricted();

  ChatMembersFilterRestricted.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatMembersFilterBanned extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterBanned';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterBanned();

  ChatMembersFilterBanned.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatMembersFilterBots extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterBots';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterBots();

  ChatMembersFilterBots.fromJson(Map<String, dynamic> json);
}

abstract class SupergroupMembersFilter extends TdObject {}

@reflector
class SupergroupMembersFilterRecent extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterRecent';

  @override
  Map<String, dynamic> get params => {};

  SupergroupMembersFilterRecent();

  SupergroupMembersFilterRecent.fromJson(Map<String, dynamic> json);
}

@reflector
class SupergroupMembersFilterContacts extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterContacts';

  String query;

  @override
  Map<String, dynamic> get params => {
    'query': query,
  };

  SupergroupMembersFilterContacts({
    this.query,
  });

  SupergroupMembersFilterContacts.fromJson(Map<String, dynamic> json) {
    query = tryConvertToTdObject(json['query']);
  }
}

@reflector
class SupergroupMembersFilterAdministrators extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterAdministrators';

  @override
  Map<String, dynamic> get params => {};

  SupergroupMembersFilterAdministrators();

  SupergroupMembersFilterAdministrators.fromJson(Map<String, dynamic> json);
}

@reflector
class SupergroupMembersFilterSearch extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterSearch';

  String query;

  @override
  Map<String, dynamic> get params => {
    'query': query,
  };

  SupergroupMembersFilterSearch({
    this.query,
  });

  SupergroupMembersFilterSearch.fromJson(Map<String, dynamic> json) {
    query = tryConvertToTdObject(json['query']);
  }
}

@reflector
class SupergroupMembersFilterRestricted extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterRestricted';

  String query;

  @override
  Map<String, dynamic> get params => {
    'query': query,
  };

  SupergroupMembersFilterRestricted({
    this.query,
  });

  SupergroupMembersFilterRestricted.fromJson(Map<String, dynamic> json) {
    query = tryConvertToTdObject(json['query']);
  }
}

@reflector
class SupergroupMembersFilterBanned extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterBanned';

  String query;

  @override
  Map<String, dynamic> get params => {
    'query': query,
  };

  SupergroupMembersFilterBanned({
    this.query,
  });

  SupergroupMembersFilterBanned.fromJson(Map<String, dynamic> json) {
    query = tryConvertToTdObject(json['query']);
  }
}

@reflector
class SupergroupMembersFilterBots extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterBots';

  @override
  Map<String, dynamic> get params => {};

  SupergroupMembersFilterBots();

  SupergroupMembersFilterBots.fromJson(Map<String, dynamic> json);
}

@reflector
class BasicGroup extends TdObject {
  @override
  String get tdType => 'basicGroup';

  int id;
  int memberCount;
  ChatMemberStatus status;
  bool isActive;
  int upgradedToSupergroupId;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'member_count': memberCount,
    'status': status,
    'is_active': isActive,
    'upgraded_to_supergroup_id': upgradedToSupergroupId,
  };

  BasicGroup({
    this.id,
    this.memberCount,
    this.status,
    this.isActive,
    this.upgradedToSupergroupId,
  });

  BasicGroup.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    memberCount = tryConvertToTdObject(json['member_count']);
    status = tryConvertToTdObject(json['status']);
    isActive = tryConvertToTdObject(json['is_active']);
    upgradedToSupergroupId = tryConvertToTdObject(json['upgraded_to_supergroup_id']);
  }
}

@reflector
class BasicGroupFullInfo extends TdObject {
  @override
  String get tdType => 'basicGroupFullInfo';

  String description;
  int creatorUserId;
  List<ChatMember> members;
  String inviteLink;

  @override
  Map<String, dynamic> get params => {
    'description': description,
    'creator_user_id': creatorUserId,
    'members': members,
    'invite_link': inviteLink,
  };

  BasicGroupFullInfo({
    this.description,
    this.creatorUserId,
    this.members,
    this.inviteLink,
  });

  BasicGroupFullInfo.fromJson(Map<String, dynamic> json) {
    description = tryConvertToTdObject(json['description']);
    creatorUserId = tryConvertToTdObject(json['creator_user_id']);
    members = tryConvertToTdObject(json['members']);
    inviteLink = tryConvertToTdObject(json['invite_link']);
  }
}

@reflector
class Supergroup extends TdObject {
  @override
  String get tdType => 'supergroup';

  int id;
  String username;
  int date;
  ChatMemberStatus status;
  int memberCount;
  bool signMessages;
  bool isChannel;
  bool isVerified;
  String restrictionReason;
  bool isScam;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'username': username,
    'date': date,
    'status': status,
    'member_count': memberCount,
    'sign_messages': signMessages,
    'is_channel': isChannel,
    'is_verified': isVerified,
    'restriction_reason': restrictionReason,
    'is_scam': isScam,
  };

  Supergroup({
    this.id,
    this.username,
    this.date,
    this.status,
    this.memberCount,
    this.signMessages,
    this.isChannel,
    this.isVerified,
    this.restrictionReason,
    this.isScam,
  });

  Supergroup.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    username = tryConvertToTdObject(json['username']);
    date = tryConvertToTdObject(json['date']);
    status = tryConvertToTdObject(json['status']);
    memberCount = tryConvertToTdObject(json['member_count']);
    signMessages = tryConvertToTdObject(json['sign_messages']);
    isChannel = tryConvertToTdObject(json['is_channel']);
    isVerified = tryConvertToTdObject(json['is_verified']);
    restrictionReason = tryConvertToTdObject(json['restriction_reason']);
    isScam = tryConvertToTdObject(json['is_scam']);
  }
}

@reflector
class SupergroupFullInfo extends TdObject {
  @override
  String get tdType => 'supergroupFullInfo';

  String description;
  int memberCount;
  int administratorCount;
  int restrictedCount;
  int bannedCount;
  bool canGetMembers;
  bool canSetUsername;
  bool canSetStickerSet;
  bool canViewStatistics;
  bool isAllHistoryAvailable;
  int stickerSetId;
  String inviteLink;
  int upgradedFromBasicGroupId;
  int upgradedFromMaxMessageId;

  @override
  Map<String, dynamic> get params => {
    'description': description,
    'member_count': memberCount,
    'administrator_count': administratorCount,
    'restricted_count': restrictedCount,
    'banned_count': bannedCount,
    'can_get_members': canGetMembers,
    'can_set_username': canSetUsername,
    'can_set_sticker_set': canSetStickerSet,
    'can_view_statistics': canViewStatistics,
    'is_all_history_available': isAllHistoryAvailable,
    'sticker_set_id': stickerSetId,
    'invite_link': inviteLink,
    'upgraded_from_basic_group_id': upgradedFromBasicGroupId,
    'upgraded_from_max_message_id': upgradedFromMaxMessageId,
  };

  SupergroupFullInfo({
    this.description,
    this.memberCount,
    this.administratorCount,
    this.restrictedCount,
    this.bannedCount,
    this.canGetMembers,
    this.canSetUsername,
    this.canSetStickerSet,
    this.canViewStatistics,
    this.isAllHistoryAvailable,
    this.stickerSetId,
    this.inviteLink,
    this.upgradedFromBasicGroupId,
    this.upgradedFromMaxMessageId,
  });

  SupergroupFullInfo.fromJson(Map<String, dynamic> json) {
    description = tryConvertToTdObject(json['description']);
    memberCount = tryConvertToTdObject(json['member_count']);
    administratorCount = tryConvertToTdObject(json['administrator_count']);
    restrictedCount = tryConvertToTdObject(json['restricted_count']);
    bannedCount = tryConvertToTdObject(json['banned_count']);
    canGetMembers = tryConvertToTdObject(json['can_get_members']);
    canSetUsername = tryConvertToTdObject(json['can_set_username']);
    canSetStickerSet = tryConvertToTdObject(json['can_set_sticker_set']);
    canViewStatistics = tryConvertToTdObject(json['can_view_statistics']);
    isAllHistoryAvailable = tryConvertToTdObject(json['is_all_history_available']);
    stickerSetId = tryConvertToTdObject(json['sticker_set_id']);
    inviteLink = tryConvertToTdObject(json['invite_link']);
    upgradedFromBasicGroupId = tryConvertToTdObject(json['upgraded_from_basic_group_id']);
    upgradedFromMaxMessageId = tryConvertToTdObject(json['upgraded_from_max_message_id']);
  }
}

abstract class SecretChatState extends TdObject {}

@reflector
class SecretChatStatePending extends SecretChatState {
  @override
  String get tdType => 'secretChatStatePending';

  @override
  Map<String, dynamic> get params => {};

  SecretChatStatePending();

  SecretChatStatePending.fromJson(Map<String, dynamic> json);
}

@reflector
class SecretChatStateReady extends SecretChatState {
  @override
  String get tdType => 'secretChatStateReady';

  @override
  Map<String, dynamic> get params => {};

  SecretChatStateReady();

  SecretChatStateReady.fromJson(Map<String, dynamic> json);
}

@reflector
class SecretChatStateClosed extends SecretChatState {
  @override
  String get tdType => 'secretChatStateClosed';

  @override
  Map<String, dynamic> get params => {};

  SecretChatStateClosed();

  SecretChatStateClosed.fromJson(Map<String, dynamic> json);
}

@reflector
class SecretChat extends TdObject {
  @override
  String get tdType => 'secretChat';

  int id;
  int userId;
  SecretChatState state;
  bool isOutbound;
  int ttl;
  String keyHash;
  int layer;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'user_id': userId,
    'state': state,
    'is_outbound': isOutbound,
    'ttl': ttl,
    'key_hash': keyHash,
    'layer': layer,
  };

  SecretChat({
    this.id,
    this.userId,
    this.state,
    this.isOutbound,
    this.ttl,
    this.keyHash,
    this.layer,
  });

  SecretChat.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    userId = tryConvertToTdObject(json['user_id']);
    state = tryConvertToTdObject(json['state']);
    isOutbound = tryConvertToTdObject(json['is_outbound']);
    ttl = tryConvertToTdObject(json['ttl']);
    keyHash = tryConvertToTdObject(json['key_hash']);
    layer = tryConvertToTdObject(json['layer']);
  }
}

abstract class MessageForwardOrigin extends TdObject {}

@reflector
class MessageForwardOriginUser extends MessageForwardOrigin {
  @override
  String get tdType => 'messageForwardOriginUser';

  int senderUserId;

  @override
  Map<String, dynamic> get params => {
    'sender_user_id': senderUserId,
  };

  MessageForwardOriginUser({
    this.senderUserId,
  });

  MessageForwardOriginUser.fromJson(Map<String, dynamic> json) {
    senderUserId = tryConvertToTdObject(json['sender_user_id']);
  }
}

@reflector
class MessageForwardOriginHiddenUser extends MessageForwardOrigin {
  @override
  String get tdType => 'messageForwardOriginHiddenUser';

  String senderName;

  @override
  Map<String, dynamic> get params => {
    'sender_name': senderName,
  };

  MessageForwardOriginHiddenUser({
    this.senderName,
  });

  MessageForwardOriginHiddenUser.fromJson(Map<String, dynamic> json) {
    senderName = tryConvertToTdObject(json['sender_name']);
  }
}

@reflector
class MessageForwardOriginChannel extends MessageForwardOrigin {
  @override
  String get tdType => 'messageForwardOriginChannel';

  int chatId;
  int messageId;
  String authorSignature;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'author_signature': authorSignature,
  };

  MessageForwardOriginChannel({
    this.chatId,
    this.messageId,
    this.authorSignature,
  });

  MessageForwardOriginChannel.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    authorSignature = tryConvertToTdObject(json['author_signature']);
  }
}

@reflector
class MessageForwardInfo extends TdObject {
  @override
  String get tdType => 'messageForwardInfo';

  MessageForwardOrigin origin;
  int date;
  int fromChatId;
  int fromMessageId;

  @override
  Map<String, dynamic> get params => {
    'origin': origin,
    'date': date,
    'from_chat_id': fromChatId,
    'from_message_id': fromMessageId,
  };

  MessageForwardInfo({
    this.origin,
    this.date,
    this.fromChatId,
    this.fromMessageId,
  });

  MessageForwardInfo.fromJson(Map<String, dynamic> json) {
    origin = tryConvertToTdObject(json['origin']);
    date = tryConvertToTdObject(json['date']);
    fromChatId = tryConvertToTdObject(json['from_chat_id']);
    fromMessageId = tryConvertToTdObject(json['from_message_id']);
  }
}

abstract class MessageSendingState extends TdObject {}

@reflector
class MessageSendingStatePending extends MessageSendingState {
  @override
  String get tdType => 'messageSendingStatePending';

  @override
  Map<String, dynamic> get params => {};

  MessageSendingStatePending();

  MessageSendingStatePending.fromJson(Map<String, dynamic> json);
}

@reflector
class MessageSendingStateFailed extends MessageSendingState {
  @override
  String get tdType => 'messageSendingStateFailed';

  int errorCode;
  String errorMessage;
  bool canRetry;
  double retryAfter;

  @override
  Map<String, dynamic> get params => {
    'error_code': errorCode,
    'error_message': errorMessage,
    'can_retry': canRetry,
    'retry_after': retryAfter,
  };

  MessageSendingStateFailed({
    this.errorCode,
    this.errorMessage,
    this.canRetry,
    this.retryAfter,
  });

  MessageSendingStateFailed.fromJson(Map<String, dynamic> json) {
    errorCode = tryConvertToTdObject(json['error_code']);
    errorMessage = tryConvertToTdObject(json['error_message']);
    canRetry = tryConvertToTdObject(json['can_retry']);
    retryAfter = tryConvertToTdObject(json['retry_after']);
  }
}

@reflector
class Message extends TdObject {
  @override
  String get tdType => 'message';

  int id;
  int senderUserId;
  int chatId;
  MessageSendingState sendingState;
  bool isOutgoing;
  bool canBeEdited;
  bool canBeForwarded;
  bool canBeDeletedOnlyForSelf;
  bool canBeDeletedForAllUsers;
  bool isChannelPost;
  bool containsUnreadMention;
  int date;
  int editDate;
  MessageForwardInfo forwardInfo;
  int replyToMessageId;
  int ttl;
  double ttlExpiresIn;
  int viaBotUserId;
  String authorSignature;
  int views;
  int mediaAlbumId;
  MessageContent content;
  ReplyMarkup replyMarkup;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender_user_id': senderUserId,
    'chat_id': chatId,
    'sending_state': sendingState,
    'is_outgoing': isOutgoing,
    'can_be_edited': canBeEdited,
    'can_be_forwarded': canBeForwarded,
    'can_be_deleted_only_for_self': canBeDeletedOnlyForSelf,
    'can_be_deleted_for_all_users': canBeDeletedForAllUsers,
    'is_channel_post': isChannelPost,
    'contains_unread_mention': containsUnreadMention,
    'date': date,
    'edit_date': editDate,
    'forward_info': forwardInfo,
    'reply_to_message_id': replyToMessageId,
    'ttl': ttl,
    'ttl_expires_in': ttlExpiresIn,
    'via_bot_user_id': viaBotUserId,
    'author_signature': authorSignature,
    'views': views,
    'media_album_id': mediaAlbumId,
    'content': content,
    'reply_markup': replyMarkup,
  };

  Message({
    this.id,
    this.senderUserId,
    this.chatId,
    this.sendingState,
    this.isOutgoing,
    this.canBeEdited,
    this.canBeForwarded,
    this.canBeDeletedOnlyForSelf,
    this.canBeDeletedForAllUsers,
    this.isChannelPost,
    this.containsUnreadMention,
    this.date,
    this.editDate,
    this.forwardInfo,
    this.replyToMessageId,
    this.ttl,
    this.ttlExpiresIn,
    this.viaBotUserId,
    this.authorSignature,
    this.views,
    this.mediaAlbumId,
    this.content,
    this.replyMarkup,
  });

  Message.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    senderUserId = tryConvertToTdObject(json['sender_user_id']);
    chatId = tryConvertToTdObject(json['chat_id']);
    sendingState = tryConvertToTdObject(json['sending_state']);
    isOutgoing = tryConvertToTdObject(json['is_outgoing']);
    canBeEdited = tryConvertToTdObject(json['can_be_edited']);
    canBeForwarded = tryConvertToTdObject(json['can_be_forwarded']);
    canBeDeletedOnlyForSelf = tryConvertToTdObject(json['can_be_deleted_only_for_self']);
    canBeDeletedForAllUsers = tryConvertToTdObject(json['can_be_deleted_for_all_users']);
    isChannelPost = tryConvertToTdObject(json['is_channel_post']);
    containsUnreadMention = tryConvertToTdObject(json['contains_unread_mention']);
    date = tryConvertToTdObject(json['date']);
    editDate = tryConvertToTdObject(json['edit_date']);
    forwardInfo = tryConvertToTdObject(json['forward_info']);
    replyToMessageId = tryConvertToTdObject(json['reply_to_message_id']);
    ttl = tryConvertToTdObject(json['ttl']);
    ttlExpiresIn = tryConvertToTdObject(json['ttl_expires_in']);
    viaBotUserId = tryConvertToTdObject(json['via_bot_user_id']);
    authorSignature = tryConvertToTdObject(json['author_signature']);
    views = tryConvertToTdObject(json['views']);
    mediaAlbumId = tryConvertToTdObject(json['media_album_id']);
    content = tryConvertToTdObject(json['content']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
  }
}

@reflector
class Messages extends TdObject {
  @override
  String get tdType => 'messages';

  int totalCount;
  List<Message> messages;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'messages': messages,
  };

  Messages({
    this.totalCount,
    this.messages,
  });

  Messages.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    messages = tryConvertToTdObject(json['messages']);
  }
}

@reflector
class FoundMessages extends TdObject {
  @override
  String get tdType => 'foundMessages';

  List<Message> messages;
  int nextFromSearchId;

  @override
  Map<String, dynamic> get params => {
    'messages': messages,
    'next_from_search_id': nextFromSearchId,
  };

  FoundMessages({
    this.messages,
    this.nextFromSearchId,
  });

  FoundMessages.fromJson(Map<String, dynamic> json) {
    messages = tryConvertToTdObject(json['messages']);
    nextFromSearchId = tryConvertToTdObject(json['next_from_search_id']);
  }
}

abstract class NotificationSettingsScope extends TdObject {}

@reflector
class NotificationSettingsScopePrivateChats extends NotificationSettingsScope {
  @override
  String get tdType => 'notificationSettingsScopePrivateChats';

  @override
  Map<String, dynamic> get params => {};

  NotificationSettingsScopePrivateChats();

  NotificationSettingsScopePrivateChats.fromJson(Map<String, dynamic> json);
}

@reflector
class NotificationSettingsScopeGroupChats extends NotificationSettingsScope {
  @override
  String get tdType => 'notificationSettingsScopeGroupChats';

  @override
  Map<String, dynamic> get params => {};

  NotificationSettingsScopeGroupChats();

  NotificationSettingsScopeGroupChats.fromJson(Map<String, dynamic> json);
}

@reflector
class NotificationSettingsScopeChannelChats extends NotificationSettingsScope {
  @override
  String get tdType => 'notificationSettingsScopeChannelChats';

  @override
  Map<String, dynamic> get params => {};

  NotificationSettingsScopeChannelChats();

  NotificationSettingsScopeChannelChats.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatNotificationSettings extends TdObject {
  @override
  String get tdType => 'chatNotificationSettings';

  bool useDefaultMuteFor;
  int muteFor;
  bool useDefaultSound;
  String sound;
  bool useDefaultShowPreview;
  bool showPreview;
  bool useDefaultDisablePinnedMessageNotifications;
  bool disablePinnedMessageNotifications;
  bool useDefaultDisableMentionNotifications;
  bool disableMentionNotifications;

  @override
  Map<String, dynamic> get params => {
    'use_default_mute_for': useDefaultMuteFor,
    'mute_for': muteFor,
    'use_default_sound': useDefaultSound,
    'sound': sound,
    'use_default_show_preview': useDefaultShowPreview,
    'show_preview': showPreview,
    'use_default_disable_pinned_message_notifications': useDefaultDisablePinnedMessageNotifications,
    'disable_pinned_message_notifications': disablePinnedMessageNotifications,
    'use_default_disable_mention_notifications': useDefaultDisableMentionNotifications,
    'disable_mention_notifications': disableMentionNotifications,
  };

  ChatNotificationSettings({
    this.useDefaultMuteFor,
    this.muteFor,
    this.useDefaultSound,
    this.sound,
    this.useDefaultShowPreview,
    this.showPreview,
    this.useDefaultDisablePinnedMessageNotifications,
    this.disablePinnedMessageNotifications,
    this.useDefaultDisableMentionNotifications,
    this.disableMentionNotifications,
  });

  ChatNotificationSettings.fromJson(Map<String, dynamic> json) {
    useDefaultMuteFor = tryConvertToTdObject(json['use_default_mute_for']);
    muteFor = tryConvertToTdObject(json['mute_for']);
    useDefaultSound = tryConvertToTdObject(json['use_default_sound']);
    sound = tryConvertToTdObject(json['sound']);
    useDefaultShowPreview = tryConvertToTdObject(json['use_default_show_preview']);
    showPreview = tryConvertToTdObject(json['show_preview']);
    useDefaultDisablePinnedMessageNotifications = tryConvertToTdObject(json['use_default_disable_pinned_message_notifications']);
    disablePinnedMessageNotifications = tryConvertToTdObject(json['disable_pinned_message_notifications']);
    useDefaultDisableMentionNotifications = tryConvertToTdObject(json['use_default_disable_mention_notifications']);
    disableMentionNotifications = tryConvertToTdObject(json['disable_mention_notifications']);
  }
}

@reflector
class ScopeNotificationSettings extends TdObject {
  @override
  String get tdType => 'scopeNotificationSettings';

  int muteFor;
  String sound;
  bool showPreview;
  bool disablePinnedMessageNotifications;
  bool disableMentionNotifications;

  @override
  Map<String, dynamic> get params => {
    'mute_for': muteFor,
    'sound': sound,
    'show_preview': showPreview,
    'disable_pinned_message_notifications': disablePinnedMessageNotifications,
    'disable_mention_notifications': disableMentionNotifications,
  };

  ScopeNotificationSettings({
    this.muteFor,
    this.sound,
    this.showPreview,
    this.disablePinnedMessageNotifications,
    this.disableMentionNotifications,
  });

  ScopeNotificationSettings.fromJson(Map<String, dynamic> json) {
    muteFor = tryConvertToTdObject(json['mute_for']);
    sound = tryConvertToTdObject(json['sound']);
    showPreview = tryConvertToTdObject(json['show_preview']);
    disablePinnedMessageNotifications = tryConvertToTdObject(json['disable_pinned_message_notifications']);
    disableMentionNotifications = tryConvertToTdObject(json['disable_mention_notifications']);
  }
}

@reflector
class DraftMessage extends TdObject {
  @override
  String get tdType => 'draftMessage';

  int replyToMessageId;
  InputMessageContent inputMessageText;

  @override
  Map<String, dynamic> get params => {
    'reply_to_message_id': replyToMessageId,
    'input_message_text': inputMessageText,
  };

  DraftMessage({
    this.replyToMessageId,
    this.inputMessageText,
  });

  DraftMessage.fromJson(Map<String, dynamic> json) {
    replyToMessageId = tryConvertToTdObject(json['reply_to_message_id']);
    inputMessageText = tryConvertToTdObject(json['input_message_text']);
  }
}

abstract class ChatType extends TdObject {}

@reflector
class ChatTypePrivate extends ChatType {
  @override
  String get tdType => 'chatTypePrivate';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  ChatTypePrivate({
    this.userId,
  });

  ChatTypePrivate.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class ChatTypeBasicGroup extends ChatType {
  @override
  String get tdType => 'chatTypeBasicGroup';

  int basicGroupId;

  @override
  Map<String, dynamic> get params => {
    'basic_group_id': basicGroupId,
  };

  ChatTypeBasicGroup({
    this.basicGroupId,
  });

  ChatTypeBasicGroup.fromJson(Map<String, dynamic> json) {
    basicGroupId = tryConvertToTdObject(json['basic_group_id']);
  }
}

@reflector
class ChatTypeSupergroup extends ChatType {
  @override
  String get tdType => 'chatTypeSupergroup';

  int supergroupId;
  bool isChannel;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'is_channel': isChannel,
  };

  ChatTypeSupergroup({
    this.supergroupId,
    this.isChannel,
  });

  ChatTypeSupergroup.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
    isChannel = tryConvertToTdObject(json['is_channel']);
  }
}

@reflector
class ChatTypeSecret extends ChatType {
  @override
  String get tdType => 'chatTypeSecret';

  int secretChatId;
  int userId;

  @override
  Map<String, dynamic> get params => {
    'secret_chat_id': secretChatId,
    'user_id': userId,
  };

  ChatTypeSecret({
    this.secretChatId,
    this.userId,
  });

  ChatTypeSecret.fromJson(Map<String, dynamic> json) {
    secretChatId = tryConvertToTdObject(json['secret_chat_id']);
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class Chat extends TdObject {
  @override
  String get tdType => 'chat';

  int id;
  ChatType type;
  String title;
  ChatPhoto photo;
  ChatPermissions permissions;
  Message lastMessage;
  int order;
  bool isPinned;
  bool isMarkedAsUnread;
  bool isSponsored;
  bool canBeDeletedOnlyForSelf;
  bool canBeDeletedForAllUsers;
  bool canBeReported;
  bool defaultDisableNotification;
  int unreadCount;
  int lastReadInboxMessageId;
  int lastReadOutboxMessageId;
  int unreadMentionCount;
  ChatNotificationSettings notificationSettings;
  int pinnedMessageId;
  int replyMarkupMessageId;
  DraftMessage draftMessage;
  String clientData;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'type': type,
    'title': title,
    'photo': photo,
    'permissions': permissions,
    'last_message': lastMessage,
    'order': order,
    'is_pinned': isPinned,
    'is_marked_as_unread': isMarkedAsUnread,
    'is_sponsored': isSponsored,
    'can_be_deleted_only_for_self': canBeDeletedOnlyForSelf,
    'can_be_deleted_for_all_users': canBeDeletedForAllUsers,
    'can_be_reported': canBeReported,
    'default_disable_notification': defaultDisableNotification,
    'unread_count': unreadCount,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
    'unread_mention_count': unreadMentionCount,
    'notification_settings': notificationSettings,
    'pinned_message_id': pinnedMessageId,
    'reply_markup_message_id': replyMarkupMessageId,
    'draft_message': draftMessage,
    'client_data': clientData,
  };

  Chat({
    this.id,
    this.type,
    this.title,
    this.photo,
    this.permissions,
    this.lastMessage,
    this.order,
    this.isPinned,
    this.isMarkedAsUnread,
    this.isSponsored,
    this.canBeDeletedOnlyForSelf,
    this.canBeDeletedForAllUsers,
    this.canBeReported,
    this.defaultDisableNotification,
    this.unreadCount,
    this.lastReadInboxMessageId,
    this.lastReadOutboxMessageId,
    this.unreadMentionCount,
    this.notificationSettings,
    this.pinnedMessageId,
    this.replyMarkupMessageId,
    this.draftMessage,
    this.clientData,
  });

  Chat.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    type = tryConvertToTdObject(json['type']);
    title = tryConvertToTdObject(json['title']);
    photo = tryConvertToTdObject(json['photo']);
    permissions = tryConvertToTdObject(json['permissions']);
    lastMessage = tryConvertToTdObject(json['last_message']);
    order = tryConvertToTdObject(json['order']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
    isMarkedAsUnread = tryConvertToTdObject(json['is_marked_as_unread']);
    isSponsored = tryConvertToTdObject(json['is_sponsored']);
    canBeDeletedOnlyForSelf = tryConvertToTdObject(json['can_be_deleted_only_for_self']);
    canBeDeletedForAllUsers = tryConvertToTdObject(json['can_be_deleted_for_all_users']);
    canBeReported = tryConvertToTdObject(json['can_be_reported']);
    defaultDisableNotification = tryConvertToTdObject(json['default_disable_notification']);
    unreadCount = tryConvertToTdObject(json['unread_count']);
    lastReadInboxMessageId = tryConvertToTdObject(json['last_read_inbox_message_id']);
    lastReadOutboxMessageId = tryConvertToTdObject(json['last_read_outbox_message_id']);
    unreadMentionCount = tryConvertToTdObject(json['unread_mention_count']);
    notificationSettings = tryConvertToTdObject(json['notification_settings']);
    pinnedMessageId = tryConvertToTdObject(json['pinned_message_id']);
    replyMarkupMessageId = tryConvertToTdObject(json['reply_markup_message_id']);
    draftMessage = tryConvertToTdObject(json['draft_message']);
    clientData = tryConvertToTdObject(json['client_data']);
  }
}

@reflector
class Chats extends TdObject {
  @override
  String get tdType => 'chats';

  List<int> chatIds;

  @override
  Map<String, dynamic> get params => {
    'chat_ids': chatIds,
  };

  Chats({
    this.chatIds,
  });

  Chats.fromJson(Map<String, dynamic> json) {
    chatIds = tryConvertToTdObject(json['chat_ids']);
  }
}

@reflector
class ChatInviteLink extends TdObject {
  @override
  String get tdType => 'chatInviteLink';

  String inviteLink;

  @override
  Map<String, dynamic> get params => {
    'invite_link': inviteLink,
  };

  ChatInviteLink({
    this.inviteLink,
  });

  ChatInviteLink.fromJson(Map<String, dynamic> json) {
    inviteLink = tryConvertToTdObject(json['invite_link']);
  }
}

@reflector
class ChatInviteLinkInfo extends TdObject {
  @override
  String get tdType => 'chatInviteLinkInfo';

  int chatId;
  ChatType type;
  String title;
  ChatPhoto photo;
  int memberCount;
  List<int> memberUserIds;
  bool isPublic;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'type': type,
    'title': title,
    'photo': photo,
    'member_count': memberCount,
    'member_user_ids': memberUserIds,
    'is_public': isPublic,
  };

  ChatInviteLinkInfo({
    this.chatId,
    this.type,
    this.title,
    this.photo,
    this.memberCount,
    this.memberUserIds,
    this.isPublic,
  });

  ChatInviteLinkInfo.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    type = tryConvertToTdObject(json['type']);
    title = tryConvertToTdObject(json['title']);
    photo = tryConvertToTdObject(json['photo']);
    memberCount = tryConvertToTdObject(json['member_count']);
    memberUserIds = tryConvertToTdObject(json['member_user_ids']);
    isPublic = tryConvertToTdObject(json['is_public']);
  }
}

abstract class KeyboardButtonType extends TdObject {}

@reflector
class KeyboardButtonTypeText extends KeyboardButtonType {
  @override
  String get tdType => 'keyboardButtonTypeText';

  @override
  Map<String, dynamic> get params => {};

  KeyboardButtonTypeText();

  KeyboardButtonTypeText.fromJson(Map<String, dynamic> json);
}

@reflector
class KeyboardButtonTypeRequestPhoneNumber extends KeyboardButtonType {
  @override
  String get tdType => 'keyboardButtonTypeRequestPhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  KeyboardButtonTypeRequestPhoneNumber();

  KeyboardButtonTypeRequestPhoneNumber.fromJson(Map<String, dynamic> json);
}

@reflector
class KeyboardButtonTypeRequestLocation extends KeyboardButtonType {
  @override
  String get tdType => 'keyboardButtonTypeRequestLocation';

  @override
  Map<String, dynamic> get params => {};

  KeyboardButtonTypeRequestLocation();

  KeyboardButtonTypeRequestLocation.fromJson(Map<String, dynamic> json);
}

@reflector
class KeyboardButton extends TdObject {
  @override
  String get tdType => 'keyboardButton';

  String text;
  KeyboardButtonType type;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'type': type,
  };

  KeyboardButton({
    this.text,
    this.type,
  });

  KeyboardButton.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    type = tryConvertToTdObject(json['type']);
  }
}

abstract class InlineKeyboardButtonType extends TdObject {}

@reflector
class InlineKeyboardButtonTypeUrl extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeUrl';

  String url;

  @override
  Map<String, dynamic> get params => {
    'url': url,
  };

  InlineKeyboardButtonTypeUrl({
    this.url,
  });

  InlineKeyboardButtonTypeUrl.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
  }
}

@reflector
class InlineKeyboardButtonTypeLoginUrl extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeLoginUrl';

  String url;
  int id;
  String forwardText;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'id': id,
    'forward_text': forwardText,
  };

  InlineKeyboardButtonTypeLoginUrl({
    this.url,
    this.id,
    this.forwardText,
  });

  InlineKeyboardButtonTypeLoginUrl.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
    id = tryConvertToTdObject(json['id']);
    forwardText = tryConvertToTdObject(json['forward_text']);
  }
}

@reflector
class InlineKeyboardButtonTypeCallback extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeCallback';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  InlineKeyboardButtonTypeCallback({
    this.data,
  });

  InlineKeyboardButtonTypeCallback.fromJson(Map<String, dynamic> json) {
    data = tryConvertToTdObject(json['data']);
  }
}

@reflector
class InlineKeyboardButtonTypeCallbackGame extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeCallbackGame';

  @override
  Map<String, dynamic> get params => {};

  InlineKeyboardButtonTypeCallbackGame();

  InlineKeyboardButtonTypeCallbackGame.fromJson(Map<String, dynamic> json);
}

@reflector
class InlineKeyboardButtonTypeSwitchInline extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeSwitchInline';

  String query;
  bool inCurrentChat;

  @override
  Map<String, dynamic> get params => {
    'query': query,
    'in_current_chat': inCurrentChat,
  };

  InlineKeyboardButtonTypeSwitchInline({
    this.query,
    this.inCurrentChat,
  });

  InlineKeyboardButtonTypeSwitchInline.fromJson(Map<String, dynamic> json) {
    query = tryConvertToTdObject(json['query']);
    inCurrentChat = tryConvertToTdObject(json['in_current_chat']);
  }
}

@reflector
class InlineKeyboardButtonTypeBuy extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeBuy';

  @override
  Map<String, dynamic> get params => {};

  InlineKeyboardButtonTypeBuy();

  InlineKeyboardButtonTypeBuy.fromJson(Map<String, dynamic> json);
}

@reflector
class InlineKeyboardButton extends TdObject {
  @override
  String get tdType => 'inlineKeyboardButton';

  String text;
  InlineKeyboardButtonType type;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'type': type,
  };

  InlineKeyboardButton({
    this.text,
    this.type,
  });

  InlineKeyboardButton.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    type = tryConvertToTdObject(json['type']);
  }
}

abstract class ReplyMarkup extends TdObject {}

@reflector
class ReplyMarkupRemoveKeyboard extends ReplyMarkup {
  @override
  String get tdType => 'replyMarkupRemoveKeyboard';

  bool isPersonal;

  @override
  Map<String, dynamic> get params => {
    'is_personal': isPersonal,
  };

  ReplyMarkupRemoveKeyboard({
    this.isPersonal,
  });

  ReplyMarkupRemoveKeyboard.fromJson(Map<String, dynamic> json) {
    isPersonal = tryConvertToTdObject(json['is_personal']);
  }
}

@reflector
class ReplyMarkupForceReply extends ReplyMarkup {
  @override
  String get tdType => 'replyMarkupForceReply';

  bool isPersonal;

  @override
  Map<String, dynamic> get params => {
    'is_personal': isPersonal,
  };

  ReplyMarkupForceReply({
    this.isPersonal,
  });

  ReplyMarkupForceReply.fromJson(Map<String, dynamic> json) {
    isPersonal = tryConvertToTdObject(json['is_personal']);
  }
}

@reflector
class ReplyMarkupShowKeyboard extends ReplyMarkup {
  @override
  String get tdType => 'replyMarkupShowKeyboard';

  List<List<KeyboardButton>> rows;
  bool resizeKeyboard;
  bool oneTime;
  bool isPersonal;

  @override
  Map<String, dynamic> get params => {
    'rows': rows,
    'resize_keyboard': resizeKeyboard,
    'one_time': oneTime,
    'is_personal': isPersonal,
  };

  ReplyMarkupShowKeyboard({
    this.rows,
    this.resizeKeyboard,
    this.oneTime,
    this.isPersonal,
  });

  ReplyMarkupShowKeyboard.fromJson(Map<String, dynamic> json) {
    rows = tryConvertToTdObject(json['rows']);
    resizeKeyboard = tryConvertToTdObject(json['resize_keyboard']);
    oneTime = tryConvertToTdObject(json['one_time']);
    isPersonal = tryConvertToTdObject(json['is_personal']);
  }
}

@reflector
class ReplyMarkupInlineKeyboard extends ReplyMarkup {
  @override
  String get tdType => 'replyMarkupInlineKeyboard';

  List<List<InlineKeyboardButton>> rows;

  @override
  Map<String, dynamic> get params => {
    'rows': rows,
  };

  ReplyMarkupInlineKeyboard({
    this.rows,
  });

  ReplyMarkupInlineKeyboard.fromJson(Map<String, dynamic> json) {
    rows = tryConvertToTdObject(json['rows']);
  }
}

abstract class RichText extends TdObject {}

@reflector
class RichTextPlain extends RichText {
  @override
  String get tdType => 'richTextPlain';

  String text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextPlain({
    this.text,
  });

  RichTextPlain.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextBold extends RichText {
  @override
  String get tdType => 'richTextBold';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextBold({
    this.text,
  });

  RichTextBold.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextItalic extends RichText {
  @override
  String get tdType => 'richTextItalic';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextItalic({
    this.text,
  });

  RichTextItalic.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextUnderline extends RichText {
  @override
  String get tdType => 'richTextUnderline';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextUnderline({
    this.text,
  });

  RichTextUnderline.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextStrikethrough extends RichText {
  @override
  String get tdType => 'richTextStrikethrough';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextStrikethrough({
    this.text,
  });

  RichTextStrikethrough.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextFixed extends RichText {
  @override
  String get tdType => 'richTextFixed';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextFixed({
    this.text,
  });

  RichTextFixed.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextUrl extends RichText {
  @override
  String get tdType => 'richTextUrl';

  RichText text;
  String url;
  bool isCached;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'url': url,
    'is_cached': isCached,
  };

  RichTextUrl({
    this.text,
    this.url,
    this.isCached,
  });

  RichTextUrl.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    url = tryConvertToTdObject(json['url']);
    isCached = tryConvertToTdObject(json['is_cached']);
  }
}

@reflector
class RichTextEmailAddress extends RichText {
  @override
  String get tdType => 'richTextEmailAddress';

  RichText text;
  String emailAddress;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'email_address': emailAddress,
  };

  RichTextEmailAddress({
    this.text,
    this.emailAddress,
  });

  RichTextEmailAddress.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    emailAddress = tryConvertToTdObject(json['email_address']);
  }
}

@reflector
class RichTextSubscript extends RichText {
  @override
  String get tdType => 'richTextSubscript';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextSubscript({
    this.text,
  });

  RichTextSubscript.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextSuperscript extends RichText {
  @override
  String get tdType => 'richTextSuperscript';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextSuperscript({
    this.text,
  });

  RichTextSuperscript.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextMarked extends RichText {
  @override
  String get tdType => 'richTextMarked';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextMarked({
    this.text,
  });

  RichTextMarked.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextPhoneNumber extends RichText {
  @override
  String get tdType => 'richTextPhoneNumber';

  RichText text;
  String phoneNumber;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'phone_number': phoneNumber,
  };

  RichTextPhoneNumber({
    this.text,
    this.phoneNumber,
  });

  RichTextPhoneNumber.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    phoneNumber = tryConvertToTdObject(json['phone_number']);
  }
}

@reflector
class RichTextIcon extends RichText {
  @override
  String get tdType => 'richTextIcon';

  Document document;
  int width;
  int height;

  @override
  Map<String, dynamic> get params => {
    'document': document,
    'width': width,
    'height': height,
  };

  RichTextIcon({
    this.document,
    this.width,
    this.height,
  });

  RichTextIcon.fromJson(Map<String, dynamic> json) {
    document = tryConvertToTdObject(json['document']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
  }
}

@reflector
class RichTextAnchor extends RichText {
  @override
  String get tdType => 'richTextAnchor';

  RichText text;
  String name;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'name': name,
  };

  RichTextAnchor({
    this.text,
    this.name,
  });

  RichTextAnchor.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    name = tryConvertToTdObject(json['name']);
  }
}

@reflector
class RichTexts extends RichText {
  @override
  String get tdType => 'richTexts';

  List<RichText> texts;

  @override
  Map<String, dynamic> get params => {
    'texts': texts,
  };

  RichTexts({
    this.texts,
  });

  RichTexts.fromJson(Map<String, dynamic> json) {
    texts = tryConvertToTdObject(json['texts']);
  }
}

@reflector
class PageBlockCaption extends TdObject {
  @override
  String get tdType => 'pageBlockCaption';

  RichText text;
  RichText credit;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'credit': credit,
  };

  PageBlockCaption({
    this.text,
    this.credit,
  });

  PageBlockCaption.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    credit = tryConvertToTdObject(json['credit']);
  }
}

@reflector
class PageBlockListItem extends TdObject {
  @override
  String get tdType => 'pageBlockListItem';

  String label;
  List<PageBlock> pageBlocks;

  @override
  Map<String, dynamic> get params => {
    'label': label,
    'page_blocks': pageBlocks,
  };

  PageBlockListItem({
    this.label,
    this.pageBlocks,
  });

  PageBlockListItem.fromJson(Map<String, dynamic> json) {
    label = tryConvertToTdObject(json['label']);
    pageBlocks = tryConvertToTdObject(json['page_blocks']);
  }
}

abstract class PageBlockHorizontalAlignment extends TdObject {}

@reflector
class PageBlockHorizontalAlignmentLeft extends PageBlockHorizontalAlignment {
  @override
  String get tdType => 'pageBlockHorizontalAlignmentLeft';

  @override
  Map<String, dynamic> get params => {};

  PageBlockHorizontalAlignmentLeft();

  PageBlockHorizontalAlignmentLeft.fromJson(Map<String, dynamic> json);
}

@reflector
class PageBlockHorizontalAlignmentCenter extends PageBlockHorizontalAlignment {
  @override
  String get tdType => 'pageBlockHorizontalAlignmentCenter';

  @override
  Map<String, dynamic> get params => {};

  PageBlockHorizontalAlignmentCenter();

  PageBlockHorizontalAlignmentCenter.fromJson(Map<String, dynamic> json);
}

@reflector
class PageBlockHorizontalAlignmentRight extends PageBlockHorizontalAlignment {
  @override
  String get tdType => 'pageBlockHorizontalAlignmentRight';

  @override
  Map<String, dynamic> get params => {};

  PageBlockHorizontalAlignmentRight();

  PageBlockHorizontalAlignmentRight.fromJson(Map<String, dynamic> json);
}

abstract class PageBlockVerticalAlignment extends TdObject {}

@reflector
class PageBlockVerticalAlignmentTop extends PageBlockVerticalAlignment {
  @override
  String get tdType => 'pageBlockVerticalAlignmentTop';

  @override
  Map<String, dynamic> get params => {};

  PageBlockVerticalAlignmentTop();

  PageBlockVerticalAlignmentTop.fromJson(Map<String, dynamic> json);
}

@reflector
class PageBlockVerticalAlignmentMiddle extends PageBlockVerticalAlignment {
  @override
  String get tdType => 'pageBlockVerticalAlignmentMiddle';

  @override
  Map<String, dynamic> get params => {};

  PageBlockVerticalAlignmentMiddle();

  PageBlockVerticalAlignmentMiddle.fromJson(Map<String, dynamic> json);
}

@reflector
class PageBlockVerticalAlignmentBottom extends PageBlockVerticalAlignment {
  @override
  String get tdType => 'pageBlockVerticalAlignmentBottom';

  @override
  Map<String, dynamic> get params => {};

  PageBlockVerticalAlignmentBottom();

  PageBlockVerticalAlignmentBottom.fromJson(Map<String, dynamic> json);
}

@reflector
class PageBlockTableCell extends TdObject {
  @override
  String get tdType => 'pageBlockTableCell';

  RichText text;
  bool isHeader;
  int colspan;
  int rowspan;
  PageBlockHorizontalAlignment align;
  PageBlockVerticalAlignment valign;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'is_header': isHeader,
    'colspan': colspan,
    'rowspan': rowspan,
    'align': align,
    'valign': valign,
  };

  PageBlockTableCell({
    this.text,
    this.isHeader,
    this.colspan,
    this.rowspan,
    this.align,
    this.valign,
  });

  PageBlockTableCell.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    isHeader = tryConvertToTdObject(json['is_header']);
    colspan = tryConvertToTdObject(json['colspan']);
    rowspan = tryConvertToTdObject(json['rowspan']);
    align = tryConvertToTdObject(json['align']);
    valign = tryConvertToTdObject(json['valign']);
  }
}

@reflector
class PageBlockRelatedArticle extends TdObject {
  @override
  String get tdType => 'pageBlockRelatedArticle';

  String url;
  String title;
  String description;
  Photo photo;
  String author;
  int publishDate;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'title': title,
    'description': description,
    'photo': photo,
    'author': author,
    'publish_date': publishDate,
  };

  PageBlockRelatedArticle({
    this.url,
    this.title,
    this.description,
    this.photo,
    this.author,
    this.publishDate,
  });

  PageBlockRelatedArticle.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    photo = tryConvertToTdObject(json['photo']);
    author = tryConvertToTdObject(json['author']);
    publishDate = tryConvertToTdObject(json['publish_date']);
  }
}

abstract class PageBlock extends TdObject {}

@reflector
class PageBlockTitle extends PageBlock {
  @override
  String get tdType => 'pageBlockTitle';

  RichText title;

  @override
  Map<String, dynamic> get params => {
    'title': title,
  };

  PageBlockTitle({
    this.title,
  });

  PageBlockTitle.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class PageBlockSubtitle extends PageBlock {
  @override
  String get tdType => 'pageBlockSubtitle';

  RichText subtitle;

  @override
  Map<String, dynamic> get params => {
    'subtitle': subtitle,
  };

  PageBlockSubtitle({
    this.subtitle,
  });

  PageBlockSubtitle.fromJson(Map<String, dynamic> json) {
    subtitle = tryConvertToTdObject(json['subtitle']);
  }
}

@reflector
class PageBlockAuthorDate extends PageBlock {
  @override
  String get tdType => 'pageBlockAuthorDate';

  RichText author;
  int publishDate;

  @override
  Map<String, dynamic> get params => {
    'author': author,
    'publish_date': publishDate,
  };

  PageBlockAuthorDate({
    this.author,
    this.publishDate,
  });

  PageBlockAuthorDate.fromJson(Map<String, dynamic> json) {
    author = tryConvertToTdObject(json['author']);
    publishDate = tryConvertToTdObject(json['publish_date']);
  }
}

@reflector
class PageBlockHeader extends PageBlock {
  @override
  String get tdType => 'pageBlockHeader';

  RichText header;

  @override
  Map<String, dynamic> get params => {
    'header': header,
  };

  PageBlockHeader({
    this.header,
  });

  PageBlockHeader.fromJson(Map<String, dynamic> json) {
    header = tryConvertToTdObject(json['header']);
  }
}

@reflector
class PageBlockSubheader extends PageBlock {
  @override
  String get tdType => 'pageBlockSubheader';

  RichText subheader;

  @override
  Map<String, dynamic> get params => {
    'subheader': subheader,
  };

  PageBlockSubheader({
    this.subheader,
  });

  PageBlockSubheader.fromJson(Map<String, dynamic> json) {
    subheader = tryConvertToTdObject(json['subheader']);
  }
}

@reflector
class PageBlockKicker extends PageBlock {
  @override
  String get tdType => 'pageBlockKicker';

  RichText kicker;

  @override
  Map<String, dynamic> get params => {
    'kicker': kicker,
  };

  PageBlockKicker({
    this.kicker,
  });

  PageBlockKicker.fromJson(Map<String, dynamic> json) {
    kicker = tryConvertToTdObject(json['kicker']);
  }
}

@reflector
class PageBlockParagraph extends PageBlock {
  @override
  String get tdType => 'pageBlockParagraph';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  PageBlockParagraph({
    this.text,
  });

  PageBlockParagraph.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class PageBlockPreformatted extends PageBlock {
  @override
  String get tdType => 'pageBlockPreformatted';

  RichText text;
  String language;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'language': language,
  };

  PageBlockPreformatted({
    this.text,
    this.language,
  });

  PageBlockPreformatted.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    language = tryConvertToTdObject(json['language']);
  }
}

@reflector
class PageBlockFooter extends PageBlock {
  @override
  String get tdType => 'pageBlockFooter';

  RichText footer;

  @override
  Map<String, dynamic> get params => {
    'footer': footer,
  };

  PageBlockFooter({
    this.footer,
  });

  PageBlockFooter.fromJson(Map<String, dynamic> json) {
    footer = tryConvertToTdObject(json['footer']);
  }
}

@reflector
class PageBlockDivider extends PageBlock {
  @override
  String get tdType => 'pageBlockDivider';

  @override
  Map<String, dynamic> get params => {};

  PageBlockDivider();

  PageBlockDivider.fromJson(Map<String, dynamic> json);
}

@reflector
class PageBlockAnchor extends PageBlock {
  @override
  String get tdType => 'pageBlockAnchor';

  String name;

  @override
  Map<String, dynamic> get params => {
    'name': name,
  };

  PageBlockAnchor({
    this.name,
  });

  PageBlockAnchor.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
  }
}

@reflector
class PageBlockList extends PageBlock {
  @override
  String get tdType => 'pageBlockList';

  List<PageBlockListItem> items;

  @override
  Map<String, dynamic> get params => {
    'items': items,
  };

  PageBlockList({
    this.items,
  });

  PageBlockList.fromJson(Map<String, dynamic> json) {
    items = tryConvertToTdObject(json['items']);
  }
}

@reflector
class PageBlockBlockQuote extends PageBlock {
  @override
  String get tdType => 'pageBlockBlockQuote';

  RichText text;
  RichText credit;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'credit': credit,
  };

  PageBlockBlockQuote({
    this.text,
    this.credit,
  });

  PageBlockBlockQuote.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    credit = tryConvertToTdObject(json['credit']);
  }
}

@reflector
class PageBlockPullQuote extends PageBlock {
  @override
  String get tdType => 'pageBlockPullQuote';

  RichText text;
  RichText credit;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'credit': credit,
  };

  PageBlockPullQuote({
    this.text,
    this.credit,
  });

  PageBlockPullQuote.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    credit = tryConvertToTdObject(json['credit']);
  }
}

@reflector
class PageBlockAnimation extends PageBlock {
  @override
  String get tdType => 'pageBlockAnimation';

  Animation animation;
  PageBlockCaption caption;
  bool needAutoplay;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
    'caption': caption,
    'need_autoplay': needAutoplay,
  };

  PageBlockAnimation({
    this.animation,
    this.caption,
    this.needAutoplay,
  });

  PageBlockAnimation.fromJson(Map<String, dynamic> json) {
    animation = tryConvertToTdObject(json['animation']);
    caption = tryConvertToTdObject(json['caption']);
    needAutoplay = tryConvertToTdObject(json['need_autoplay']);
  }
}

@reflector
class PageBlockAudio extends PageBlock {
  @override
  String get tdType => 'pageBlockAudio';

  Audio audio;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'audio': audio,
    'caption': caption,
  };

  PageBlockAudio({
    this.audio,
    this.caption,
  });

  PageBlockAudio.fromJson(Map<String, dynamic> json) {
    audio = tryConvertToTdObject(json['audio']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class PageBlockPhoto extends PageBlock {
  @override
  String get tdType => 'pageBlockPhoto';

  Photo photo;
  PageBlockCaption caption;
  String url;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'caption': caption,
    'url': url,
  };

  PageBlockPhoto({
    this.photo,
    this.caption,
    this.url,
  });

  PageBlockPhoto.fromJson(Map<String, dynamic> json) {
    photo = tryConvertToTdObject(json['photo']);
    caption = tryConvertToTdObject(json['caption']);
    url = tryConvertToTdObject(json['url']);
  }
}

@reflector
class PageBlockVideo extends PageBlock {
  @override
  String get tdType => 'pageBlockVideo';

  Video video;
  PageBlockCaption caption;
  bool needAutoplay;
  bool isLooped;

  @override
  Map<String, dynamic> get params => {
    'video': video,
    'caption': caption,
    'need_autoplay': needAutoplay,
    'is_looped': isLooped,
  };

  PageBlockVideo({
    this.video,
    this.caption,
    this.needAutoplay,
    this.isLooped,
  });

  PageBlockVideo.fromJson(Map<String, dynamic> json) {
    video = tryConvertToTdObject(json['video']);
    caption = tryConvertToTdObject(json['caption']);
    needAutoplay = tryConvertToTdObject(json['need_autoplay']);
    isLooped = tryConvertToTdObject(json['is_looped']);
  }
}

@reflector
class PageBlockVoiceNote extends PageBlock {
  @override
  String get tdType => 'pageBlockVoiceNote';

  VoiceNote voiceNote;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'voice_note': voiceNote,
    'caption': caption,
  };

  PageBlockVoiceNote({
    this.voiceNote,
    this.caption,
  });

  PageBlockVoiceNote.fromJson(Map<String, dynamic> json) {
    voiceNote = tryConvertToTdObject(json['voice_note']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class PageBlockCover extends PageBlock {
  @override
  String get tdType => 'pageBlockCover';

  PageBlock cover;

  @override
  Map<String, dynamic> get params => {
    'cover': cover,
  };

  PageBlockCover({
    this.cover,
  });

  PageBlockCover.fromJson(Map<String, dynamic> json) {
    cover = tryConvertToTdObject(json['cover']);
  }
}

@reflector
class PageBlockEmbedded extends PageBlock {
  @override
  String get tdType => 'pageBlockEmbedded';

  String url;
  String html;
  Photo posterPhoto;
  int width;
  int height;
  PageBlockCaption caption;
  bool isFullWidth;
  bool allowScrolling;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'html': html,
    'poster_photo': posterPhoto,
    'width': width,
    'height': height,
    'caption': caption,
    'is_full_width': isFullWidth,
    'allow_scrolling': allowScrolling,
  };

  PageBlockEmbedded({
    this.url,
    this.html,
    this.posterPhoto,
    this.width,
    this.height,
    this.caption,
    this.isFullWidth,
    this.allowScrolling,
  });

  PageBlockEmbedded.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
    html = tryConvertToTdObject(json['html']);
    posterPhoto = tryConvertToTdObject(json['poster_photo']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    caption = tryConvertToTdObject(json['caption']);
    isFullWidth = tryConvertToTdObject(json['is_full_width']);
    allowScrolling = tryConvertToTdObject(json['allow_scrolling']);
  }
}

@reflector
class PageBlockEmbeddedPost extends PageBlock {
  @override
  String get tdType => 'pageBlockEmbeddedPost';

  String url;
  String author;
  Photo authorPhoto;
  int date;
  List<PageBlock> pageBlocks;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'author': author,
    'author_photo': authorPhoto,
    'date': date,
    'page_blocks': pageBlocks,
    'caption': caption,
  };

  PageBlockEmbeddedPost({
    this.url,
    this.author,
    this.authorPhoto,
    this.date,
    this.pageBlocks,
    this.caption,
  });

  PageBlockEmbeddedPost.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
    author = tryConvertToTdObject(json['author']);
    authorPhoto = tryConvertToTdObject(json['author_photo']);
    date = tryConvertToTdObject(json['date']);
    pageBlocks = tryConvertToTdObject(json['page_blocks']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class PageBlockCollage extends PageBlock {
  @override
  String get tdType => 'pageBlockCollage';

  List<PageBlock> pageBlocks;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'page_blocks': pageBlocks,
    'caption': caption,
  };

  PageBlockCollage({
    this.pageBlocks,
    this.caption,
  });

  PageBlockCollage.fromJson(Map<String, dynamic> json) {
    pageBlocks = tryConvertToTdObject(json['page_blocks']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class PageBlockSlideshow extends PageBlock {
  @override
  String get tdType => 'pageBlockSlideshow';

  List<PageBlock> pageBlocks;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'page_blocks': pageBlocks,
    'caption': caption,
  };

  PageBlockSlideshow({
    this.pageBlocks,
    this.caption,
  });

  PageBlockSlideshow.fromJson(Map<String, dynamic> json) {
    pageBlocks = tryConvertToTdObject(json['page_blocks']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class PageBlockChatLink extends PageBlock {
  @override
  String get tdType => 'pageBlockChatLink';

  String title;
  ChatPhoto photo;
  String username;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'photo': photo,
    'username': username,
  };

  PageBlockChatLink({
    this.title,
    this.photo,
    this.username,
  });

  PageBlockChatLink.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
    photo = tryConvertToTdObject(json['photo']);
    username = tryConvertToTdObject(json['username']);
  }
}

@reflector
class PageBlockTable extends PageBlock {
  @override
  String get tdType => 'pageBlockTable';

  RichText caption;
  List<List<PageBlockTableCell>> cells;
  bool isBordered;
  bool isStriped;

  @override
  Map<String, dynamic> get params => {
    'caption': caption,
    'cells': cells,
    'is_bordered': isBordered,
    'is_striped': isStriped,
  };

  PageBlockTable({
    this.caption,
    this.cells,
    this.isBordered,
    this.isStriped,
  });

  PageBlockTable.fromJson(Map<String, dynamic> json) {
    caption = tryConvertToTdObject(json['caption']);
    cells = tryConvertToTdObject(json['cells']);
    isBordered = tryConvertToTdObject(json['is_bordered']);
    isStriped = tryConvertToTdObject(json['is_striped']);
  }
}

@reflector
class PageBlockDetails extends PageBlock {
  @override
  String get tdType => 'pageBlockDetails';

  RichText header;
  List<PageBlock> pageBlocks;
  bool isOpen;

  @override
  Map<String, dynamic> get params => {
    'header': header,
    'page_blocks': pageBlocks,
    'is_open': isOpen,
  };

  PageBlockDetails({
    this.header,
    this.pageBlocks,
    this.isOpen,
  });

  PageBlockDetails.fromJson(Map<String, dynamic> json) {
    header = tryConvertToTdObject(json['header']);
    pageBlocks = tryConvertToTdObject(json['page_blocks']);
    isOpen = tryConvertToTdObject(json['is_open']);
  }
}

@reflector
class PageBlockRelatedArticles extends PageBlock {
  @override
  String get tdType => 'pageBlockRelatedArticles';

  RichText header;
  List<PageBlockRelatedArticle> articles;

  @override
  Map<String, dynamic> get params => {
    'header': header,
    'articles': articles,
  };

  PageBlockRelatedArticles({
    this.header,
    this.articles,
  });

  PageBlockRelatedArticles.fromJson(Map<String, dynamic> json) {
    header = tryConvertToTdObject(json['header']);
    articles = tryConvertToTdObject(json['articles']);
  }
}

@reflector
class PageBlockMap extends PageBlock {
  @override
  String get tdType => 'pageBlockMap';

  Location location;
  int zoom;
  int width;
  int height;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'location': location,
    'zoom': zoom,
    'width': width,
    'height': height,
    'caption': caption,
  };

  PageBlockMap({
    this.location,
    this.zoom,
    this.width,
    this.height,
    this.caption,
  });

  PageBlockMap.fromJson(Map<String, dynamic> json) {
    location = tryConvertToTdObject(json['location']);
    zoom = tryConvertToTdObject(json['zoom']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class WebPageInstantView extends TdObject {
  @override
  String get tdType => 'webPageInstantView';

  List<PageBlock> pageBlocks;
  int version;
  String url;
  bool isRtl;
  bool isFull;

  @override
  Map<String, dynamic> get params => {
    'page_blocks': pageBlocks,
    'version': version,
    'url': url,
    'is_rtl': isRtl,
    'is_full': isFull,
  };

  WebPageInstantView({
    this.pageBlocks,
    this.version,
    this.url,
    this.isRtl,
    this.isFull,
  });

  WebPageInstantView.fromJson(Map<String, dynamic> json) {
    pageBlocks = tryConvertToTdObject(json['page_blocks']);
    version = tryConvertToTdObject(json['version']);
    url = tryConvertToTdObject(json['url']);
    isRtl = tryConvertToTdObject(json['is_rtl']);
    isFull = tryConvertToTdObject(json['is_full']);
  }
}

@reflector
class WebPage extends TdObject {
  @override
  String get tdType => 'webPage';

  String url;
  String displayUrl;
  String type;
  String siteName;
  String title;
  String description;
  Photo photo;
  String embedUrl;
  String embedType;
  int embedWidth;
  int embedHeight;
  int duration;
  String author;
  Animation animation;
  Audio audio;
  Document document;
  Sticker sticker;
  Video video;
  VideoNote videoNote;
  VoiceNote voiceNote;
  int instantViewVersion;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'display_url': displayUrl,
    'type': type,
    'site_name': siteName,
    'title': title,
    'description': description,
    'photo': photo,
    'embed_url': embedUrl,
    'embed_type': embedType,
    'embed_width': embedWidth,
    'embed_height': embedHeight,
    'duration': duration,
    'author': author,
    'animation': animation,
    'audio': audio,
    'document': document,
    'sticker': sticker,
    'video': video,
    'video_note': videoNote,
    'voice_note': voiceNote,
    'instant_view_version': instantViewVersion,
  };

  WebPage({
    this.url,
    this.displayUrl,
    this.type,
    this.siteName,
    this.title,
    this.description,
    this.photo,
    this.embedUrl,
    this.embedType,
    this.embedWidth,
    this.embedHeight,
    this.duration,
    this.author,
    this.animation,
    this.audio,
    this.document,
    this.sticker,
    this.video,
    this.videoNote,
    this.voiceNote,
    this.instantViewVersion,
  });

  WebPage.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
    displayUrl = tryConvertToTdObject(json['display_url']);
    type = tryConvertToTdObject(json['type']);
    siteName = tryConvertToTdObject(json['site_name']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    photo = tryConvertToTdObject(json['photo']);
    embedUrl = tryConvertToTdObject(json['embed_url']);
    embedType = tryConvertToTdObject(json['embed_type']);
    embedWidth = tryConvertToTdObject(json['embed_width']);
    embedHeight = tryConvertToTdObject(json['embed_height']);
    duration = tryConvertToTdObject(json['duration']);
    author = tryConvertToTdObject(json['author']);
    animation = tryConvertToTdObject(json['animation']);
    audio = tryConvertToTdObject(json['audio']);
    document = tryConvertToTdObject(json['document']);
    sticker = tryConvertToTdObject(json['sticker']);
    video = tryConvertToTdObject(json['video']);
    videoNote = tryConvertToTdObject(json['video_note']);
    voiceNote = tryConvertToTdObject(json['voice_note']);
    instantViewVersion = tryConvertToTdObject(json['instant_view_version']);
  }
}

@reflector
class Address extends TdObject {
  @override
  String get tdType => 'address';

  String countryCode;
  String state;
  String city;
  String streetLine1;
  String streetLine2;
  String postalCode;

  @override
  Map<String, dynamic> get params => {
    'country_code': countryCode,
    'state': state,
    'city': city,
    'street_line1': streetLine1,
    'street_line2': streetLine2,
    'postal_code': postalCode,
  };

  Address({
    this.countryCode,
    this.state,
    this.city,
    this.streetLine1,
    this.streetLine2,
    this.postalCode,
  });

  Address.fromJson(Map<String, dynamic> json) {
    countryCode = tryConvertToTdObject(json['country_code']);
    state = tryConvertToTdObject(json['state']);
    city = tryConvertToTdObject(json['city']);
    streetLine1 = tryConvertToTdObject(json['street_line1']);
    streetLine2 = tryConvertToTdObject(json['street_line2']);
    postalCode = tryConvertToTdObject(json['postal_code']);
  }
}

@reflector
class LabeledPricePart extends TdObject {
  @override
  String get tdType => 'labeledPricePart';

  String label;
  int amount;

  @override
  Map<String, dynamic> get params => {
    'label': label,
    'amount': amount,
  };

  LabeledPricePart({
    this.label,
    this.amount,
  });

  LabeledPricePart.fromJson(Map<String, dynamic> json) {
    label = tryConvertToTdObject(json['label']);
    amount = tryConvertToTdObject(json['amount']);
  }
}

@reflector
class Invoice extends TdObject {
  @override
  String get tdType => 'invoice';

  String currency;
  List<LabeledPricePart> priceParts;
  bool isTest;
  bool needName;
  bool needPhoneNumber;
  bool needEmailAddress;
  bool needShippingAddress;
  bool sendPhoneNumberToProvider;
  bool sendEmailAddressToProvider;
  bool isFlexible;

  @override
  Map<String, dynamic> get params => {
    'currency': currency,
    'price_parts': priceParts,
    'is_test': isTest,
    'need_name': needName,
    'need_phone_number': needPhoneNumber,
    'need_email_address': needEmailAddress,
    'need_shipping_address': needShippingAddress,
    'send_phone_number_to_provider': sendPhoneNumberToProvider,
    'send_email_address_to_provider': sendEmailAddressToProvider,
    'is_flexible': isFlexible,
  };

  Invoice({
    this.currency,
    this.priceParts,
    this.isTest,
    this.needName,
    this.needPhoneNumber,
    this.needEmailAddress,
    this.needShippingAddress,
    this.sendPhoneNumberToProvider,
    this.sendEmailAddressToProvider,
    this.isFlexible,
  });

  Invoice.fromJson(Map<String, dynamic> json) {
    currency = tryConvertToTdObject(json['currency']);
    priceParts = tryConvertToTdObject(json['price_parts']);
    isTest = tryConvertToTdObject(json['is_test']);
    needName = tryConvertToTdObject(json['need_name']);
    needPhoneNumber = tryConvertToTdObject(json['need_phone_number']);
    needEmailAddress = tryConvertToTdObject(json['need_email_address']);
    needShippingAddress = tryConvertToTdObject(json['need_shipping_address']);
    sendPhoneNumberToProvider = tryConvertToTdObject(json['send_phone_number_to_provider']);
    sendEmailAddressToProvider = tryConvertToTdObject(json['send_email_address_to_provider']);
    isFlexible = tryConvertToTdObject(json['is_flexible']);
  }
}

@reflector
class OrderInfo extends TdObject {
  @override
  String get tdType => 'orderInfo';

  String name;
  String phoneNumber;
  String emailAddress;
  Address shippingAddress;

  @override
  Map<String, dynamic> get params => {
    'name': name,
    'phone_number': phoneNumber,
    'email_address': emailAddress,
    'shipping_address': shippingAddress,
  };

  OrderInfo({
    this.name,
    this.phoneNumber,
    this.emailAddress,
    this.shippingAddress,
  });

  OrderInfo.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
    phoneNumber = tryConvertToTdObject(json['phone_number']);
    emailAddress = tryConvertToTdObject(json['email_address']);
    shippingAddress = tryConvertToTdObject(json['shipping_address']);
  }
}

@reflector
class ShippingOption extends TdObject {
  @override
  String get tdType => 'shippingOption';

  String id;
  String title;
  List<LabeledPricePart> priceParts;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'price_parts': priceParts,
  };

  ShippingOption({
    this.id,
    this.title,
    this.priceParts,
  });

  ShippingOption.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    priceParts = tryConvertToTdObject(json['price_parts']);
  }
}

@reflector
class SavedCredentials extends TdObject {
  @override
  String get tdType => 'savedCredentials';

  String id;
  String title;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
  };

  SavedCredentials({
    this.id,
    this.title,
  });

  SavedCredentials.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
  }
}

abstract class InputCredentials extends TdObject {}

@reflector
class InputCredentialsSaved extends InputCredentials {
  @override
  String get tdType => 'inputCredentialsSaved';

  String savedCredentialsId;

  @override
  Map<String, dynamic> get params => {
    'saved_credentials_id': savedCredentialsId,
  };

  InputCredentialsSaved({
    this.savedCredentialsId,
  });

  InputCredentialsSaved.fromJson(Map<String, dynamic> json) {
    savedCredentialsId = tryConvertToTdObject(json['saved_credentials_id']);
  }
}

@reflector
class InputCredentialsNew extends InputCredentials {
  @override
  String get tdType => 'inputCredentialsNew';

  String data;
  bool allowSave;

  @override
  Map<String, dynamic> get params => {
    'data': data,
    'allow_save': allowSave,
  };

  InputCredentialsNew({
    this.data,
    this.allowSave,
  });

  InputCredentialsNew.fromJson(Map<String, dynamic> json) {
    data = tryConvertToTdObject(json['data']);
    allowSave = tryConvertToTdObject(json['allow_save']);
  }
}

@reflector
class InputCredentialsAndroidPay extends InputCredentials {
  @override
  String get tdType => 'inputCredentialsAndroidPay';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  InputCredentialsAndroidPay({
    this.data,
  });

  InputCredentialsAndroidPay.fromJson(Map<String, dynamic> json) {
    data = tryConvertToTdObject(json['data']);
  }
}

@reflector
class InputCredentialsApplePay extends InputCredentials {
  @override
  String get tdType => 'inputCredentialsApplePay';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  InputCredentialsApplePay({
    this.data,
  });

  InputCredentialsApplePay.fromJson(Map<String, dynamic> json) {
    data = tryConvertToTdObject(json['data']);
  }
}

@reflector
class PaymentsProviderStripe extends TdObject {
  @override
  String get tdType => 'paymentsProviderStripe';

  String publishableKey;
  bool needCountry;
  bool needPostalCode;
  bool needCardholderName;

  @override
  Map<String, dynamic> get params => {
    'publishable_key': publishableKey,
    'need_country': needCountry,
    'need_postal_code': needPostalCode,
    'need_cardholder_name': needCardholderName,
  };

  PaymentsProviderStripe({
    this.publishableKey,
    this.needCountry,
    this.needPostalCode,
    this.needCardholderName,
  });

  PaymentsProviderStripe.fromJson(Map<String, dynamic> json) {
    publishableKey = tryConvertToTdObject(json['publishable_key']);
    needCountry = tryConvertToTdObject(json['need_country']);
    needPostalCode = tryConvertToTdObject(json['need_postal_code']);
    needCardholderName = tryConvertToTdObject(json['need_cardholder_name']);
  }
}

@reflector
class PaymentForm extends TdObject {
  @override
  String get tdType => 'paymentForm';

  Invoice invoice;
  String url;
  PaymentsProviderStripe paymentsProvider;
  OrderInfo savedOrderInfo;
  SavedCredentials savedCredentials;
  bool canSaveCredentials;
  bool needPassword;

  @override
  Map<String, dynamic> get params => {
    'invoice': invoice,
    'url': url,
    'payments_provider': paymentsProvider,
    'saved_order_info': savedOrderInfo,
    'saved_credentials': savedCredentials,
    'can_save_credentials': canSaveCredentials,
    'need_password': needPassword,
  };

  PaymentForm({
    this.invoice,
    this.url,
    this.paymentsProvider,
    this.savedOrderInfo,
    this.savedCredentials,
    this.canSaveCredentials,
    this.needPassword,
  });

  PaymentForm.fromJson(Map<String, dynamic> json) {
    invoice = tryConvertToTdObject(json['invoice']);
    url = tryConvertToTdObject(json['url']);
    paymentsProvider = tryConvertToTdObject(json['payments_provider']);
    savedOrderInfo = tryConvertToTdObject(json['saved_order_info']);
    savedCredentials = tryConvertToTdObject(json['saved_credentials']);
    canSaveCredentials = tryConvertToTdObject(json['can_save_credentials']);
    needPassword = tryConvertToTdObject(json['need_password']);
  }
}

@reflector
class ValidatedOrderInfo extends TdObject {
  @override
  String get tdType => 'validatedOrderInfo';

  String orderInfoId;
  List<ShippingOption> shippingOptions;

  @override
  Map<String, dynamic> get params => {
    'order_info_id': orderInfoId,
    'shipping_options': shippingOptions,
  };

  ValidatedOrderInfo({
    this.orderInfoId,
    this.shippingOptions,
  });

  ValidatedOrderInfo.fromJson(Map<String, dynamic> json) {
    orderInfoId = tryConvertToTdObject(json['order_info_id']);
    shippingOptions = tryConvertToTdObject(json['shipping_options']);
  }
}

@reflector
class PaymentResult extends TdObject {
  @override
  String get tdType => 'paymentResult';

  bool success;
  String verificationUrl;

  @override
  Map<String, dynamic> get params => {
    'success': success,
    'verification_url': verificationUrl,
  };

  PaymentResult({
    this.success,
    this.verificationUrl,
  });

  PaymentResult.fromJson(Map<String, dynamic> json) {
    success = tryConvertToTdObject(json['success']);
    verificationUrl = tryConvertToTdObject(json['verification_url']);
  }
}

@reflector
class PaymentReceipt extends TdObject {
  @override
  String get tdType => 'paymentReceipt';

  int date;
  int paymentsProviderUserId;
  Invoice invoice;
  OrderInfo orderInfo;
  ShippingOption shippingOption;
  String credentialsTitle;

  @override
  Map<String, dynamic> get params => {
    'date': date,
    'payments_provider_user_id': paymentsProviderUserId,
    'invoice': invoice,
    'order_info': orderInfo,
    'shipping_option': shippingOption,
    'credentials_title': credentialsTitle,
  };

  PaymentReceipt({
    this.date,
    this.paymentsProviderUserId,
    this.invoice,
    this.orderInfo,
    this.shippingOption,
    this.credentialsTitle,
  });

  PaymentReceipt.fromJson(Map<String, dynamic> json) {
    date = tryConvertToTdObject(json['date']);
    paymentsProviderUserId = tryConvertToTdObject(json['payments_provider_user_id']);
    invoice = tryConvertToTdObject(json['invoice']);
    orderInfo = tryConvertToTdObject(json['order_info']);
    shippingOption = tryConvertToTdObject(json['shipping_option']);
    credentialsTitle = tryConvertToTdObject(json['credentials_title']);
  }
}

@reflector
class DatedFile extends TdObject {
  @override
  String get tdType => 'datedFile';

  File file;
  int date;

  @override
  Map<String, dynamic> get params => {
    'file': file,
    'date': date,
  };

  DatedFile({
    this.file,
    this.date,
  });

  DatedFile.fromJson(Map<String, dynamic> json) {
    file = tryConvertToTdObject(json['file']);
    date = tryConvertToTdObject(json['date']);
  }
}

abstract class PassportElementType extends TdObject {}

@reflector
class PassportElementTypePersonalDetails extends PassportElementType {
  @override
  String get tdType => 'passportElementTypePersonalDetails';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypePersonalDetails();

  PassportElementTypePersonalDetails.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypePassport extends PassportElementType {
  @override
  String get tdType => 'passportElementTypePassport';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypePassport();

  PassportElementTypePassport.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeDriverLicense extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeDriverLicense';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeDriverLicense();

  PassportElementTypeDriverLicense.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeIdentityCard extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeIdentityCard';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeIdentityCard();

  PassportElementTypeIdentityCard.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeInternalPassport extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeInternalPassport';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeInternalPassport();

  PassportElementTypeInternalPassport.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeAddress extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeAddress';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeAddress();

  PassportElementTypeAddress.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeUtilityBill extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeUtilityBill';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeUtilityBill();

  PassportElementTypeUtilityBill.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeBankStatement extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeBankStatement';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeBankStatement();

  PassportElementTypeBankStatement.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeRentalAgreement extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeRentalAgreement';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeRentalAgreement();

  PassportElementTypeRentalAgreement.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypePassportRegistration extends PassportElementType {
  @override
  String get tdType => 'passportElementTypePassportRegistration';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypePassportRegistration();

  PassportElementTypePassportRegistration.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeTemporaryRegistration extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeTemporaryRegistration';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeTemporaryRegistration();

  PassportElementTypeTemporaryRegistration.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypePhoneNumber extends PassportElementType {
  @override
  String get tdType => 'passportElementTypePhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypePhoneNumber();

  PassportElementTypePhoneNumber.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeEmailAddress extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeEmailAddress';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeEmailAddress();

  PassportElementTypeEmailAddress.fromJson(Map<String, dynamic> json);
}

@reflector
class Date extends TdObject {
  @override
  String get tdType => 'date';

  int day;
  int month;
  int year;

  @override
  Map<String, dynamic> get params => {
    'day': day,
    'month': month,
    'year': year,
  };

  Date({
    this.day,
    this.month,
    this.year,
  });

  Date.fromJson(Map<String, dynamic> json) {
    day = tryConvertToTdObject(json['day']);
    month = tryConvertToTdObject(json['month']);
    year = tryConvertToTdObject(json['year']);
  }
}

@reflector
class PersonalDetails extends TdObject {
  @override
  String get tdType => 'personalDetails';

  String firstName;
  String middleName;
  String lastName;
  String nativeFirstName;
  String nativeMiddleName;
  String nativeLastName;
  Date birthdate;
  String gender;
  String countryCode;
  String residenceCountryCode;

  @override
  Map<String, dynamic> get params => {
    'first_name': firstName,
    'middle_name': middleName,
    'last_name': lastName,
    'native_first_name': nativeFirstName,
    'native_middle_name': nativeMiddleName,
    'native_last_name': nativeLastName,
    'birthdate': birthdate,
    'gender': gender,
    'country_code': countryCode,
    'residence_country_code': residenceCountryCode,
  };

  PersonalDetails({
    this.firstName,
    this.middleName,
    this.lastName,
    this.nativeFirstName,
    this.nativeMiddleName,
    this.nativeLastName,
    this.birthdate,
    this.gender,
    this.countryCode,
    this.residenceCountryCode,
  });

  PersonalDetails.fromJson(Map<String, dynamic> json) {
    firstName = tryConvertToTdObject(json['first_name']);
    middleName = tryConvertToTdObject(json['middle_name']);
    lastName = tryConvertToTdObject(json['last_name']);
    nativeFirstName = tryConvertToTdObject(json['native_first_name']);
    nativeMiddleName = tryConvertToTdObject(json['native_middle_name']);
    nativeLastName = tryConvertToTdObject(json['native_last_name']);
    birthdate = tryConvertToTdObject(json['birthdate']);
    gender = tryConvertToTdObject(json['gender']);
    countryCode = tryConvertToTdObject(json['country_code']);
    residenceCountryCode = tryConvertToTdObject(json['residence_country_code']);
  }
}

@reflector
class IdentityDocument extends TdObject {
  @override
  String get tdType => 'identityDocument';

  String number;
  Date expiryDate;
  DatedFile frontSide;
  DatedFile reverseSide;
  DatedFile selfie;
  List<DatedFile> translation;

  @override
  Map<String, dynamic> get params => {
    'number': number,
    'expiry_date': expiryDate,
    'front_side': frontSide,
    'reverse_side': reverseSide,
    'selfie': selfie,
    'translation': translation,
  };

  IdentityDocument({
    this.number,
    this.expiryDate,
    this.frontSide,
    this.reverseSide,
    this.selfie,
    this.translation,
  });

  IdentityDocument.fromJson(Map<String, dynamic> json) {
    number = tryConvertToTdObject(json['number']);
    expiryDate = tryConvertToTdObject(json['expiry_date']);
    frontSide = tryConvertToTdObject(json['front_side']);
    reverseSide = tryConvertToTdObject(json['reverse_side']);
    selfie = tryConvertToTdObject(json['selfie']);
    translation = tryConvertToTdObject(json['translation']);
  }
}

@reflector
class InputIdentityDocument extends TdObject {
  @override
  String get tdType => 'inputIdentityDocument';

  String number;
  Date expiryDate;
  InputFile frontSide;
  InputFile reverseSide;
  InputFile selfie;
  List<InputFile> translation;

  @override
  Map<String, dynamic> get params => {
    'number': number,
    'expiry_date': expiryDate,
    'front_side': frontSide,
    'reverse_side': reverseSide,
    'selfie': selfie,
    'translation': translation,
  };

  InputIdentityDocument({
    this.number,
    this.expiryDate,
    this.frontSide,
    this.reverseSide,
    this.selfie,
    this.translation,
  });

  InputIdentityDocument.fromJson(Map<String, dynamic> json) {
    number = tryConvertToTdObject(json['number']);
    expiryDate = tryConvertToTdObject(json['expiry_date']);
    frontSide = tryConvertToTdObject(json['front_side']);
    reverseSide = tryConvertToTdObject(json['reverse_side']);
    selfie = tryConvertToTdObject(json['selfie']);
    translation = tryConvertToTdObject(json['translation']);
  }
}

@reflector
class PersonalDocument extends TdObject {
  @override
  String get tdType => 'personalDocument';

  List<DatedFile> files;
  List<DatedFile> translation;

  @override
  Map<String, dynamic> get params => {
    'files': files,
    'translation': translation,
  };

  PersonalDocument({
    this.files,
    this.translation,
  });

  PersonalDocument.fromJson(Map<String, dynamic> json) {
    files = tryConvertToTdObject(json['files']);
    translation = tryConvertToTdObject(json['translation']);
  }
}

@reflector
class InputPersonalDocument extends TdObject {
  @override
  String get tdType => 'inputPersonalDocument';

  List<InputFile> files;
  List<InputFile> translation;

  @override
  Map<String, dynamic> get params => {
    'files': files,
    'translation': translation,
  };

  InputPersonalDocument({
    this.files,
    this.translation,
  });

  InputPersonalDocument.fromJson(Map<String, dynamic> json) {
    files = tryConvertToTdObject(json['files']);
    translation = tryConvertToTdObject(json['translation']);
  }
}

abstract class PassportElement extends TdObject {}

@reflector
class PassportElementPersonalDetails extends PassportElement {
  @override
  String get tdType => 'passportElementPersonalDetails';

  PersonalDetails personalDetails;

  @override
  Map<String, dynamic> get params => {
    'personal_details': personalDetails,
  };

  PassportElementPersonalDetails({
    this.personalDetails,
  });

  PassportElementPersonalDetails.fromJson(Map<String, dynamic> json) {
    personalDetails = tryConvertToTdObject(json['personal_details']);
  }
}

@reflector
class PassportElementPassport extends PassportElement {
  @override
  String get tdType => 'passportElementPassport';

  IdentityDocument passport;

  @override
  Map<String, dynamic> get params => {
    'passport': passport,
  };

  PassportElementPassport({
    this.passport,
  });

  PassportElementPassport.fromJson(Map<String, dynamic> json) {
    passport = tryConvertToTdObject(json['passport']);
  }
}

@reflector
class PassportElementDriverLicense extends PassportElement {
  @override
  String get tdType => 'passportElementDriverLicense';

  IdentityDocument driverLicense;

  @override
  Map<String, dynamic> get params => {
    'driver_license': driverLicense,
  };

  PassportElementDriverLicense({
    this.driverLicense,
  });

  PassportElementDriverLicense.fromJson(Map<String, dynamic> json) {
    driverLicense = tryConvertToTdObject(json['driver_license']);
  }
}

@reflector
class PassportElementIdentityCard extends PassportElement {
  @override
  String get tdType => 'passportElementIdentityCard';

  IdentityDocument identityCard;

  @override
  Map<String, dynamic> get params => {
    'identity_card': identityCard,
  };

  PassportElementIdentityCard({
    this.identityCard,
  });

  PassportElementIdentityCard.fromJson(Map<String, dynamic> json) {
    identityCard = tryConvertToTdObject(json['identity_card']);
  }
}

@reflector
class PassportElementInternalPassport extends PassportElement {
  @override
  String get tdType => 'passportElementInternalPassport';

  IdentityDocument internalPassport;

  @override
  Map<String, dynamic> get params => {
    'internal_passport': internalPassport,
  };

  PassportElementInternalPassport({
    this.internalPassport,
  });

  PassportElementInternalPassport.fromJson(Map<String, dynamic> json) {
    internalPassport = tryConvertToTdObject(json['internal_passport']);
  }
}

@reflector
class PassportElementAddress extends PassportElement {
  @override
  String get tdType => 'passportElementAddress';

  Address address;

  @override
  Map<String, dynamic> get params => {
    'address': address,
  };

  PassportElementAddress({
    this.address,
  });

  PassportElementAddress.fromJson(Map<String, dynamic> json) {
    address = tryConvertToTdObject(json['address']);
  }
}

@reflector
class PassportElementUtilityBill extends PassportElement {
  @override
  String get tdType => 'passportElementUtilityBill';

  PersonalDocument utilityBill;

  @override
  Map<String, dynamic> get params => {
    'utility_bill': utilityBill,
  };

  PassportElementUtilityBill({
    this.utilityBill,
  });

  PassportElementUtilityBill.fromJson(Map<String, dynamic> json) {
    utilityBill = tryConvertToTdObject(json['utility_bill']);
  }
}

@reflector
class PassportElementBankStatement extends PassportElement {
  @override
  String get tdType => 'passportElementBankStatement';

  PersonalDocument bankStatement;

  @override
  Map<String, dynamic> get params => {
    'bank_statement': bankStatement,
  };

  PassportElementBankStatement({
    this.bankStatement,
  });

  PassportElementBankStatement.fromJson(Map<String, dynamic> json) {
    bankStatement = tryConvertToTdObject(json['bank_statement']);
  }
}

@reflector
class PassportElementRentalAgreement extends PassportElement {
  @override
  String get tdType => 'passportElementRentalAgreement';

  PersonalDocument rentalAgreement;

  @override
  Map<String, dynamic> get params => {
    'rental_agreement': rentalAgreement,
  };

  PassportElementRentalAgreement({
    this.rentalAgreement,
  });

  PassportElementRentalAgreement.fromJson(Map<String, dynamic> json) {
    rentalAgreement = tryConvertToTdObject(json['rental_agreement']);
  }
}

@reflector
class PassportElementPassportRegistration extends PassportElement {
  @override
  String get tdType => 'passportElementPassportRegistration';

  PersonalDocument passportRegistration;

  @override
  Map<String, dynamic> get params => {
    'passport_registration': passportRegistration,
  };

  PassportElementPassportRegistration({
    this.passportRegistration,
  });

  PassportElementPassportRegistration.fromJson(Map<String, dynamic> json) {
    passportRegistration = tryConvertToTdObject(json['passport_registration']);
  }
}

@reflector
class PassportElementTemporaryRegistration extends PassportElement {
  @override
  String get tdType => 'passportElementTemporaryRegistration';

  PersonalDocument temporaryRegistration;

  @override
  Map<String, dynamic> get params => {
    'temporary_registration': temporaryRegistration,
  };

  PassportElementTemporaryRegistration({
    this.temporaryRegistration,
  });

  PassportElementTemporaryRegistration.fromJson(Map<String, dynamic> json) {
    temporaryRegistration = tryConvertToTdObject(json['temporary_registration']);
  }
}

@reflector
class PassportElementPhoneNumber extends PassportElement {
  @override
  String get tdType => 'passportElementPhoneNumber';

  String phoneNumber;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
  };

  PassportElementPhoneNumber({
    this.phoneNumber,
  });

  PassportElementPhoneNumber.fromJson(Map<String, dynamic> json) {
    phoneNumber = tryConvertToTdObject(json['phone_number']);
  }
}

@reflector
class PassportElementEmailAddress extends PassportElement {
  @override
  String get tdType => 'passportElementEmailAddress';

  String emailAddress;

  @override
  Map<String, dynamic> get params => {
    'email_address': emailAddress,
  };

  PassportElementEmailAddress({
    this.emailAddress,
  });

  PassportElementEmailAddress.fromJson(Map<String, dynamic> json) {
    emailAddress = tryConvertToTdObject(json['email_address']);
  }
}

abstract class InputPassportElement extends TdObject {}

@reflector
class InputPassportElementPersonalDetails extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementPersonalDetails';

  PersonalDetails personalDetails;

  @override
  Map<String, dynamic> get params => {
    'personal_details': personalDetails,
  };

  InputPassportElementPersonalDetails({
    this.personalDetails,
  });

  InputPassportElementPersonalDetails.fromJson(Map<String, dynamic> json) {
    personalDetails = tryConvertToTdObject(json['personal_details']);
  }
}

@reflector
class InputPassportElementPassport extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementPassport';

  InputIdentityDocument passport;

  @override
  Map<String, dynamic> get params => {
    'passport': passport,
  };

  InputPassportElementPassport({
    this.passport,
  });

  InputPassportElementPassport.fromJson(Map<String, dynamic> json) {
    passport = tryConvertToTdObject(json['passport']);
  }
}

@reflector
class InputPassportElementDriverLicense extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementDriverLicense';

  InputIdentityDocument driverLicense;

  @override
  Map<String, dynamic> get params => {
    'driver_license': driverLicense,
  };

  InputPassportElementDriverLicense({
    this.driverLicense,
  });

  InputPassportElementDriverLicense.fromJson(Map<String, dynamic> json) {
    driverLicense = tryConvertToTdObject(json['driver_license']);
  }
}

@reflector
class InputPassportElementIdentityCard extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementIdentityCard';

  InputIdentityDocument identityCard;

  @override
  Map<String, dynamic> get params => {
    'identity_card': identityCard,
  };

  InputPassportElementIdentityCard({
    this.identityCard,
  });

  InputPassportElementIdentityCard.fromJson(Map<String, dynamic> json) {
    identityCard = tryConvertToTdObject(json['identity_card']);
  }
}

@reflector
class InputPassportElementInternalPassport extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementInternalPassport';

  InputIdentityDocument internalPassport;

  @override
  Map<String, dynamic> get params => {
    'internal_passport': internalPassport,
  };

  InputPassportElementInternalPassport({
    this.internalPassport,
  });

  InputPassportElementInternalPassport.fromJson(Map<String, dynamic> json) {
    internalPassport = tryConvertToTdObject(json['internal_passport']);
  }
}

@reflector
class InputPassportElementAddress extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementAddress';

  Address address;

  @override
  Map<String, dynamic> get params => {
    'address': address,
  };

  InputPassportElementAddress({
    this.address,
  });

  InputPassportElementAddress.fromJson(Map<String, dynamic> json) {
    address = tryConvertToTdObject(json['address']);
  }
}

@reflector
class InputPassportElementUtilityBill extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementUtilityBill';

  InputPersonalDocument utilityBill;

  @override
  Map<String, dynamic> get params => {
    'utility_bill': utilityBill,
  };

  InputPassportElementUtilityBill({
    this.utilityBill,
  });

  InputPassportElementUtilityBill.fromJson(Map<String, dynamic> json) {
    utilityBill = tryConvertToTdObject(json['utility_bill']);
  }
}

@reflector
class InputPassportElementBankStatement extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementBankStatement';

  InputPersonalDocument bankStatement;

  @override
  Map<String, dynamic> get params => {
    'bank_statement': bankStatement,
  };

  InputPassportElementBankStatement({
    this.bankStatement,
  });

  InputPassportElementBankStatement.fromJson(Map<String, dynamic> json) {
    bankStatement = tryConvertToTdObject(json['bank_statement']);
  }
}

@reflector
class InputPassportElementRentalAgreement extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementRentalAgreement';

  InputPersonalDocument rentalAgreement;

  @override
  Map<String, dynamic> get params => {
    'rental_agreement': rentalAgreement,
  };

  InputPassportElementRentalAgreement({
    this.rentalAgreement,
  });

  InputPassportElementRentalAgreement.fromJson(Map<String, dynamic> json) {
    rentalAgreement = tryConvertToTdObject(json['rental_agreement']);
  }
}

@reflector
class InputPassportElementPassportRegistration extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementPassportRegistration';

  InputPersonalDocument passportRegistration;

  @override
  Map<String, dynamic> get params => {
    'passport_registration': passportRegistration,
  };

  InputPassportElementPassportRegistration({
    this.passportRegistration,
  });

  InputPassportElementPassportRegistration.fromJson(Map<String, dynamic> json) {
    passportRegistration = tryConvertToTdObject(json['passport_registration']);
  }
}

@reflector
class InputPassportElementTemporaryRegistration extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementTemporaryRegistration';

  InputPersonalDocument temporaryRegistration;

  @override
  Map<String, dynamic> get params => {
    'temporary_registration': temporaryRegistration,
  };

  InputPassportElementTemporaryRegistration({
    this.temporaryRegistration,
  });

  InputPassportElementTemporaryRegistration.fromJson(Map<String, dynamic> json) {
    temporaryRegistration = tryConvertToTdObject(json['temporary_registration']);
  }
}

@reflector
class InputPassportElementPhoneNumber extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementPhoneNumber';

  String phoneNumber;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
  };

  InputPassportElementPhoneNumber({
    this.phoneNumber,
  });

  InputPassportElementPhoneNumber.fromJson(Map<String, dynamic> json) {
    phoneNumber = tryConvertToTdObject(json['phone_number']);
  }
}

@reflector
class InputPassportElementEmailAddress extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementEmailAddress';

  String emailAddress;

  @override
  Map<String, dynamic> get params => {
    'email_address': emailAddress,
  };

  InputPassportElementEmailAddress({
    this.emailAddress,
  });

  InputPassportElementEmailAddress.fromJson(Map<String, dynamic> json) {
    emailAddress = tryConvertToTdObject(json['email_address']);
  }
}

@reflector
class PassportElements extends TdObject {
  @override
  String get tdType => 'passportElements';

  List<PassportElement> elements;

  @override
  Map<String, dynamic> get params => {
    'elements': elements,
  };

  PassportElements({
    this.elements,
  });

  PassportElements.fromJson(Map<String, dynamic> json) {
    elements = tryConvertToTdObject(json['elements']);
  }
}

abstract class PassportElementErrorSource extends TdObject {}

@reflector
class PassportElementErrorSourceUnspecified extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceUnspecified';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceUnspecified();

  PassportElementErrorSourceUnspecified.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementErrorSourceDataField extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceDataField';

  String fieldName;

  @override
  Map<String, dynamic> get params => {
    'field_name': fieldName,
  };

  PassportElementErrorSourceDataField({
    this.fieldName,
  });

  PassportElementErrorSourceDataField.fromJson(Map<String, dynamic> json) {
    fieldName = tryConvertToTdObject(json['field_name']);
  }
}

@reflector
class PassportElementErrorSourceFrontSide extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceFrontSide';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceFrontSide();

  PassportElementErrorSourceFrontSide.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementErrorSourceReverseSide extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceReverseSide';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceReverseSide();

  PassportElementErrorSourceReverseSide.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementErrorSourceSelfie extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceSelfie';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceSelfie();

  PassportElementErrorSourceSelfie.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementErrorSourceTranslationFile extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceTranslationFile';

  int fileIndex;

  @override
  Map<String, dynamic> get params => {
    'file_index': fileIndex,
  };

  PassportElementErrorSourceTranslationFile({
    this.fileIndex,
  });

  PassportElementErrorSourceTranslationFile.fromJson(Map<String, dynamic> json) {
    fileIndex = tryConvertToTdObject(json['file_index']);
  }
}

@reflector
class PassportElementErrorSourceTranslationFiles extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceTranslationFiles';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceTranslationFiles();

  PassportElementErrorSourceTranslationFiles.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementErrorSourceFile extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceFile';

  int fileIndex;

  @override
  Map<String, dynamic> get params => {
    'file_index': fileIndex,
  };

  PassportElementErrorSourceFile({
    this.fileIndex,
  });

  PassportElementErrorSourceFile.fromJson(Map<String, dynamic> json) {
    fileIndex = tryConvertToTdObject(json['file_index']);
  }
}

@reflector
class PassportElementErrorSourceFiles extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceFiles';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceFiles();

  PassportElementErrorSourceFiles.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementError extends TdObject {
  @override
  String get tdType => 'passportElementError';

  PassportElementType type;
  String message;
  PassportElementErrorSource source;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'message': message,
    'source': source,
  };

  PassportElementError({
    this.type,
    this.message,
    this.source,
  });

  PassportElementError.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
    message = tryConvertToTdObject(json['message']);
    source = tryConvertToTdObject(json['source']);
  }
}

@reflector
class PassportSuitableElement extends TdObject {
  @override
  String get tdType => 'passportSuitableElement';

  PassportElementType type;
  bool isSelfieRequired;
  bool isTranslationRequired;
  bool isNativeNameRequired;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'is_selfie_required': isSelfieRequired,
    'is_translation_required': isTranslationRequired,
    'is_native_name_required': isNativeNameRequired,
  };

  PassportSuitableElement({
    this.type,
    this.isSelfieRequired,
    this.isTranslationRequired,
    this.isNativeNameRequired,
  });

  PassportSuitableElement.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
    isSelfieRequired = tryConvertToTdObject(json['is_selfie_required']);
    isTranslationRequired = tryConvertToTdObject(json['is_translation_required']);
    isNativeNameRequired = tryConvertToTdObject(json['is_native_name_required']);
  }
}

@reflector
class PassportRequiredElement extends TdObject {
  @override
  String get tdType => 'passportRequiredElement';

  List<PassportSuitableElement> suitableElements;

  @override
  Map<String, dynamic> get params => {
    'suitable_elements': suitableElements,
  };

  PassportRequiredElement({
    this.suitableElements,
  });

  PassportRequiredElement.fromJson(Map<String, dynamic> json) {
    suitableElements = tryConvertToTdObject(json['suitable_elements']);
  }
}

@reflector
class PassportAuthorizationForm extends TdObject {
  @override
  String get tdType => 'passportAuthorizationForm';

  int id;
  List<PassportRequiredElement> requiredElements;
  String privacyPolicyUrl;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'required_elements': requiredElements,
    'privacy_policy_url': privacyPolicyUrl,
  };

  PassportAuthorizationForm({
    this.id,
    this.requiredElements,
    this.privacyPolicyUrl,
  });

  PassportAuthorizationForm.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    requiredElements = tryConvertToTdObject(json['required_elements']);
    privacyPolicyUrl = tryConvertToTdObject(json['privacy_policy_url']);
  }
}

@reflector
class PassportElementsWithErrors extends TdObject {
  @override
  String get tdType => 'passportElementsWithErrors';

  List<PassportElement> elements;
  List<PassportElementError> errors;

  @override
  Map<String, dynamic> get params => {
    'elements': elements,
    'errors': errors,
  };

  PassportElementsWithErrors({
    this.elements,
    this.errors,
  });

  PassportElementsWithErrors.fromJson(Map<String, dynamic> json) {
    elements = tryConvertToTdObject(json['elements']);
    errors = tryConvertToTdObject(json['errors']);
  }
}

@reflector
class EncryptedCredentials extends TdObject {
  @override
  String get tdType => 'encryptedCredentials';

  String data;
  String hash;
  String secret;

  @override
  Map<String, dynamic> get params => {
    'data': data,
    'hash': hash,
    'secret': secret,
  };

  EncryptedCredentials({
    this.data,
    this.hash,
    this.secret,
  });

  EncryptedCredentials.fromJson(Map<String, dynamic> json) {
    data = tryConvertToTdObject(json['data']);
    hash = tryConvertToTdObject(json['hash']);
    secret = tryConvertToTdObject(json['secret']);
  }
}

@reflector
class EncryptedPassportElement extends TdObject {
  @override
  String get tdType => 'encryptedPassportElement';

  PassportElementType type;
  String data;
  DatedFile frontSide;
  DatedFile reverseSide;
  DatedFile selfie;
  List<DatedFile> translation;
  List<DatedFile> files;
  String value;
  String hash;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'data': data,
    'front_side': frontSide,
    'reverse_side': reverseSide,
    'selfie': selfie,
    'translation': translation,
    'files': files,
    'value': value,
    'hash': hash,
  };

  EncryptedPassportElement({
    this.type,
    this.data,
    this.frontSide,
    this.reverseSide,
    this.selfie,
    this.translation,
    this.files,
    this.value,
    this.hash,
  });

  EncryptedPassportElement.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
    data = tryConvertToTdObject(json['data']);
    frontSide = tryConvertToTdObject(json['front_side']);
    reverseSide = tryConvertToTdObject(json['reverse_side']);
    selfie = tryConvertToTdObject(json['selfie']);
    translation = tryConvertToTdObject(json['translation']);
    files = tryConvertToTdObject(json['files']);
    value = tryConvertToTdObject(json['value']);
    hash = tryConvertToTdObject(json['hash']);
  }
}

abstract class InputPassportElementErrorSource extends TdObject {}

@reflector
class InputPassportElementErrorSourceUnspecified extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceUnspecified';

  String elementHash;

  @override
  Map<String, dynamic> get params => {
    'element_hash': elementHash,
  };

  InputPassportElementErrorSourceUnspecified({
    this.elementHash,
  });

  InputPassportElementErrorSourceUnspecified.fromJson(Map<String, dynamic> json) {
    elementHash = tryConvertToTdObject(json['element_hash']);
  }
}

@reflector
class InputPassportElementErrorSourceDataField extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceDataField';

  String fieldName;
  String dataHash;

  @override
  Map<String, dynamic> get params => {
    'field_name': fieldName,
    'data_hash': dataHash,
  };

  InputPassportElementErrorSourceDataField({
    this.fieldName,
    this.dataHash,
  });

  InputPassportElementErrorSourceDataField.fromJson(Map<String, dynamic> json) {
    fieldName = tryConvertToTdObject(json['field_name']);
    dataHash = tryConvertToTdObject(json['data_hash']);
  }
}

@reflector
class InputPassportElementErrorSourceFrontSide extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceFrontSide';

  String fileHash;

  @override
  Map<String, dynamic> get params => {
    'file_hash': fileHash,
  };

  InputPassportElementErrorSourceFrontSide({
    this.fileHash,
  });

  InputPassportElementErrorSourceFrontSide.fromJson(Map<String, dynamic> json) {
    fileHash = tryConvertToTdObject(json['file_hash']);
  }
}

@reflector
class InputPassportElementErrorSourceReverseSide extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceReverseSide';

  String fileHash;

  @override
  Map<String, dynamic> get params => {
    'file_hash': fileHash,
  };

  InputPassportElementErrorSourceReverseSide({
    this.fileHash,
  });

  InputPassportElementErrorSourceReverseSide.fromJson(Map<String, dynamic> json) {
    fileHash = tryConvertToTdObject(json['file_hash']);
  }
}

@reflector
class InputPassportElementErrorSourceSelfie extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceSelfie';

  String fileHash;

  @override
  Map<String, dynamic> get params => {
    'file_hash': fileHash,
  };

  InputPassportElementErrorSourceSelfie({
    this.fileHash,
  });

  InputPassportElementErrorSourceSelfie.fromJson(Map<String, dynamic> json) {
    fileHash = tryConvertToTdObject(json['file_hash']);
  }
}

@reflector
class InputPassportElementErrorSourceTranslationFile extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceTranslationFile';

  String fileHash;

  @override
  Map<String, dynamic> get params => {
    'file_hash': fileHash,
  };

  InputPassportElementErrorSourceTranslationFile({
    this.fileHash,
  });

  InputPassportElementErrorSourceTranslationFile.fromJson(Map<String, dynamic> json) {
    fileHash = tryConvertToTdObject(json['file_hash']);
  }
}

@reflector
class InputPassportElementErrorSourceTranslationFiles extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceTranslationFiles';

  List<String> fileHashes;

  @override
  Map<String, dynamic> get params => {
    'file_hashes': fileHashes,
  };

  InputPassportElementErrorSourceTranslationFiles({
    this.fileHashes,
  });

  InputPassportElementErrorSourceTranslationFiles.fromJson(Map<String, dynamic> json) {
    fileHashes = tryConvertToTdObject(json['file_hashes']);
  }
}

@reflector
class InputPassportElementErrorSourceFile extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceFile';

  String fileHash;

  @override
  Map<String, dynamic> get params => {
    'file_hash': fileHash,
  };

  InputPassportElementErrorSourceFile({
    this.fileHash,
  });

  InputPassportElementErrorSourceFile.fromJson(Map<String, dynamic> json) {
    fileHash = tryConvertToTdObject(json['file_hash']);
  }
}

@reflector
class InputPassportElementErrorSourceFiles extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceFiles';

  List<String> fileHashes;

  @override
  Map<String, dynamic> get params => {
    'file_hashes': fileHashes,
  };

  InputPassportElementErrorSourceFiles({
    this.fileHashes,
  });

  InputPassportElementErrorSourceFiles.fromJson(Map<String, dynamic> json) {
    fileHashes = tryConvertToTdObject(json['file_hashes']);
  }
}

@reflector
class InputPassportElementError extends TdObject {
  @override
  String get tdType => 'inputPassportElementError';

  PassportElementType type;
  String message;
  InputPassportElementErrorSource source;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'message': message,
    'source': source,
  };

  InputPassportElementError({
    this.type,
    this.message,
    this.source,
  });

  InputPassportElementError.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
    message = tryConvertToTdObject(json['message']);
    source = tryConvertToTdObject(json['source']);
  }
}

abstract class MessageContent extends TdObject {}

@reflector
class MessageText extends MessageContent {
  @override
  String get tdType => 'messageText';

  FormattedText text;
  WebPage webPage;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'web_page': webPage,
  };

  MessageText({
    this.text,
    this.webPage,
  });

  MessageText.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    webPage = tryConvertToTdObject(json['web_page']);
  }
}

@reflector
class MessageAnimation extends MessageContent {
  @override
  String get tdType => 'messageAnimation';

  Animation animation;
  FormattedText caption;
  bool isSecret;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
    'caption': caption,
    'is_secret': isSecret,
  };

  MessageAnimation({
    this.animation,
    this.caption,
    this.isSecret,
  });

  MessageAnimation.fromJson(Map<String, dynamic> json) {
    animation = tryConvertToTdObject(json['animation']);
    caption = tryConvertToTdObject(json['caption']);
    isSecret = tryConvertToTdObject(json['is_secret']);
  }
}

@reflector
class MessageAudio extends MessageContent {
  @override
  String get tdType => 'messageAudio';

  Audio audio;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'audio': audio,
    'caption': caption,
  };

  MessageAudio({
    this.audio,
    this.caption,
  });

  MessageAudio.fromJson(Map<String, dynamic> json) {
    audio = tryConvertToTdObject(json['audio']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class MessageDocument extends MessageContent {
  @override
  String get tdType => 'messageDocument';

  Document document;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'document': document,
    'caption': caption,
  };

  MessageDocument({
    this.document,
    this.caption,
  });

  MessageDocument.fromJson(Map<String, dynamic> json) {
    document = tryConvertToTdObject(json['document']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class MessagePhoto extends MessageContent {
  @override
  String get tdType => 'messagePhoto';

  Photo photo;
  FormattedText caption;
  bool isSecret;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'caption': caption,
    'is_secret': isSecret,
  };

  MessagePhoto({
    this.photo,
    this.caption,
    this.isSecret,
  });

  MessagePhoto.fromJson(Map<String, dynamic> json) {
    photo = tryConvertToTdObject(json['photo']);
    caption = tryConvertToTdObject(json['caption']);
    isSecret = tryConvertToTdObject(json['is_secret']);
  }
}

@reflector
class MessageExpiredPhoto extends MessageContent {
  @override
  String get tdType => 'messageExpiredPhoto';

  @override
  Map<String, dynamic> get params => {};

  MessageExpiredPhoto();

  MessageExpiredPhoto.fromJson(Map<String, dynamic> json);
}

@reflector
class MessageSticker extends MessageContent {
  @override
  String get tdType => 'messageSticker';

  Sticker sticker;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
  };

  MessageSticker({
    this.sticker,
  });

  MessageSticker.fromJson(Map<String, dynamic> json) {
    sticker = tryConvertToTdObject(json['sticker']);
  }
}

@reflector
class MessageVideo extends MessageContent {
  @override
  String get tdType => 'messageVideo';

  Video video;
  FormattedText caption;
  bool isSecret;

  @override
  Map<String, dynamic> get params => {
    'video': video,
    'caption': caption,
    'is_secret': isSecret,
  };

  MessageVideo({
    this.video,
    this.caption,
    this.isSecret,
  });

  MessageVideo.fromJson(Map<String, dynamic> json) {
    video = tryConvertToTdObject(json['video']);
    caption = tryConvertToTdObject(json['caption']);
    isSecret = tryConvertToTdObject(json['is_secret']);
  }
}

@reflector
class MessageExpiredVideo extends MessageContent {
  @override
  String get tdType => 'messageExpiredVideo';

  @override
  Map<String, dynamic> get params => {};

  MessageExpiredVideo();

  MessageExpiredVideo.fromJson(Map<String, dynamic> json);
}

@reflector
class MessageVideoNote extends MessageContent {
  @override
  String get tdType => 'messageVideoNote';

  VideoNote videoNote;
  bool isViewed;
  bool isSecret;

  @override
  Map<String, dynamic> get params => {
    'video_note': videoNote,
    'is_viewed': isViewed,
    'is_secret': isSecret,
  };

  MessageVideoNote({
    this.videoNote,
    this.isViewed,
    this.isSecret,
  });

  MessageVideoNote.fromJson(Map<String, dynamic> json) {
    videoNote = tryConvertToTdObject(json['video_note']);
    isViewed = tryConvertToTdObject(json['is_viewed']);
    isSecret = tryConvertToTdObject(json['is_secret']);
  }
}

@reflector
class MessageVoiceNote extends MessageContent {
  @override
  String get tdType => 'messageVoiceNote';

  VoiceNote voiceNote;
  FormattedText caption;
  bool isListened;

  @override
  Map<String, dynamic> get params => {
    'voice_note': voiceNote,
    'caption': caption,
    'is_listened': isListened,
  };

  MessageVoiceNote({
    this.voiceNote,
    this.caption,
    this.isListened,
  });

  MessageVoiceNote.fromJson(Map<String, dynamic> json) {
    voiceNote = tryConvertToTdObject(json['voice_note']);
    caption = tryConvertToTdObject(json['caption']);
    isListened = tryConvertToTdObject(json['is_listened']);
  }
}

@reflector
class MessageLocation extends MessageContent {
  @override
  String get tdType => 'messageLocation';

  Location location;
  int livePeriod;
  int expiresIn;

  @override
  Map<String, dynamic> get params => {
    'location': location,
    'live_period': livePeriod,
    'expires_in': expiresIn,
  };

  MessageLocation({
    this.location,
    this.livePeriod,
    this.expiresIn,
  });

  MessageLocation.fromJson(Map<String, dynamic> json) {
    location = tryConvertToTdObject(json['location']);
    livePeriod = tryConvertToTdObject(json['live_period']);
    expiresIn = tryConvertToTdObject(json['expires_in']);
  }
}

@reflector
class MessageVenue extends MessageContent {
  @override
  String get tdType => 'messageVenue';

  Venue venue;

  @override
  Map<String, dynamic> get params => {
    'venue': venue,
  };

  MessageVenue({
    this.venue,
  });

  MessageVenue.fromJson(Map<String, dynamic> json) {
    venue = tryConvertToTdObject(json['venue']);
  }
}

@reflector
class MessageContact extends MessageContent {
  @override
  String get tdType => 'messageContact';

  Contact contact;

  @override
  Map<String, dynamic> get params => {
    'contact': contact,
  };

  MessageContact({
    this.contact,
  });

  MessageContact.fromJson(Map<String, dynamic> json) {
    contact = tryConvertToTdObject(json['contact']);
  }
}

@reflector
class MessageGame extends MessageContent {
  @override
  String get tdType => 'messageGame';

  Game game;

  @override
  Map<String, dynamic> get params => {
    'game': game,
  };

  MessageGame({
    this.game,
  });

  MessageGame.fromJson(Map<String, dynamic> json) {
    game = tryConvertToTdObject(json['game']);
  }
}

@reflector
class MessagePoll extends MessageContent {
  @override
  String get tdType => 'messagePoll';

  Poll poll;

  @override
  Map<String, dynamic> get params => {
    'poll': poll,
  };

  MessagePoll({
    this.poll,
  });

  MessagePoll.fromJson(Map<String, dynamic> json) {
    poll = tryConvertToTdObject(json['poll']);
  }
}

@reflector
class MessageInvoice extends MessageContent {
  @override
  String get tdType => 'messageInvoice';

  String title;
  String description;
  Photo photo;
  String currency;
  int totalAmount;
  String startParameter;
  bool isTest;
  bool needShippingAddress;
  int receiptMessageId;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'description': description,
    'photo': photo,
    'currency': currency,
    'total_amount': totalAmount,
    'start_parameter': startParameter,
    'is_test': isTest,
    'need_shipping_address': needShippingAddress,
    'receipt_message_id': receiptMessageId,
  };

  MessageInvoice({
    this.title,
    this.description,
    this.photo,
    this.currency,
    this.totalAmount,
    this.startParameter,
    this.isTest,
    this.needShippingAddress,
    this.receiptMessageId,
  });

  MessageInvoice.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    photo = tryConvertToTdObject(json['photo']);
    currency = tryConvertToTdObject(json['currency']);
    totalAmount = tryConvertToTdObject(json['total_amount']);
    startParameter = tryConvertToTdObject(json['start_parameter']);
    isTest = tryConvertToTdObject(json['is_test']);
    needShippingAddress = tryConvertToTdObject(json['need_shipping_address']);
    receiptMessageId = tryConvertToTdObject(json['receipt_message_id']);
  }
}

@reflector
class MessageCall extends MessageContent {
  @override
  String get tdType => 'messageCall';

  CallDiscardReason discardReason;
  int duration;

  @override
  Map<String, dynamic> get params => {
    'discard_reason': discardReason,
    'duration': duration,
  };

  MessageCall({
    this.discardReason,
    this.duration,
  });

  MessageCall.fromJson(Map<String, dynamic> json) {
    discardReason = tryConvertToTdObject(json['discard_reason']);
    duration = tryConvertToTdObject(json['duration']);
  }
}

@reflector
class MessageBasicGroupChatCreate extends MessageContent {
  @override
  String get tdType => 'messageBasicGroupChatCreate';

  String title;
  List<int> memberUserIds;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'member_user_ids': memberUserIds,
  };

  MessageBasicGroupChatCreate({
    this.title,
    this.memberUserIds,
  });

  MessageBasicGroupChatCreate.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
    memberUserIds = tryConvertToTdObject(json['member_user_ids']);
  }
}

@reflector
class MessageSupergroupChatCreate extends MessageContent {
  @override
  String get tdType => 'messageSupergroupChatCreate';

  String title;

  @override
  Map<String, dynamic> get params => {
    'title': title,
  };

  MessageSupergroupChatCreate({
    this.title,
  });

  MessageSupergroupChatCreate.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class MessageChatChangeTitle extends MessageContent {
  @override
  String get tdType => 'messageChatChangeTitle';

  String title;

  @override
  Map<String, dynamic> get params => {
    'title': title,
  };

  MessageChatChangeTitle({
    this.title,
  });

  MessageChatChangeTitle.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class MessageChatChangePhoto extends MessageContent {
  @override
  String get tdType => 'messageChatChangePhoto';

  Photo photo;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
  };

  MessageChatChangePhoto({
    this.photo,
  });

  MessageChatChangePhoto.fromJson(Map<String, dynamic> json) {
    photo = tryConvertToTdObject(json['photo']);
  }
}

@reflector
class MessageChatDeletePhoto extends MessageContent {
  @override
  String get tdType => 'messageChatDeletePhoto';

  @override
  Map<String, dynamic> get params => {};

  MessageChatDeletePhoto();

  MessageChatDeletePhoto.fromJson(Map<String, dynamic> json);
}

@reflector
class MessageChatAddMembers extends MessageContent {
  @override
  String get tdType => 'messageChatAddMembers';

  List<int> memberUserIds;

  @override
  Map<String, dynamic> get params => {
    'member_user_ids': memberUserIds,
  };

  MessageChatAddMembers({
    this.memberUserIds,
  });

  MessageChatAddMembers.fromJson(Map<String, dynamic> json) {
    memberUserIds = tryConvertToTdObject(json['member_user_ids']);
  }
}

@reflector
class MessageChatJoinByLink extends MessageContent {
  @override
  String get tdType => 'messageChatJoinByLink';

  @override
  Map<String, dynamic> get params => {};

  MessageChatJoinByLink();

  MessageChatJoinByLink.fromJson(Map<String, dynamic> json);
}

@reflector
class MessageChatDeleteMember extends MessageContent {
  @override
  String get tdType => 'messageChatDeleteMember';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  MessageChatDeleteMember({
    this.userId,
  });

  MessageChatDeleteMember.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class MessageChatUpgradeTo extends MessageContent {
  @override
  String get tdType => 'messageChatUpgradeTo';

  int supergroupId;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
  };

  MessageChatUpgradeTo({
    this.supergroupId,
  });

  MessageChatUpgradeTo.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
  }
}

@reflector
class MessageChatUpgradeFrom extends MessageContent {
  @override
  String get tdType => 'messageChatUpgradeFrom';

  String title;
  int basicGroupId;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'basic_group_id': basicGroupId,
  };

  MessageChatUpgradeFrom({
    this.title,
    this.basicGroupId,
  });

  MessageChatUpgradeFrom.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
    basicGroupId = tryConvertToTdObject(json['basic_group_id']);
  }
}

@reflector
class MessagePinMessage extends MessageContent {
  @override
  String get tdType => 'messagePinMessage';

  int messageId;

  @override
  Map<String, dynamic> get params => {
    'message_id': messageId,
  };

  MessagePinMessage({
    this.messageId,
  });

  MessagePinMessage.fromJson(Map<String, dynamic> json) {
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class MessageScreenshotTaken extends MessageContent {
  @override
  String get tdType => 'messageScreenshotTaken';

  @override
  Map<String, dynamic> get params => {};

  MessageScreenshotTaken();

  MessageScreenshotTaken.fromJson(Map<String, dynamic> json);
}

@reflector
class MessageChatSetTtl extends MessageContent {
  @override
  String get tdType => 'messageChatSetTtl';

  int ttl;

  @override
  Map<String, dynamic> get params => {
    'ttl': ttl,
  };

  MessageChatSetTtl({
    this.ttl,
  });

  MessageChatSetTtl.fromJson(Map<String, dynamic> json) {
    ttl = tryConvertToTdObject(json['ttl']);
  }
}

@reflector
class MessageCustomServiceAction extends MessageContent {
  @override
  String get tdType => 'messageCustomServiceAction';

  String text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  MessageCustomServiceAction({
    this.text,
  });

  MessageCustomServiceAction.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class MessageGameScore extends MessageContent {
  @override
  String get tdType => 'messageGameScore';

  int gameMessageId;
  int gameId;
  int score;

  @override
  Map<String, dynamic> get params => {
    'game_message_id': gameMessageId,
    'game_id': gameId,
    'score': score,
  };

  MessageGameScore({
    this.gameMessageId,
    this.gameId,
    this.score,
  });

  MessageGameScore.fromJson(Map<String, dynamic> json) {
    gameMessageId = tryConvertToTdObject(json['game_message_id']);
    gameId = tryConvertToTdObject(json['game_id']);
    score = tryConvertToTdObject(json['score']);
  }
}

@reflector
class MessagePaymentSuccessful extends MessageContent {
  @override
  String get tdType => 'messagePaymentSuccessful';

  int invoiceMessageId;
  String currency;
  int totalAmount;

  @override
  Map<String, dynamic> get params => {
    'invoice_message_id': invoiceMessageId,
    'currency': currency,
    'total_amount': totalAmount,
  };

  MessagePaymentSuccessful({
    this.invoiceMessageId,
    this.currency,
    this.totalAmount,
  });

  MessagePaymentSuccessful.fromJson(Map<String, dynamic> json) {
    invoiceMessageId = tryConvertToTdObject(json['invoice_message_id']);
    currency = tryConvertToTdObject(json['currency']);
    totalAmount = tryConvertToTdObject(json['total_amount']);
  }
}

@reflector
class MessagePaymentSuccessfulBot extends MessageContent {
  @override
  String get tdType => 'messagePaymentSuccessfulBot';

  int invoiceMessageId;
  String currency;
  int totalAmount;
  String invoicePayload;
  String shippingOptionId;
  OrderInfo orderInfo;
  String telegramPaymentChargeId;
  String providerPaymentChargeId;

  @override
  Map<String, dynamic> get params => {
    'invoice_message_id': invoiceMessageId,
    'currency': currency,
    'total_amount': totalAmount,
    'invoice_payload': invoicePayload,
    'shipping_option_id': shippingOptionId,
    'order_info': orderInfo,
    'telegram_payment_charge_id': telegramPaymentChargeId,
    'provider_payment_charge_id': providerPaymentChargeId,
  };

  MessagePaymentSuccessfulBot({
    this.invoiceMessageId,
    this.currency,
    this.totalAmount,
    this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
    this.telegramPaymentChargeId,
    this.providerPaymentChargeId,
  });

  MessagePaymentSuccessfulBot.fromJson(Map<String, dynamic> json) {
    invoiceMessageId = tryConvertToTdObject(json['invoice_message_id']);
    currency = tryConvertToTdObject(json['currency']);
    totalAmount = tryConvertToTdObject(json['total_amount']);
    invoicePayload = tryConvertToTdObject(json['invoice_payload']);
    shippingOptionId = tryConvertToTdObject(json['shipping_option_id']);
    orderInfo = tryConvertToTdObject(json['order_info']);
    telegramPaymentChargeId = tryConvertToTdObject(json['telegram_payment_charge_id']);
    providerPaymentChargeId = tryConvertToTdObject(json['provider_payment_charge_id']);
  }
}

@reflector
class MessageContactRegistered extends MessageContent {
  @override
  String get tdType => 'messageContactRegistered';

  @override
  Map<String, dynamic> get params => {};

  MessageContactRegistered();

  MessageContactRegistered.fromJson(Map<String, dynamic> json);
}

@reflector
class MessageWebsiteConnected extends MessageContent {
  @override
  String get tdType => 'messageWebsiteConnected';

  String domainName;

  @override
  Map<String, dynamic> get params => {
    'domain_name': domainName,
  };

  MessageWebsiteConnected({
    this.domainName,
  });

  MessageWebsiteConnected.fromJson(Map<String, dynamic> json) {
    domainName = tryConvertToTdObject(json['domain_name']);
  }
}

@reflector
class MessagePassportDataSent extends MessageContent {
  @override
  String get tdType => 'messagePassportDataSent';

  List<PassportElementType> types;

  @override
  Map<String, dynamic> get params => {
    'types': types,
  };

  MessagePassportDataSent({
    this.types,
  });

  MessagePassportDataSent.fromJson(Map<String, dynamic> json) {
    types = tryConvertToTdObject(json['types']);
  }
}

@reflector
class MessagePassportDataReceived extends MessageContent {
  @override
  String get tdType => 'messagePassportDataReceived';

  List<EncryptedPassportElement> elements;
  EncryptedCredentials credentials;

  @override
  Map<String, dynamic> get params => {
    'elements': elements,
    'credentials': credentials,
  };

  MessagePassportDataReceived({
    this.elements,
    this.credentials,
  });

  MessagePassportDataReceived.fromJson(Map<String, dynamic> json) {
    elements = tryConvertToTdObject(json['elements']);
    credentials = tryConvertToTdObject(json['credentials']);
  }
}

@reflector
class MessageUnsupported extends MessageContent {
  @override
  String get tdType => 'messageUnsupported';

  @override
  Map<String, dynamic> get params => {};

  MessageUnsupported();

  MessageUnsupported.fromJson(Map<String, dynamic> json);
}

abstract class TextEntityType extends TdObject {}

@reflector
class TextEntityTypeMention extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeMention';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeMention();

  TextEntityTypeMention.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeHashtag extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeHashtag';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeHashtag();

  TextEntityTypeHashtag.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeCashtag extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeCashtag';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeCashtag();

  TextEntityTypeCashtag.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeBotCommand extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeBotCommand';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeBotCommand();

  TextEntityTypeBotCommand.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeUrl extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeUrl';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeUrl();

  TextEntityTypeUrl.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeEmailAddress extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeEmailAddress';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeEmailAddress();

  TextEntityTypeEmailAddress.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeBold extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeBold';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeBold();

  TextEntityTypeBold.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeItalic extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeItalic';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeItalic();

  TextEntityTypeItalic.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeCode extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeCode';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeCode();

  TextEntityTypeCode.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypePre extends TextEntityType {
  @override
  String get tdType => 'textEntityTypePre';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypePre();

  TextEntityTypePre.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypePreCode extends TextEntityType {
  @override
  String get tdType => 'textEntityTypePreCode';

  String language;

  @override
  Map<String, dynamic> get params => {
    'language': language,
  };

  TextEntityTypePreCode({
    this.language,
  });

  TextEntityTypePreCode.fromJson(Map<String, dynamic> json) {
    language = tryConvertToTdObject(json['language']);
  }
}

@reflector
class TextEntityTypeTextUrl extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeTextUrl';

  String url;

  @override
  Map<String, dynamic> get params => {
    'url': url,
  };

  TextEntityTypeTextUrl({
    this.url,
  });

  TextEntityTypeTextUrl.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
  }
}

@reflector
class TextEntityTypeMentionName extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeMentionName';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  TextEntityTypeMentionName({
    this.userId,
  });

  TextEntityTypeMentionName.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class TextEntityTypePhoneNumber extends TextEntityType {
  @override
  String get tdType => 'textEntityTypePhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypePhoneNumber();

  TextEntityTypePhoneNumber.fromJson(Map<String, dynamic> json);
}

@reflector
class InputThumbnail extends TdObject {
  @override
  String get tdType => 'inputThumbnail';

  InputFile thumbnail;
  int width;
  int height;

  @override
  Map<String, dynamic> get params => {
    'thumbnail': thumbnail,
    'width': width,
    'height': height,
  };

  InputThumbnail({
    this.thumbnail,
    this.width,
    this.height,
  });

  InputThumbnail.fromJson(Map<String, dynamic> json) {
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
  }
}

abstract class InputMessageContent extends TdObject {}

@reflector
class InputMessageText extends InputMessageContent {
  @override
  String get tdType => 'inputMessageText';

  FormattedText text;
  bool disableWebPagePreview;
  bool clearDraft;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'disable_web_page_preview': disableWebPagePreview,
    'clear_draft': clearDraft,
  };

  InputMessageText({
    this.text,
    this.disableWebPagePreview,
    this.clearDraft,
  });

  InputMessageText.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    disableWebPagePreview = tryConvertToTdObject(json['disable_web_page_preview']);
    clearDraft = tryConvertToTdObject(json['clear_draft']);
  }
}

@reflector
class InputMessageAnimation extends InputMessageContent {
  @override
  String get tdType => 'inputMessageAnimation';

  InputFile animation;
  InputThumbnail thumbnail;
  int duration;
  int width;
  int height;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
    'thumbnail': thumbnail,
    'duration': duration,
    'width': width,
    'height': height,
    'caption': caption,
  };

  InputMessageAnimation({
    this.animation,
    this.thumbnail,
    this.duration,
    this.width,
    this.height,
    this.caption,
  });

  InputMessageAnimation.fromJson(Map<String, dynamic> json) {
    animation = tryConvertToTdObject(json['animation']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    duration = tryConvertToTdObject(json['duration']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class InputMessageAudio extends InputMessageContent {
  @override
  String get tdType => 'inputMessageAudio';

  InputFile audio;
  InputThumbnail albumCoverThumbnail;
  int duration;
  String title;
  String performer;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'audio': audio,
    'album_cover_thumbnail': albumCoverThumbnail,
    'duration': duration,
    'title': title,
    'performer': performer,
    'caption': caption,
  };

  InputMessageAudio({
    this.audio,
    this.albumCoverThumbnail,
    this.duration,
    this.title,
    this.performer,
    this.caption,
  });

  InputMessageAudio.fromJson(Map<String, dynamic> json) {
    audio = tryConvertToTdObject(json['audio']);
    albumCoverThumbnail = tryConvertToTdObject(json['album_cover_thumbnail']);
    duration = tryConvertToTdObject(json['duration']);
    title = tryConvertToTdObject(json['title']);
    performer = tryConvertToTdObject(json['performer']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class InputMessageDocument extends InputMessageContent {
  @override
  String get tdType => 'inputMessageDocument';

  InputFile document;
  InputThumbnail thumbnail;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'document': document,
    'thumbnail': thumbnail,
    'caption': caption,
  };

  InputMessageDocument({
    this.document,
    this.thumbnail,
    this.caption,
  });

  InputMessageDocument.fromJson(Map<String, dynamic> json) {
    document = tryConvertToTdObject(json['document']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class InputMessagePhoto extends InputMessageContent {
  @override
  String get tdType => 'inputMessagePhoto';

  InputFile photo;
  InputThumbnail thumbnail;
  List<int> addedStickerFileIds;
  int width;
  int height;
  FormattedText caption;
  int ttl;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'thumbnail': thumbnail,
    'added_sticker_file_ids': addedStickerFileIds,
    'width': width,
    'height': height,
    'caption': caption,
    'ttl': ttl,
  };

  InputMessagePhoto({
    this.photo,
    this.thumbnail,
    this.addedStickerFileIds,
    this.width,
    this.height,
    this.caption,
    this.ttl,
  });

  InputMessagePhoto.fromJson(Map<String, dynamic> json) {
    photo = tryConvertToTdObject(json['photo']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    addedStickerFileIds = tryConvertToTdObject(json['added_sticker_file_ids']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    caption = tryConvertToTdObject(json['caption']);
    ttl = tryConvertToTdObject(json['ttl']);
  }
}

@reflector
class InputMessageSticker extends InputMessageContent {
  @override
  String get tdType => 'inputMessageSticker';

  InputFile sticker;
  InputThumbnail thumbnail;
  int width;
  int height;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
    'thumbnail': thumbnail,
    'width': width,
    'height': height,
  };

  InputMessageSticker({
    this.sticker,
    this.thumbnail,
    this.width,
    this.height,
  });

  InputMessageSticker.fromJson(Map<String, dynamic> json) {
    sticker = tryConvertToTdObject(json['sticker']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
  }
}

@reflector
class InputMessageVideo extends InputMessageContent {
  @override
  String get tdType => 'inputMessageVideo';

  InputFile video;
  InputThumbnail thumbnail;
  List<int> addedStickerFileIds;
  int duration;
  int width;
  int height;
  bool supportsStreaming;
  FormattedText caption;
  int ttl;

  @override
  Map<String, dynamic> get params => {
    'video': video,
    'thumbnail': thumbnail,
    'added_sticker_file_ids': addedStickerFileIds,
    'duration': duration,
    'width': width,
    'height': height,
    'supports_streaming': supportsStreaming,
    'caption': caption,
    'ttl': ttl,
  };

  InputMessageVideo({
    this.video,
    this.thumbnail,
    this.addedStickerFileIds,
    this.duration,
    this.width,
    this.height,
    this.supportsStreaming,
    this.caption,
    this.ttl,
  });

  InputMessageVideo.fromJson(Map<String, dynamic> json) {
    video = tryConvertToTdObject(json['video']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    addedStickerFileIds = tryConvertToTdObject(json['added_sticker_file_ids']);
    duration = tryConvertToTdObject(json['duration']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    supportsStreaming = tryConvertToTdObject(json['supports_streaming']);
    caption = tryConvertToTdObject(json['caption']);
    ttl = tryConvertToTdObject(json['ttl']);
  }
}

@reflector
class InputMessageVideoNote extends InputMessageContent {
  @override
  String get tdType => 'inputMessageVideoNote';

  InputFile videoNote;
  InputThumbnail thumbnail;
  int duration;
  int length;

  @override
  Map<String, dynamic> get params => {
    'video_note': videoNote,
    'thumbnail': thumbnail,
    'duration': duration,
    'length': length,
  };

  InputMessageVideoNote({
    this.videoNote,
    this.thumbnail,
    this.duration,
    this.length,
  });

  InputMessageVideoNote.fromJson(Map<String, dynamic> json) {
    videoNote = tryConvertToTdObject(json['video_note']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    duration = tryConvertToTdObject(json['duration']);
    length = tryConvertToTdObject(json['length']);
  }
}

@reflector
class InputMessageVoiceNote extends InputMessageContent {
  @override
  String get tdType => 'inputMessageVoiceNote';

  InputFile voiceNote;
  int duration;
  String waveform;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'voice_note': voiceNote,
    'duration': duration,
    'waveform': waveform,
    'caption': caption,
  };

  InputMessageVoiceNote({
    this.voiceNote,
    this.duration,
    this.waveform,
    this.caption,
  });

  InputMessageVoiceNote.fromJson(Map<String, dynamic> json) {
    voiceNote = tryConvertToTdObject(json['voice_note']);
    duration = tryConvertToTdObject(json['duration']);
    waveform = tryConvertToTdObject(json['waveform']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class InputMessageLocation extends InputMessageContent {
  @override
  String get tdType => 'inputMessageLocation';

  Location location;
  int livePeriod;

  @override
  Map<String, dynamic> get params => {
    'location': location,
    'live_period': livePeriod,
  };

  InputMessageLocation({
    this.location,
    this.livePeriod,
  });

  InputMessageLocation.fromJson(Map<String, dynamic> json) {
    location = tryConvertToTdObject(json['location']);
    livePeriod = tryConvertToTdObject(json['live_period']);
  }
}

@reflector
class InputMessageVenue extends InputMessageContent {
  @override
  String get tdType => 'inputMessageVenue';

  Venue venue;

  @override
  Map<String, dynamic> get params => {
    'venue': venue,
  };

  InputMessageVenue({
    this.venue,
  });

  InputMessageVenue.fromJson(Map<String, dynamic> json) {
    venue = tryConvertToTdObject(json['venue']);
  }
}

@reflector
class InputMessageContact extends InputMessageContent {
  @override
  String get tdType => 'inputMessageContact';

  Contact contact;

  @override
  Map<String, dynamic> get params => {
    'contact': contact,
  };

  InputMessageContact({
    this.contact,
  });

  InputMessageContact.fromJson(Map<String, dynamic> json) {
    contact = tryConvertToTdObject(json['contact']);
  }
}

@reflector
class InputMessageGame extends InputMessageContent {
  @override
  String get tdType => 'inputMessageGame';

  int botUserId;
  String gameShortName;

  @override
  Map<String, dynamic> get params => {
    'bot_user_id': botUserId,
    'game_short_name': gameShortName,
  };

  InputMessageGame({
    this.botUserId,
    this.gameShortName,
  });

  InputMessageGame.fromJson(Map<String, dynamic> json) {
    botUserId = tryConvertToTdObject(json['bot_user_id']);
    gameShortName = tryConvertToTdObject(json['game_short_name']);
  }
}

@reflector
class InputMessageInvoice extends InputMessageContent {
  @override
  String get tdType => 'inputMessageInvoice';

  Invoice invoice;
  String title;
  String description;
  String photoUrl;
  int photoSize;
  int photoWidth;
  int photoHeight;
  String payload;
  String providerToken;
  String providerData;
  String startParameter;

  @override
  Map<String, dynamic> get params => {
    'invoice': invoice,
    'title': title,
    'description': description,
    'photo_url': photoUrl,
    'photo_size': photoSize,
    'photo_width': photoWidth,
    'photo_height': photoHeight,
    'payload': payload,
    'provider_token': providerToken,
    'provider_data': providerData,
    'start_parameter': startParameter,
  };

  InputMessageInvoice({
    this.invoice,
    this.title,
    this.description,
    this.photoUrl,
    this.photoSize,
    this.photoWidth,
    this.photoHeight,
    this.payload,
    this.providerToken,
    this.providerData,
    this.startParameter,
  });

  InputMessageInvoice.fromJson(Map<String, dynamic> json) {
    invoice = tryConvertToTdObject(json['invoice']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    photoUrl = tryConvertToTdObject(json['photo_url']);
    photoSize = tryConvertToTdObject(json['photo_size']);
    photoWidth = tryConvertToTdObject(json['photo_width']);
    photoHeight = tryConvertToTdObject(json['photo_height']);
    payload = tryConvertToTdObject(json['payload']);
    providerToken = tryConvertToTdObject(json['provider_token']);
    providerData = tryConvertToTdObject(json['provider_data']);
    startParameter = tryConvertToTdObject(json['start_parameter']);
  }
}

@reflector
class InputMessagePoll extends InputMessageContent {
  @override
  String get tdType => 'inputMessagePoll';

  String question;
  List<String> options;

  @override
  Map<String, dynamic> get params => {
    'question': question,
    'options': options,
  };

  InputMessagePoll({
    this.question,
    this.options,
  });

  InputMessagePoll.fromJson(Map<String, dynamic> json) {
    question = tryConvertToTdObject(json['question']);
    options = tryConvertToTdObject(json['options']);
  }
}

@reflector
class InputMessageForwarded extends InputMessageContent {
  @override
  String get tdType => 'inputMessageForwarded';

  int fromChatId;
  int messageId;
  bool inGameShare;
  bool sendCopy;
  bool removeCaption;

  @override
  Map<String, dynamic> get params => {
    'from_chat_id': fromChatId,
    'message_id': messageId,
    'in_game_share': inGameShare,
    'send_copy': sendCopy,
    'remove_caption': removeCaption,
  };

  InputMessageForwarded({
    this.fromChatId,
    this.messageId,
    this.inGameShare,
    this.sendCopy,
    this.removeCaption,
  });

  InputMessageForwarded.fromJson(Map<String, dynamic> json) {
    fromChatId = tryConvertToTdObject(json['from_chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    inGameShare = tryConvertToTdObject(json['in_game_share']);
    sendCopy = tryConvertToTdObject(json['send_copy']);
    removeCaption = tryConvertToTdObject(json['remove_caption']);
  }
}

abstract class SearchMessagesFilter extends TdObject {}

@reflector
class SearchMessagesFilterEmpty extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterEmpty';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterEmpty();

  SearchMessagesFilterEmpty.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterAnimation extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterAnimation';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterAnimation();

  SearchMessagesFilterAnimation.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterAudio extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterAudio';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterAudio();

  SearchMessagesFilterAudio.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterDocument extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterDocument';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterDocument();

  SearchMessagesFilterDocument.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterPhoto extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterPhoto';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterPhoto();

  SearchMessagesFilterPhoto.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterVideo extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterVideo';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterVideo();

  SearchMessagesFilterVideo.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterVoiceNote extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterVoiceNote';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterVoiceNote();

  SearchMessagesFilterVoiceNote.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterPhotoAndVideo extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterPhotoAndVideo';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterPhotoAndVideo();

  SearchMessagesFilterPhotoAndVideo.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterUrl extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterUrl';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterUrl();

  SearchMessagesFilterUrl.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterChatPhoto extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterChatPhoto';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterChatPhoto();

  SearchMessagesFilterChatPhoto.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterCall extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterCall';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterCall();

  SearchMessagesFilterCall.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterMissedCall extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterMissedCall';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterMissedCall();

  SearchMessagesFilterMissedCall.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterVideoNote extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterVideoNote';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterVideoNote();

  SearchMessagesFilterVideoNote.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterVoiceAndVideoNote extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterVoiceAndVideoNote';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterVoiceAndVideoNote();

  SearchMessagesFilterVoiceAndVideoNote.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterMention extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterMention';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterMention();

  SearchMessagesFilterMention.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterUnreadMention extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterUnreadMention';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterUnreadMention();

  SearchMessagesFilterUnreadMention.fromJson(Map<String, dynamic> json);
}

abstract class ChatAction extends TdObject {}

@reflector
class ChatActionTyping extends ChatAction {
  @override
  String get tdType => 'chatActionTyping';

  @override
  Map<String, dynamic> get params => {};

  ChatActionTyping();

  ChatActionTyping.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionRecordingVideo extends ChatAction {
  @override
  String get tdType => 'chatActionRecordingVideo';

  @override
  Map<String, dynamic> get params => {};

  ChatActionRecordingVideo();

  ChatActionRecordingVideo.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionUploadingVideo extends ChatAction {
  @override
  String get tdType => 'chatActionUploadingVideo';

  int progress;

  @override
  Map<String, dynamic> get params => {
    'progress': progress,
  };

  ChatActionUploadingVideo({
    this.progress,
  });

  ChatActionUploadingVideo.fromJson(Map<String, dynamic> json) {
    progress = tryConvertToTdObject(json['progress']);
  }
}

@reflector
class ChatActionRecordingVoiceNote extends ChatAction {
  @override
  String get tdType => 'chatActionRecordingVoiceNote';

  @override
  Map<String, dynamic> get params => {};

  ChatActionRecordingVoiceNote();

  ChatActionRecordingVoiceNote.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionUploadingVoiceNote extends ChatAction {
  @override
  String get tdType => 'chatActionUploadingVoiceNote';

  int progress;

  @override
  Map<String, dynamic> get params => {
    'progress': progress,
  };

  ChatActionUploadingVoiceNote({
    this.progress,
  });

  ChatActionUploadingVoiceNote.fromJson(Map<String, dynamic> json) {
    progress = tryConvertToTdObject(json['progress']);
  }
}

@reflector
class ChatActionUploadingPhoto extends ChatAction {
  @override
  String get tdType => 'chatActionUploadingPhoto';

  int progress;

  @override
  Map<String, dynamic> get params => {
    'progress': progress,
  };

  ChatActionUploadingPhoto({
    this.progress,
  });

  ChatActionUploadingPhoto.fromJson(Map<String, dynamic> json) {
    progress = tryConvertToTdObject(json['progress']);
  }
}

@reflector
class ChatActionUploadingDocument extends ChatAction {
  @override
  String get tdType => 'chatActionUploadingDocument';

  int progress;

  @override
  Map<String, dynamic> get params => {
    'progress': progress,
  };

  ChatActionUploadingDocument({
    this.progress,
  });

  ChatActionUploadingDocument.fromJson(Map<String, dynamic> json) {
    progress = tryConvertToTdObject(json['progress']);
  }
}

@reflector
class ChatActionChoosingLocation extends ChatAction {
  @override
  String get tdType => 'chatActionChoosingLocation';

  @override
  Map<String, dynamic> get params => {};

  ChatActionChoosingLocation();

  ChatActionChoosingLocation.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionChoosingContact extends ChatAction {
  @override
  String get tdType => 'chatActionChoosingContact';

  @override
  Map<String, dynamic> get params => {};

  ChatActionChoosingContact();

  ChatActionChoosingContact.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionStartPlayingGame extends ChatAction {
  @override
  String get tdType => 'chatActionStartPlayingGame';

  @override
  Map<String, dynamic> get params => {};

  ChatActionStartPlayingGame();

  ChatActionStartPlayingGame.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionRecordingVideoNote extends ChatAction {
  @override
  String get tdType => 'chatActionRecordingVideoNote';

  @override
  Map<String, dynamic> get params => {};

  ChatActionRecordingVideoNote();

  ChatActionRecordingVideoNote.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionUploadingVideoNote extends ChatAction {
  @override
  String get tdType => 'chatActionUploadingVideoNote';

  int progress;

  @override
  Map<String, dynamic> get params => {
    'progress': progress,
  };

  ChatActionUploadingVideoNote({
    this.progress,
  });

  ChatActionUploadingVideoNote.fromJson(Map<String, dynamic> json) {
    progress = tryConvertToTdObject(json['progress']);
  }
}

@reflector
class ChatActionCancel extends ChatAction {
  @override
  String get tdType => 'chatActionCancel';

  @override
  Map<String, dynamic> get params => {};

  ChatActionCancel();

  ChatActionCancel.fromJson(Map<String, dynamic> json);
}

abstract class UserStatus extends TdObject {}

@reflector
class UserStatusEmpty extends UserStatus {
  @override
  String get tdType => 'userStatusEmpty';

  @override
  Map<String, dynamic> get params => {};

  UserStatusEmpty();

  UserStatusEmpty.fromJson(Map<String, dynamic> json);
}

@reflector
class UserStatusOnline extends UserStatus {
  @override
  String get tdType => 'userStatusOnline';

  int expires;

  @override
  Map<String, dynamic> get params => {
    'expires': expires,
  };

  UserStatusOnline({
    this.expires,
  });

  UserStatusOnline.fromJson(Map<String, dynamic> json) {
    expires = tryConvertToTdObject(json['expires']);
  }
}

@reflector
class UserStatusOffline extends UserStatus {
  @override
  String get tdType => 'userStatusOffline';

  int wasOnline;

  @override
  Map<String, dynamic> get params => {
    'was_online': wasOnline,
  };

  UserStatusOffline({
    this.wasOnline,
  });

  UserStatusOffline.fromJson(Map<String, dynamic> json) {
    wasOnline = tryConvertToTdObject(json['was_online']);
  }
}

@reflector
class UserStatusRecently extends UserStatus {
  @override
  String get tdType => 'userStatusRecently';

  @override
  Map<String, dynamic> get params => {};

  UserStatusRecently();

  UserStatusRecently.fromJson(Map<String, dynamic> json);
}

@reflector
class UserStatusLastWeek extends UserStatus {
  @override
  String get tdType => 'userStatusLastWeek';

  @override
  Map<String, dynamic> get params => {};

  UserStatusLastWeek();

  UserStatusLastWeek.fromJson(Map<String, dynamic> json);
}

@reflector
class UserStatusLastMonth extends UserStatus {
  @override
  String get tdType => 'userStatusLastMonth';

  @override
  Map<String, dynamic> get params => {};

  UserStatusLastMonth();

  UserStatusLastMonth.fromJson(Map<String, dynamic> json);
}

@reflector
class Stickers extends TdObject {
  @override
  String get tdType => 'stickers';

  List<Sticker> stickers;

  @override
  Map<String, dynamic> get params => {
    'stickers': stickers,
  };

  Stickers({
    this.stickers,
  });

  Stickers.fromJson(Map<String, dynamic> json) {
    stickers = tryConvertToTdObject(json['stickers']);
  }
}

@reflector
class Emojis extends TdObject {
  @override
  String get tdType => 'emojis';

  List<String> emojis;

  @override
  Map<String, dynamic> get params => {
    'emojis': emojis,
  };

  Emojis({
    this.emojis,
  });

  Emojis.fromJson(Map<String, dynamic> json) {
    emojis = tryConvertToTdObject(json['emojis']);
  }
}

@reflector
class StickerSet extends TdObject {
  @override
  String get tdType => 'stickerSet';

  int id;
  String title;
  String name;
  PhotoSize thumbnail;
  bool isInstalled;
  bool isArchived;
  bool isOfficial;
  bool isAnimated;
  bool isMasks;
  bool isViewed;
  List<Sticker> stickers;
  List<Emojis> emojis;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'name': name,
    'thumbnail': thumbnail,
    'is_installed': isInstalled,
    'is_archived': isArchived,
    'is_official': isOfficial,
    'is_animated': isAnimated,
    'is_masks': isMasks,
    'is_viewed': isViewed,
    'stickers': stickers,
    'emojis': emojis,
  };

  StickerSet({
    this.id,
    this.title,
    this.name,
    this.thumbnail,
    this.isInstalled,
    this.isArchived,
    this.isOfficial,
    this.isAnimated,
    this.isMasks,
    this.isViewed,
    this.stickers,
    this.emojis,
  });

  StickerSet.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    name = tryConvertToTdObject(json['name']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    isInstalled = tryConvertToTdObject(json['is_installed']);
    isArchived = tryConvertToTdObject(json['is_archived']);
    isOfficial = tryConvertToTdObject(json['is_official']);
    isAnimated = tryConvertToTdObject(json['is_animated']);
    isMasks = tryConvertToTdObject(json['is_masks']);
    isViewed = tryConvertToTdObject(json['is_viewed']);
    stickers = tryConvertToTdObject(json['stickers']);
    emojis = tryConvertToTdObject(json['emojis']);
  }
}

@reflector
class StickerSetInfo extends TdObject {
  @override
  String get tdType => 'stickerSetInfo';

  int id;
  String title;
  String name;
  PhotoSize thumbnail;
  bool isInstalled;
  bool isArchived;
  bool isOfficial;
  bool isAnimated;
  bool isMasks;
  bool isViewed;
  int size;
  List<Sticker> covers;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'name': name,
    'thumbnail': thumbnail,
    'is_installed': isInstalled,
    'is_archived': isArchived,
    'is_official': isOfficial,
    'is_animated': isAnimated,
    'is_masks': isMasks,
    'is_viewed': isViewed,
    'size': size,
    'covers': covers,
  };

  StickerSetInfo({
    this.id,
    this.title,
    this.name,
    this.thumbnail,
    this.isInstalled,
    this.isArchived,
    this.isOfficial,
    this.isAnimated,
    this.isMasks,
    this.isViewed,
    this.size,
    this.covers,
  });

  StickerSetInfo.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    name = tryConvertToTdObject(json['name']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    isInstalled = tryConvertToTdObject(json['is_installed']);
    isArchived = tryConvertToTdObject(json['is_archived']);
    isOfficial = tryConvertToTdObject(json['is_official']);
    isAnimated = tryConvertToTdObject(json['is_animated']);
    isMasks = tryConvertToTdObject(json['is_masks']);
    isViewed = tryConvertToTdObject(json['is_viewed']);
    size = tryConvertToTdObject(json['size']);
    covers = tryConvertToTdObject(json['covers']);
  }
}

@reflector
class StickerSets extends TdObject {
  @override
  String get tdType => 'stickerSets';

  int totalCount;
  List<StickerSetInfo> sets;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'sets': sets,
  };

  StickerSets({
    this.totalCount,
    this.sets,
  });

  StickerSets.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    sets = tryConvertToTdObject(json['sets']);
  }
}

abstract class CallDiscardReason extends TdObject {}

@reflector
class CallDiscardReasonEmpty extends CallDiscardReason {
  @override
  String get tdType => 'callDiscardReasonEmpty';

  @override
  Map<String, dynamic> get params => {};

  CallDiscardReasonEmpty();

  CallDiscardReasonEmpty.fromJson(Map<String, dynamic> json);
}

@reflector
class CallDiscardReasonMissed extends CallDiscardReason {
  @override
  String get tdType => 'callDiscardReasonMissed';

  @override
  Map<String, dynamic> get params => {};

  CallDiscardReasonMissed();

  CallDiscardReasonMissed.fromJson(Map<String, dynamic> json);
}

@reflector
class CallDiscardReasonDeclined extends CallDiscardReason {
  @override
  String get tdType => 'callDiscardReasonDeclined';

  @override
  Map<String, dynamic> get params => {};

  CallDiscardReasonDeclined();

  CallDiscardReasonDeclined.fromJson(Map<String, dynamic> json);
}

@reflector
class CallDiscardReasonDisconnected extends CallDiscardReason {
  @override
  String get tdType => 'callDiscardReasonDisconnected';

  @override
  Map<String, dynamic> get params => {};

  CallDiscardReasonDisconnected();

  CallDiscardReasonDisconnected.fromJson(Map<String, dynamic> json);
}

@reflector
class CallDiscardReasonHungUp extends CallDiscardReason {
  @override
  String get tdType => 'callDiscardReasonHungUp';

  @override
  Map<String, dynamic> get params => {};

  CallDiscardReasonHungUp();

  CallDiscardReasonHungUp.fromJson(Map<String, dynamic> json);
}

@reflector
class CallProtocol extends TdObject {
  @override
  String get tdType => 'callProtocol';

  bool udpP2p;
  bool udpReflector;
  int minLayer;
  int maxLayer;

  @override
  Map<String, dynamic> get params => {
    'udp_p2p': udpP2p,
    'udp_reflector': udpReflector,
    'min_layer': minLayer,
    'max_layer': maxLayer,
  };

  CallProtocol({
    this.udpP2p,
    this.udpReflector,
    this.minLayer,
    this.maxLayer,
  });

  CallProtocol.fromJson(Map<String, dynamic> json) {
    udpP2p = tryConvertToTdObject(json['udp_p2p']);
    udpReflector = tryConvertToTdObject(json['udp_reflector']);
    minLayer = tryConvertToTdObject(json['min_layer']);
    maxLayer = tryConvertToTdObject(json['max_layer']);
  }
}

@reflector
class CallConnection extends TdObject {
  @override
  String get tdType => 'callConnection';

  int id;
  String ip;
  String ipv6;
  int port;
  String peerTag;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'ip': ip,
    'ipv6': ipv6,
    'port': port,
    'peer_tag': peerTag,
  };

  CallConnection({
    this.id,
    this.ip,
    this.ipv6,
    this.port,
    this.peerTag,
  });

  CallConnection.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    ip = tryConvertToTdObject(json['ip']);
    ipv6 = tryConvertToTdObject(json['ipv6']);
    port = tryConvertToTdObject(json['port']);
    peerTag = tryConvertToTdObject(json['peer_tag']);
  }
}

@reflector
class CallId extends TdObject {
  @override
  String get tdType => 'callId';

  int id;

  @override
  Map<String, dynamic> get params => {
    'id': id,
  };

  CallId({
    this.id,
  });

  CallId.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
  }
}

abstract class CallState extends TdObject {}

@reflector
class CallStatePending extends CallState {
  @override
  String get tdType => 'callStatePending';

  bool isCreated;
  bool isReceived;

  @override
  Map<String, dynamic> get params => {
    'is_created': isCreated,
    'is_received': isReceived,
  };

  CallStatePending({
    this.isCreated,
    this.isReceived,
  });

  CallStatePending.fromJson(Map<String, dynamic> json) {
    isCreated = tryConvertToTdObject(json['is_created']);
    isReceived = tryConvertToTdObject(json['is_received']);
  }
}

@reflector
class CallStateExchangingKeys extends CallState {
  @override
  String get tdType => 'callStateExchangingKeys';

  @override
  Map<String, dynamic> get params => {};

  CallStateExchangingKeys();

  CallStateExchangingKeys.fromJson(Map<String, dynamic> json);
}

@reflector
class CallStateReady extends CallState {
  @override
  String get tdType => 'callStateReady';

  CallProtocol protocol;
  List<CallConnection> connections;
  String config;
  String encryptionKey;
  List<String> emojis;
  bool allowP2p;

  @override
  Map<String, dynamic> get params => {
    'protocol': protocol,
    'connections': connections,
    'config': config,
    'encryption_key': encryptionKey,
    'emojis': emojis,
    'allow_p2p': allowP2p,
  };

  CallStateReady({
    this.protocol,
    this.connections,
    this.config,
    this.encryptionKey,
    this.emojis,
    this.allowP2p,
  });

  CallStateReady.fromJson(Map<String, dynamic> json) {
    protocol = tryConvertToTdObject(json['protocol']);
    connections = tryConvertToTdObject(json['connections']);
    config = tryConvertToTdObject(json['config']);
    encryptionKey = tryConvertToTdObject(json['encryption_key']);
    emojis = tryConvertToTdObject(json['emojis']);
    allowP2p = tryConvertToTdObject(json['allow_p2p']);
  }
}

@reflector
class CallStateHangingUp extends CallState {
  @override
  String get tdType => 'callStateHangingUp';

  @override
  Map<String, dynamic> get params => {};

  CallStateHangingUp();

  CallStateHangingUp.fromJson(Map<String, dynamic> json);
}

@reflector
class CallStateDiscarded extends CallState {
  @override
  String get tdType => 'callStateDiscarded';

  CallDiscardReason reason;
  bool needRating;
  bool needDebugInformation;

  @override
  Map<String, dynamic> get params => {
    'reason': reason,
    'need_rating': needRating,
    'need_debug_information': needDebugInformation,
  };

  CallStateDiscarded({
    this.reason,
    this.needRating,
    this.needDebugInformation,
  });

  CallStateDiscarded.fromJson(Map<String, dynamic> json) {
    reason = tryConvertToTdObject(json['reason']);
    needRating = tryConvertToTdObject(json['need_rating']);
    needDebugInformation = tryConvertToTdObject(json['need_debug_information']);
  }
}

@reflector
class CallStateError extends CallState {
  @override
  String get tdType => 'callStateError';

  Error error;

  @override
  Map<String, dynamic> get params => {
    'error': error,
  };

  CallStateError({
    this.error,
  });

  CallStateError.fromJson(Map<String, dynamic> json) {
    error = tryConvertToTdObject(json['error']);
  }
}

abstract class CallProblem extends TdObject {}

@reflector
class CallProblemEcho extends CallProblem {
  @override
  String get tdType => 'callProblemEcho';

  @override
  Map<String, dynamic> get params => {};

  CallProblemEcho();

  CallProblemEcho.fromJson(Map<String, dynamic> json);
}

@reflector
class CallProblemNoise extends CallProblem {
  @override
  String get tdType => 'callProblemNoise';

  @override
  Map<String, dynamic> get params => {};

  CallProblemNoise();

  CallProblemNoise.fromJson(Map<String, dynamic> json);
}

@reflector
class CallProblemInterruptions extends CallProblem {
  @override
  String get tdType => 'callProblemInterruptions';

  @override
  Map<String, dynamic> get params => {};

  CallProblemInterruptions();

  CallProblemInterruptions.fromJson(Map<String, dynamic> json);
}

@reflector
class CallProblemDistortedSpeech extends CallProblem {
  @override
  String get tdType => 'callProblemDistortedSpeech';

  @override
  Map<String, dynamic> get params => {};

  CallProblemDistortedSpeech();

  CallProblemDistortedSpeech.fromJson(Map<String, dynamic> json);
}

@reflector
class CallProblemSilentLocal extends CallProblem {
  @override
  String get tdType => 'callProblemSilentLocal';

  @override
  Map<String, dynamic> get params => {};

  CallProblemSilentLocal();

  CallProblemSilentLocal.fromJson(Map<String, dynamic> json);
}

@reflector
class CallProblemSilentRemote extends CallProblem {
  @override
  String get tdType => 'callProblemSilentRemote';

  @override
  Map<String, dynamic> get params => {};

  CallProblemSilentRemote();

  CallProblemSilentRemote.fromJson(Map<String, dynamic> json);
}

@reflector
class CallProblemDropped extends CallProblem {
  @override
  String get tdType => 'callProblemDropped';

  @override
  Map<String, dynamic> get params => {};

  CallProblemDropped();

  CallProblemDropped.fromJson(Map<String, dynamic> json);
}

@reflector
class Call extends TdObject {
  @override
  String get tdType => 'call';

  int id;
  int userId;
  bool isOutgoing;
  CallState state;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'user_id': userId,
    'is_outgoing': isOutgoing,
    'state': state,
  };

  Call({
    this.id,
    this.userId,
    this.isOutgoing,
    this.state,
  });

  Call.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    userId = tryConvertToTdObject(json['user_id']);
    isOutgoing = tryConvertToTdObject(json['is_outgoing']);
    state = tryConvertToTdObject(json['state']);
  }
}

@reflector
class PhoneNumberAuthenticationSettings extends TdObject {
  @override
  String get tdType => 'phoneNumberAuthenticationSettings';

  bool allowFlashCall;
  bool isCurrentPhoneNumber;
  bool allowSmsRetrieverApi;

  @override
  Map<String, dynamic> get params => {
    'allow_flash_call': allowFlashCall,
    'is_current_phone_number': isCurrentPhoneNumber,
    'allow_sms_retriever_api': allowSmsRetrieverApi,
  };

  PhoneNumberAuthenticationSettings({
    this.allowFlashCall,
    this.isCurrentPhoneNumber,
    this.allowSmsRetrieverApi,
  });

  PhoneNumberAuthenticationSettings.fromJson(Map<String, dynamic> json) {
    allowFlashCall = tryConvertToTdObject(json['allow_flash_call']);
    isCurrentPhoneNumber = tryConvertToTdObject(json['is_current_phone_number']);
    allowSmsRetrieverApi = tryConvertToTdObject(json['allow_sms_retriever_api']);
  }
}

@reflector
class Animations extends TdObject {
  @override
  String get tdType => 'animations';

  List<Animation> animations;

  @override
  Map<String, dynamic> get params => {
    'animations': animations,
  };

  Animations({
    this.animations,
  });

  Animations.fromJson(Map<String, dynamic> json) {
    animations = tryConvertToTdObject(json['animations']);
  }
}

@reflector
class ImportedContacts extends TdObject {
  @override
  String get tdType => 'importedContacts';

  List<int> userIds;
  List<int> importerCount;

  @override
  Map<String, dynamic> get params => {
    'user_ids': userIds,
    'importer_count': importerCount,
  };

  ImportedContacts({
    this.userIds,
    this.importerCount,
  });

  ImportedContacts.fromJson(Map<String, dynamic> json) {
    userIds = tryConvertToTdObject(json['user_ids']);
    importerCount = tryConvertToTdObject(json['importer_count']);
  }
}

@reflector
class HttpUrl extends TdObject {
  @override
  String get tdType => 'httpUrl';

  String url;

  @override
  Map<String, dynamic> get params => {
    'url': url,
  };

  HttpUrl({
    this.url,
  });

  HttpUrl.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
  }
}

abstract class InputInlineQueryResult extends TdObject {}

@reflector
class InputInlineQueryResultAnimatedGif extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultAnimatedGif';

  String id;
  String title;
  String thumbnailUrl;
  String gifUrl;
  int gifDuration;
  int gifWidth;
  int gifHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'thumbnail_url': thumbnailUrl,
    'gif_url': gifUrl,
    'gif_duration': gifDuration,
    'gif_width': gifWidth,
    'gif_height': gifHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultAnimatedGif({
    this.id,
    this.title,
    this.thumbnailUrl,
    this.gifUrl,
    this.gifDuration,
    this.gifWidth,
    this.gifHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultAnimatedGif.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    gifUrl = tryConvertToTdObject(json['gif_url']);
    gifDuration = tryConvertToTdObject(json['gif_duration']);
    gifWidth = tryConvertToTdObject(json['gif_width']);
    gifHeight = tryConvertToTdObject(json['gif_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultAnimatedMpeg4 extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultAnimatedMpeg4';

  String id;
  String title;
  String thumbnailUrl;
  String mpeg4Url;
  int mpeg4Duration;
  int mpeg4Width;
  int mpeg4Height;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'thumbnail_url': thumbnailUrl,
    'mpeg4_url': mpeg4Url,
    'mpeg4_duration': mpeg4Duration,
    'mpeg4_width': mpeg4Width,
    'mpeg4_height': mpeg4Height,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultAnimatedMpeg4({
    this.id,
    this.title,
    this.thumbnailUrl,
    this.mpeg4Url,
    this.mpeg4Duration,
    this.mpeg4Width,
    this.mpeg4Height,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultAnimatedMpeg4.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    mpeg4Url = tryConvertToTdObject(json['mpeg4_url']);
    mpeg4Duration = tryConvertToTdObject(json['mpeg4_duration']);
    mpeg4Width = tryConvertToTdObject(json['mpeg4_width']);
    mpeg4Height = tryConvertToTdObject(json['mpeg4_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultArticle extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultArticle';

  String id;
  String url;
  bool hideUrl;
  String title;
  String description;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'url': url,
    'hide_url': hideUrl,
    'title': title,
    'description': description,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultArticle({
    this.id,
    this.url,
    this.hideUrl,
    this.title,
    this.description,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultArticle.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    url = tryConvertToTdObject(json['url']);
    hideUrl = tryConvertToTdObject(json['hide_url']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    thumbnailWidth = tryConvertToTdObject(json['thumbnail_width']);
    thumbnailHeight = tryConvertToTdObject(json['thumbnail_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultAudio extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultAudio';

  String id;
  String title;
  String performer;
  String audioUrl;
  int audioDuration;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'performer': performer,
    'audio_url': audioUrl,
    'audio_duration': audioDuration,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultAudio({
    this.id,
    this.title,
    this.performer,
    this.audioUrl,
    this.audioDuration,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultAudio.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    performer = tryConvertToTdObject(json['performer']);
    audioUrl = tryConvertToTdObject(json['audio_url']);
    audioDuration = tryConvertToTdObject(json['audio_duration']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultContact extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultContact';

  String id;
  Contact contact;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'contact': contact,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultContact({
    this.id,
    this.contact,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultContact.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    contact = tryConvertToTdObject(json['contact']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    thumbnailWidth = tryConvertToTdObject(json['thumbnail_width']);
    thumbnailHeight = tryConvertToTdObject(json['thumbnail_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultDocument extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultDocument';

  String id;
  String title;
  String description;
  String documentUrl;
  String mimeType;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'description': description,
    'document_url': documentUrl,
    'mime_type': mimeType,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultDocument({
    this.id,
    this.title,
    this.description,
    this.documentUrl,
    this.mimeType,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultDocument.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    documentUrl = tryConvertToTdObject(json['document_url']);
    mimeType = tryConvertToTdObject(json['mime_type']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    thumbnailWidth = tryConvertToTdObject(json['thumbnail_width']);
    thumbnailHeight = tryConvertToTdObject(json['thumbnail_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultGame extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultGame';

  String id;
  String gameShortName;
  ReplyMarkup replyMarkup;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'game_short_name': gameShortName,
    'reply_markup': replyMarkup,
  };

  InputInlineQueryResultGame({
    this.id,
    this.gameShortName,
    this.replyMarkup,
  });

  InputInlineQueryResultGame.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    gameShortName = tryConvertToTdObject(json['game_short_name']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
  }
}

@reflector
class InputInlineQueryResultLocation extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultLocation';

  String id;
  Location location;
  int livePeriod;
  String title;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'location': location,
    'live_period': livePeriod,
    'title': title,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultLocation({
    this.id,
    this.location,
    this.livePeriod,
    this.title,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultLocation.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    location = tryConvertToTdObject(json['location']);
    livePeriod = tryConvertToTdObject(json['live_period']);
    title = tryConvertToTdObject(json['title']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    thumbnailWidth = tryConvertToTdObject(json['thumbnail_width']);
    thumbnailHeight = tryConvertToTdObject(json['thumbnail_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultPhoto extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultPhoto';

  String id;
  String title;
  String description;
  String thumbnailUrl;
  String photoUrl;
  int photoWidth;
  int photoHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'description': description,
    'thumbnail_url': thumbnailUrl,
    'photo_url': photoUrl,
    'photo_width': photoWidth,
    'photo_height': photoHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultPhoto({
    this.id,
    this.title,
    this.description,
    this.thumbnailUrl,
    this.photoUrl,
    this.photoWidth,
    this.photoHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultPhoto.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    photoUrl = tryConvertToTdObject(json['photo_url']);
    photoWidth = tryConvertToTdObject(json['photo_width']);
    photoHeight = tryConvertToTdObject(json['photo_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultSticker extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultSticker';

  String id;
  String thumbnailUrl;
  String stickerUrl;
  int stickerWidth;
  int stickerHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'thumbnail_url': thumbnailUrl,
    'sticker_url': stickerUrl,
    'sticker_width': stickerWidth,
    'sticker_height': stickerHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultSticker({
    this.id,
    this.thumbnailUrl,
    this.stickerUrl,
    this.stickerWidth,
    this.stickerHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultSticker.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    stickerUrl = tryConvertToTdObject(json['sticker_url']);
    stickerWidth = tryConvertToTdObject(json['sticker_width']);
    stickerHeight = tryConvertToTdObject(json['sticker_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultVenue extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultVenue';

  String id;
  Venue venue;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'venue': venue,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultVenue({
    this.id,
    this.venue,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultVenue.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    venue = tryConvertToTdObject(json['venue']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    thumbnailWidth = tryConvertToTdObject(json['thumbnail_width']);
    thumbnailHeight = tryConvertToTdObject(json['thumbnail_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultVideo extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultVideo';

  String id;
  String title;
  String description;
  String thumbnailUrl;
  String videoUrl;
  String mimeType;
  int videoWidth;
  int videoHeight;
  int videoDuration;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'description': description,
    'thumbnail_url': thumbnailUrl,
    'video_url': videoUrl,
    'mime_type': mimeType,
    'video_width': videoWidth,
    'video_height': videoHeight,
    'video_duration': videoDuration,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultVideo({
    this.id,
    this.title,
    this.description,
    this.thumbnailUrl,
    this.videoUrl,
    this.mimeType,
    this.videoWidth,
    this.videoHeight,
    this.videoDuration,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultVideo.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    videoUrl = tryConvertToTdObject(json['video_url']);
    mimeType = tryConvertToTdObject(json['mime_type']);
    videoWidth = tryConvertToTdObject(json['video_width']);
    videoHeight = tryConvertToTdObject(json['video_height']);
    videoDuration = tryConvertToTdObject(json['video_duration']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultVoiceNote extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultVoiceNote';

  String id;
  String title;
  String voiceNoteUrl;
  int voiceNoteDuration;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'voice_note_url': voiceNoteUrl,
    'voice_note_duration': voiceNoteDuration,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultVoiceNote({
    this.id,
    this.title,
    this.voiceNoteUrl,
    this.voiceNoteDuration,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    voiceNoteUrl = tryConvertToTdObject(json['voice_note_url']);
    voiceNoteDuration = tryConvertToTdObject(json['voice_note_duration']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

abstract class InlineQueryResult extends TdObject {}

@reflector
class InlineQueryResultArticle extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultArticle';

  String id;
  String url;
  bool hideUrl;
  String title;
  String description;
  PhotoSize thumbnail;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'url': url,
    'hide_url': hideUrl,
    'title': title,
    'description': description,
    'thumbnail': thumbnail,
  };

  InlineQueryResultArticle({
    this.id,
    this.url,
    this.hideUrl,
    this.title,
    this.description,
    this.thumbnail,
  });

  InlineQueryResultArticle.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    url = tryConvertToTdObject(json['url']);
    hideUrl = tryConvertToTdObject(json['hide_url']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
  }
}

@reflector
class InlineQueryResultContact extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultContact';

  String id;
  Contact contact;
  PhotoSize thumbnail;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'contact': contact,
    'thumbnail': thumbnail,
  };

  InlineQueryResultContact({
    this.id,
    this.contact,
    this.thumbnail,
  });

  InlineQueryResultContact.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    contact = tryConvertToTdObject(json['contact']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
  }
}

@reflector
class InlineQueryResultLocation extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultLocation';

  String id;
  Location location;
  String title;
  PhotoSize thumbnail;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'location': location,
    'title': title,
    'thumbnail': thumbnail,
  };

  InlineQueryResultLocation({
    this.id,
    this.location,
    this.title,
    this.thumbnail,
  });

  InlineQueryResultLocation.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    location = tryConvertToTdObject(json['location']);
    title = tryConvertToTdObject(json['title']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
  }
}

@reflector
class InlineQueryResultVenue extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultVenue';

  String id;
  Venue venue;
  PhotoSize thumbnail;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'venue': venue,
    'thumbnail': thumbnail,
  };

  InlineQueryResultVenue({
    this.id,
    this.venue,
    this.thumbnail,
  });

  InlineQueryResultVenue.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    venue = tryConvertToTdObject(json['venue']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
  }
}

@reflector
class InlineQueryResultGame extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultGame';

  String id;
  Game game;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'game': game,
  };

  InlineQueryResultGame({
    this.id,
    this.game,
  });

  InlineQueryResultGame.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    game = tryConvertToTdObject(json['game']);
  }
}

@reflector
class InlineQueryResultAnimation extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultAnimation';

  String id;
  Animation animation;
  String title;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'animation': animation,
    'title': title,
  };

  InlineQueryResultAnimation({
    this.id,
    this.animation,
    this.title,
  });

  InlineQueryResultAnimation.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    animation = tryConvertToTdObject(json['animation']);
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class InlineQueryResultAudio extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultAudio';

  String id;
  Audio audio;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'audio': audio,
  };

  InlineQueryResultAudio({
    this.id,
    this.audio,
  });

  InlineQueryResultAudio.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    audio = tryConvertToTdObject(json['audio']);
  }
}

@reflector
class InlineQueryResultDocument extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultDocument';

  String id;
  Document document;
  String title;
  String description;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'document': document,
    'title': title,
    'description': description,
  };

  InlineQueryResultDocument({
    this.id,
    this.document,
    this.title,
    this.description,
  });

  InlineQueryResultDocument.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    document = tryConvertToTdObject(json['document']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
  }
}

@reflector
class InlineQueryResultPhoto extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultPhoto';

  String id;
  Photo photo;
  String title;
  String description;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'photo': photo,
    'title': title,
    'description': description,
  };

  InlineQueryResultPhoto({
    this.id,
    this.photo,
    this.title,
    this.description,
  });

  InlineQueryResultPhoto.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    photo = tryConvertToTdObject(json['photo']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
  }
}

@reflector
class InlineQueryResultSticker extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultSticker';

  String id;
  Sticker sticker;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sticker': sticker,
  };

  InlineQueryResultSticker({
    this.id,
    this.sticker,
  });

  InlineQueryResultSticker.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    sticker = tryConvertToTdObject(json['sticker']);
  }
}

@reflector
class InlineQueryResultVideo extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultVideo';

  String id;
  Video video;
  String title;
  String description;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'video': video,
    'title': title,
    'description': description,
  };

  InlineQueryResultVideo({
    this.id,
    this.video,
    this.title,
    this.description,
  });

  InlineQueryResultVideo.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    video = tryConvertToTdObject(json['video']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
  }
}

@reflector
class InlineQueryResultVoiceNote extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultVoiceNote';

  String id;
  VoiceNote voiceNote;
  String title;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'voice_note': voiceNote,
    'title': title,
  };

  InlineQueryResultVoiceNote({
    this.id,
    this.voiceNote,
    this.title,
  });

  InlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    voiceNote = tryConvertToTdObject(json['voice_note']);
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class InlineQueryResults extends TdObject {
  @override
  String get tdType => 'inlineQueryResults';

  int inlineQueryId;
  String nextOffset;
  List<InlineQueryResult> results;
  String switchPmText;
  String switchPmParameter;

  @override
  Map<String, dynamic> get params => {
    'inline_query_id': inlineQueryId,
    'next_offset': nextOffset,
    'results': results,
    'switch_pm_text': switchPmText,
    'switch_pm_parameter': switchPmParameter,
  };

  InlineQueryResults({
    this.inlineQueryId,
    this.nextOffset,
    this.results,
    this.switchPmText,
    this.switchPmParameter,
  });

  InlineQueryResults.fromJson(Map<String, dynamic> json) {
    inlineQueryId = tryConvertToTdObject(json['inline_query_id']);
    nextOffset = tryConvertToTdObject(json['next_offset']);
    results = tryConvertToTdObject(json['results']);
    switchPmText = tryConvertToTdObject(json['switch_pm_text']);
    switchPmParameter = tryConvertToTdObject(json['switch_pm_parameter']);
  }
}

abstract class CallbackQueryPayload extends TdObject {}

@reflector
class CallbackQueryPayloadData extends CallbackQueryPayload {
  @override
  String get tdType => 'callbackQueryPayloadData';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  CallbackQueryPayloadData({
    this.data,
  });

  CallbackQueryPayloadData.fromJson(Map<String, dynamic> json) {
    data = tryConvertToTdObject(json['data']);
  }
}

@reflector
class CallbackQueryPayloadGame extends CallbackQueryPayload {
  @override
  String get tdType => 'callbackQueryPayloadGame';

  String gameShortName;

  @override
  Map<String, dynamic> get params => {
    'game_short_name': gameShortName,
  };

  CallbackQueryPayloadGame({
    this.gameShortName,
  });

  CallbackQueryPayloadGame.fromJson(Map<String, dynamic> json) {
    gameShortName = tryConvertToTdObject(json['game_short_name']);
  }
}

@reflector
class CallbackQueryAnswer extends TdObject {
  @override
  String get tdType => 'callbackQueryAnswer';

  String text;
  bool showAlert;
  String url;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'show_alert': showAlert,
    'url': url,
  };

  CallbackQueryAnswer({
    this.text,
    this.showAlert,
    this.url,
  });

  CallbackQueryAnswer.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    showAlert = tryConvertToTdObject(json['show_alert']);
    url = tryConvertToTdObject(json['url']);
  }
}

@reflector
class CustomRequestResult extends TdObject {
  @override
  String get tdType => 'customRequestResult';

  String result;

  @override
  Map<String, dynamic> get params => {
    'result': result,
  };

  CustomRequestResult({
    this.result,
  });

  CustomRequestResult.fromJson(Map<String, dynamic> json) {
    result = tryConvertToTdObject(json['result']);
  }
}

@reflector
class GameHighScore extends TdObject {
  @override
  String get tdType => 'gameHighScore';

  int position;
  int userId;
  int score;

  @override
  Map<String, dynamic> get params => {
    'position': position,
    'user_id': userId,
    'score': score,
  };

  GameHighScore({
    this.position,
    this.userId,
    this.score,
  });

  GameHighScore.fromJson(Map<String, dynamic> json) {
    position = tryConvertToTdObject(json['position']);
    userId = tryConvertToTdObject(json['user_id']);
    score = tryConvertToTdObject(json['score']);
  }
}

@reflector
class GameHighScores extends TdObject {
  @override
  String get tdType => 'gameHighScores';

  List<GameHighScore> scores;

  @override
  Map<String, dynamic> get params => {
    'scores': scores,
  };

  GameHighScores({
    this.scores,
  });

  GameHighScores.fromJson(Map<String, dynamic> json) {
    scores = tryConvertToTdObject(json['scores']);
  }
}

@reflector
class TonLiteServerResponse extends TdObject {
  @override
  String get tdType => 'tonLiteServerResponse';

  String response;

  @override
  Map<String, dynamic> get params => {
    'response': response,
  };

  TonLiteServerResponse({
    this.response,
  });

  TonLiteServerResponse.fromJson(Map<String, dynamic> json) {
    response = tryConvertToTdObject(json['response']);
  }
}

@reflector
class TonWalletPasswordSalt extends TdObject {
  @override
  String get tdType => 'tonWalletPasswordSalt';

  String salt;

  @override
  Map<String, dynamic> get params => {
    'salt': salt,
  };

  TonWalletPasswordSalt({
    this.salt,
  });

  TonWalletPasswordSalt.fromJson(Map<String, dynamic> json) {
    salt = tryConvertToTdObject(json['salt']);
  }
}

abstract class ChatEventAction extends TdObject {}

@reflector
class ChatEventMessageEdited extends ChatEventAction {
  @override
  String get tdType => 'chatEventMessageEdited';

  Message oldMessage;
  Message newMessage;

  @override
  Map<String, dynamic> get params => {
    'old_message': oldMessage,
    'new_message': newMessage,
  };

  ChatEventMessageEdited({
    this.oldMessage,
    this.newMessage,
  });

  ChatEventMessageEdited.fromJson(Map<String, dynamic> json) {
    oldMessage = tryConvertToTdObject(json['old_message']);
    newMessage = tryConvertToTdObject(json['new_message']);
  }
}

@reflector
class ChatEventMessageDeleted extends ChatEventAction {
  @override
  String get tdType => 'chatEventMessageDeleted';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  ChatEventMessageDeleted({
    this.message,
  });

  ChatEventMessageDeleted.fromJson(Map<String, dynamic> json) {
    message = tryConvertToTdObject(json['message']);
  }
}

@reflector
class ChatEventPollStopped extends ChatEventAction {
  @override
  String get tdType => 'chatEventPollStopped';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  ChatEventPollStopped({
    this.message,
  });

  ChatEventPollStopped.fromJson(Map<String, dynamic> json) {
    message = tryConvertToTdObject(json['message']);
  }
}

@reflector
class ChatEventMessagePinned extends ChatEventAction {
  @override
  String get tdType => 'chatEventMessagePinned';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  ChatEventMessagePinned({
    this.message,
  });

  ChatEventMessagePinned.fromJson(Map<String, dynamic> json) {
    message = tryConvertToTdObject(json['message']);
  }
}

@reflector
class ChatEventMessageUnpinned extends ChatEventAction {
  @override
  String get tdType => 'chatEventMessageUnpinned';

  @override
  Map<String, dynamic> get params => {};

  ChatEventMessageUnpinned();

  ChatEventMessageUnpinned.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatEventMemberJoined extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberJoined';

  @override
  Map<String, dynamic> get params => {};

  ChatEventMemberJoined();

  ChatEventMemberJoined.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatEventMemberLeft extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberLeft';

  @override
  Map<String, dynamic> get params => {};

  ChatEventMemberLeft();

  ChatEventMemberLeft.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatEventMemberInvited extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberInvited';

  int userId;
  ChatMemberStatus status;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'status': status,
  };

  ChatEventMemberInvited({
    this.userId,
    this.status,
  });

  ChatEventMemberInvited.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    status = tryConvertToTdObject(json['status']);
  }
}

@reflector
class ChatEventMemberPromoted extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberPromoted';

  int userId;
  ChatMemberStatus oldStatus;
  ChatMemberStatus newStatus;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'old_status': oldStatus,
    'new_status': newStatus,
  };

  ChatEventMemberPromoted({
    this.userId,
    this.oldStatus,
    this.newStatus,
  });

  ChatEventMemberPromoted.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    oldStatus = tryConvertToTdObject(json['old_status']);
    newStatus = tryConvertToTdObject(json['new_status']);
  }
}

@reflector
class ChatEventMemberRestricted extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberRestricted';

  int userId;
  ChatMemberStatus oldStatus;
  ChatMemberStatus newStatus;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'old_status': oldStatus,
    'new_status': newStatus,
  };

  ChatEventMemberRestricted({
    this.userId,
    this.oldStatus,
    this.newStatus,
  });

  ChatEventMemberRestricted.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    oldStatus = tryConvertToTdObject(json['old_status']);
    newStatus = tryConvertToTdObject(json['new_status']);
  }
}

@reflector
class ChatEventTitleChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventTitleChanged';

  String oldTitle;
  String newTitle;

  @override
  Map<String, dynamic> get params => {
    'old_title': oldTitle,
    'new_title': newTitle,
  };

  ChatEventTitleChanged({
    this.oldTitle,
    this.newTitle,
  });

  ChatEventTitleChanged.fromJson(Map<String, dynamic> json) {
    oldTitle = tryConvertToTdObject(json['old_title']);
    newTitle = tryConvertToTdObject(json['new_title']);
  }
}

@reflector
class ChatEventPermissionsChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventPermissionsChanged';

  ChatPermissions oldPermissions;
  ChatPermissions newPermissions;

  @override
  Map<String, dynamic> get params => {
    'old_permissions': oldPermissions,
    'new_permissions': newPermissions,
  };

  ChatEventPermissionsChanged({
    this.oldPermissions,
    this.newPermissions,
  });

  ChatEventPermissionsChanged.fromJson(Map<String, dynamic> json) {
    oldPermissions = tryConvertToTdObject(json['old_permissions']);
    newPermissions = tryConvertToTdObject(json['new_permissions']);
  }
}

@reflector
class ChatEventDescriptionChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventDescriptionChanged';

  String oldDescription;
  String newDescription;

  @override
  Map<String, dynamic> get params => {
    'old_description': oldDescription,
    'new_description': newDescription,
  };

  ChatEventDescriptionChanged({
    this.oldDescription,
    this.newDescription,
  });

  ChatEventDescriptionChanged.fromJson(Map<String, dynamic> json) {
    oldDescription = tryConvertToTdObject(json['old_description']);
    newDescription = tryConvertToTdObject(json['new_description']);
  }
}

@reflector
class ChatEventUsernameChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventUsernameChanged';

  String oldUsername;
  String newUsername;

  @override
  Map<String, dynamic> get params => {
    'old_username': oldUsername,
    'new_username': newUsername,
  };

  ChatEventUsernameChanged({
    this.oldUsername,
    this.newUsername,
  });

  ChatEventUsernameChanged.fromJson(Map<String, dynamic> json) {
    oldUsername = tryConvertToTdObject(json['old_username']);
    newUsername = tryConvertToTdObject(json['new_username']);
  }
}

@reflector
class ChatEventPhotoChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventPhotoChanged';

  Photo oldPhoto;
  Photo newPhoto;

  @override
  Map<String, dynamic> get params => {
    'old_photo': oldPhoto,
    'new_photo': newPhoto,
  };

  ChatEventPhotoChanged({
    this.oldPhoto,
    this.newPhoto,
  });

  ChatEventPhotoChanged.fromJson(Map<String, dynamic> json) {
    oldPhoto = tryConvertToTdObject(json['old_photo']);
    newPhoto = tryConvertToTdObject(json['new_photo']);
  }
}

@reflector
class ChatEventInvitesToggled extends ChatEventAction {
  @override
  String get tdType => 'chatEventInvitesToggled';

  bool canInviteUsers;

  @override
  Map<String, dynamic> get params => {
    'can_invite_users': canInviteUsers,
  };

  ChatEventInvitesToggled({
    this.canInviteUsers,
  });

  ChatEventInvitesToggled.fromJson(Map<String, dynamic> json) {
    canInviteUsers = tryConvertToTdObject(json['can_invite_users']);
  }
}

@reflector
class ChatEventSignMessagesToggled extends ChatEventAction {
  @override
  String get tdType => 'chatEventSignMessagesToggled';

  bool signMessages;

  @override
  Map<String, dynamic> get params => {
    'sign_messages': signMessages,
  };

  ChatEventSignMessagesToggled({
    this.signMessages,
  });

  ChatEventSignMessagesToggled.fromJson(Map<String, dynamic> json) {
    signMessages = tryConvertToTdObject(json['sign_messages']);
  }
}

@reflector
class ChatEventStickerSetChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventStickerSetChanged';

  int oldStickerSetId;
  int newStickerSetId;

  @override
  Map<String, dynamic> get params => {
    'old_sticker_set_id': oldStickerSetId,
    'new_sticker_set_id': newStickerSetId,
  };

  ChatEventStickerSetChanged({
    this.oldStickerSetId,
    this.newStickerSetId,
  });

  ChatEventStickerSetChanged.fromJson(Map<String, dynamic> json) {
    oldStickerSetId = tryConvertToTdObject(json['old_sticker_set_id']);
    newStickerSetId = tryConvertToTdObject(json['new_sticker_set_id']);
  }
}

@reflector
class ChatEventIsAllHistoryAvailableToggled extends ChatEventAction {
  @override
  String get tdType => 'chatEventIsAllHistoryAvailableToggled';

  bool isAllHistoryAvailable;

  @override
  Map<String, dynamic> get params => {
    'is_all_history_available': isAllHistoryAvailable,
  };

  ChatEventIsAllHistoryAvailableToggled({
    this.isAllHistoryAvailable,
  });

  ChatEventIsAllHistoryAvailableToggled.fromJson(Map<String, dynamic> json) {
    isAllHistoryAvailable = tryConvertToTdObject(json['is_all_history_available']);
  }
}

@reflector
class ChatEvent extends TdObject {
  @override
  String get tdType => 'chatEvent';

  int id;
  int date;
  int userId;
  ChatEventAction action;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'date': date,
    'user_id': userId,
    'action': action,
  };

  ChatEvent({
    this.id,
    this.date,
    this.userId,
    this.action,
  });

  ChatEvent.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    date = tryConvertToTdObject(json['date']);
    userId = tryConvertToTdObject(json['user_id']);
    action = tryConvertToTdObject(json['action']);
  }
}

@reflector
class ChatEvents extends TdObject {
  @override
  String get tdType => 'chatEvents';

  List<ChatEvent> events;

  @override
  Map<String, dynamic> get params => {
    'events': events,
  };

  ChatEvents({
    this.events,
  });

  ChatEvents.fromJson(Map<String, dynamic> json) {
    events = tryConvertToTdObject(json['events']);
  }
}

@reflector
class ChatEventLogFilters extends TdObject {
  @override
  String get tdType => 'chatEventLogFilters';

  bool messageEdits;
  bool messageDeletions;
  bool messagePins;
  bool memberJoins;
  bool memberLeaves;
  bool memberInvites;
  bool memberPromotions;
  bool memberRestrictions;
  bool infoChanges;
  bool settingChanges;

  @override
  Map<String, dynamic> get params => {
    'message_edits': messageEdits,
    'message_deletions': messageDeletions,
    'message_pins': messagePins,
    'member_joins': memberJoins,
    'member_leaves': memberLeaves,
    'member_invites': memberInvites,
    'member_promotions': memberPromotions,
    'member_restrictions': memberRestrictions,
    'info_changes': infoChanges,
    'setting_changes': settingChanges,
  };

  ChatEventLogFilters({
    this.messageEdits,
    this.messageDeletions,
    this.messagePins,
    this.memberJoins,
    this.memberLeaves,
    this.memberInvites,
    this.memberPromotions,
    this.memberRestrictions,
    this.infoChanges,
    this.settingChanges,
  });

  ChatEventLogFilters.fromJson(Map<String, dynamic> json) {
    messageEdits = tryConvertToTdObject(json['message_edits']);
    messageDeletions = tryConvertToTdObject(json['message_deletions']);
    messagePins = tryConvertToTdObject(json['message_pins']);
    memberJoins = tryConvertToTdObject(json['member_joins']);
    memberLeaves = tryConvertToTdObject(json['member_leaves']);
    memberInvites = tryConvertToTdObject(json['member_invites']);
    memberPromotions = tryConvertToTdObject(json['member_promotions']);
    memberRestrictions = tryConvertToTdObject(json['member_restrictions']);
    infoChanges = tryConvertToTdObject(json['info_changes']);
    settingChanges = tryConvertToTdObject(json['setting_changes']);
  }
}

abstract class LanguagePackStringValue extends TdObject {}

@reflector
class LanguagePackStringValueOrdinary extends LanguagePackStringValue {
  @override
  String get tdType => 'languagePackStringValueOrdinary';

  String value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  LanguagePackStringValueOrdinary({
    this.value,
  });

  LanguagePackStringValueOrdinary.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class LanguagePackStringValuePluralized extends LanguagePackStringValue {
  @override
  String get tdType => 'languagePackStringValuePluralized';

  String zeroValue;
  String oneValue;
  String twoValue;
  String fewValue;
  String manyValue;
  String otherValue;

  @override
  Map<String, dynamic> get params => {
    'zero_value': zeroValue,
    'one_value': oneValue,
    'two_value': twoValue,
    'few_value': fewValue,
    'many_value': manyValue,
    'other_value': otherValue,
  };

  LanguagePackStringValuePluralized({
    this.zeroValue,
    this.oneValue,
    this.twoValue,
    this.fewValue,
    this.manyValue,
    this.otherValue,
  });

  LanguagePackStringValuePluralized.fromJson(Map<String, dynamic> json) {
    zeroValue = tryConvertToTdObject(json['zero_value']);
    oneValue = tryConvertToTdObject(json['one_value']);
    twoValue = tryConvertToTdObject(json['two_value']);
    fewValue = tryConvertToTdObject(json['few_value']);
    manyValue = tryConvertToTdObject(json['many_value']);
    otherValue = tryConvertToTdObject(json['other_value']);
  }
}

@reflector
class LanguagePackStringValueDeleted extends LanguagePackStringValue {
  @override
  String get tdType => 'languagePackStringValueDeleted';

  @override
  Map<String, dynamic> get params => {};

  LanguagePackStringValueDeleted();

  LanguagePackStringValueDeleted.fromJson(Map<String, dynamic> json);
}

@reflector
class LanguagePackString extends TdObject {
  @override
  String get tdType => 'languagePackString';

  String key;
  LanguagePackStringValue value;

  @override
  Map<String, dynamic> get params => {
    'key': key,
    'value': value,
  };

  LanguagePackString({
    this.key,
    this.value,
  });

  LanguagePackString.fromJson(Map<String, dynamic> json) {
    key = tryConvertToTdObject(json['key']);
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class LanguagePackStrings extends TdObject {
  @override
  String get tdType => 'languagePackStrings';

  List<LanguagePackString> strings;

  @override
  Map<String, dynamic> get params => {
    'strings': strings,
  };

  LanguagePackStrings({
    this.strings,
  });

  LanguagePackStrings.fromJson(Map<String, dynamic> json) {
    strings = tryConvertToTdObject(json['strings']);
  }
}

@reflector
class LanguagePackInfo extends TdObject {
  @override
  String get tdType => 'languagePackInfo';

  String id;
  String baseLanguagePackId;
  String name;
  String nativeName;
  String pluralCode;
  bool isOfficial;
  bool isRtl;
  bool isBeta;
  bool isInstalled;
  int totalStringCount;
  int translatedStringCount;
  int localStringCount;
  String translationUrl;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'base_language_pack_id': baseLanguagePackId,
    'name': name,
    'native_name': nativeName,
    'plural_code': pluralCode,
    'is_official': isOfficial,
    'is_rtl': isRtl,
    'is_beta': isBeta,
    'is_installed': isInstalled,
    'total_string_count': totalStringCount,
    'translated_string_count': translatedStringCount,
    'local_string_count': localStringCount,
    'translation_url': translationUrl,
  };

  LanguagePackInfo({
    this.id,
    this.baseLanguagePackId,
    this.name,
    this.nativeName,
    this.pluralCode,
    this.isOfficial,
    this.isRtl,
    this.isBeta,
    this.isInstalled,
    this.totalStringCount,
    this.translatedStringCount,
    this.localStringCount,
    this.translationUrl,
  });

  LanguagePackInfo.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    baseLanguagePackId = tryConvertToTdObject(json['base_language_pack_id']);
    name = tryConvertToTdObject(json['name']);
    nativeName = tryConvertToTdObject(json['native_name']);
    pluralCode = tryConvertToTdObject(json['plural_code']);
    isOfficial = tryConvertToTdObject(json['is_official']);
    isRtl = tryConvertToTdObject(json['is_rtl']);
    isBeta = tryConvertToTdObject(json['is_beta']);
    isInstalled = tryConvertToTdObject(json['is_installed']);
    totalStringCount = tryConvertToTdObject(json['total_string_count']);
    translatedStringCount = tryConvertToTdObject(json['translated_string_count']);
    localStringCount = tryConvertToTdObject(json['local_string_count']);
    translationUrl = tryConvertToTdObject(json['translation_url']);
  }
}

@reflector
class LocalizationTargetInfo extends TdObject {
  @override
  String get tdType => 'localizationTargetInfo';

  List<LanguagePackInfo> languagePacks;

  @override
  Map<String, dynamic> get params => {
    'language_packs': languagePacks,
  };

  LocalizationTargetInfo({
    this.languagePacks,
  });

  LocalizationTargetInfo.fromJson(Map<String, dynamic> json) {
    languagePacks = tryConvertToTdObject(json['language_packs']);
  }
}

abstract class DeviceToken extends TdObject {}

@reflector
class DeviceTokenFirebaseCloudMessaging extends DeviceToken {
  @override
  String get tdType => 'deviceTokenFirebaseCloudMessaging';

  String token;
  bool encrypt;

  @override
  Map<String, dynamic> get params => {
    'token': token,
    'encrypt': encrypt,
  };

  DeviceTokenFirebaseCloudMessaging({
    this.token,
    this.encrypt,
  });

  DeviceTokenFirebaseCloudMessaging.fromJson(Map<String, dynamic> json) {
    token = tryConvertToTdObject(json['token']);
    encrypt = tryConvertToTdObject(json['encrypt']);
  }
}

@reflector
class DeviceTokenApplePush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenApplePush';

  String deviceToken;
  bool isAppSandbox;

  @override
  Map<String, dynamic> get params => {
    'device_token': deviceToken,
    'is_app_sandbox': isAppSandbox,
  };

  DeviceTokenApplePush({
    this.deviceToken,
    this.isAppSandbox,
  });

  DeviceTokenApplePush.fromJson(Map<String, dynamic> json) {
    deviceToken = tryConvertToTdObject(json['device_token']);
    isAppSandbox = tryConvertToTdObject(json['is_app_sandbox']);
  }
}

@reflector
class DeviceTokenApplePushVoIP extends DeviceToken {
  @override
  String get tdType => 'deviceTokenApplePushVoIP';

  String deviceToken;
  bool isAppSandbox;
  bool encrypt;

  @override
  Map<String, dynamic> get params => {
    'device_token': deviceToken,
    'is_app_sandbox': isAppSandbox,
    'encrypt': encrypt,
  };

  DeviceTokenApplePushVoIP({
    this.deviceToken,
    this.isAppSandbox,
    this.encrypt,
  });

  DeviceTokenApplePushVoIP.fromJson(Map<String, dynamic> json) {
    deviceToken = tryConvertToTdObject(json['device_token']);
    isAppSandbox = tryConvertToTdObject(json['is_app_sandbox']);
    encrypt = tryConvertToTdObject(json['encrypt']);
  }
}

@reflector
class DeviceTokenWindowsPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenWindowsPush';

  String accessToken;

  @override
  Map<String, dynamic> get params => {
    'access_token': accessToken,
  };

  DeviceTokenWindowsPush({
    this.accessToken,
  });

  DeviceTokenWindowsPush.fromJson(Map<String, dynamic> json) {
    accessToken = tryConvertToTdObject(json['access_token']);
  }
}

@reflector
class DeviceTokenMicrosoftPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenMicrosoftPush';

  String channelUri;

  @override
  Map<String, dynamic> get params => {
    'channel_uri': channelUri,
  };

  DeviceTokenMicrosoftPush({
    this.channelUri,
  });

  DeviceTokenMicrosoftPush.fromJson(Map<String, dynamic> json) {
    channelUri = tryConvertToTdObject(json['channel_uri']);
  }
}

@reflector
class DeviceTokenMicrosoftPushVoIP extends DeviceToken {
  @override
  String get tdType => 'deviceTokenMicrosoftPushVoIP';

  String channelUri;

  @override
  Map<String, dynamic> get params => {
    'channel_uri': channelUri,
  };

  DeviceTokenMicrosoftPushVoIP({
    this.channelUri,
  });

  DeviceTokenMicrosoftPushVoIP.fromJson(Map<String, dynamic> json) {
    channelUri = tryConvertToTdObject(json['channel_uri']);
  }
}

@reflector
class DeviceTokenWebPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenWebPush';

  String endpoint;
  String p256dhBase64url;
  String authBase64url;

  @override
  Map<String, dynamic> get params => {
    'endpoint': endpoint,
    'p256dh_base64url': p256dhBase64url,
    'auth_base64url': authBase64url,
  };

  DeviceTokenWebPush({
    this.endpoint,
    this.p256dhBase64url,
    this.authBase64url,
  });

  DeviceTokenWebPush.fromJson(Map<String, dynamic> json) {
    endpoint = tryConvertToTdObject(json['endpoint']);
    p256dhBase64url = tryConvertToTdObject(json['p256dh_base64url']);
    authBase64url = tryConvertToTdObject(json['auth_base64url']);
  }
}

@reflector
class DeviceTokenSimplePush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenSimplePush';

  String endpoint;

  @override
  Map<String, dynamic> get params => {
    'endpoint': endpoint,
  };

  DeviceTokenSimplePush({
    this.endpoint,
  });

  DeviceTokenSimplePush.fromJson(Map<String, dynamic> json) {
    endpoint = tryConvertToTdObject(json['endpoint']);
  }
}

@reflector
class DeviceTokenUbuntuPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenUbuntuPush';

  String token;

  @override
  Map<String, dynamic> get params => {
    'token': token,
  };

  DeviceTokenUbuntuPush({
    this.token,
  });

  DeviceTokenUbuntuPush.fromJson(Map<String, dynamic> json) {
    token = tryConvertToTdObject(json['token']);
  }
}

@reflector
class DeviceTokenBlackBerryPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenBlackBerryPush';

  String token;

  @override
  Map<String, dynamic> get params => {
    'token': token,
  };

  DeviceTokenBlackBerryPush({
    this.token,
  });

  DeviceTokenBlackBerryPush.fromJson(Map<String, dynamic> json) {
    token = tryConvertToTdObject(json['token']);
  }
}

@reflector
class DeviceTokenTizenPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenTizenPush';

  String regId;

  @override
  Map<String, dynamic> get params => {
    'reg_id': regId,
  };

  DeviceTokenTizenPush({
    this.regId,
  });

  DeviceTokenTizenPush.fromJson(Map<String, dynamic> json) {
    regId = tryConvertToTdObject(json['reg_id']);
  }
}

@reflector
class PushReceiverId extends TdObject {
  @override
  String get tdType => 'pushReceiverId';

  int id;

  @override
  Map<String, dynamic> get params => {
    'id': id,
  };

  PushReceiverId({
    this.id,
  });

  PushReceiverId.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
  }
}

abstract class BackgroundType extends TdObject {}

@reflector
class BackgroundTypeWallpaper extends BackgroundType {
  @override
  String get tdType => 'backgroundTypeWallpaper';

  bool isBlurred;
  bool isMoving;

  @override
  Map<String, dynamic> get params => {
    'is_blurred': isBlurred,
    'is_moving': isMoving,
  };

  BackgroundTypeWallpaper({
    this.isBlurred,
    this.isMoving,
  });

  BackgroundTypeWallpaper.fromJson(Map<String, dynamic> json) {
    isBlurred = tryConvertToTdObject(json['is_blurred']);
    isMoving = tryConvertToTdObject(json['is_moving']);
  }
}

@reflector
class BackgroundTypePattern extends BackgroundType {
  @override
  String get tdType => 'backgroundTypePattern';

  bool isMoving;
  int color;
  int intensity;

  @override
  Map<String, dynamic> get params => {
    'is_moving': isMoving,
    'color': color,
    'intensity': intensity,
  };

  BackgroundTypePattern({
    this.isMoving,
    this.color,
    this.intensity,
  });

  BackgroundTypePattern.fromJson(Map<String, dynamic> json) {
    isMoving = tryConvertToTdObject(json['is_moving']);
    color = tryConvertToTdObject(json['color']);
    intensity = tryConvertToTdObject(json['intensity']);
  }
}

@reflector
class BackgroundTypeSolid extends BackgroundType {
  @override
  String get tdType => 'backgroundTypeSolid';

  int color;

  @override
  Map<String, dynamic> get params => {
    'color': color,
  };

  BackgroundTypeSolid({
    this.color,
  });

  BackgroundTypeSolid.fromJson(Map<String, dynamic> json) {
    color = tryConvertToTdObject(json['color']);
  }
}

@reflector
class Background extends TdObject {
  @override
  String get tdType => 'background';

  int id;
  bool isDefault;
  bool isDark;
  String name;
  Document document;
  BackgroundType type;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'is_default': isDefault,
    'is_dark': isDark,
    'name': name,
    'document': document,
    'type': type,
  };

  Background({
    this.id,
    this.isDefault,
    this.isDark,
    this.name,
    this.document,
    this.type,
  });

  Background.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    isDefault = tryConvertToTdObject(json['is_default']);
    isDark = tryConvertToTdObject(json['is_dark']);
    name = tryConvertToTdObject(json['name']);
    document = tryConvertToTdObject(json['document']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class Backgrounds extends TdObject {
  @override
  String get tdType => 'backgrounds';

  List<Background> backgrounds;

  @override
  Map<String, dynamic> get params => {
    'backgrounds': backgrounds,
  };

  Backgrounds({
    this.backgrounds,
  });

  Backgrounds.fromJson(Map<String, dynamic> json) {
    backgrounds = tryConvertToTdObject(json['backgrounds']);
  }
}

abstract class InputBackground extends TdObject {}

@reflector
class InputBackgroundLocal extends InputBackground {
  @override
  String get tdType => 'inputBackgroundLocal';

  InputFile background;

  @override
  Map<String, dynamic> get params => {
    'background': background,
  };

  InputBackgroundLocal({
    this.background,
  });

  InputBackgroundLocal.fromJson(Map<String, dynamic> json) {
    background = tryConvertToTdObject(json['background']);
  }
}

@reflector
class InputBackgroundRemote extends InputBackground {
  @override
  String get tdType => 'inputBackgroundRemote';

  int backgroundId;

  @override
  Map<String, dynamic> get params => {
    'background_id': backgroundId,
  };

  InputBackgroundRemote({
    this.backgroundId,
  });

  InputBackgroundRemote.fromJson(Map<String, dynamic> json) {
    backgroundId = tryConvertToTdObject(json['background_id']);
  }
}

@reflector
class Hashtags extends TdObject {
  @override
  String get tdType => 'hashtags';

  List<String> hashtags;

  @override
  Map<String, dynamic> get params => {
    'hashtags': hashtags,
  };

  Hashtags({
    this.hashtags,
  });

  Hashtags.fromJson(Map<String, dynamic> json) {
    hashtags = tryConvertToTdObject(json['hashtags']);
  }
}

abstract class CheckChatUsernameResult extends TdObject {}

@reflector
class CheckChatUsernameResultOk extends CheckChatUsernameResult {
  @override
  String get tdType => 'checkChatUsernameResultOk';

  @override
  Map<String, dynamic> get params => {};

  CheckChatUsernameResultOk();

  CheckChatUsernameResultOk.fromJson(Map<String, dynamic> json);
}

@reflector
class CheckChatUsernameResultUsernameInvalid extends CheckChatUsernameResult {
  @override
  String get tdType => 'checkChatUsernameResultUsernameInvalid';

  @override
  Map<String, dynamic> get params => {};

  CheckChatUsernameResultUsernameInvalid();

  CheckChatUsernameResultUsernameInvalid.fromJson(Map<String, dynamic> json);
}

@reflector
class CheckChatUsernameResultUsernameOccupied extends CheckChatUsernameResult {
  @override
  String get tdType => 'checkChatUsernameResultUsernameOccupied';

  @override
  Map<String, dynamic> get params => {};

  CheckChatUsernameResultUsernameOccupied();

  CheckChatUsernameResultUsernameOccupied.fromJson(Map<String, dynamic> json);
}

@reflector
class CheckChatUsernameResultPublicChatsTooMuch extends CheckChatUsernameResult {
  @override
  String get tdType => 'checkChatUsernameResultPublicChatsTooMuch';

  @override
  Map<String, dynamic> get params => {};

  CheckChatUsernameResultPublicChatsTooMuch();

  CheckChatUsernameResultPublicChatsTooMuch.fromJson(Map<String, dynamic> json);
}

@reflector
class CheckChatUsernameResultPublicGroupsUnavailable extends CheckChatUsernameResult {
  @override
  String get tdType => 'checkChatUsernameResultPublicGroupsUnavailable';

  @override
  Map<String, dynamic> get params => {};

  CheckChatUsernameResultPublicGroupsUnavailable();

  CheckChatUsernameResultPublicGroupsUnavailable.fromJson(Map<String, dynamic> json);
}

abstract class PushMessageContent extends TdObject {}

@reflector
class PushMessageContentHidden extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentHidden';

  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'is_pinned': isPinned,
  };

  PushMessageContentHidden({
    this.isPinned,
  });

  PushMessageContentHidden.fromJson(Map<String, dynamic> json) {
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentAnimation extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentAnimation';

  Animation animation;
  String caption;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
    'caption': caption,
    'is_pinned': isPinned,
  };

  PushMessageContentAnimation({
    this.animation,
    this.caption,
    this.isPinned,
  });

  PushMessageContentAnimation.fromJson(Map<String, dynamic> json) {
    animation = tryConvertToTdObject(json['animation']);
    caption = tryConvertToTdObject(json['caption']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentAudio extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentAudio';

  Audio audio;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'audio': audio,
    'is_pinned': isPinned,
  };

  PushMessageContentAudio({
    this.audio,
    this.isPinned,
  });

  PushMessageContentAudio.fromJson(Map<String, dynamic> json) {
    audio = tryConvertToTdObject(json['audio']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentContact extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentContact';

  String name;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'name': name,
    'is_pinned': isPinned,
  };

  PushMessageContentContact({
    this.name,
    this.isPinned,
  });

  PushMessageContentContact.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentContactRegistered extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentContactRegistered';

  @override
  Map<String, dynamic> get params => {};

  PushMessageContentContactRegistered();

  PushMessageContentContactRegistered.fromJson(Map<String, dynamic> json);
}

@reflector
class PushMessageContentDocument extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentDocument';

  Document document;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'document': document,
    'is_pinned': isPinned,
  };

  PushMessageContentDocument({
    this.document,
    this.isPinned,
  });

  PushMessageContentDocument.fromJson(Map<String, dynamic> json) {
    document = tryConvertToTdObject(json['document']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentGame extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentGame';

  String title;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'is_pinned': isPinned,
  };

  PushMessageContentGame({
    this.title,
    this.isPinned,
  });

  PushMessageContentGame.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentGameScore extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentGameScore';

  String title;
  int score;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'score': score,
    'is_pinned': isPinned,
  };

  PushMessageContentGameScore({
    this.title,
    this.score,
    this.isPinned,
  });

  PushMessageContentGameScore.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
    score = tryConvertToTdObject(json['score']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentInvoice extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentInvoice';

  String price;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'price': price,
    'is_pinned': isPinned,
  };

  PushMessageContentInvoice({
    this.price,
    this.isPinned,
  });

  PushMessageContentInvoice.fromJson(Map<String, dynamic> json) {
    price = tryConvertToTdObject(json['price']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentLocation extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentLocation';

  bool isLive;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'is_live': isLive,
    'is_pinned': isPinned,
  };

  PushMessageContentLocation({
    this.isLive,
    this.isPinned,
  });

  PushMessageContentLocation.fromJson(Map<String, dynamic> json) {
    isLive = tryConvertToTdObject(json['is_live']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentPhoto extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentPhoto';

  Photo photo;
  String caption;
  bool isSecret;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'caption': caption,
    'is_secret': isSecret,
    'is_pinned': isPinned,
  };

  PushMessageContentPhoto({
    this.photo,
    this.caption,
    this.isSecret,
    this.isPinned,
  });

  PushMessageContentPhoto.fromJson(Map<String, dynamic> json) {
    photo = tryConvertToTdObject(json['photo']);
    caption = tryConvertToTdObject(json['caption']);
    isSecret = tryConvertToTdObject(json['is_secret']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentPoll extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentPoll';

  String question;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'question': question,
    'is_pinned': isPinned,
  };

  PushMessageContentPoll({
    this.question,
    this.isPinned,
  });

  PushMessageContentPoll.fromJson(Map<String, dynamic> json) {
    question = tryConvertToTdObject(json['question']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentScreenshotTaken extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentScreenshotTaken';

  @override
  Map<String, dynamic> get params => {};

  PushMessageContentScreenshotTaken();

  PushMessageContentScreenshotTaken.fromJson(Map<String, dynamic> json);
}

@reflector
class PushMessageContentSticker extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentSticker';

  Sticker sticker;
  String emoji;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
    'emoji': emoji,
    'is_pinned': isPinned,
  };

  PushMessageContentSticker({
    this.sticker,
    this.emoji,
    this.isPinned,
  });

  PushMessageContentSticker.fromJson(Map<String, dynamic> json) {
    sticker = tryConvertToTdObject(json['sticker']);
    emoji = tryConvertToTdObject(json['emoji']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentText extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentText';

  String text;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'is_pinned': isPinned,
  };

  PushMessageContentText({
    this.text,
    this.isPinned,
  });

  PushMessageContentText.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentVideo extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentVideo';

  Video video;
  String caption;
  bool isSecret;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'video': video,
    'caption': caption,
    'is_secret': isSecret,
    'is_pinned': isPinned,
  };

  PushMessageContentVideo({
    this.video,
    this.caption,
    this.isSecret,
    this.isPinned,
  });

  PushMessageContentVideo.fromJson(Map<String, dynamic> json) {
    video = tryConvertToTdObject(json['video']);
    caption = tryConvertToTdObject(json['caption']);
    isSecret = tryConvertToTdObject(json['is_secret']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentVideoNote extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentVideoNote';

  VideoNote videoNote;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'video_note': videoNote,
    'is_pinned': isPinned,
  };

  PushMessageContentVideoNote({
    this.videoNote,
    this.isPinned,
  });

  PushMessageContentVideoNote.fromJson(Map<String, dynamic> json) {
    videoNote = tryConvertToTdObject(json['video_note']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentVoiceNote extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentVoiceNote';

  VoiceNote voiceNote;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'voice_note': voiceNote,
    'is_pinned': isPinned,
  };

  PushMessageContentVoiceNote({
    this.voiceNote,
    this.isPinned,
  });

  PushMessageContentVoiceNote.fromJson(Map<String, dynamic> json) {
    voiceNote = tryConvertToTdObject(json['voice_note']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentBasicGroupChatCreate extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentBasicGroupChatCreate';

  @override
  Map<String, dynamic> get params => {};

  PushMessageContentBasicGroupChatCreate();

  PushMessageContentBasicGroupChatCreate.fromJson(Map<String, dynamic> json);
}

@reflector
class PushMessageContentChatAddMembers extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentChatAddMembers';

  String memberName;
  bool isCurrentUser;
  bool isReturned;

  @override
  Map<String, dynamic> get params => {
    'member_name': memberName,
    'is_current_user': isCurrentUser,
    'is_returned': isReturned,
  };

  PushMessageContentChatAddMembers({
    this.memberName,
    this.isCurrentUser,
    this.isReturned,
  });

  PushMessageContentChatAddMembers.fromJson(Map<String, dynamic> json) {
    memberName = tryConvertToTdObject(json['member_name']);
    isCurrentUser = tryConvertToTdObject(json['is_current_user']);
    isReturned = tryConvertToTdObject(json['is_returned']);
  }
}

@reflector
class PushMessageContentChatChangePhoto extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentChatChangePhoto';

  @override
  Map<String, dynamic> get params => {};

  PushMessageContentChatChangePhoto();

  PushMessageContentChatChangePhoto.fromJson(Map<String, dynamic> json);
}

@reflector
class PushMessageContentChatChangeTitle extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentChatChangeTitle';

  String title;

  @override
  Map<String, dynamic> get params => {
    'title': title,
  };

  PushMessageContentChatChangeTitle({
    this.title,
  });

  PushMessageContentChatChangeTitle.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class PushMessageContentChatDeleteMember extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentChatDeleteMember';

  String memberName;
  bool isCurrentUser;
  bool isLeft;

  @override
  Map<String, dynamic> get params => {
    'member_name': memberName,
    'is_current_user': isCurrentUser,
    'is_left': isLeft,
  };

  PushMessageContentChatDeleteMember({
    this.memberName,
    this.isCurrentUser,
    this.isLeft,
  });

  PushMessageContentChatDeleteMember.fromJson(Map<String, dynamic> json) {
    memberName = tryConvertToTdObject(json['member_name']);
    isCurrentUser = tryConvertToTdObject(json['is_current_user']);
    isLeft = tryConvertToTdObject(json['is_left']);
  }
}

@reflector
class PushMessageContentChatJoinByLink extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentChatJoinByLink';

  @override
  Map<String, dynamic> get params => {};

  PushMessageContentChatJoinByLink();

  PushMessageContentChatJoinByLink.fromJson(Map<String, dynamic> json);
}

@reflector
class PushMessageContentMessageForwards extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentMessageForwards';

  int totalCount;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
  };

  PushMessageContentMessageForwards({
    this.totalCount,
  });

  PushMessageContentMessageForwards.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
  }
}

@reflector
class PushMessageContentMediaAlbum extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentMediaAlbum';

  int totalCount;
  bool hasPhotos;
  bool hasVideos;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'has_photos': hasPhotos,
    'has_videos': hasVideos,
  };

  PushMessageContentMediaAlbum({
    this.totalCount,
    this.hasPhotos,
    this.hasVideos,
  });

  PushMessageContentMediaAlbum.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    hasPhotos = tryConvertToTdObject(json['has_photos']);
    hasVideos = tryConvertToTdObject(json['has_videos']);
  }
}

abstract class NotificationType extends TdObject {}

@reflector
class NotificationTypeNewMessage extends NotificationType {
  @override
  String get tdType => 'notificationTypeNewMessage';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  NotificationTypeNewMessage({
    this.message,
  });

  NotificationTypeNewMessage.fromJson(Map<String, dynamic> json) {
    message = tryConvertToTdObject(json['message']);
  }
}

@reflector
class NotificationTypeNewSecretChat extends NotificationType {
  @override
  String get tdType => 'notificationTypeNewSecretChat';

  @override
  Map<String, dynamic> get params => {};

  NotificationTypeNewSecretChat();

  NotificationTypeNewSecretChat.fromJson(Map<String, dynamic> json);
}

@reflector
class NotificationTypeNewCall extends NotificationType {
  @override
  String get tdType => 'notificationTypeNewCall';

  int callId;

  @override
  Map<String, dynamic> get params => {
    'call_id': callId,
  };

  NotificationTypeNewCall({
    this.callId,
  });

  NotificationTypeNewCall.fromJson(Map<String, dynamic> json) {
    callId = tryConvertToTdObject(json['call_id']);
  }
}

@reflector
class NotificationTypeNewPushMessage extends NotificationType {
  @override
  String get tdType => 'notificationTypeNewPushMessage';

  int messageId;
  int senderUserId;
  PushMessageContent content;

  @override
  Map<String, dynamic> get params => {
    'message_id': messageId,
    'sender_user_id': senderUserId,
    'content': content,
  };

  NotificationTypeNewPushMessage({
    this.messageId,
    this.senderUserId,
    this.content,
  });

  NotificationTypeNewPushMessage.fromJson(Map<String, dynamic> json) {
    messageId = tryConvertToTdObject(json['message_id']);
    senderUserId = tryConvertToTdObject(json['sender_user_id']);
    content = tryConvertToTdObject(json['content']);
  }
}

abstract class NotificationGroupType extends TdObject {}

@reflector
class NotificationGroupTypeMessages extends NotificationGroupType {
  @override
  String get tdType => 'notificationGroupTypeMessages';

  @override
  Map<String, dynamic> get params => {};

  NotificationGroupTypeMessages();

  NotificationGroupTypeMessages.fromJson(Map<String, dynamic> json);
}

@reflector
class NotificationGroupTypeMentions extends NotificationGroupType {
  @override
  String get tdType => 'notificationGroupTypeMentions';

  @override
  Map<String, dynamic> get params => {};

  NotificationGroupTypeMentions();

  NotificationGroupTypeMentions.fromJson(Map<String, dynamic> json);
}

@reflector
class NotificationGroupTypeSecretChat extends NotificationGroupType {
  @override
  String get tdType => 'notificationGroupTypeSecretChat';

  @override
  Map<String, dynamic> get params => {};

  NotificationGroupTypeSecretChat();

  NotificationGroupTypeSecretChat.fromJson(Map<String, dynamic> json);
}

@reflector
class NotificationGroupTypeCalls extends NotificationGroupType {
  @override
  String get tdType => 'notificationGroupTypeCalls';

  @override
  Map<String, dynamic> get params => {};

  NotificationGroupTypeCalls();

  NotificationGroupTypeCalls.fromJson(Map<String, dynamic> json);
}

@reflector
class Notification extends TdObject {
  @override
  String get tdType => 'notification';

  int id;
  int date;
  bool isSilent;
  NotificationType type;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'date': date,
    'is_silent': isSilent,
    'type': type,
  };

  Notification({
    this.id,
    this.date,
    this.isSilent,
    this.type,
  });

  Notification.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    date = tryConvertToTdObject(json['date']);
    isSilent = tryConvertToTdObject(json['is_silent']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class NotificationGroup extends TdObject {
  @override
  String get tdType => 'notificationGroup';

  int id;
  NotificationGroupType type;
  int chatId;
  int totalCount;
  List<Notification> notifications;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'type': type,
    'chat_id': chatId,
    'total_count': totalCount,
    'notifications': notifications,
  };

  NotificationGroup({
    this.id,
    this.type,
    this.chatId,
    this.totalCount,
    this.notifications,
  });

  NotificationGroup.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    type = tryConvertToTdObject(json['type']);
    chatId = tryConvertToTdObject(json['chat_id']);
    totalCount = tryConvertToTdObject(json['total_count']);
    notifications = tryConvertToTdObject(json['notifications']);
  }
}

abstract class OptionValue extends TdObject {}

@reflector
class OptionValueBoolean extends OptionValue {
  @override
  String get tdType => 'optionValueBoolean';

  bool value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  OptionValueBoolean({
    this.value,
  });

  OptionValueBoolean.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class OptionValueEmpty extends OptionValue {
  @override
  String get tdType => 'optionValueEmpty';

  @override
  Map<String, dynamic> get params => {};

  OptionValueEmpty();

  OptionValueEmpty.fromJson(Map<String, dynamic> json);
}

@reflector
class OptionValueInteger extends OptionValue {
  @override
  String get tdType => 'optionValueInteger';

  int value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  OptionValueInteger({
    this.value,
  });

  OptionValueInteger.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class OptionValueString extends OptionValue {
  @override
  String get tdType => 'optionValueString';

  String value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  OptionValueString({
    this.value,
  });

  OptionValueString.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class JsonObjectMember extends TdObject {
  @override
  String get tdType => 'jsonObjectMember';

  String key;
  JsonValue value;

  @override
  Map<String, dynamic> get params => {
    'key': key,
    'value': value,
  };

  JsonObjectMember({
    this.key,
    this.value,
  });

  JsonObjectMember.fromJson(Map<String, dynamic> json) {
    key = tryConvertToTdObject(json['key']);
    value = tryConvertToTdObject(json['value']);
  }
}

abstract class JsonValue extends TdObject {}

@reflector
class JsonValueNull extends JsonValue {
  @override
  String get tdType => 'jsonValueNull';

  @override
  Map<String, dynamic> get params => {};

  JsonValueNull();

  JsonValueNull.fromJson(Map<String, dynamic> json);
}

@reflector
class JsonValueBoolean extends JsonValue {
  @override
  String get tdType => 'jsonValueBoolean';

  bool value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  JsonValueBoolean({
    this.value,
  });

  JsonValueBoolean.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class JsonValueNumber extends JsonValue {
  @override
  String get tdType => 'jsonValueNumber';

  double value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  JsonValueNumber({
    this.value,
  });

  JsonValueNumber.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class JsonValueString extends JsonValue {
  @override
  String get tdType => 'jsonValueString';

  String value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  JsonValueString({
    this.value,
  });

  JsonValueString.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class JsonValueArray extends JsonValue {
  @override
  String get tdType => 'jsonValueArray';

  List<JsonValue> values;

  @override
  Map<String, dynamic> get params => {
    'values': values,
  };

  JsonValueArray({
    this.values,
  });

  JsonValueArray.fromJson(Map<String, dynamic> json) {
    values = tryConvertToTdObject(json['values']);
  }
}

@reflector
class JsonValueObject extends JsonValue {
  @override
  String get tdType => 'jsonValueObject';

  List<JsonObjectMember> members;

  @override
  Map<String, dynamic> get params => {
    'members': members,
  };

  JsonValueObject({
    this.members,
  });

  JsonValueObject.fromJson(Map<String, dynamic> json) {
    members = tryConvertToTdObject(json['members']);
  }
}

abstract class UserPrivacySettingRule extends TdObject {}

@reflector
class UserPrivacySettingRuleAllowAll extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleAllowAll';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingRuleAllowAll();

  UserPrivacySettingRuleAllowAll.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingRuleAllowContacts extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleAllowContacts';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingRuleAllowContacts();

  UserPrivacySettingRuleAllowContacts.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingRuleAllowUsers extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleAllowUsers';

  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'user_ids': userIds,
  };

  UserPrivacySettingRuleAllowUsers({
    this.userIds,
  });

  UserPrivacySettingRuleAllowUsers.fromJson(Map<String, dynamic> json) {
    userIds = tryConvertToTdObject(json['user_ids']);
  }
}

@reflector
class UserPrivacySettingRuleRestrictAll extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleRestrictAll';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingRuleRestrictAll();

  UserPrivacySettingRuleRestrictAll.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingRuleRestrictContacts extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleRestrictContacts';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingRuleRestrictContacts();

  UserPrivacySettingRuleRestrictContacts.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingRuleRestrictUsers extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleRestrictUsers';

  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'user_ids': userIds,
  };

  UserPrivacySettingRuleRestrictUsers({
    this.userIds,
  });

  UserPrivacySettingRuleRestrictUsers.fromJson(Map<String, dynamic> json) {
    userIds = tryConvertToTdObject(json['user_ids']);
  }
}

@reflector
class UserPrivacySettingRules extends TdObject {
  @override
  String get tdType => 'userPrivacySettingRules';

  List<UserPrivacySettingRule> rules;

  @override
  Map<String, dynamic> get params => {
    'rules': rules,
  };

  UserPrivacySettingRules({
    this.rules,
  });

  UserPrivacySettingRules.fromJson(Map<String, dynamic> json) {
    rules = tryConvertToTdObject(json['rules']);
  }
}

abstract class UserPrivacySetting extends TdObject {}

@reflector
class UserPrivacySettingShowStatus extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingShowStatus';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingShowStatus();

  UserPrivacySettingShowStatus.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingShowProfilePhoto extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingShowProfilePhoto';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingShowProfilePhoto();

  UserPrivacySettingShowProfilePhoto.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingShowLinkInForwardedMessages extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingShowLinkInForwardedMessages';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingShowLinkInForwardedMessages();

  UserPrivacySettingShowLinkInForwardedMessages.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingAllowChatInvites extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingAllowChatInvites';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingAllowChatInvites();

  UserPrivacySettingAllowChatInvites.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingAllowCalls extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingAllowCalls';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingAllowCalls();

  UserPrivacySettingAllowCalls.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingAllowPeerToPeerCalls extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingAllowPeerToPeerCalls';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingAllowPeerToPeerCalls();

  UserPrivacySettingAllowPeerToPeerCalls.fromJson(Map<String, dynamic> json);
}

@reflector
class AccountTtl extends TdObject {
  @override
  String get tdType => 'accountTtl';

  int days;

  @override
  Map<String, dynamic> get params => {
    'days': days,
  };

  AccountTtl({
    this.days,
  });

  AccountTtl.fromJson(Map<String, dynamic> json) {
    days = tryConvertToTdObject(json['days']);
  }
}

@reflector
class Session extends TdObject {
  @override
  String get tdType => 'session';

  int id;
  bool isCurrent;
  bool isPasswordPending;
  int apiId;
  String applicationName;
  String applicationVersion;
  bool isOfficialApplication;
  String deviceModel;
  String platform;
  String systemVersion;
  int logInDate;
  int lastActiveDate;
  String ip;
  String country;
  String region;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'is_current': isCurrent,
    'is_password_pending': isPasswordPending,
    'api_id': apiId,
    'application_name': applicationName,
    'application_version': applicationVersion,
    'is_official_application': isOfficialApplication,
    'device_model': deviceModel,
    'platform': platform,
    'system_version': systemVersion,
    'log_in_date': logInDate,
    'last_active_date': lastActiveDate,
    'ip': ip,
    'country': country,
    'region': region,
  };

  Session({
    this.id,
    this.isCurrent,
    this.isPasswordPending,
    this.apiId,
    this.applicationName,
    this.applicationVersion,
    this.isOfficialApplication,
    this.deviceModel,
    this.platform,
    this.systemVersion,
    this.logInDate,
    this.lastActiveDate,
    this.ip,
    this.country,
    this.region,
  });

  Session.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    isCurrent = tryConvertToTdObject(json['is_current']);
    isPasswordPending = tryConvertToTdObject(json['is_password_pending']);
    apiId = tryConvertToTdObject(json['api_id']);
    applicationName = tryConvertToTdObject(json['application_name']);
    applicationVersion = tryConvertToTdObject(json['application_version']);
    isOfficialApplication = tryConvertToTdObject(json['is_official_application']);
    deviceModel = tryConvertToTdObject(json['device_model']);
    platform = tryConvertToTdObject(json['platform']);
    systemVersion = tryConvertToTdObject(json['system_version']);
    logInDate = tryConvertToTdObject(json['log_in_date']);
    lastActiveDate = tryConvertToTdObject(json['last_active_date']);
    ip = tryConvertToTdObject(json['ip']);
    country = tryConvertToTdObject(json['country']);
    region = tryConvertToTdObject(json['region']);
  }
}

@reflector
class Sessions extends TdObject {
  @override
  String get tdType => 'sessions';

  List<Session> sessions;

  @override
  Map<String, dynamic> get params => {
    'sessions': sessions,
  };

  Sessions({
    this.sessions,
  });

  Sessions.fromJson(Map<String, dynamic> json) {
    sessions = tryConvertToTdObject(json['sessions']);
  }
}

@reflector
class ConnectedWebsite extends TdObject {
  @override
  String get tdType => 'connectedWebsite';

  int id;
  String domainName;
  int botUserId;
  String browser;
  String platform;
  int logInDate;
  int lastActiveDate;
  String ip;
  String location;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'domain_name': domainName,
    'bot_user_id': botUserId,
    'browser': browser,
    'platform': platform,
    'log_in_date': logInDate,
    'last_active_date': lastActiveDate,
    'ip': ip,
    'location': location,
  };

  ConnectedWebsite({
    this.id,
    this.domainName,
    this.botUserId,
    this.browser,
    this.platform,
    this.logInDate,
    this.lastActiveDate,
    this.ip,
    this.location,
  });

  ConnectedWebsite.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    domainName = tryConvertToTdObject(json['domain_name']);
    botUserId = tryConvertToTdObject(json['bot_user_id']);
    browser = tryConvertToTdObject(json['browser']);
    platform = tryConvertToTdObject(json['platform']);
    logInDate = tryConvertToTdObject(json['log_in_date']);
    lastActiveDate = tryConvertToTdObject(json['last_active_date']);
    ip = tryConvertToTdObject(json['ip']);
    location = tryConvertToTdObject(json['location']);
  }
}

@reflector
class ConnectedWebsites extends TdObject {
  @override
  String get tdType => 'connectedWebsites';

  List<ConnectedWebsite> websites;

  @override
  Map<String, dynamic> get params => {
    'websites': websites,
  };

  ConnectedWebsites({
    this.websites,
  });

  ConnectedWebsites.fromJson(Map<String, dynamic> json) {
    websites = tryConvertToTdObject(json['websites']);
  }
}

@reflector
class ChatReportSpamState extends TdObject {
  @override
  String get tdType => 'chatReportSpamState';

  bool canReportSpam;

  @override
  Map<String, dynamic> get params => {
    'can_report_spam': canReportSpam,
  };

  ChatReportSpamState({
    this.canReportSpam,
  });

  ChatReportSpamState.fromJson(Map<String, dynamic> json) {
    canReportSpam = tryConvertToTdObject(json['can_report_spam']);
  }
}

abstract class ChatReportReason extends TdObject {}

@reflector
class ChatReportReasonSpam extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonSpam';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonSpam();

  ChatReportReasonSpam.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatReportReasonViolence extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonViolence';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonViolence();

  ChatReportReasonViolence.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatReportReasonPornography extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonPornography';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonPornography();

  ChatReportReasonPornography.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatReportReasonChildAbuse extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonChildAbuse';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonChildAbuse();

  ChatReportReasonChildAbuse.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatReportReasonCopyright extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonCopyright';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonCopyright();

  ChatReportReasonCopyright.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatReportReasonCustom extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonCustom';

  String text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  ChatReportReasonCustom({
    this.text,
  });

  ChatReportReasonCustom.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class PublicMessageLink extends TdObject {
  @override
  String get tdType => 'publicMessageLink';

  String link;
  String html;

  @override
  Map<String, dynamic> get params => {
    'link': link,
    'html': html,
  };

  PublicMessageLink({
    this.link,
    this.html,
  });

  PublicMessageLink.fromJson(Map<String, dynamic> json) {
    link = tryConvertToTdObject(json['link']);
    html = tryConvertToTdObject(json['html']);
  }
}

@reflector
class MessageLinkInfo extends TdObject {
  @override
  String get tdType => 'messageLinkInfo';

  bool isPublic;
  int chatId;
  Message message;
  bool forAlbum;

  @override
  Map<String, dynamic> get params => {
    'is_public': isPublic,
    'chat_id': chatId,
    'message': message,
    'for_album': forAlbum,
  };

  MessageLinkInfo({
    this.isPublic,
    this.chatId,
    this.message,
    this.forAlbum,
  });

  MessageLinkInfo.fromJson(Map<String, dynamic> json) {
    isPublic = tryConvertToTdObject(json['is_public']);
    chatId = tryConvertToTdObject(json['chat_id']);
    message = tryConvertToTdObject(json['message']);
    forAlbum = tryConvertToTdObject(json['for_album']);
  }
}

@reflector
class FilePart extends TdObject {
  @override
  String get tdType => 'filePart';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  FilePart({
    this.data,
  });

  FilePart.fromJson(Map<String, dynamic> json) {
    data = tryConvertToTdObject(json['data']);
  }
}

abstract class FileType extends TdObject {}

@reflector
class FileTypeNone extends FileType {
  @override
  String get tdType => 'fileTypeNone';

  @override
  Map<String, dynamic> get params => {};

  FileTypeNone();

  FileTypeNone.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeAnimation extends FileType {
  @override
  String get tdType => 'fileTypeAnimation';

  @override
  Map<String, dynamic> get params => {};

  FileTypeAnimation();

  FileTypeAnimation.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeAudio extends FileType {
  @override
  String get tdType => 'fileTypeAudio';

  @override
  Map<String, dynamic> get params => {};

  FileTypeAudio();

  FileTypeAudio.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeDocument extends FileType {
  @override
  String get tdType => 'fileTypeDocument';

  @override
  Map<String, dynamic> get params => {};

  FileTypeDocument();

  FileTypeDocument.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypePhoto extends FileType {
  @override
  String get tdType => 'fileTypePhoto';

  @override
  Map<String, dynamic> get params => {};

  FileTypePhoto();

  FileTypePhoto.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeProfilePhoto extends FileType {
  @override
  String get tdType => 'fileTypeProfilePhoto';

  @override
  Map<String, dynamic> get params => {};

  FileTypeProfilePhoto();

  FileTypeProfilePhoto.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeSecret extends FileType {
  @override
  String get tdType => 'fileTypeSecret';

  @override
  Map<String, dynamic> get params => {};

  FileTypeSecret();

  FileTypeSecret.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeSecretThumbnail extends FileType {
  @override
  String get tdType => 'fileTypeSecretThumbnail';

  @override
  Map<String, dynamic> get params => {};

  FileTypeSecretThumbnail();

  FileTypeSecretThumbnail.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeSecure extends FileType {
  @override
  String get tdType => 'fileTypeSecure';

  @override
  Map<String, dynamic> get params => {};

  FileTypeSecure();

  FileTypeSecure.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeSticker extends FileType {
  @override
  String get tdType => 'fileTypeSticker';

  @override
  Map<String, dynamic> get params => {};

  FileTypeSticker();

  FileTypeSticker.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeThumbnail extends FileType {
  @override
  String get tdType => 'fileTypeThumbnail';

  @override
  Map<String, dynamic> get params => {};

  FileTypeThumbnail();

  FileTypeThumbnail.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeUnknown extends FileType {
  @override
  String get tdType => 'fileTypeUnknown';

  @override
  Map<String, dynamic> get params => {};

  FileTypeUnknown();

  FileTypeUnknown.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeVideo extends FileType {
  @override
  String get tdType => 'fileTypeVideo';

  @override
  Map<String, dynamic> get params => {};

  FileTypeVideo();

  FileTypeVideo.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeVideoNote extends FileType {
  @override
  String get tdType => 'fileTypeVideoNote';

  @override
  Map<String, dynamic> get params => {};

  FileTypeVideoNote();

  FileTypeVideoNote.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeVoiceNote extends FileType {
  @override
  String get tdType => 'fileTypeVoiceNote';

  @override
  Map<String, dynamic> get params => {};

  FileTypeVoiceNote();

  FileTypeVoiceNote.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeWallpaper extends FileType {
  @override
  String get tdType => 'fileTypeWallpaper';

  @override
  Map<String, dynamic> get params => {};

  FileTypeWallpaper();

  FileTypeWallpaper.fromJson(Map<String, dynamic> json);
}

@reflector
class StorageStatisticsByFileType extends TdObject {
  @override
  String get tdType => 'storageStatisticsByFileType';

  FileType fileType;
  int size;
  int count;

  @override
  Map<String, dynamic> get params => {
    'file_type': fileType,
    'size': size,
    'count': count,
  };

  StorageStatisticsByFileType({
    this.fileType,
    this.size,
    this.count,
  });

  StorageStatisticsByFileType.fromJson(Map<String, dynamic> json) {
    fileType = tryConvertToTdObject(json['file_type']);
    size = tryConvertToTdObject(json['size']);
    count = tryConvertToTdObject(json['count']);
  }
}

@reflector
class StorageStatisticsByChat extends TdObject {
  @override
  String get tdType => 'storageStatisticsByChat';

  int chatId;
  int size;
  int count;
  List<StorageStatisticsByFileType> byFileType;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'size': size,
    'count': count,
    'by_file_type': byFileType,
  };

  StorageStatisticsByChat({
    this.chatId,
    this.size,
    this.count,
    this.byFileType,
  });

  StorageStatisticsByChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    size = tryConvertToTdObject(json['size']);
    count = tryConvertToTdObject(json['count']);
    byFileType = tryConvertToTdObject(json['by_file_type']);
  }
}

@reflector
class StorageStatistics extends TdObject {
  @override
  String get tdType => 'storageStatistics';

  int size;
  int count;
  List<StorageStatisticsByChat> byChat;

  @override
  Map<String, dynamic> get params => {
    'size': size,
    'count': count,
    'by_chat': byChat,
  };

  StorageStatistics({
    this.size,
    this.count,
    this.byChat,
  });

  StorageStatistics.fromJson(Map<String, dynamic> json) {
    size = tryConvertToTdObject(json['size']);
    count = tryConvertToTdObject(json['count']);
    byChat = tryConvertToTdObject(json['by_chat']);
  }
}

@reflector
class StorageStatisticsFast extends TdObject {
  @override
  String get tdType => 'storageStatisticsFast';

  int filesSize;
  int fileCount;
  int databaseSize;
  int languagePackDatabaseSize;
  int logSize;

  @override
  Map<String, dynamic> get params => {
    'files_size': filesSize,
    'file_count': fileCount,
    'database_size': databaseSize,
    'language_pack_database_size': languagePackDatabaseSize,
    'log_size': logSize,
  };

  StorageStatisticsFast({
    this.filesSize,
    this.fileCount,
    this.databaseSize,
    this.languagePackDatabaseSize,
    this.logSize,
  });

  StorageStatisticsFast.fromJson(Map<String, dynamic> json) {
    filesSize = tryConvertToTdObject(json['files_size']);
    fileCount = tryConvertToTdObject(json['file_count']);
    databaseSize = tryConvertToTdObject(json['database_size']);
    languagePackDatabaseSize = tryConvertToTdObject(json['language_pack_database_size']);
    logSize = tryConvertToTdObject(json['log_size']);
  }
}

@reflector
class DatabaseStatistics extends TdObject {
  @override
  String get tdType => 'databaseStatistics';

  String statistics;

  @override
  Map<String, dynamic> get params => {
    'statistics': statistics,
  };

  DatabaseStatistics({
    this.statistics,
  });

  DatabaseStatistics.fromJson(Map<String, dynamic> json) {
    statistics = tryConvertToTdObject(json['statistics']);
  }
}

abstract class NetworkType extends TdObject {}

@reflector
class NetworkTypeNone extends NetworkType {
  @override
  String get tdType => 'networkTypeNone';

  @override
  Map<String, dynamic> get params => {};

  NetworkTypeNone();

  NetworkTypeNone.fromJson(Map<String, dynamic> json);
}

@reflector
class NetworkTypeMobile extends NetworkType {
  @override
  String get tdType => 'networkTypeMobile';

  @override
  Map<String, dynamic> get params => {};

  NetworkTypeMobile();

  NetworkTypeMobile.fromJson(Map<String, dynamic> json);
}

@reflector
class NetworkTypeMobileRoaming extends NetworkType {
  @override
  String get tdType => 'networkTypeMobileRoaming';

  @override
  Map<String, dynamic> get params => {};

  NetworkTypeMobileRoaming();

  NetworkTypeMobileRoaming.fromJson(Map<String, dynamic> json);
}

@reflector
class NetworkTypeWiFi extends NetworkType {
  @override
  String get tdType => 'networkTypeWiFi';

  @override
  Map<String, dynamic> get params => {};

  NetworkTypeWiFi();

  NetworkTypeWiFi.fromJson(Map<String, dynamic> json);
}

@reflector
class NetworkTypeOther extends NetworkType {
  @override
  String get tdType => 'networkTypeOther';

  @override
  Map<String, dynamic> get params => {};

  NetworkTypeOther();

  NetworkTypeOther.fromJson(Map<String, dynamic> json);
}

abstract class NetworkStatisticsEntry extends TdObject {}

@reflector
class NetworkStatisticsEntryFile extends NetworkStatisticsEntry {
  @override
  String get tdType => 'networkStatisticsEntryFile';

  FileType fileType;
  NetworkType networkType;
  int sentBytes;
  int receivedBytes;

  @override
  Map<String, dynamic> get params => {
    'file_type': fileType,
    'network_type': networkType,
    'sent_bytes': sentBytes,
    'received_bytes': receivedBytes,
  };

  NetworkStatisticsEntryFile({
    this.fileType,
    this.networkType,
    this.sentBytes,
    this.receivedBytes,
  });

  NetworkStatisticsEntryFile.fromJson(Map<String, dynamic> json) {
    fileType = tryConvertToTdObject(json['file_type']);
    networkType = tryConvertToTdObject(json['network_type']);
    sentBytes = tryConvertToTdObject(json['sent_bytes']);
    receivedBytes = tryConvertToTdObject(json['received_bytes']);
  }
}

@reflector
class NetworkStatisticsEntryCall extends NetworkStatisticsEntry {
  @override
  String get tdType => 'networkStatisticsEntryCall';

  NetworkType networkType;
  int sentBytes;
  int receivedBytes;
  double duration;

  @override
  Map<String, dynamic> get params => {
    'network_type': networkType,
    'sent_bytes': sentBytes,
    'received_bytes': receivedBytes,
    'duration': duration,
  };

  NetworkStatisticsEntryCall({
    this.networkType,
    this.sentBytes,
    this.receivedBytes,
    this.duration,
  });

  NetworkStatisticsEntryCall.fromJson(Map<String, dynamic> json) {
    networkType = tryConvertToTdObject(json['network_type']);
    sentBytes = tryConvertToTdObject(json['sent_bytes']);
    receivedBytes = tryConvertToTdObject(json['received_bytes']);
    duration = tryConvertToTdObject(json['duration']);
  }
}

@reflector
class NetworkStatistics extends TdObject {
  @override
  String get tdType => 'networkStatistics';

  int sinceDate;
  List<NetworkStatisticsEntry> entries;

  @override
  Map<String, dynamic> get params => {
    'since_date': sinceDate,
    'entries': entries,
  };

  NetworkStatistics({
    this.sinceDate,
    this.entries,
  });

  NetworkStatistics.fromJson(Map<String, dynamic> json) {
    sinceDate = tryConvertToTdObject(json['since_date']);
    entries = tryConvertToTdObject(json['entries']);
  }
}

@reflector
class AutoDownloadSettings extends TdObject {
  @override
  String get tdType => 'autoDownloadSettings';

  bool isAutoDownloadEnabled;
  int maxPhotoFileSize;
  int maxVideoFileSize;
  int maxOtherFileSize;
  bool preloadLargeVideos;
  bool preloadNextAudio;
  bool useLessDataForCalls;

  @override
  Map<String, dynamic> get params => {
    'is_auto_download_enabled': isAutoDownloadEnabled,
    'max_photo_file_size': maxPhotoFileSize,
    'max_video_file_size': maxVideoFileSize,
    'max_other_file_size': maxOtherFileSize,
    'preload_large_videos': preloadLargeVideos,
    'preload_next_audio': preloadNextAudio,
    'use_less_data_for_calls': useLessDataForCalls,
  };

  AutoDownloadSettings({
    this.isAutoDownloadEnabled,
    this.maxPhotoFileSize,
    this.maxVideoFileSize,
    this.maxOtherFileSize,
    this.preloadLargeVideos,
    this.preloadNextAudio,
    this.useLessDataForCalls,
  });

  AutoDownloadSettings.fromJson(Map<String, dynamic> json) {
    isAutoDownloadEnabled = tryConvertToTdObject(json['is_auto_download_enabled']);
    maxPhotoFileSize = tryConvertToTdObject(json['max_photo_file_size']);
    maxVideoFileSize = tryConvertToTdObject(json['max_video_file_size']);
    maxOtherFileSize = tryConvertToTdObject(json['max_other_file_size']);
    preloadLargeVideos = tryConvertToTdObject(json['preload_large_videos']);
    preloadNextAudio = tryConvertToTdObject(json['preload_next_audio']);
    useLessDataForCalls = tryConvertToTdObject(json['use_less_data_for_calls']);
  }
}

@reflector
class AutoDownloadSettingsPresets extends TdObject {
  @override
  String get tdType => 'autoDownloadSettingsPresets';

  AutoDownloadSettings low;
  AutoDownloadSettings medium;
  AutoDownloadSettings high;

  @override
  Map<String, dynamic> get params => {
    'low': low,
    'medium': medium,
    'high': high,
  };

  AutoDownloadSettingsPresets({
    this.low,
    this.medium,
    this.high,
  });

  AutoDownloadSettingsPresets.fromJson(Map<String, dynamic> json) {
    low = tryConvertToTdObject(json['low']);
    medium = tryConvertToTdObject(json['medium']);
    high = tryConvertToTdObject(json['high']);
  }
}

abstract class ConnectionState extends TdObject {}

@reflector
class ConnectionStateWaitingForNetwork extends ConnectionState {
  @override
  String get tdType => 'connectionStateWaitingForNetwork';

  @override
  Map<String, dynamic> get params => {};

  ConnectionStateWaitingForNetwork();

  ConnectionStateWaitingForNetwork.fromJson(Map<String, dynamic> json);
}

@reflector
class ConnectionStateConnectingToProxy extends ConnectionState {
  @override
  String get tdType => 'connectionStateConnectingToProxy';

  @override
  Map<String, dynamic> get params => {};

  ConnectionStateConnectingToProxy();

  ConnectionStateConnectingToProxy.fromJson(Map<String, dynamic> json);
}

@reflector
class ConnectionStateConnecting extends ConnectionState {
  @override
  String get tdType => 'connectionStateConnecting';

  @override
  Map<String, dynamic> get params => {};

  ConnectionStateConnecting();

  ConnectionStateConnecting.fromJson(Map<String, dynamic> json);
}

@reflector
class ConnectionStateUpdating extends ConnectionState {
  @override
  String get tdType => 'connectionStateUpdating';

  @override
  Map<String, dynamic> get params => {};

  ConnectionStateUpdating();

  ConnectionStateUpdating.fromJson(Map<String, dynamic> json);
}

@reflector
class ConnectionStateReady extends ConnectionState {
  @override
  String get tdType => 'connectionStateReady';

  @override
  Map<String, dynamic> get params => {};

  ConnectionStateReady();

  ConnectionStateReady.fromJson(Map<String, dynamic> json);
}

abstract class TopChatCategory extends TdObject {}

@reflector
class TopChatCategoryUsers extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryUsers';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryUsers();

  TopChatCategoryUsers.fromJson(Map<String, dynamic> json);
}

@reflector
class TopChatCategoryBots extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryBots';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryBots();

  TopChatCategoryBots.fromJson(Map<String, dynamic> json);
}

@reflector
class TopChatCategoryGroups extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryGroups';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryGroups();

  TopChatCategoryGroups.fromJson(Map<String, dynamic> json);
}

@reflector
class TopChatCategoryChannels extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryChannels';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryChannels();

  TopChatCategoryChannels.fromJson(Map<String, dynamic> json);
}

@reflector
class TopChatCategoryInlineBots extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryInlineBots';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryInlineBots();

  TopChatCategoryInlineBots.fromJson(Map<String, dynamic> json);
}

@reflector
class TopChatCategoryCalls extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryCalls';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryCalls();

  TopChatCategoryCalls.fromJson(Map<String, dynamic> json);
}

abstract class TMeUrlType extends TdObject {}

@reflector
class TMeUrlTypeUser extends TMeUrlType {
  @override
  String get tdType => 'tMeUrlTypeUser';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  TMeUrlTypeUser({
    this.userId,
  });

  TMeUrlTypeUser.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class TMeUrlTypeSupergroup extends TMeUrlType {
  @override
  String get tdType => 'tMeUrlTypeSupergroup';

  int supergroupId;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
  };

  TMeUrlTypeSupergroup({
    this.supergroupId,
  });

  TMeUrlTypeSupergroup.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
  }
}

@reflector
class TMeUrlTypeChatInvite extends TMeUrlType {
  @override
  String get tdType => 'tMeUrlTypeChatInvite';

  ChatInviteLinkInfo info;

  @override
  Map<String, dynamic> get params => {
    'info': info,
  };

  TMeUrlTypeChatInvite({
    this.info,
  });

  TMeUrlTypeChatInvite.fromJson(Map<String, dynamic> json) {
    info = tryConvertToTdObject(json['info']);
  }
}

@reflector
class TMeUrlTypeStickerSet extends TMeUrlType {
  @override
  String get tdType => 'tMeUrlTypeStickerSet';

  int stickerSetId;

  @override
  Map<String, dynamic> get params => {
    'sticker_set_id': stickerSetId,
  };

  TMeUrlTypeStickerSet({
    this.stickerSetId,
  });

  TMeUrlTypeStickerSet.fromJson(Map<String, dynamic> json) {
    stickerSetId = tryConvertToTdObject(json['sticker_set_id']);
  }
}

@reflector
class TMeUrl extends TdObject {
  @override
  String get tdType => 'tMeUrl';

  String url;
  TMeUrlType type;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'type': type,
  };

  TMeUrl({
    this.url,
    this.type,
  });

  TMeUrl.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class TMeUrls extends TdObject {
  @override
  String get tdType => 'tMeUrls';

  List<TMeUrl> urls;

  @override
  Map<String, dynamic> get params => {
    'urls': urls,
  };

  TMeUrls({
    this.urls,
  });

  TMeUrls.fromJson(Map<String, dynamic> json) {
    urls = tryConvertToTdObject(json['urls']);
  }
}

@reflector
class Count extends TdObject {
  @override
  String get tdType => 'count';

  int count;

  @override
  Map<String, dynamic> get params => {
    'count': count,
  };

  Count({
    this.count,
  });

  Count.fromJson(Map<String, dynamic> json) {
    count = tryConvertToTdObject(json['count']);
  }
}

@reflector
class Text extends TdObject {
  @override
  String get tdType => 'text';

  String text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  Text({
    this.text,
  });

  Text.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class Seconds extends TdObject {
  @override
  String get tdType => 'seconds';

  double seconds;

  @override
  Map<String, dynamic> get params => {
    'seconds': seconds,
  };

  Seconds({
    this.seconds,
  });

  Seconds.fromJson(Map<String, dynamic> json) {
    seconds = tryConvertToTdObject(json['seconds']);
  }
}

@reflector
class DeepLinkInfo extends TdObject {
  @override
  String get tdType => 'deepLinkInfo';

  FormattedText text;
  bool needUpdateApplication;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'need_update_application': needUpdateApplication,
  };

  DeepLinkInfo({
    this.text,
    this.needUpdateApplication,
  });

  DeepLinkInfo.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    needUpdateApplication = tryConvertToTdObject(json['need_update_application']);
  }
}

abstract class TextParseMode extends TdObject {}

@reflector
class TextParseModeMarkdown extends TextParseMode {
  @override
  String get tdType => 'textParseModeMarkdown';

  @override
  Map<String, dynamic> get params => {};

  TextParseModeMarkdown();

  TextParseModeMarkdown.fromJson(Map<String, dynamic> json);
}

@reflector
class TextParseModeHTML extends TextParseMode {
  @override
  String get tdType => 'textParseModeHTML';

  @override
  Map<String, dynamic> get params => {};

  TextParseModeHTML();

  TextParseModeHTML.fromJson(Map<String, dynamic> json);
}

abstract class ProxyType extends TdObject {}

@reflector
class ProxyTypeSocks5 extends ProxyType {
  @override
  String get tdType => 'proxyTypeSocks5';

  String username;
  String password;

  @override
  Map<String, dynamic> get params => {
    'username': username,
    'password': password,
  };

  ProxyTypeSocks5({
    this.username,
    this.password,
  });

  ProxyTypeSocks5.fromJson(Map<String, dynamic> json) {
    username = tryConvertToTdObject(json['username']);
    password = tryConvertToTdObject(json['password']);
  }
}

@reflector
class ProxyTypeHttp extends ProxyType {
  @override
  String get tdType => 'proxyTypeHttp';

  String username;
  String password;
  bool httpOnly;

  @override
  Map<String, dynamic> get params => {
    'username': username,
    'password': password,
    'http_only': httpOnly,
  };

  ProxyTypeHttp({
    this.username,
    this.password,
    this.httpOnly,
  });

  ProxyTypeHttp.fromJson(Map<String, dynamic> json) {
    username = tryConvertToTdObject(json['username']);
    password = tryConvertToTdObject(json['password']);
    httpOnly = tryConvertToTdObject(json['http_only']);
  }
}

@reflector
class ProxyTypeMtproto extends ProxyType {
  @override
  String get tdType => 'proxyTypeMtproto';

  String secret;

  @override
  Map<String, dynamic> get params => {
    'secret': secret,
  };

  ProxyTypeMtproto({
    this.secret,
  });

  ProxyTypeMtproto.fromJson(Map<String, dynamic> json) {
    secret = tryConvertToTdObject(json['secret']);
  }
}

@reflector
class Proxy extends TdObject {
  @override
  String get tdType => 'proxy';

  int id;
  String server;
  int port;
  int lastUsedDate;
  bool isEnabled;
  ProxyType type;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'server': server,
    'port': port,
    'last_used_date': lastUsedDate,
    'is_enabled': isEnabled,
    'type': type,
  };

  Proxy({
    this.id,
    this.server,
    this.port,
    this.lastUsedDate,
    this.isEnabled,
    this.type,
  });

  Proxy.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    server = tryConvertToTdObject(json['server']);
    port = tryConvertToTdObject(json['port']);
    lastUsedDate = tryConvertToTdObject(json['last_used_date']);
    isEnabled = tryConvertToTdObject(json['is_enabled']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class Proxies extends TdObject {
  @override
  String get tdType => 'proxies';

  List<Proxy> proxies;

  @override
  Map<String, dynamic> get params => {
    'proxies': proxies,
  };

  Proxies({
    this.proxies,
  });

  Proxies.fromJson(Map<String, dynamic> json) {
    proxies = tryConvertToTdObject(json['proxies']);
  }
}

@reflector
class InputSticker extends TdObject {
  @override
  String get tdType => 'inputSticker';

  InputFile pngSticker;
  String emojis;
  MaskPosition maskPosition;

  @override
  Map<String, dynamic> get params => {
    'png_sticker': pngSticker,
    'emojis': emojis,
    'mask_position': maskPosition,
  };

  InputSticker({
    this.pngSticker,
    this.emojis,
    this.maskPosition,
  });

  InputSticker.fromJson(Map<String, dynamic> json) {
    pngSticker = tryConvertToTdObject(json['png_sticker']);
    emojis = tryConvertToTdObject(json['emojis']);
    maskPosition = tryConvertToTdObject(json['mask_position']);
  }
}

abstract class Update extends TdObject {}

@reflector
class UpdateAuthorizationState extends Update {
  @override
  String get tdType => 'updateAuthorizationState';

  AuthorizationState authorizationState;

  @override
  Map<String, dynamic> get params => {
    'authorization_state': authorizationState,
  };

  UpdateAuthorizationState({
    this.authorizationState,
  });

  UpdateAuthorizationState.fromJson(Map<String, dynamic> json) {
    authorizationState = tryConvertToTdObject(json['authorization_state']);
  }
}

@reflector
class UpdateNewMessage extends Update {
  @override
  String get tdType => 'updateNewMessage';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  UpdateNewMessage({
    this.message,
  });

  UpdateNewMessage.fromJson(Map<String, dynamic> json) {
    message = tryConvertToTdObject(json['message']);
  }
}

@reflector
class UpdateMessageSendAcknowledged extends Update {
  @override
  String get tdType => 'updateMessageSendAcknowledged';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  UpdateMessageSendAcknowledged({
    this.chatId,
    this.messageId,
  });

  UpdateMessageSendAcknowledged.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class UpdateMessageSendSucceeded extends Update {
  @override
  String get tdType => 'updateMessageSendSucceeded';

  Message message;
  int oldMessageId;

  @override
  Map<String, dynamic> get params => {
    'message': message,
    'old_message_id': oldMessageId,
  };

  UpdateMessageSendSucceeded({
    this.message,
    this.oldMessageId,
  });

  UpdateMessageSendSucceeded.fromJson(Map<String, dynamic> json) {
    message = tryConvertToTdObject(json['message']);
    oldMessageId = tryConvertToTdObject(json['old_message_id']);
  }
}

@reflector
class UpdateMessageSendFailed extends Update {
  @override
  String get tdType => 'updateMessageSendFailed';

  Message message;
  int oldMessageId;
  int errorCode;
  String errorMessage;

  @override
  Map<String, dynamic> get params => {
    'message': message,
    'old_message_id': oldMessageId,
    'error_code': errorCode,
    'error_message': errorMessage,
  };

  UpdateMessageSendFailed({
    this.message,
    this.oldMessageId,
    this.errorCode,
    this.errorMessage,
  });

  UpdateMessageSendFailed.fromJson(Map<String, dynamic> json) {
    message = tryConvertToTdObject(json['message']);
    oldMessageId = tryConvertToTdObject(json['old_message_id']);
    errorCode = tryConvertToTdObject(json['error_code']);
    errorMessage = tryConvertToTdObject(json['error_message']);
  }
}

@reflector
class UpdateMessageContent extends Update {
  @override
  String get tdType => 'updateMessageContent';

  int chatId;
  int messageId;
  MessageContent newContent;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'new_content': newContent,
  };

  UpdateMessageContent({
    this.chatId,
    this.messageId,
    this.newContent,
  });

  UpdateMessageContent.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    newContent = tryConvertToTdObject(json['new_content']);
  }
}

@reflector
class UpdateMessageEdited extends Update {
  @override
  String get tdType => 'updateMessageEdited';

  int chatId;
  int messageId;
  int editDate;
  ReplyMarkup replyMarkup;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'edit_date': editDate,
    'reply_markup': replyMarkup,
  };

  UpdateMessageEdited({
    this.chatId,
    this.messageId,
    this.editDate,
    this.replyMarkup,
  });

  UpdateMessageEdited.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    editDate = tryConvertToTdObject(json['edit_date']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
  }
}

@reflector
class UpdateMessageViews extends Update {
  @override
  String get tdType => 'updateMessageViews';

  int chatId;
  int messageId;
  int views;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'views': views,
  };

  UpdateMessageViews({
    this.chatId,
    this.messageId,
    this.views,
  });

  UpdateMessageViews.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    views = tryConvertToTdObject(json['views']);
  }
}

@reflector
class UpdateMessageContentOpened extends Update {
  @override
  String get tdType => 'updateMessageContentOpened';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  UpdateMessageContentOpened({
    this.chatId,
    this.messageId,
  });

  UpdateMessageContentOpened.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class UpdateMessageMentionRead extends Update {
  @override
  String get tdType => 'updateMessageMentionRead';

  int chatId;
  int messageId;
  int unreadMentionCount;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'unread_mention_count': unreadMentionCount,
  };

  UpdateMessageMentionRead({
    this.chatId,
    this.messageId,
    this.unreadMentionCount,
  });

  UpdateMessageMentionRead.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    unreadMentionCount = tryConvertToTdObject(json['unread_mention_count']);
  }
}

@reflector
class UpdateNewChat extends Update {
  @override
  String get tdType => 'updateNewChat';

  Chat chat;

  @override
  Map<String, dynamic> get params => {
    'chat': chat,
  };

  UpdateNewChat({
    this.chat,
  });

  UpdateNewChat.fromJson(Map<String, dynamic> json) {
    chat = tryConvertToTdObject(json['chat']);
  }
}

@reflector
class UpdateChatTitle extends Update {
  @override
  String get tdType => 'updateChatTitle';

  int chatId;
  String title;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'title': title,
  };

  UpdateChatTitle({
    this.chatId,
    this.title,
  });

  UpdateChatTitle.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class UpdateChatPhoto extends Update {
  @override
  String get tdType => 'updateChatPhoto';

  int chatId;
  ChatPhoto photo;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'photo': photo,
  };

  UpdateChatPhoto({
    this.chatId,
    this.photo,
  });

  UpdateChatPhoto.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    photo = tryConvertToTdObject(json['photo']);
  }
}

@reflector
class UpdateChatPermissions extends Update {
  @override
  String get tdType => 'updateChatPermissions';

  int chatId;
  ChatPermissions permissions;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'permissions': permissions,
  };

  UpdateChatPermissions({
    this.chatId,
    this.permissions,
  });

  UpdateChatPermissions.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    permissions = tryConvertToTdObject(json['permissions']);
  }
}

@reflector
class UpdateChatLastMessage extends Update {
  @override
  String get tdType => 'updateChatLastMessage';

  int chatId;
  Message lastMessage;
  int order;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'last_message': lastMessage,
    'order': order,
  };

  UpdateChatLastMessage({
    this.chatId,
    this.lastMessage,
    this.order,
  });

  UpdateChatLastMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    lastMessage = tryConvertToTdObject(json['last_message']);
    order = tryConvertToTdObject(json['order']);
  }
}

@reflector
class UpdateChatOrder extends Update {
  @override
  String get tdType => 'updateChatOrder';

  int chatId;
  int order;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'order': order,
  };

  UpdateChatOrder({
    this.chatId,
    this.order,
  });

  UpdateChatOrder.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    order = tryConvertToTdObject(json['order']);
  }
}

@reflector
class UpdateChatIsPinned extends Update {
  @override
  String get tdType => 'updateChatIsPinned';

  int chatId;
  bool isPinned;
  int order;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'is_pinned': isPinned,
    'order': order,
  };

  UpdateChatIsPinned({
    this.chatId,
    this.isPinned,
    this.order,
  });

  UpdateChatIsPinned.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
    order = tryConvertToTdObject(json['order']);
  }
}

@reflector
class UpdateChatIsMarkedAsUnread extends Update {
  @override
  String get tdType => 'updateChatIsMarkedAsUnread';

  int chatId;
  bool isMarkedAsUnread;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'is_marked_as_unread': isMarkedAsUnread,
  };

  UpdateChatIsMarkedAsUnread({
    this.chatId,
    this.isMarkedAsUnread,
  });

  UpdateChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    isMarkedAsUnread = tryConvertToTdObject(json['is_marked_as_unread']);
  }
}

@reflector
class UpdateChatIsSponsored extends Update {
  @override
  String get tdType => 'updateChatIsSponsored';

  int chatId;
  bool isSponsored;
  int order;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'is_sponsored': isSponsored,
    'order': order,
  };

  UpdateChatIsSponsored({
    this.chatId,
    this.isSponsored,
    this.order,
  });

  UpdateChatIsSponsored.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    isSponsored = tryConvertToTdObject(json['is_sponsored']);
    order = tryConvertToTdObject(json['order']);
  }
}

@reflector
class UpdateChatDefaultDisableNotification extends Update {
  @override
  String get tdType => 'updateChatDefaultDisableNotification';

  int chatId;
  bool defaultDisableNotification;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'default_disable_notification': defaultDisableNotification,
  };

  UpdateChatDefaultDisableNotification({
    this.chatId,
    this.defaultDisableNotification,
  });

  UpdateChatDefaultDisableNotification.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    defaultDisableNotification = tryConvertToTdObject(json['default_disable_notification']);
  }
}

@reflector
class UpdateChatReadInbox extends Update {
  @override
  String get tdType => 'updateChatReadInbox';

  int chatId;
  int lastReadInboxMessageId;
  int unreadCount;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'unread_count': unreadCount,
  };

  UpdateChatReadInbox({
    this.chatId,
    this.lastReadInboxMessageId,
    this.unreadCount,
  });

  UpdateChatReadInbox.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    lastReadInboxMessageId = tryConvertToTdObject(json['last_read_inbox_message_id']);
    unreadCount = tryConvertToTdObject(json['unread_count']);
  }
}

@reflector
class UpdateChatReadOutbox extends Update {
  @override
  String get tdType => 'updateChatReadOutbox';

  int chatId;
  int lastReadOutboxMessageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
  };

  UpdateChatReadOutbox({
    this.chatId,
    this.lastReadOutboxMessageId,
  });

  UpdateChatReadOutbox.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    lastReadOutboxMessageId = tryConvertToTdObject(json['last_read_outbox_message_id']);
  }
}

@reflector
class UpdateChatUnreadMentionCount extends Update {
  @override
  String get tdType => 'updateChatUnreadMentionCount';

  int chatId;
  int unreadMentionCount;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'unread_mention_count': unreadMentionCount,
  };

  UpdateChatUnreadMentionCount({
    this.chatId,
    this.unreadMentionCount,
  });

  UpdateChatUnreadMentionCount.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    unreadMentionCount = tryConvertToTdObject(json['unread_mention_count']);
  }
}

@reflector
class UpdateChatNotificationSettings extends Update {
  @override
  String get tdType => 'updateChatNotificationSettings';

  int chatId;
  ChatNotificationSettings notificationSettings;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'notification_settings': notificationSettings,
  };

  UpdateChatNotificationSettings({
    this.chatId,
    this.notificationSettings,
  });

  UpdateChatNotificationSettings.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    notificationSettings = tryConvertToTdObject(json['notification_settings']);
  }
}

@reflector
class UpdateScopeNotificationSettings extends Update {
  @override
  String get tdType => 'updateScopeNotificationSettings';

  NotificationSettingsScope scope;
  ScopeNotificationSettings notificationSettings;

  @override
  Map<String, dynamic> get params => {
    'scope': scope,
    'notification_settings': notificationSettings,
  };

  UpdateScopeNotificationSettings({
    this.scope,
    this.notificationSettings,
  });

  UpdateScopeNotificationSettings.fromJson(Map<String, dynamic> json) {
    scope = tryConvertToTdObject(json['scope']);
    notificationSettings = tryConvertToTdObject(json['notification_settings']);
  }
}

@reflector
class UpdateChatPinnedMessage extends Update {
  @override
  String get tdType => 'updateChatPinnedMessage';

  int chatId;
  int pinnedMessageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'pinned_message_id': pinnedMessageId,
  };

  UpdateChatPinnedMessage({
    this.chatId,
    this.pinnedMessageId,
  });

  UpdateChatPinnedMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    pinnedMessageId = tryConvertToTdObject(json['pinned_message_id']);
  }
}

@reflector
class UpdateChatReplyMarkup extends Update {
  @override
  String get tdType => 'updateChatReplyMarkup';

  int chatId;
  int replyMarkupMessageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'reply_markup_message_id': replyMarkupMessageId,
  };

  UpdateChatReplyMarkup({
    this.chatId,
    this.replyMarkupMessageId,
  });

  UpdateChatReplyMarkup.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    replyMarkupMessageId = tryConvertToTdObject(json['reply_markup_message_id']);
  }
}

@reflector
class UpdateChatDraftMessage extends Update {
  @override
  String get tdType => 'updateChatDraftMessage';

  int chatId;
  DraftMessage draftMessage;
  int order;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'draft_message': draftMessage,
    'order': order,
  };

  UpdateChatDraftMessage({
    this.chatId,
    this.draftMessage,
    this.order,
  });

  UpdateChatDraftMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    draftMessage = tryConvertToTdObject(json['draft_message']);
    order = tryConvertToTdObject(json['order']);
  }
}

@reflector
class UpdateChatOnlineMemberCount extends Update {
  @override
  String get tdType => 'updateChatOnlineMemberCount';

  int chatId;
  int onlineMemberCount;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'online_member_count': onlineMemberCount,
  };

  UpdateChatOnlineMemberCount({
    this.chatId,
    this.onlineMemberCount,
  });

  UpdateChatOnlineMemberCount.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    onlineMemberCount = tryConvertToTdObject(json['online_member_count']);
  }
}

@reflector
class UpdateNotification extends Update {
  @override
  String get tdType => 'updateNotification';

  int notificationGroupId;
  Notification notification;

  @override
  Map<String, dynamic> get params => {
    'notification_group_id': notificationGroupId,
    'notification': notification,
  };

  UpdateNotification({
    this.notificationGroupId,
    this.notification,
  });

  UpdateNotification.fromJson(Map<String, dynamic> json) {
    notificationGroupId = tryConvertToTdObject(json['notification_group_id']);
    notification = tryConvertToTdObject(json['notification']);
  }
}

@reflector
class UpdateNotificationGroup extends Update {
  @override
  String get tdType => 'updateNotificationGroup';

  int notificationGroupId;
  NotificationGroupType type;
  int chatId;
  int notificationSettingsChatId;
  bool isSilent;
  int totalCount;
  List<Notification> addedNotifications;
  List<int> removedNotificationIds;

  @override
  Map<String, dynamic> get params => {
    'notification_group_id': notificationGroupId,
    'type': type,
    'chat_id': chatId,
    'notification_settings_chat_id': notificationSettingsChatId,
    'is_silent': isSilent,
    'total_count': totalCount,
    'added_notifications': addedNotifications,
    'removed_notification_ids': removedNotificationIds,
  };

  UpdateNotificationGroup({
    this.notificationGroupId,
    this.type,
    this.chatId,
    this.notificationSettingsChatId,
    this.isSilent,
    this.totalCount,
    this.addedNotifications,
    this.removedNotificationIds,
  });

  UpdateNotificationGroup.fromJson(Map<String, dynamic> json) {
    notificationGroupId = tryConvertToTdObject(json['notification_group_id']);
    type = tryConvertToTdObject(json['type']);
    chatId = tryConvertToTdObject(json['chat_id']);
    notificationSettingsChatId = tryConvertToTdObject(json['notification_settings_chat_id']);
    isSilent = tryConvertToTdObject(json['is_silent']);
    totalCount = tryConvertToTdObject(json['total_count']);
    addedNotifications = tryConvertToTdObject(json['added_notifications']);
    removedNotificationIds = tryConvertToTdObject(json['removed_notification_ids']);
  }
}

@reflector
class UpdateActiveNotifications extends Update {
  @override
  String get tdType => 'updateActiveNotifications';

  List<NotificationGroup> groups;

  @override
  Map<String, dynamic> get params => {
    'groups': groups,
  };

  UpdateActiveNotifications({
    this.groups,
  });

  UpdateActiveNotifications.fromJson(Map<String, dynamic> json) {
    groups = tryConvertToTdObject(json['groups']);
  }
}

@reflector
class UpdateHavePendingNotifications extends Update {
  @override
  String get tdType => 'updateHavePendingNotifications';

  bool haveDelayedNotifications;
  bool haveUnreceivedNotifications;

  @override
  Map<String, dynamic> get params => {
    'have_delayed_notifications': haveDelayedNotifications,
    'have_unreceived_notifications': haveUnreceivedNotifications,
  };

  UpdateHavePendingNotifications({
    this.haveDelayedNotifications,
    this.haveUnreceivedNotifications,
  });

  UpdateHavePendingNotifications.fromJson(Map<String, dynamic> json) {
    haveDelayedNotifications = tryConvertToTdObject(json['have_delayed_notifications']);
    haveUnreceivedNotifications = tryConvertToTdObject(json['have_unreceived_notifications']);
  }
}

@reflector
class UpdateDeleteMessages extends Update {
  @override
  String get tdType => 'updateDeleteMessages';

  int chatId;
  List<int> messageIds;
  bool isPermanent;
  bool fromCache;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_ids': messageIds,
    'is_permanent': isPermanent,
    'from_cache': fromCache,
  };

  UpdateDeleteMessages({
    this.chatId,
    this.messageIds,
    this.isPermanent,
    this.fromCache,
  });

  UpdateDeleteMessages.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageIds = tryConvertToTdObject(json['message_ids']);
    isPermanent = tryConvertToTdObject(json['is_permanent']);
    fromCache = tryConvertToTdObject(json['from_cache']);
  }
}

@reflector
class UpdateUserChatAction extends Update {
  @override
  String get tdType => 'updateUserChatAction';

  int chatId;
  int userId;
  ChatAction action;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'user_id': userId,
    'action': action,
  };

  UpdateUserChatAction({
    this.chatId,
    this.userId,
    this.action,
  });

  UpdateUserChatAction.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    userId = tryConvertToTdObject(json['user_id']);
    action = tryConvertToTdObject(json['action']);
  }
}

@reflector
class UpdateUserStatus extends Update {
  @override
  String get tdType => 'updateUserStatus';

  int userId;
  UserStatus status;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'status': status,
  };

  UpdateUserStatus({
    this.userId,
    this.status,
  });

  UpdateUserStatus.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    status = tryConvertToTdObject(json['status']);
  }
}

@reflector
class UpdateUser extends Update {
  @override
  String get tdType => 'updateUser';

  User user;

  @override
  Map<String, dynamic> get params => {
    'user': user,
  };

  UpdateUser({
    this.user,
  });

  UpdateUser.fromJson(Map<String, dynamic> json) {
    user = tryConvertToTdObject(json['user']);
  }
}

@reflector
class UpdateBasicGroup extends Update {
  @override
  String get tdType => 'updateBasicGroup';

  BasicGroup basicGroup;

  @override
  Map<String, dynamic> get params => {
    'basic_group': basicGroup,
  };

  UpdateBasicGroup({
    this.basicGroup,
  });

  UpdateBasicGroup.fromJson(Map<String, dynamic> json) {
    basicGroup = tryConvertToTdObject(json['basic_group']);
  }
}

@reflector
class UpdateSupergroup extends Update {
  @override
  String get tdType => 'updateSupergroup';

  Supergroup supergroup;

  @override
  Map<String, dynamic> get params => {
    'supergroup': supergroup,
  };

  UpdateSupergroup({
    this.supergroup,
  });

  UpdateSupergroup.fromJson(Map<String, dynamic> json) {
    supergroup = tryConvertToTdObject(json['supergroup']);
  }
}

@reflector
class UpdateSecretChat extends Update {
  @override
  String get tdType => 'updateSecretChat';

  SecretChat secretChat;

  @override
  Map<String, dynamic> get params => {
    'secret_chat': secretChat,
  };

  UpdateSecretChat({
    this.secretChat,
  });

  UpdateSecretChat.fromJson(Map<String, dynamic> json) {
    secretChat = tryConvertToTdObject(json['secret_chat']);
  }
}

@reflector
class UpdateUserFullInfo extends Update {
  @override
  String get tdType => 'updateUserFullInfo';

  int userId;
  UserFullInfo userFullInfo;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'user_full_info': userFullInfo,
  };

  UpdateUserFullInfo({
    this.userId,
    this.userFullInfo,
  });

  UpdateUserFullInfo.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    userFullInfo = tryConvertToTdObject(json['user_full_info']);
  }
}

@reflector
class UpdateBasicGroupFullInfo extends Update {
  @override
  String get tdType => 'updateBasicGroupFullInfo';

  int basicGroupId;
  BasicGroupFullInfo basicGroupFullInfo;

  @override
  Map<String, dynamic> get params => {
    'basic_group_id': basicGroupId,
    'basic_group_full_info': basicGroupFullInfo,
  };

  UpdateBasicGroupFullInfo({
    this.basicGroupId,
    this.basicGroupFullInfo,
  });

  UpdateBasicGroupFullInfo.fromJson(Map<String, dynamic> json) {
    basicGroupId = tryConvertToTdObject(json['basic_group_id']);
    basicGroupFullInfo = tryConvertToTdObject(json['basic_group_full_info']);
  }
}

@reflector
class UpdateSupergroupFullInfo extends Update {
  @override
  String get tdType => 'updateSupergroupFullInfo';

  int supergroupId;
  SupergroupFullInfo supergroupFullInfo;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'supergroup_full_info': supergroupFullInfo,
  };

  UpdateSupergroupFullInfo({
    this.supergroupId,
    this.supergroupFullInfo,
  });

  UpdateSupergroupFullInfo.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
    supergroupFullInfo = tryConvertToTdObject(json['supergroup_full_info']);
  }
}

@reflector
class UpdateServiceNotification extends Update {
  @override
  String get tdType => 'updateServiceNotification';

  String type;
  MessageContent content;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'content': content,
  };

  UpdateServiceNotification({
    this.type,
    this.content,
  });

  UpdateServiceNotification.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
    content = tryConvertToTdObject(json['content']);
  }
}

@reflector
class UpdateFile extends Update {
  @override
  String get tdType => 'updateFile';

  File file;

  @override
  Map<String, dynamic> get params => {
    'file': file,
  };

  UpdateFile({
    this.file,
  });

  UpdateFile.fromJson(Map<String, dynamic> json) {
    file = tryConvertToTdObject(json['file']);
  }
}

@reflector
class UpdateFileGenerationStart extends Update {
  @override
  String get tdType => 'updateFileGenerationStart';

  int generationId;
  String originalPath;
  String destinationPath;
  String conversion;

  @override
  Map<String, dynamic> get params => {
    'generation_id': generationId,
    'original_path': originalPath,
    'destination_path': destinationPath,
    'conversion': conversion,
  };

  UpdateFileGenerationStart({
    this.generationId,
    this.originalPath,
    this.destinationPath,
    this.conversion,
  });

  UpdateFileGenerationStart.fromJson(Map<String, dynamic> json) {
    generationId = tryConvertToTdObject(json['generation_id']);
    originalPath = tryConvertToTdObject(json['original_path']);
    destinationPath = tryConvertToTdObject(json['destination_path']);
    conversion = tryConvertToTdObject(json['conversion']);
  }
}

@reflector
class UpdateFileGenerationStop extends Update {
  @override
  String get tdType => 'updateFileGenerationStop';

  int generationId;

  @override
  Map<String, dynamic> get params => {
    'generation_id': generationId,
  };

  UpdateFileGenerationStop({
    this.generationId,
  });

  UpdateFileGenerationStop.fromJson(Map<String, dynamic> json) {
    generationId = tryConvertToTdObject(json['generation_id']);
  }
}

@reflector
class UpdateCall extends Update {
  @override
  String get tdType => 'updateCall';

  Call call;

  @override
  Map<String, dynamic> get params => {
    'call': call,
  };

  UpdateCall({
    this.call,
  });

  UpdateCall.fromJson(Map<String, dynamic> json) {
    call = tryConvertToTdObject(json['call']);
  }
}

@reflector
class UpdateUserPrivacySettingRules extends Update {
  @override
  String get tdType => 'updateUserPrivacySettingRules';

  UserPrivacySetting setting;
  UserPrivacySettingRules rules;

  @override
  Map<String, dynamic> get params => {
    'setting': setting,
    'rules': rules,
  };

  UpdateUserPrivacySettingRules({
    this.setting,
    this.rules,
  });

  UpdateUserPrivacySettingRules.fromJson(Map<String, dynamic> json) {
    setting = tryConvertToTdObject(json['setting']);
    rules = tryConvertToTdObject(json['rules']);
  }
}

@reflector
class UpdateUnreadMessageCount extends Update {
  @override
  String get tdType => 'updateUnreadMessageCount';

  int unreadCount;
  int unreadUnmutedCount;

  @override
  Map<String, dynamic> get params => {
    'unread_count': unreadCount,
    'unread_unmuted_count': unreadUnmutedCount,
  };

  UpdateUnreadMessageCount({
    this.unreadCount,
    this.unreadUnmutedCount,
  });

  UpdateUnreadMessageCount.fromJson(Map<String, dynamic> json) {
    unreadCount = tryConvertToTdObject(json['unread_count']);
    unreadUnmutedCount = tryConvertToTdObject(json['unread_unmuted_count']);
  }
}

@reflector
class UpdateUnreadChatCount extends Update {
  @override
  String get tdType => 'updateUnreadChatCount';

  int unreadCount;
  int unreadUnmutedCount;
  int markedAsUnreadCount;
  int markedAsUnreadUnmutedCount;

  @override
  Map<String, dynamic> get params => {
    'unread_count': unreadCount,
    'unread_unmuted_count': unreadUnmutedCount,
    'marked_as_unread_count': markedAsUnreadCount,
    'marked_as_unread_unmuted_count': markedAsUnreadUnmutedCount,
  };

  UpdateUnreadChatCount({
    this.unreadCount,
    this.unreadUnmutedCount,
    this.markedAsUnreadCount,
    this.markedAsUnreadUnmutedCount,
  });

  UpdateUnreadChatCount.fromJson(Map<String, dynamic> json) {
    unreadCount = tryConvertToTdObject(json['unread_count']);
    unreadUnmutedCount = tryConvertToTdObject(json['unread_unmuted_count']);
    markedAsUnreadCount = tryConvertToTdObject(json['marked_as_unread_count']);
    markedAsUnreadUnmutedCount = tryConvertToTdObject(json['marked_as_unread_unmuted_count']);
  }
}

@reflector
class UpdateOption extends Update {
  @override
  String get tdType => 'updateOption';

  String name;
  OptionValue value;

  @override
  Map<String, dynamic> get params => {
    'name': name,
    'value': value,
  };

  UpdateOption({
    this.name,
    this.value,
  });

  UpdateOption.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class UpdateInstalledStickerSets extends Update {
  @override
  String get tdType => 'updateInstalledStickerSets';

  bool isMasks;
  List<int> stickerSetIds;

  @override
  Map<String, dynamic> get params => {
    'is_masks': isMasks,
    'sticker_set_ids': stickerSetIds,
  };

  UpdateInstalledStickerSets({
    this.isMasks,
    this.stickerSetIds,
  });

  UpdateInstalledStickerSets.fromJson(Map<String, dynamic> json) {
    isMasks = tryConvertToTdObject(json['is_masks']);
    stickerSetIds = tryConvertToTdObject(json['sticker_set_ids']);
  }
}

@reflector
class UpdateTrendingStickerSets extends Update {
  @override
  String get tdType => 'updateTrendingStickerSets';

  StickerSets stickerSets;

  @override
  Map<String, dynamic> get params => {
    'sticker_sets': stickerSets,
  };

  UpdateTrendingStickerSets({
    this.stickerSets,
  });

  UpdateTrendingStickerSets.fromJson(Map<String, dynamic> json) {
    stickerSets = tryConvertToTdObject(json['sticker_sets']);
  }
}

@reflector
class UpdateRecentStickers extends Update {
  @override
  String get tdType => 'updateRecentStickers';

  bool isAttached;
  List<int> stickerIds;

  @override
  Map<String, dynamic> get params => {
    'is_attached': isAttached,
    'sticker_ids': stickerIds,
  };

  UpdateRecentStickers({
    this.isAttached,
    this.stickerIds,
  });

  UpdateRecentStickers.fromJson(Map<String, dynamic> json) {
    isAttached = tryConvertToTdObject(json['is_attached']);
    stickerIds = tryConvertToTdObject(json['sticker_ids']);
  }
}

@reflector
class UpdateFavoriteStickers extends Update {
  @override
  String get tdType => 'updateFavoriteStickers';

  List<int> stickerIds;

  @override
  Map<String, dynamic> get params => {
    'sticker_ids': stickerIds,
  };

  UpdateFavoriteStickers({
    this.stickerIds,
  });

  UpdateFavoriteStickers.fromJson(Map<String, dynamic> json) {
    stickerIds = tryConvertToTdObject(json['sticker_ids']);
  }
}

@reflector
class UpdateSavedAnimations extends Update {
  @override
  String get tdType => 'updateSavedAnimations';

  List<int> animationIds;

  @override
  Map<String, dynamic> get params => {
    'animation_ids': animationIds,
  };

  UpdateSavedAnimations({
    this.animationIds,
  });

  UpdateSavedAnimations.fromJson(Map<String, dynamic> json) {
    animationIds = tryConvertToTdObject(json['animation_ids']);
  }
}

@reflector
class UpdateSelectedBackground extends Update {
  @override
  String get tdType => 'updateSelectedBackground';

  bool forDarkTheme;
  Background background;

  @override
  Map<String, dynamic> get params => {
    'for_dark_theme': forDarkTheme,
    'background': background,
  };

  UpdateSelectedBackground({
    this.forDarkTheme,
    this.background,
  });

  UpdateSelectedBackground.fromJson(Map<String, dynamic> json) {
    forDarkTheme = tryConvertToTdObject(json['for_dark_theme']);
    background = tryConvertToTdObject(json['background']);
  }
}

@reflector
class UpdateLanguagePackStrings extends Update {
  @override
  String get tdType => 'updateLanguagePackStrings';

  String localizationTarget;
  String languagePackId;
  List<LanguagePackString> strings;

  @override
  Map<String, dynamic> get params => {
    'localization_target': localizationTarget,
    'language_pack_id': languagePackId,
    'strings': strings,
  };

  UpdateLanguagePackStrings({
    this.localizationTarget,
    this.languagePackId,
    this.strings,
  });

  UpdateLanguagePackStrings.fromJson(Map<String, dynamic> json) {
    localizationTarget = tryConvertToTdObject(json['localization_target']);
    languagePackId = tryConvertToTdObject(json['language_pack_id']);
    strings = tryConvertToTdObject(json['strings']);
  }
}

@reflector
class UpdateConnectionState extends Update {
  @override
  String get tdType => 'updateConnectionState';

  ConnectionState state;

  @override
  Map<String, dynamic> get params => {
    'state': state,
  };

  UpdateConnectionState({
    this.state,
  });

  UpdateConnectionState.fromJson(Map<String, dynamic> json) {
    state = tryConvertToTdObject(json['state']);
  }
}

@reflector
class UpdateTermsOfService extends Update {
  @override
  String get tdType => 'updateTermsOfService';

  String termsOfServiceId;
  TermsOfService termsOfService;

  @override
  Map<String, dynamic> get params => {
    'terms_of_service_id': termsOfServiceId,
    'terms_of_service': termsOfService,
  };

  UpdateTermsOfService({
    this.termsOfServiceId,
    this.termsOfService,
  });

  UpdateTermsOfService.fromJson(Map<String, dynamic> json) {
    termsOfServiceId = tryConvertToTdObject(json['terms_of_service_id']);
    termsOfService = tryConvertToTdObject(json['terms_of_service']);
  }
}

@reflector
class UpdateNewInlineQuery extends Update {
  @override
  String get tdType => 'updateNewInlineQuery';

  int id;
  int senderUserId;
  Location userLocation;
  String query;
  String offset;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender_user_id': senderUserId,
    'user_location': userLocation,
    'query': query,
    'offset': offset,
  };

  UpdateNewInlineQuery({
    this.id,
    this.senderUserId,
    this.userLocation,
    this.query,
    this.offset,
  });

  UpdateNewInlineQuery.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    senderUserId = tryConvertToTdObject(json['sender_user_id']);
    userLocation = tryConvertToTdObject(json['user_location']);
    query = tryConvertToTdObject(json['query']);
    offset = tryConvertToTdObject(json['offset']);
  }
}

@reflector
class UpdateNewChosenInlineResult extends Update {
  @override
  String get tdType => 'updateNewChosenInlineResult';

  int senderUserId;
  Location userLocation;
  String query;
  String resultId;
  String inlineMessageId;

  @override
  Map<String, dynamic> get params => {
    'sender_user_id': senderUserId,
    'user_location': userLocation,
    'query': query,
    'result_id': resultId,
    'inline_message_id': inlineMessageId,
  };

  UpdateNewChosenInlineResult({
    this.senderUserId,
    this.userLocation,
    this.query,
    this.resultId,
    this.inlineMessageId,
  });

  UpdateNewChosenInlineResult.fromJson(Map<String, dynamic> json) {
    senderUserId = tryConvertToTdObject(json['sender_user_id']);
    userLocation = tryConvertToTdObject(json['user_location']);
    query = tryConvertToTdObject(json['query']);
    resultId = tryConvertToTdObject(json['result_id']);
    inlineMessageId = tryConvertToTdObject(json['inline_message_id']);
  }
}

@reflector
class UpdateNewCallbackQuery extends Update {
  @override
  String get tdType => 'updateNewCallbackQuery';

  int id;
  int senderUserId;
  int chatId;
  int messageId;
  int chatInstance;
  CallbackQueryPayload payload;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender_user_id': senderUserId,
    'chat_id': chatId,
    'message_id': messageId,
    'chat_instance': chatInstance,
    'payload': payload,
  };

  UpdateNewCallbackQuery({
    this.id,
    this.senderUserId,
    this.chatId,
    this.messageId,
    this.chatInstance,
    this.payload,
  });

  UpdateNewCallbackQuery.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    senderUserId = tryConvertToTdObject(json['sender_user_id']);
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    chatInstance = tryConvertToTdObject(json['chat_instance']);
    payload = tryConvertToTdObject(json['payload']);
  }
}

@reflector
class UpdateNewInlineCallbackQuery extends Update {
  @override
  String get tdType => 'updateNewInlineCallbackQuery';

  int id;
  int senderUserId;
  String inlineMessageId;
  int chatInstance;
  CallbackQueryPayload payload;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender_user_id': senderUserId,
    'inline_message_id': inlineMessageId,
    'chat_instance': chatInstance,
    'payload': payload,
  };

  UpdateNewInlineCallbackQuery({
    this.id,
    this.senderUserId,
    this.inlineMessageId,
    this.chatInstance,
    this.payload,
  });

  UpdateNewInlineCallbackQuery.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    senderUserId = tryConvertToTdObject(json['sender_user_id']);
    inlineMessageId = tryConvertToTdObject(json['inline_message_id']);
    chatInstance = tryConvertToTdObject(json['chat_instance']);
    payload = tryConvertToTdObject(json['payload']);
  }
}

@reflector
class UpdateNewShippingQuery extends Update {
  @override
  String get tdType => 'updateNewShippingQuery';

  int id;
  int senderUserId;
  String invoicePayload;
  Address shippingAddress;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender_user_id': senderUserId,
    'invoice_payload': invoicePayload,
    'shipping_address': shippingAddress,
  };

  UpdateNewShippingQuery({
    this.id,
    this.senderUserId,
    this.invoicePayload,
    this.shippingAddress,
  });

  UpdateNewShippingQuery.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    senderUserId = tryConvertToTdObject(json['sender_user_id']);
    invoicePayload = tryConvertToTdObject(json['invoice_payload']);
    shippingAddress = tryConvertToTdObject(json['shipping_address']);
  }
}

@reflector
class UpdateNewPreCheckoutQuery extends Update {
  @override
  String get tdType => 'updateNewPreCheckoutQuery';

  int id;
  int senderUserId;
  String currency;
  int totalAmount;
  String invoicePayload;
  String shippingOptionId;
  OrderInfo orderInfo;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender_user_id': senderUserId,
    'currency': currency,
    'total_amount': totalAmount,
    'invoice_payload': invoicePayload,
    'shipping_option_id': shippingOptionId,
    'order_info': orderInfo,
  };

  UpdateNewPreCheckoutQuery({
    this.id,
    this.senderUserId,
    this.currency,
    this.totalAmount,
    this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
  });

  UpdateNewPreCheckoutQuery.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    senderUserId = tryConvertToTdObject(json['sender_user_id']);
    currency = tryConvertToTdObject(json['currency']);
    totalAmount = tryConvertToTdObject(json['total_amount']);
    invoicePayload = tryConvertToTdObject(json['invoice_payload']);
    shippingOptionId = tryConvertToTdObject(json['shipping_option_id']);
    orderInfo = tryConvertToTdObject(json['order_info']);
  }
}

@reflector
class UpdateNewCustomEvent extends Update {
  @override
  String get tdType => 'updateNewCustomEvent';

  String event;

  @override
  Map<String, dynamic> get params => {
    'event': event,
  };

  UpdateNewCustomEvent({
    this.event,
  });

  UpdateNewCustomEvent.fromJson(Map<String, dynamic> json) {
    event = tryConvertToTdObject(json['event']);
  }
}

@reflector
class UpdateNewCustomQuery extends Update {
  @override
  String get tdType => 'updateNewCustomQuery';

  int id;
  String data;
  int timeout;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'data': data,
    'timeout': timeout,
  };

  UpdateNewCustomQuery({
    this.id,
    this.data,
    this.timeout,
  });

  UpdateNewCustomQuery.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    data = tryConvertToTdObject(json['data']);
    timeout = tryConvertToTdObject(json['timeout']);
  }
}

@reflector
class UpdatePoll extends Update {
  @override
  String get tdType => 'updatePoll';

  Poll poll;

  @override
  Map<String, dynamic> get params => {
    'poll': poll,
  };

  UpdatePoll({
    this.poll,
  });

  UpdatePoll.fromJson(Map<String, dynamic> json) {
    poll = tryConvertToTdObject(json['poll']);
  }
}

@reflector
class Updates extends TdObject {
  @override
  String get tdType => 'updates';

  List<Update> updates;

  @override
  Map<String, dynamic> get params => {
    'updates': updates,
  };

  Updates({
    this.updates,
  });

  Updates.fromJson(Map<String, dynamic> json) {
    updates = tryConvertToTdObject(json['updates']);
  }
}

abstract class LogStream extends TdObject {}

@reflector
class LogStreamDefault extends LogStream {
  @override
  String get tdType => 'logStreamDefault';

  @override
  Map<String, dynamic> get params => {};

  LogStreamDefault();

  LogStreamDefault.fromJson(Map<String, dynamic> json);
}

@reflector
class LogStreamFile extends LogStream {
  @override
  String get tdType => 'logStreamFile';

  String path;
  int maxFileSize;

  @override
  Map<String, dynamic> get params => {
    'path': path,
    'max_file_size': maxFileSize,
  };

  LogStreamFile({
    this.path,
    this.maxFileSize,
  });

  LogStreamFile.fromJson(Map<String, dynamic> json) {
    path = tryConvertToTdObject(json['path']);
    maxFileSize = tryConvertToTdObject(json['max_file_size']);
  }
}

@reflector
class LogStreamEmpty extends LogStream {
  @override
  String get tdType => 'logStreamEmpty';

  @override
  Map<String, dynamic> get params => {};

  LogStreamEmpty();

  LogStreamEmpty.fromJson(Map<String, dynamic> json);
}

@reflector
class LogVerbosityLevel extends TdObject {
  @override
  String get tdType => 'logVerbosityLevel';

  int verbosityLevel;

  @override
  Map<String, dynamic> get params => {
    'verbosity_level': verbosityLevel,
  };

  LogVerbosityLevel({
    this.verbosityLevel,
  });

  LogVerbosityLevel.fromJson(Map<String, dynamic> json) {
    verbosityLevel = tryConvertToTdObject(json['verbosity_level']);
  }
}

@reflector
class LogTags extends TdObject {
  @override
  String get tdType => 'logTags';

  List<String> tags;

  @override
  Map<String, dynamic> get params => {
    'tags': tags,
  };

  LogTags({
    this.tags,
  });

  LogTags.fromJson(Map<String, dynamic> json) {
    tags = tryConvertToTdObject(json['tags']);
  }
}

@reflector
class TestInt extends TdObject {
  @override
  String get tdType => 'testInt';

  int value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestInt({
    this.value,
  });

  TestInt.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class TestString extends TdObject {
  @override
  String get tdType => 'testString';

  String value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestString({
    this.value,
  });

  TestString.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class TestBytes extends TdObject {
  @override
  String get tdType => 'testBytes';

  String value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestBytes({
    this.value,
  });

  TestBytes.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class TestVectorInt extends TdObject {
  @override
  String get tdType => 'testVectorInt';

  List<int> value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestVectorInt({
    this.value,
  });

  TestVectorInt.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class TestVectorIntObject extends TdObject {
  @override
  String get tdType => 'testVectorIntObject';

  List<TestInt> value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestVectorIntObject({
    this.value,
  });

  TestVectorIntObject.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class TestVectorString extends TdObject {
  @override
  String get tdType => 'testVectorString';

  List<String> value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestVectorString({
    this.value,
  });

  TestVectorString.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class TestVectorStringObject extends TdObject {
  @override
  String get tdType => 'testVectorStringObject';

  List<TestString> value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestVectorStringObject({
    this.value,
  });

  TestVectorStringObject.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}
