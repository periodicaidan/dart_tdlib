import "base_classes.dart";
import "objects.dart";
import "utils.dart";

@reflector
class GetAuthorizationState extends TdFunction {
  @override
  Type get returnType => AuthorizationState;

  @override
  Map<String, dynamic> get params => {};

  GetAuthorizationState();
}

@reflector
class SetTdlibParameters extends TdFunction {
  Type get returnType => Ok;

  final TdlibParameters parameters;

  @override
  Map<String, dynamic> get params => {
    "parameters": parameters,
  };

  SetTdlibParameters(
    this.parameters,
  );
}

@reflector
class CheckDatabaseEncryptionKey extends TdFunction {
  Type get returnType => Ok;

  final List<int> encryptionKey;

  @override
  Map<String, dynamic> get params => {
    "encryption_key": encryptionKey,
  };

  CheckDatabaseEncryptionKey(
    this.encryptionKey,
  );
}

@reflector
class SetAuthenticationPhoneNumber extends TdFunction {
  Type get returnType => Ok;

  final String phoneNumber;
  final PhoneNumberAuthenticationSettings settings;

  @override
  Map<String, dynamic> get params => {
    "phone_number": phoneNumber,
    "settings": settings,
  };

  SetAuthenticationPhoneNumber(
    this.phoneNumber,
    this.settings,
  );
}

@reflector
class ResendAuthenticationCode extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  ResendAuthenticationCode();
}

@reflector
class CheckAuthenticationCode extends TdFunction {
  Type get returnType => Ok;

  final String code;

  @override
  Map<String, dynamic> get params => {
    "code": code,
  };

  CheckAuthenticationCode(
    this.code,
  );
}

@reflector
class RegisterUser extends TdFunction {
  Type get returnType => Ok;

  final String firstName;
  final String lastName;

  @override
  Map<String, dynamic> get params => {
    "first_name": firstName,
    "last_name": lastName,
  };

  RegisterUser(
    this.firstName,
    this.lastName,
  );
}

@reflector
class CheckAuthenticationPassword extends TdFunction {
  Type get returnType => Ok;

  final String password;

  @override
  Map<String, dynamic> get params => {
    "password": password,
  };

  CheckAuthenticationPassword(
    this.password,
  );
}

@reflector
class RequestAuthenticationPasswordRecovery extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  RequestAuthenticationPasswordRecovery();
}

@reflector
class RecoverAuthenticationPassword extends TdFunction {
  Type get returnType => Ok;

  final String recoveryCode;

  @override
  Map<String, dynamic> get params => {
    "recovery_code": recoveryCode,
  };

  RecoverAuthenticationPassword(
    this.recoveryCode,
  );
}

@reflector
class CheckAuthenticationBotToken extends TdFunction {
  Type get returnType => Ok;

  final String token;

  @override
  Map<String, dynamic> get params => {
    "token": token,
  };

  CheckAuthenticationBotToken(
    this.token,
  );
}

@reflector
class LogOut extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  LogOut();
}

@reflector
class Close extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  Close();
}

@reflector
class Destroy extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  Destroy();
}

@reflector
class SetDatabaseEncryptionKey extends TdFunction {
  Type get returnType => Ok;

  final List<int> newEncryptionKey;

  @override
  Map<String, dynamic> get params => {
    "new_encryption_key": newEncryptionKey,
  };

  SetDatabaseEncryptionKey(
    this.newEncryptionKey,
  );
}

@reflector
class RemoveTopChat extends TdFunction {
  Type get returnType => Ok;

  final TopChatCategory category;
  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "category": category,
    "chat_id": chatId,
  };

  RemoveTopChat(
    this.category,
    this.chatId,
  );
}

@reflector
class AddRecentlyFoundChat extends TdFunction {
  Type get returnType => Ok;

  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
  };

  AddRecentlyFoundChat(
    this.chatId,
  );
}

@reflector
class RemoveRecentlyFoundChat extends TdFunction {
  Type get returnType => Ok;

  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
  };

  RemoveRecentlyFoundChat(
    this.chatId,
  );
}

@reflector
class ClearRecentlyFoundChats extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  ClearRecentlyFoundChats();
}

@reflector
class DeleteChatHistory extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final bool removeFromChatList;
  final bool revoke;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "remove_from_chat_list": removeFromChatList,
    "revoke": revoke,
  };

  DeleteChatHistory(
    this.chatId,
    this.removeFromChatList,
    this.revoke,
  );
}

@reflector
class RemoveNotification extends TdFunction {
  Type get returnType => Ok;

  final int notificationGroupId;
  final int notificationId;

  @override
  Map<String, dynamic> get params => {
    "notification_group_id": notificationGroupId,
    "notification_id": notificationId,
  };

  RemoveNotification(
    this.notificationGroupId,
    this.notificationId,
  );
}

@reflector
class RemoveNotificationGroup extends TdFunction {
  Type get returnType => Ok;

  final int notificationGroupId;
  final int maxNotificationId;

  @override
  Map<String, dynamic> get params => {
    "notification_group_id": notificationGroupId,
    "max_notification_id": maxNotificationId,
  };

  RemoveNotificationGroup(
    this.notificationGroupId,
    this.maxNotificationId,
  );
}

@reflector
class SendChatScreenshotTakenNotification extends TdFunction {
  Type get returnType => Ok;

  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
  };

  SendChatScreenshotTakenNotification(
    this.chatId,
  );
}

@reflector
class DeleteMessages extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final List<int> messageIds;
  final bool revoke;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_ids": messageIds,
    "revoke": revoke,
  };

  DeleteMessages(
    this.chatId,
    this.messageIds,
    this.revoke,
  );
}

@reflector
class DeleteChatMessagesFromUser extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final int userId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "user_id": userId,
  };

  DeleteChatMessagesFromUser(
    this.chatId,
    this.userId,
  );
}

@reflector
class EditInlineMessageText extends TdFunction {
  Type get returnType => Ok;

  final String inlineMessageId;
  final ReplyMarkup replyMarkup;
  final InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    "inline_message_id": inlineMessageId,
    "reply_markup": replyMarkup,
    "input_message_content": inputMessageContent,
  };

  EditInlineMessageText(
    this.inlineMessageId,
    this.replyMarkup,
    this.inputMessageContent,
  );
}

@reflector
class EditInlineMessageLiveLocation extends TdFunction {
  Type get returnType => Ok;

  final String inlineMessageId;
  final ReplyMarkup replyMarkup;
  final Location location;

  @override
  Map<String, dynamic> get params => {
    "inline_message_id": inlineMessageId,
    "reply_markup": replyMarkup,
    "location": location,
  };

  EditInlineMessageLiveLocation(
    this.inlineMessageId,
    this.replyMarkup,
    this.location,
  );
}

@reflector
class EditInlineMessageMedia extends TdFunction {
  Type get returnType => Ok;

  final String inlineMessageId;
  final ReplyMarkup replyMarkup;
  final InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    "inline_message_id": inlineMessageId,
    "reply_markup": replyMarkup,
    "input_message_content": inputMessageContent,
  };

  EditInlineMessageMedia(
    this.inlineMessageId,
    this.replyMarkup,
    this.inputMessageContent,
  );
}

@reflector
class EditInlineMessageCaption extends TdFunction {
  Type get returnType => Ok;

  final String inlineMessageId;
  final ReplyMarkup replyMarkup;
  final FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    "inline_message_id": inlineMessageId,
    "reply_markup": replyMarkup,
    "caption": caption,
  };

  EditInlineMessageCaption(
    this.inlineMessageId,
    this.replyMarkup,
    this.caption,
  );
}

@reflector
class EditInlineMessageReplyMarkup extends TdFunction {
  Type get returnType => Ok;

  final String inlineMessageId;
  final ReplyMarkup replyMarkup;

  @override
  Map<String, dynamic> get params => {
    "inline_message_id": inlineMessageId,
    "reply_markup": replyMarkup,
  };

  EditInlineMessageReplyMarkup(
    this.inlineMessageId,
    this.replyMarkup,
  );
}

@reflector
class SetPollAnswer extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final int messageId;
  final List<int> optionIds;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
    "option_ids": optionIds,
  };

  SetPollAnswer(
    this.chatId,
    this.messageId,
    this.optionIds,
  );
}

@reflector
class StopPoll extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final int messageId;
  final ReplyMarkup replyMarkup;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
    "reply_markup": replyMarkup,
  };

  StopPoll(
    this.chatId,
    this.messageId,
    this.replyMarkup,
  );
}

@reflector
class AnswerInlineQuery extends TdFunction {
  Type get returnType => Ok;

  final int inlineQueryId;
  final bool isPersonal;
  final List<InputInlineQueryResult> results;
  final int cacheTime;
  final String nextOffset;
  final String switchPmText;
  final String switchPmParameter;

  @override
  Map<String, dynamic> get params => {
    "inline_query_id": inlineQueryId,
    "is_personal": isPersonal,
    "results": results,
    "cache_time": cacheTime,
    "next_offset": nextOffset,
    "switch_pm_text": switchPmText,
    "switch_pm_parameter": switchPmParameter,
  };

  AnswerInlineQuery(
    this.inlineQueryId,
    this.isPersonal,
    this.results,
    this.cacheTime,
    this.nextOffset,
    this.switchPmText,
    this.switchPmParameter,
  );
}

@reflector
class AnswerCallbackQuery extends TdFunction {
  Type get returnType => Ok;

  final int callbackQueryId;
  final String text;
  final bool showAlert;
  final String url;
  final int cacheTime;

  @override
  Map<String, dynamic> get params => {
    "callback_query_id": callbackQueryId,
    "text": text,
    "show_alert": showAlert,
    "url": url,
    "cache_time": cacheTime,
  };

  AnswerCallbackQuery(
    this.callbackQueryId,
    this.text,
    this.showAlert,
    this.url,
    this.cacheTime,
  );
}

@reflector
class AnswerShippingQuery extends TdFunction {
  Type get returnType => Ok;

  final int shippingQueryId;
  final List<ShippingOption> shippingOptions;
  final String errorMessage;

  @override
  Map<String, dynamic> get params => {
    "shipping_query_id": shippingQueryId,
    "shipping_options": shippingOptions,
    "error_message": errorMessage,
  };

  AnswerShippingQuery(
    this.shippingQueryId,
    this.shippingOptions,
    this.errorMessage,
  );
}

@reflector
class AnswerPreCheckoutQuery extends TdFunction {
  Type get returnType => Ok;

  final int preCheckoutQueryId;
  final String errorMessage;

  @override
  Map<String, dynamic> get params => {
    "pre_checkout_query_id": preCheckoutQueryId,
    "error_message": errorMessage,
  };

  AnswerPreCheckoutQuery(
    this.preCheckoutQueryId,
    this.errorMessage,
  );
}

@reflector
class SetInlineGameScore extends TdFunction {
  Type get returnType => Ok;

  final String inlineMessageId;
  final bool editMessage;
  final int userId;
  final int score;
  final bool force;

  @override
  Map<String, dynamic> get params => {
    "inline_message_id": inlineMessageId,
    "edit_message": editMessage,
    "user_id": userId,
    "score": score,
    "force": force,
  };

  SetInlineGameScore(
    this.inlineMessageId,
    this.editMessage,
    this.userId,
    this.score,
    this.force,
  );
}

@reflector
class DeleteChatReplyMarkup extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final int messageId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
  };

  DeleteChatReplyMarkup(
    this.chatId,
    this.messageId,
  );
}

@reflector
class SendChatAction extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final ChatAction action;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "action": action,
  };

  SendChatAction(
    this.chatId,
    this.action,
  );
}

@reflector
class OpenChat extends TdFunction {
  Type get returnType => Ok;

  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
  };

  OpenChat(
    this.chatId,
  );
}

@reflector
class CloseChat extends TdFunction {
  Type get returnType => Ok;

  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
  };

  CloseChat(
    this.chatId,
  );
}

@reflector
class ViewMessages extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final List<int> messageIds;
  final bool forceRead;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_ids": messageIds,
    "force_read": forceRead,
  };

  ViewMessages(
    this.chatId,
    this.messageIds,
    this.forceRead,
  );
}

@reflector
class OpenMessageContent extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final int messageId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
  };

  OpenMessageContent(
    this.chatId,
    this.messageId,
  );
}

@reflector
class ReadAllChatMentions extends TdFunction {
  Type get returnType => Ok;

  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
  };

  ReadAllChatMentions(
    this.chatId,
  );
}

@reflector
class SetChatTitle extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final String title;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "title": title,
  };

  SetChatTitle(
    this.chatId,
    this.title,
  );
}

@reflector
class SetChatPhoto extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final InputFile photo;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "photo": photo,
  };

  SetChatPhoto(
    this.chatId,
    this.photo,
  );
}

@reflector
class SetChatPermissions extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final ChatPermissions permissions;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "permissions": permissions,
  };

  SetChatPermissions(
    this.chatId,
    this.permissions,
  );
}

@reflector
class SetChatDraftMessage extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final DraftMessage draftMessage;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "draft_message": draftMessage,
  };

  SetChatDraftMessage(
    this.chatId,
    this.draftMessage,
  );
}

@reflector
class SetChatNotificationSettings extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final ChatNotificationSettings notificationSettings;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "notification_settings": notificationSettings,
  };

  SetChatNotificationSettings(
    this.chatId,
    this.notificationSettings,
  );
}

@reflector
class ToggleChatIsPinned extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final bool isPinned;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "is_pinned": isPinned,
  };

  ToggleChatIsPinned(
    this.chatId,
    this.isPinned,
  );
}

@reflector
class ToggleChatIsMarkedAsUnread extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final bool isMarkedAsUnread;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "is_marked_as_unread": isMarkedAsUnread,
  };

  ToggleChatIsMarkedAsUnread(
    this.chatId,
    this.isMarkedAsUnread,
  );
}

@reflector
class ToggleChatDefaultDisableNotification extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final bool defaultDisableNotification;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "default_disable_notification": defaultDisableNotification,
  };

  ToggleChatDefaultDisableNotification(
    this.chatId,
    this.defaultDisableNotification,
  );
}

@reflector
class SetChatClientData extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final String clientData;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "client_data": clientData,
  };

  SetChatClientData(
    this.chatId,
    this.clientData,
  );
}

@reflector
class SetChatDescription extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final String description;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "description": description,
  };

  SetChatDescription(
    this.chatId,
    this.description,
  );
}

@reflector
class PinChatMessage extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final int messageId;
  final bool disableNotification;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
    "disable_notification": disableNotification,
  };

  PinChatMessage(
    this.chatId,
    this.messageId,
    this.disableNotification,
  );
}

@reflector
class UnpinChatMessage extends TdFunction {
  Type get returnType => Ok;

  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
  };

  UnpinChatMessage(
    this.chatId,
  );
}

@reflector
class JoinChat extends TdFunction {
  Type get returnType => Ok;

  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
  };

  JoinChat(
    this.chatId,
  );
}

@reflector
class LeaveChat extends TdFunction {
  Type get returnType => Ok;

  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
  };

  LeaveChat(
    this.chatId,
  );
}

@reflector
class AddChatMember extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final int userId;
  final int forwardLimit;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "user_id": userId,
    "forward_limit": forwardLimit,
  };

  AddChatMember(
    this.chatId,
    this.userId,
    this.forwardLimit,
  );
}

@reflector
class AddChatMembers extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "user_ids": userIds,
  };

  AddChatMembers(
    this.chatId,
    this.userIds,
  );
}

@reflector
class SetChatMemberStatus extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final int userId;
  final ChatMemberStatus status;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "user_id": userId,
    "status": status,
  };

  SetChatMemberStatus(
    this.chatId,
    this.userId,
    this.status,
  );
}

@reflector
class ClearAllDraftMessages extends TdFunction {
  Type get returnType => Ok;

  final bool excludeSecretChats;

  @override
  Map<String, dynamic> get params => {
    "exclude_secret_chats": excludeSecretChats,
  };

  ClearAllDraftMessages(
    this.excludeSecretChats,
  );
}

@reflector
class SetScopeNotificationSettings extends TdFunction {
  Type get returnType => Ok;

  final NotificationSettingsScope scope;
  final ScopeNotificationSettings notificationSettings;

  @override
  Map<String, dynamic> get params => {
    "scope": scope,
    "notification_settings": notificationSettings,
  };

  SetScopeNotificationSettings(
    this.scope,
    this.notificationSettings,
  );
}

@reflector
class ResetAllNotificationSettings extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  ResetAllNotificationSettings();
}

@reflector
class SetPinnedChats extends TdFunction {
  Type get returnType => Ok;

  final List<int> chatIds;

  @override
  Map<String, dynamic> get params => {
    "chat_ids": chatIds,
  };

  SetPinnedChats(
    this.chatIds,
  );
}

@reflector
class CancelDownloadFile extends TdFunction {
  Type get returnType => Ok;

  final int fileId;
  final bool onlyIfPending;

  @override
  Map<String, dynamic> get params => {
    "file_id": fileId,
    "only_if_pending": onlyIfPending,
  };

  CancelDownloadFile(
    this.fileId,
    this.onlyIfPending,
  );
}

@reflector
class CancelUploadFile extends TdFunction {
  Type get returnType => Ok;

  final int fileId;

  @override
  Map<String, dynamic> get params => {
    "file_id": fileId,
  };

  CancelUploadFile(
    this.fileId,
  );
}

@reflector
class WriteGeneratedFilePart extends TdFunction {
  Type get returnType => Ok;

  final int generationId;
  final int offset;
  final List<int> data;

  @override
  Map<String, dynamic> get params => {
    "generation_id": generationId,
    "offset": offset,
    "data": data,
  };

  WriteGeneratedFilePart(
    this.generationId,
    this.offset,
    this.data,
  );
}

@reflector
class SetFileGenerationProgress extends TdFunction {
  Type get returnType => Ok;

  final int generationId;
  final int expectedSize;
  final int localPrefixSize;

  @override
  Map<String, dynamic> get params => {
    "generation_id": generationId,
    "expected_size": expectedSize,
    "local_prefix_size": localPrefixSize,
  };

  SetFileGenerationProgress(
    this.generationId,
    this.expectedSize,
    this.localPrefixSize,
  );
}

@reflector
class FinishFileGeneration extends TdFunction {
  Type get returnType => Ok;

  final int generationId;
  final Error error;

  @override
  Map<String, dynamic> get params => {
    "generation_id": generationId,
    "error": error,
  };

  FinishFileGeneration(
    this.generationId,
    this.error,
  );
}

@reflector
class DeleteFile extends TdFunction {
  Type get returnType => Ok;

  final int fileId;

  @override
  Map<String, dynamic> get params => {
    "file_id": fileId,
  };

  DeleteFile(
    this.fileId,
  );
}

@reflector
class AcceptCall extends TdFunction {
  Type get returnType => Ok;

  final int callId;
  final CallProtocol protocol;

  @override
  Map<String, dynamic> get params => {
    "call_id": callId,
    "protocol": protocol,
  };

  AcceptCall(
    this.callId,
    this.protocol,
  );
}

@reflector
class DiscardCall extends TdFunction {
  Type get returnType => Ok;

  final int callId;
  final bool isDisconnected;
  final int duration;
  final int connectionId;

  @override
  Map<String, dynamic> get params => {
    "call_id": callId,
    "is_disconnected": isDisconnected,
    "duration": duration,
    "connection_id": connectionId,
  };

  DiscardCall(
    this.callId,
    this.isDisconnected,
    this.duration,
    this.connectionId,
  );
}

@reflector
class SendCallRating extends TdFunction {
  Type get returnType => Ok;

  final int callId;
  final int rating;
  final String comment;
  final List<CallProblem> problems;

  @override
  Map<String, dynamic> get params => {
    "call_id": callId,
    "rating": rating,
    "comment": comment,
    "problems": problems,
  };

  SendCallRating(
    this.callId,
    this.rating,
    this.comment,
    this.problems,
  );
}

@reflector
class SendCallDebugInformation extends TdFunction {
  Type get returnType => Ok;

  final int callId;
  final String debugInformation;

  @override
  Map<String, dynamic> get params => {
    "call_id": callId,
    "debug_information": debugInformation,
  };

  SendCallDebugInformation(
    this.callId,
    this.debugInformation,
  );
}

@reflector
class BlockUser extends TdFunction {
  Type get returnType => Ok;

  final int userId;

  @override
  Map<String, dynamic> get params => {
    "user_id": userId,
  };

  BlockUser(
    this.userId,
  );
}

@reflector
class UnblockUser extends TdFunction {
  Type get returnType => Ok;

  final int userId;

  @override
  Map<String, dynamic> get params => {
    "user_id": userId,
  };

  UnblockUser(
    this.userId,
  );
}

@reflector
class RemoveContacts extends TdFunction {
  Type get returnType => Ok;

  final List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    "user_ids": userIds,
  };

  RemoveContacts(
    this.userIds,
  );
}

@reflector
class ClearImportedContacts extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  ClearImportedContacts();
}

@reflector
class ChangeStickerSet extends TdFunction {
  Type get returnType => Ok;

  final int setId;
  final bool isInstalled;
  final bool isArchived;

  @override
  Map<String, dynamic> get params => {
    "set_id": setId,
    "is_installed": isInstalled,
    "is_archived": isArchived,
  };

  ChangeStickerSet(
    this.setId,
    this.isInstalled,
    this.isArchived,
  );
}

@reflector
class ViewTrendingStickerSets extends TdFunction {
  Type get returnType => Ok;

  final List<int> stickerSetIds;

  @override
  Map<String, dynamic> get params => {
    "sticker_set_ids": stickerSetIds,
  };

  ViewTrendingStickerSets(
    this.stickerSetIds,
  );
}

@reflector
class ReorderInstalledStickerSets extends TdFunction {
  Type get returnType => Ok;

  final bool isMasks;
  final List<int> stickerSetIds;

  @override
  Map<String, dynamic> get params => {
    "is_masks": isMasks,
    "sticker_set_ids": stickerSetIds,
  };

  ReorderInstalledStickerSets(
    this.isMasks,
    this.stickerSetIds,
  );
}

@reflector
class RemoveRecentSticker extends TdFunction {
  Type get returnType => Ok;

  final bool isAttached;
  final InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    "is_attached": isAttached,
    "sticker": sticker,
  };

  RemoveRecentSticker(
    this.isAttached,
    this.sticker,
  );
}

@reflector
class ClearRecentStickers extends TdFunction {
  Type get returnType => Ok;

  final bool isAttached;

  @override
  Map<String, dynamic> get params => {
    "is_attached": isAttached,
  };

  ClearRecentStickers(
    this.isAttached,
  );
}

@reflector
class AddFavoriteSticker extends TdFunction {
  Type get returnType => Ok;

  final InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    "sticker": sticker,
  };

  AddFavoriteSticker(
    this.sticker,
  );
}

@reflector
class RemoveFavoriteSticker extends TdFunction {
  Type get returnType => Ok;

  final InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    "sticker": sticker,
  };

  RemoveFavoriteSticker(
    this.sticker,
  );
}

@reflector
class AddSavedAnimation extends TdFunction {
  Type get returnType => Ok;

  final InputFile animation;

  @override
  Map<String, dynamic> get params => {
    "animation": animation,
  };

  AddSavedAnimation(
    this.animation,
  );
}

@reflector
class RemoveSavedAnimation extends TdFunction {
  Type get returnType => Ok;

  final InputFile animation;

  @override
  Map<String, dynamic> get params => {
    "animation": animation,
  };

  RemoveSavedAnimation(
    this.animation,
  );
}

@reflector
class RemoveRecentHashtag extends TdFunction {
  Type get returnType => Ok;

  final String hashtag;

  @override
  Map<String, dynamic> get params => {
    "hashtag": hashtag,
  };

  RemoveRecentHashtag(
    this.hashtag,
  );
}

@reflector
class SetProfilePhoto extends TdFunction {
  Type get returnType => Ok;

  final InputFile photo;

  @override
  Map<String, dynamic> get params => {
    "photo": photo,
  };

  SetProfilePhoto(
    this.photo,
  );
}

@reflector
class DeleteProfilePhoto extends TdFunction {
  Type get returnType => Ok;

  final int profilePhotoId;

  @override
  Map<String, dynamic> get params => {
    "profile_photo_id": profilePhotoId,
  };

  DeleteProfilePhoto(
    this.profilePhotoId,
  );
}

@reflector
class SetName extends TdFunction {
  Type get returnType => Ok;

  final String firstName;
  final String lastName;

  @override
  Map<String, dynamic> get params => {
    "first_name": firstName,
    "last_name": lastName,
  };

  SetName(
    this.firstName,
    this.lastName,
  );
}

@reflector
class SetBio extends TdFunction {
  Type get returnType => Ok;

  final String bio;

  @override
  Map<String, dynamic> get params => {
    "bio": bio,
  };

  SetBio(
    this.bio,
  );
}

@reflector
class SetUsername extends TdFunction {
  Type get returnType => Ok;

  final String username;

  @override
  Map<String, dynamic> get params => {
    "username": username,
  };

  SetUsername(
    this.username,
  );
}

@reflector
class CheckChangePhoneNumberCode extends TdFunction {
  Type get returnType => Ok;

  final String code;

  @override
  Map<String, dynamic> get params => {
    "code": code,
  };

  CheckChangePhoneNumberCode(
    this.code,
  );
}

@reflector
class TerminateSession extends TdFunction {
  Type get returnType => Ok;

  final int sessionId;

  @override
  Map<String, dynamic> get params => {
    "session_id": sessionId,
  };

  TerminateSession(
    this.sessionId,
  );
}

@reflector
class TerminateAllOtherSessions extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  TerminateAllOtherSessions();
}

@reflector
class DisconnectWebsite extends TdFunction {
  Type get returnType => Ok;

  final int websiteId;

  @override
  Map<String, dynamic> get params => {
    "website_id": websiteId,
  };

  DisconnectWebsite(
    this.websiteId,
  );
}

@reflector
class DisconnectAllWebsites extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  DisconnectAllWebsites();
}

@reflector
class SetSupergroupUsername extends TdFunction {
  Type get returnType => Ok;

  final int supergroupId;
  final String username;

  @override
  Map<String, dynamic> get params => {
    "supergroup_id": supergroupId,
    "username": username,
  };

  SetSupergroupUsername(
    this.supergroupId,
    this.username,
  );
}

@reflector
class SetSupergroupStickerSet extends TdFunction {
  Type get returnType => Ok;

  final int supergroupId;
  final int stickerSetId;

  @override
  Map<String, dynamic> get params => {
    "supergroup_id": supergroupId,
    "sticker_set_id": stickerSetId,
  };

  SetSupergroupStickerSet(
    this.supergroupId,
    this.stickerSetId,
  );
}

@reflector
class ToggleSupergroupSignMessages extends TdFunction {
  Type get returnType => Ok;

  final int supergroupId;
  final bool signMessages;

  @override
  Map<String, dynamic> get params => {
    "supergroup_id": supergroupId,
    "sign_messages": signMessages,
  };

  ToggleSupergroupSignMessages(
    this.supergroupId,
    this.signMessages,
  );
}

@reflector
class ToggleSupergroupIsAllHistoryAvailable extends TdFunction {
  Type get returnType => Ok;

  final int supergroupId;
  final bool isAllHistoryAvailable;

  @override
  Map<String, dynamic> get params => {
    "supergroup_id": supergroupId,
    "is_all_history_available": isAllHistoryAvailable,
  };

  ToggleSupergroupIsAllHistoryAvailable(
    this.supergroupId,
    this.isAllHistoryAvailable,
  );
}

@reflector
class ReportSupergroupSpam extends TdFunction {
  Type get returnType => Ok;

  final int supergroupId;
  final int userId;
  final List<int> messageIds;

  @override
  Map<String, dynamic> get params => {
    "supergroup_id": supergroupId,
    "user_id": userId,
    "message_ids": messageIds,
  };

  ReportSupergroupSpam(
    this.supergroupId,
    this.userId,
    this.messageIds,
  );
}

@reflector
class DeleteSupergroup extends TdFunction {
  Type get returnType => Ok;

  final int supergroupId;

  @override
  Map<String, dynamic> get params => {
    "supergroup_id": supergroupId,
  };

  DeleteSupergroup(
    this.supergroupId,
  );
}

@reflector
class CloseSecretChat extends TdFunction {
  Type get returnType => Ok;

  final int secretChatId;

  @override
  Map<String, dynamic> get params => {
    "secret_chat_id": secretChatId,
  };

  CloseSecretChat(
    this.secretChatId,
  );
}

@reflector
class DeleteSavedOrderInfo extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  DeleteSavedOrderInfo();
}

@reflector
class DeleteSavedCredentials extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  DeleteSavedCredentials();
}

@reflector
class RemoveBackground extends TdFunction {
  Type get returnType => Ok;

  final int backgroundId;

  @override
  Map<String, dynamic> get params => {
    "background_id": backgroundId,
  };

  RemoveBackground(
    this.backgroundId,
  );
}

@reflector
class ResetBackgrounds extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  ResetBackgrounds();
}

@reflector
class SynchronizeLanguagePack extends TdFunction {
  Type get returnType => Ok;

  final String languagePackId;

  @override
  Map<String, dynamic> get params => {
    "language_pack_id": languagePackId,
  };

  SynchronizeLanguagePack(
    this.languagePackId,
  );
}

@reflector
class AddCustomServerLanguagePack extends TdFunction {
  Type get returnType => Ok;

  final String languagePackId;

  @override
  Map<String, dynamic> get params => {
    "language_pack_id": languagePackId,
  };

  AddCustomServerLanguagePack(
    this.languagePackId,
  );
}

@reflector
class SetCustomLanguagePack extends TdFunction {
  Type get returnType => Ok;

  final LanguagePackInfo info;
  final List<LanguagePackString> strings;

  @override
  Map<String, dynamic> get params => {
    "info": info,
    "strings": strings,
  };

  SetCustomLanguagePack(
    this.info,
    this.strings,
  );
}

@reflector
class EditCustomLanguagePackInfo extends TdFunction {
  Type get returnType => Ok;

  final LanguagePackInfo info;

  @override
  Map<String, dynamic> get params => {
    "info": info,
  };

  EditCustomLanguagePackInfo(
    this.info,
  );
}

@reflector
class SetCustomLanguagePackString extends TdFunction {
  Type get returnType => Ok;

  final String languagePackId;
  final LanguagePackString newString;

  @override
  Map<String, dynamic> get params => {
    "language_pack_id": languagePackId,
    "new_string": newString,
  };

  SetCustomLanguagePackString(
    this.languagePackId,
    this.newString,
  );
}

@reflector
class DeleteLanguagePack extends TdFunction {
  Type get returnType => Ok;

  final String languagePackId;

  @override
  Map<String, dynamic> get params => {
    "language_pack_id": languagePackId,
  };

  DeleteLanguagePack(
    this.languagePackId,
  );
}

@reflector
class ProcessPushNotification extends TdFunction {
  Type get returnType => Ok;

  final String payload;

  @override
  Map<String, dynamic> get params => {
    "payload": payload,
  };

  ProcessPushNotification(
    this.payload,
  );
}

@reflector
class SetUserPrivacySettingRules extends TdFunction {
  Type get returnType => Ok;

  final UserPrivacySetting setting;
  final UserPrivacySettingRules rules;

  @override
  Map<String, dynamic> get params => {
    "setting": setting,
    "rules": rules,
  };

  SetUserPrivacySettingRules(
    this.setting,
    this.rules,
  );
}

@reflector
class SetOption extends TdFunction {
  Type get returnType => Ok;

  final String name;
  final OptionValue value;

  @override
  Map<String, dynamic> get params => {
    "name": name,
    "value": value,
  };

  SetOption(
    this.name,
    this.value,
  );
}

@reflector
class SetAccountTtl extends TdFunction {
  Type get returnType => Ok;

  final AccountTtl ttl;

  @override
  Map<String, dynamic> get params => {
    "ttl": ttl,
  };

  SetAccountTtl(
    this.ttl,
  );
}

@reflector
class DeleteAccount extends TdFunction {
  Type get returnType => Ok;

  final String reason;

  @override
  Map<String, dynamic> get params => {
    "reason": reason,
  };

  DeleteAccount(
    this.reason,
  );
}

@reflector
class ChangeChatReportSpamState extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final bool isSpamChat;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "is_spam_chat": isSpamChat,
  };

  ChangeChatReportSpamState(
    this.chatId,
    this.isSpamChat,
  );
}

@reflector
class ReportChat extends TdFunction {
  Type get returnType => Ok;

  final int chatId;
  final ChatReportReason reason;
  final List<int> messageIds;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "reason": reason,
    "message_ids": messageIds,
  };

  ReportChat(
    this.chatId,
    this.reason,
    this.messageIds,
  );
}

@reflector
class SetNetworkType extends TdFunction {
  Type get returnType => Ok;

  final NetworkType type;

  @override
  Map<String, dynamic> get params => {
    "type": type,
  };

  SetNetworkType(
    this.type,
  );
}

@reflector
class AddNetworkStatistics extends TdFunction {
  Type get returnType => Ok;

  final NetworkStatisticsEntry entry;

  @override
  Map<String, dynamic> get params => {
    "entry": entry,
  };

  AddNetworkStatistics(
    this.entry,
  );
}

@reflector
class ResetNetworkStatistics extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  ResetNetworkStatistics();
}

@reflector
class SetAutoDownloadSettings extends TdFunction {
  Type get returnType => Ok;

  final AutoDownloadSettings settings;
  final NetworkType type;

  @override
  Map<String, dynamic> get params => {
    "settings": settings,
    "type": type,
  };

  SetAutoDownloadSettings(
    this.settings,
    this.type,
  );
}

@reflector
class DeletePassportElement extends TdFunction {
  Type get returnType => Ok;

  final PassportElementType type;

  @override
  Map<String, dynamic> get params => {
    "type": type,
  };

  DeletePassportElement(
    this.type,
  );
}

@reflector
class SetPassportElementErrors extends TdFunction {
  Type get returnType => Ok;

  final int userId;
  final List<InputPassportElementError> errors;

  @override
  Map<String, dynamic> get params => {
    "user_id": userId,
    "errors": errors,
  };

  SetPassportElementErrors(
    this.userId,
    this.errors,
  );
}

@reflector
class CheckPhoneNumberVerificationCode extends TdFunction {
  Type get returnType => Ok;

  final String code;

  @override
  Map<String, dynamic> get params => {
    "code": code,
  };

  CheckPhoneNumberVerificationCode(
    this.code,
  );
}

@reflector
class CheckEmailAddressVerificationCode extends TdFunction {
  Type get returnType => Ok;

  final String code;

  @override
  Map<String, dynamic> get params => {
    "code": code,
  };

  CheckEmailAddressVerificationCode(
    this.code,
  );
}

@reflector
class SendPassportAuthorizationForm extends TdFunction {
  Type get returnType => Ok;

  final int autorizationFormId;
  final List<PassportElementType> types;

  @override
  Map<String, dynamic> get params => {
    "autorization_form_id": autorizationFormId,
    "types": types,
  };

  SendPassportAuthorizationForm(
    this.autorizationFormId,
    this.types,
  );
}

@reflector
class CheckPhoneNumberConfirmationCode extends TdFunction {
  Type get returnType => Ok;

  final String code;

  @override
  Map<String, dynamic> get params => {
    "code": code,
  };

  CheckPhoneNumberConfirmationCode(
    this.code,
  );
}

@reflector
class SetBotUpdatesStatus extends TdFunction {
  Type get returnType => Ok;

  final int pendingUpdateCount;
  final String errorMessage;

  @override
  Map<String, dynamic> get params => {
    "pending_update_count": pendingUpdateCount,
    "error_message": errorMessage,
  };

  SetBotUpdatesStatus(
    this.pendingUpdateCount,
    this.errorMessage,
  );
}

@reflector
class SetStickerPositionInSet extends TdFunction {
  Type get returnType => Ok;

  final InputFile sticker;
  final int position;

  @override
  Map<String, dynamic> get params => {
    "sticker": sticker,
    "position": position,
  };

  SetStickerPositionInSet(
    this.sticker,
    this.position,
  );
}

@reflector
class RemoveStickerFromSet extends TdFunction {
  Type get returnType => Ok;

  final InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    "sticker": sticker,
  };

  RemoveStickerFromSet(
    this.sticker,
  );
}

@reflector
class AcceptTermsOfService extends TdFunction {
  Type get returnType => Ok;

  final String termsOfServiceId;

  @override
  Map<String, dynamic> get params => {
    "terms_of_service_id": termsOfServiceId,
  };

  AcceptTermsOfService(
    this.termsOfServiceId,
  );
}

@reflector
class AnswerCustomQuery extends TdFunction {
  Type get returnType => Ok;

  final int customQueryId;
  final String data;

  @override
  Map<String, dynamic> get params => {
    "custom_query_id": customQueryId,
    "data": data,
  };

  AnswerCustomQuery(
    this.customQueryId,
    this.data,
  );
}

@reflector
class SetAlarm extends TdFunction {
  Type get returnType => Ok;

  final double seconds;

  @override
  Map<String, dynamic> get params => {
    "seconds": seconds,
  };

  SetAlarm(
    this.seconds,
  );
}

@reflector
class SaveApplicationLogEvent extends TdFunction {
  Type get returnType => Ok;

  final String type;
  final int chatId;
  final JsonValue data;

  @override
  Map<String, dynamic> get params => {
    "type": type,
    "chat_id": chatId,
    "data": data,
  };

  SaveApplicationLogEvent(
    this.type,
    this.chatId,
    this.data,
  );
}

@reflector
class EnableProxy extends TdFunction {
  Type get returnType => Ok;

  final int proxyId;

  @override
  Map<String, dynamic> get params => {
    "proxy_id": proxyId,
  };

  EnableProxy(
    this.proxyId,
  );
}

@reflector
class DisableProxy extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  DisableProxy();
}

@reflector
class RemoveProxy extends TdFunction {
  Type get returnType => Ok;

  final int proxyId;

  @override
  Map<String, dynamic> get params => {
    "proxy_id": proxyId,
  };

  RemoveProxy(
    this.proxyId,
  );
}

@reflector
class SetLogStream extends TdFunction {
  Type get returnType => Ok;

  final LogStream logStream;

  @override
  Map<String, dynamic> get params => {
    "log_stream": logStream,
  };

  SetLogStream(
    this.logStream,
  );
}

@reflector
class SetLogVerbosityLevel extends TdFunction {
  Type get returnType => Ok;

  final int newVerbosityLevel;

  @override
  Map<String, dynamic> get params => {
    "new_verbosity_level": newVerbosityLevel,
  };

  SetLogVerbosityLevel(
    this.newVerbosityLevel,
  );
}

@reflector
class SetLogTagVerbosityLevel extends TdFunction {
  Type get returnType => Ok;

  final String tag;
  final int newVerbosityLevel;

  @override
  Map<String, dynamic> get params => {
    "tag": tag,
    "new_verbosity_level": newVerbosityLevel,
  };

  SetLogTagVerbosityLevel(
    this.tag,
    this.newVerbosityLevel,
  );
}

@reflector
class AddLogMessage extends TdFunction {
  Type get returnType => Ok;

  final int verbosityLevel;
  final String text;

  @override
  Map<String, dynamic> get params => {
    "verbosity_level": verbosityLevel,
    "text": text,
  };

  AddLogMessage(
    this.verbosityLevel,
    this.text,
  );
}

@reflector
class TestCallEmpty extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  TestCallEmpty();
}

@reflector
class TestNetwork extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  TestNetwork();
}

@reflector
class TestProxy extends TdFunction {
  Type get returnType => Ok;

  final String server;
  final int port;
  final ProxyType type;
  final int dcId;
  final double timeout;

  @override
  Map<String, dynamic> get params => {
    "server": server,
    "port": port,
    "type": type,
    "dc_id": dcId,
    "timeout": timeout,
  };

  TestProxy(
    this.server,
    this.port,
    this.type,
    this.dcId,
    this.timeout,
  );
}

@reflector
class TestGetDifference extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  Map<String, dynamic> get params => {};

  TestGetDifference();
}

@reflector
class GetCurrentState extends TdFunction {
  @override
  Type get returnType => Updates;

  @override
  Map<String, dynamic> get params => {};

  GetCurrentState();
}

@reflector
class GetPasswordState extends TdFunction {
  @override
  Type get returnType => PasswordState;

  @override
  Map<String, dynamic> get params => {};

  GetPasswordState();
}

@reflector
class SetPassword extends TdFunction {
  Type get returnType => PasswordState;

  final String oldPassword;
  final String newPassword;
  final String newHint;
  final bool setRecoveryEmailAddress;
  final String newRecoveryEmailAddress;

  @override
  Map<String, dynamic> get params => {
    "old_password": oldPassword,
    "new_password": newPassword,
    "new_hint": newHint,
    "set_recovery_email_address": setRecoveryEmailAddress,
    "new_recovery_email_address": newRecoveryEmailAddress,
  };

  SetPassword(
    this.oldPassword,
    this.newPassword,
    this.newHint,
    this.setRecoveryEmailAddress,
    this.newRecoveryEmailAddress,
  );
}

@reflector
class SetRecoveryEmailAddress extends TdFunction {
  Type get returnType => PasswordState;

  final String password;
  final String newRecoveryEmailAddress;

  @override
  Map<String, dynamic> get params => {
    "password": password,
    "new_recovery_email_address": newRecoveryEmailAddress,
  };

  SetRecoveryEmailAddress(
    this.password,
    this.newRecoveryEmailAddress,
  );
}

@reflector
class CheckRecoveryEmailAddressCode extends TdFunction {
  Type get returnType => PasswordState;

  final String code;

  @override
  Map<String, dynamic> get params => {
    "code": code,
  };

  CheckRecoveryEmailAddressCode(
    this.code,
  );
}

@reflector
class ResendRecoveryEmailAddressCode extends TdFunction {
  @override
  Type get returnType => PasswordState;

  @override
  Map<String, dynamic> get params => {};

  ResendRecoveryEmailAddressCode();
}

@reflector
class RecoverPassword extends TdFunction {
  Type get returnType => PasswordState;

  final String recoveryCode;

  @override
  Map<String, dynamic> get params => {
    "recovery_code": recoveryCode,
  };

  RecoverPassword(
    this.recoveryCode,
  );
}

@reflector
class GetRecoveryEmailAddress extends TdFunction {
  Type get returnType => RecoveryEmailAddress;

  final String password;

  @override
  Map<String, dynamic> get params => {
    "password": password,
  };

  GetRecoveryEmailAddress(
    this.password,
  );
}

@reflector
class RequestPasswordRecovery extends TdFunction {
  @override
  Type get returnType => EmailAddressAuthenticationCodeInfo;

  @override
  Map<String, dynamic> get params => {};

  RequestPasswordRecovery();
}

@reflector
class SendEmailAddressVerificationCode extends TdFunction {
  Type get returnType => EmailAddressAuthenticationCodeInfo;

  final String emailAddress;

  @override
  Map<String, dynamic> get params => {
    "email_address": emailAddress,
  };

  SendEmailAddressVerificationCode(
    this.emailAddress,
  );
}

@reflector
class ResendEmailAddressVerificationCode extends TdFunction {
  @override
  Type get returnType => EmailAddressAuthenticationCodeInfo;

  @override
  Map<String, dynamic> get params => {};

  ResendEmailAddressVerificationCode();
}

@reflector
class CreateTemporaryPassword extends TdFunction {
  Type get returnType => TemporaryPasswordState;

  final String password;
  final int validFor;

  @override
  Map<String, dynamic> get params => {
    "password": password,
    "valid_for": validFor,
  };

  CreateTemporaryPassword(
    this.password,
    this.validFor,
  );
}

@reflector
class GetTemporaryPasswordState extends TdFunction {
  @override
  Type get returnType => TemporaryPasswordState;

  @override
  Map<String, dynamic> get params => {};

  GetTemporaryPasswordState();
}

@reflector
class GetMe extends TdFunction {
  @override
  Type get returnType => User;

  @override
  Map<String, dynamic> get params => {};

  GetMe();
}

@reflector
class GetUser extends TdFunction {
  Type get returnType => User;

  final int userId;

  @override
  Map<String, dynamic> get params => {
    "user_id": userId,
  };

  GetUser(
    this.userId,
  );
}

@reflector
class GetSupportUser extends TdFunction {
  @override
  Type get returnType => User;

  @override
  Map<String, dynamic> get params => {};

  GetSupportUser();
}

@reflector
class GetUserFullInfo extends TdFunction {
  Type get returnType => UserFullInfo;

  final int userId;

  @override
  Map<String, dynamic> get params => {
    "user_id": userId,
  };

  GetUserFullInfo(
    this.userId,
  );
}

@reflector
class GetBasicGroup extends TdFunction {
  Type get returnType => BasicGroup;

  final int basicGroupId;

  @override
  Map<String, dynamic> get params => {
    "basic_group_id": basicGroupId,
  };

  GetBasicGroup(
    this.basicGroupId,
  );
}

@reflector
class GetBasicGroupFullInfo extends TdFunction {
  Type get returnType => BasicGroupFullInfo;

  final int basicGroupId;

  @override
  Map<String, dynamic> get params => {
    "basic_group_id": basicGroupId,
  };

  GetBasicGroupFullInfo(
    this.basicGroupId,
  );
}

@reflector
class GetSupergroup extends TdFunction {
  Type get returnType => Supergroup;

  final int supergroupId;

  @override
  Map<String, dynamic> get params => {
    "supergroup_id": supergroupId,
  };

  GetSupergroup(
    this.supergroupId,
  );
}

@reflector
class GetSupergroupFullInfo extends TdFunction {
  Type get returnType => SupergroupFullInfo;

  final int supergroupId;

  @override
  Map<String, dynamic> get params => {
    "supergroup_id": supergroupId,
  };

  GetSupergroupFullInfo(
    this.supergroupId,
  );
}

@reflector
class GetSecretChat extends TdFunction {
  Type get returnType => SecretChat;

  final int secretChatId;

  @override
  Map<String, dynamic> get params => {
    "secret_chat_id": secretChatId,
  };

  GetSecretChat(
    this.secretChatId,
  );
}

@reflector
class GetChat extends TdFunction {
  Type get returnType => Chat;

  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
  };

  GetChat(
    this.chatId,
  );
}

@reflector
class SearchPublicChat extends TdFunction {
  Type get returnType => Chat;

  final String username;

  @override
  Map<String, dynamic> get params => {
    "username": username,
  };

  SearchPublicChat(
    this.username,
  );
}

@reflector
class CreatePrivateChat extends TdFunction {
  Type get returnType => Chat;

  final int userId;
  final bool force;

  @override
  Map<String, dynamic> get params => {
    "user_id": userId,
    "force": force,
  };

  CreatePrivateChat(
    this.userId,
    this.force,
  );
}

@reflector
class CreateBasicGroupChat extends TdFunction {
  Type get returnType => Chat;

  final int basicGroupId;
  final bool force;

  @override
  Map<String, dynamic> get params => {
    "basic_group_id": basicGroupId,
    "force": force,
  };

  CreateBasicGroupChat(
    this.basicGroupId,
    this.force,
  );
}

@reflector
class CreateSupergroupChat extends TdFunction {
  Type get returnType => Chat;

  final int supergroupId;
  final bool force;

  @override
  Map<String, dynamic> get params => {
    "supergroup_id": supergroupId,
    "force": force,
  };

  CreateSupergroupChat(
    this.supergroupId,
    this.force,
  );
}

@reflector
class CreateSecretChat extends TdFunction {
  Type get returnType => Chat;

  final int secretChatId;

  @override
  Map<String, dynamic> get params => {
    "secret_chat_id": secretChatId,
  };

  CreateSecretChat(
    this.secretChatId,
  );
}

@reflector
class CreateNewBasicGroupChat extends TdFunction {
  Type get returnType => Chat;

  final List<int> userIds;
  final String title;

  @override
  Map<String, dynamic> get params => {
    "user_ids": userIds,
    "title": title,
  };

  CreateNewBasicGroupChat(
    this.userIds,
    this.title,
  );
}

@reflector
class CreateNewSupergroupChat extends TdFunction {
  Type get returnType => Chat;

  final String title;
  final bool isChannel;
  final String description;

  @override
  Map<String, dynamic> get params => {
    "title": title,
    "is_channel": isChannel,
    "description": description,
  };

  CreateNewSupergroupChat(
    this.title,
    this.isChannel,
    this.description,
  );
}

@reflector
class CreateNewSecretChat extends TdFunction {
  Type get returnType => Chat;

  final int userId;

  @override
  Map<String, dynamic> get params => {
    "user_id": userId,
  };

  CreateNewSecretChat(
    this.userId,
  );
}

@reflector
class UpgradeBasicGroupChatToSupergroupChat extends TdFunction {
  Type get returnType => Chat;

  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
  };

  UpgradeBasicGroupChatToSupergroupChat(
    this.chatId,
  );
}

@reflector
class JoinChatByInviteLink extends TdFunction {
  Type get returnType => Chat;

  final String inviteLink;

  @override
  Map<String, dynamic> get params => {
    "invite_link": inviteLink,
  };

  JoinChatByInviteLink(
    this.inviteLink,
  );
}

@reflector
class GetMessage extends TdFunction {
  Type get returnType => Message;

  final int chatId;
  final int messageId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
  };

  GetMessage(
    this.chatId,
    this.messageId,
  );
}

@reflector
class GetMessageLocally extends TdFunction {
  Type get returnType => Message;

  final int chatId;
  final int messageId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
  };

  GetMessageLocally(
    this.chatId,
    this.messageId,
  );
}

@reflector
class GetRepliedMessage extends TdFunction {
  Type get returnType => Message;

  final int chatId;
  final int messageId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
  };

  GetRepliedMessage(
    this.chatId,
    this.messageId,
  );
}

@reflector
class GetChatPinnedMessage extends TdFunction {
  Type get returnType => Message;

  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
  };

  GetChatPinnedMessage(
    this.chatId,
  );
}

@reflector
class GetChatMessageByDate extends TdFunction {
  Type get returnType => Message;

  final int chatId;
  final int date;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "date": date,
  };

  GetChatMessageByDate(
    this.chatId,
    this.date,
  );
}

@reflector
class SendMessage extends TdFunction {
  Type get returnType => Message;

  final int chatId;
  final int replyToMessageId;
  final bool disableNotification;
  final bool fromBackground;
  final ReplyMarkup replyMarkup;
  final InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "reply_to_message_id": replyToMessageId,
    "disable_notification": disableNotification,
    "from_background": fromBackground,
    "reply_markup": replyMarkup,
    "input_message_content": inputMessageContent,
  };

  SendMessage(
    this.chatId,
    this.replyToMessageId,
    this.disableNotification,
    this.fromBackground,
    this.replyMarkup,
    this.inputMessageContent,
  );
}

@reflector
class SendBotStartMessage extends TdFunction {
  Type get returnType => Message;

  final int botUserId;
  final int chatId;
  final String parameter;

  @override
  Map<String, dynamic> get params => {
    "bot_user_id": botUserId,
    "chat_id": chatId,
    "parameter": parameter,
  };

  SendBotStartMessage(
    this.botUserId,
    this.chatId,
    this.parameter,
  );
}

@reflector
class SendInlineQueryResultMessage extends TdFunction {
  Type get returnType => Message;

  final int chatId;
  final int replyToMessageId;
  final bool disableNotification;
  final bool fromBackground;
  final int queryId;
  final String resultId;
  final bool hideViaBot;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "reply_to_message_id": replyToMessageId,
    "disable_notification": disableNotification,
    "from_background": fromBackground,
    "query_id": queryId,
    "result_id": resultId,
    "hide_via_bot": hideViaBot,
  };

  SendInlineQueryResultMessage(
    this.chatId,
    this.replyToMessageId,
    this.disableNotification,
    this.fromBackground,
    this.queryId,
    this.resultId,
    this.hideViaBot,
  );
}

@reflector
class SendChatSetTtlMessage extends TdFunction {
  Type get returnType => Message;

  final int chatId;
  final int ttl;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "ttl": ttl,
  };

  SendChatSetTtlMessage(
    this.chatId,
    this.ttl,
  );
}

@reflector
class AddLocalMessage extends TdFunction {
  Type get returnType => Message;

  final int chatId;
  final int senderUserId;
  final int replyToMessageId;
  final bool disableNotification;
  final InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "sender_user_id": senderUserId,
    "reply_to_message_id": replyToMessageId,
    "disable_notification": disableNotification,
    "input_message_content": inputMessageContent,
  };

  AddLocalMessage(
    this.chatId,
    this.senderUserId,
    this.replyToMessageId,
    this.disableNotification,
    this.inputMessageContent,
  );
}

@reflector
class EditMessageText extends TdFunction {
  Type get returnType => Message;

  final int chatId;
  final int messageId;
  final ReplyMarkup replyMarkup;
  final InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
    "reply_markup": replyMarkup,
    "input_message_content": inputMessageContent,
  };

  EditMessageText(
    this.chatId,
    this.messageId,
    this.replyMarkup,
    this.inputMessageContent,
  );
}

@reflector
class EditMessageLiveLocation extends TdFunction {
  Type get returnType => Message;

  final int chatId;
  final int messageId;
  final ReplyMarkup replyMarkup;
  final Location location;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
    "reply_markup": replyMarkup,
    "location": location,
  };

  EditMessageLiveLocation(
    this.chatId,
    this.messageId,
    this.replyMarkup,
    this.location,
  );
}

@reflector
class EditMessageMedia extends TdFunction {
  Type get returnType => Message;

  final int chatId;
  final int messageId;
  final ReplyMarkup replyMarkup;
  final InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
    "reply_markup": replyMarkup,
    "input_message_content": inputMessageContent,
  };

  EditMessageMedia(
    this.chatId,
    this.messageId,
    this.replyMarkup,
    this.inputMessageContent,
  );
}

@reflector
class EditMessageCaption extends TdFunction {
  Type get returnType => Message;

  final int chatId;
  final int messageId;
  final ReplyMarkup replyMarkup;
  final FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
    "reply_markup": replyMarkup,
    "caption": caption,
  };

  EditMessageCaption(
    this.chatId,
    this.messageId,
    this.replyMarkup,
    this.caption,
  );
}

@reflector
class EditMessageReplyMarkup extends TdFunction {
  Type get returnType => Message;

  final int chatId;
  final int messageId;
  final ReplyMarkup replyMarkup;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
    "reply_markup": replyMarkup,
  };

  EditMessageReplyMarkup(
    this.chatId,
    this.messageId,
    this.replyMarkup,
  );
}

@reflector
class SetGameScore extends TdFunction {
  Type get returnType => Message;

  final int chatId;
  final int messageId;
  final bool editMessage;
  final int userId;
  final int score;
  final bool force;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
    "edit_message": editMessage,
    "user_id": userId,
    "score": score,
    "force": force,
  };

  SetGameScore(
    this.chatId,
    this.messageId,
    this.editMessage,
    this.userId,
    this.score,
    this.force,
  );
}

@reflector
class GetMessages extends TdFunction {
  Type get returnType => Messages;

  final int chatId;
  final List<int> messageIds;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_ids": messageIds,
  };

  GetMessages(
    this.chatId,
    this.messageIds,
  );
}

@reflector
class GetChatHistory extends TdFunction {
  Type get returnType => Messages;

  final int chatId;
  final int fromMessageId;
  final int offset;
  final int limit;
  final bool onlyLocal;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "from_message_id": fromMessageId,
    "offset": offset,
    "limit": limit,
    "only_local": onlyLocal,
  };

  GetChatHistory(
    this.chatId,
    this.fromMessageId,
    this.offset,
    this.limit,
    this.onlyLocal,
  );
}

@reflector
class SearchChatMessages extends TdFunction {
  Type get returnType => Messages;

  final int chatId;
  final String query;
  final int senderUserId;
  final int fromMessageId;
  final int offset;
  final int limit;
  final SearchMessagesFilter filter;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "query": query,
    "sender_user_id": senderUserId,
    "from_message_id": fromMessageId,
    "offset": offset,
    "limit": limit,
    "filter": filter,
  };

  SearchChatMessages(
    this.chatId,
    this.query,
    this.senderUserId,
    this.fromMessageId,
    this.offset,
    this.limit,
    this.filter,
  );
}

@reflector
class SearchMessages extends TdFunction {
  Type get returnType => Messages;

  final String query;
  final int offsetDate;
  final int offsetChatId;
  final int offsetMessageId;
  final int limit;

  @override
  Map<String, dynamic> get params => {
    "query": query,
    "offset_date": offsetDate,
    "offset_chat_id": offsetChatId,
    "offset_message_id": offsetMessageId,
    "limit": limit,
  };

  SearchMessages(
    this.query,
    this.offsetDate,
    this.offsetChatId,
    this.offsetMessageId,
    this.limit,
  );
}

@reflector
class SearchCallMessages extends TdFunction {
  Type get returnType => Messages;

  final int fromMessageId;
  final int limit;
  final bool onlyMissed;

  @override
  Map<String, dynamic> get params => {
    "from_message_id": fromMessageId,
    "limit": limit,
    "only_missed": onlyMissed,
  };

  SearchCallMessages(
    this.fromMessageId,
    this.limit,
    this.onlyMissed,
  );
}

@reflector
class SearchChatRecentLocationMessages extends TdFunction {
  Type get returnType => Messages;

  final int chatId;
  final int limit;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "limit": limit,
  };

  SearchChatRecentLocationMessages(
    this.chatId,
    this.limit,
  );
}

@reflector
class GetActiveLiveLocationMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  Map<String, dynamic> get params => {};

  GetActiveLiveLocationMessages();
}

@reflector
class SendMessageAlbum extends TdFunction {
  Type get returnType => Messages;

  final int chatId;
  final int replyToMessageId;
  final bool disableNotification;
  final bool fromBackground;
  final List<InputMessageContent> inputMessageContents;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "reply_to_message_id": replyToMessageId,
    "disable_notification": disableNotification,
    "from_background": fromBackground,
    "input_message_contents": inputMessageContents,
  };

  SendMessageAlbum(
    this.chatId,
    this.replyToMessageId,
    this.disableNotification,
    this.fromBackground,
    this.inputMessageContents,
  );
}

@reflector
class ForwardMessages extends TdFunction {
  Type get returnType => Messages;

  final int chatId;
  final int fromChatId;
  final List<int> messageIds;
  final bool disableNotification;
  final bool fromBackground;
  final bool asAlbum;
  final bool sendCopy;
  final bool removeCaption;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "from_chat_id": fromChatId,
    "message_ids": messageIds,
    "disable_notification": disableNotification,
    "from_background": fromBackground,
    "as_album": asAlbum,
    "send_copy": sendCopy,
    "remove_caption": removeCaption,
  };

  ForwardMessages(
    this.chatId,
    this.fromChatId,
    this.messageIds,
    this.disableNotification,
    this.fromBackground,
    this.asAlbum,
    this.sendCopy,
    this.removeCaption,
  );
}

@reflector
class ResendMessages extends TdFunction {
  Type get returnType => Messages;

  final int chatId;
  final List<int> messageIds;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_ids": messageIds,
  };

  ResendMessages(
    this.chatId,
    this.messageIds,
  );
}

@reflector
class GetFile extends TdFunction {
  Type get returnType => File;

  final int fileId;

  @override
  Map<String, dynamic> get params => {
    "file_id": fileId,
  };

  GetFile(
    this.fileId,
  );
}

@reflector
class GetRemoteFile extends TdFunction {
  Type get returnType => File;

  final String remoteFileId;
  final FileType fileType;

  @override
  Map<String, dynamic> get params => {
    "remote_file_id": remoteFileId,
    "file_type": fileType,
  };

  GetRemoteFile(
    this.remoteFileId,
    this.fileType,
  );
}

@reflector
class DownloadFile extends TdFunction {
  Type get returnType => File;

  final int fileId;
  final int priority;
  final int offset;
  final int limit;
  final bool synchronous;

  @override
  Map<String, dynamic> get params => {
    "file_id": fileId,
    "priority": priority,
    "offset": offset,
    "limit": limit,
    "synchronous": synchronous,
  };

  DownloadFile(
    this.fileId,
    this.priority,
    this.offset,
    this.limit,
    this.synchronous,
  );
}

@reflector
class UploadFile extends TdFunction {
  Type get returnType => File;

  final InputFile file;
  final FileType fileType;
  final int priority;

  @override
  Map<String, dynamic> get params => {
    "file": file,
    "file_type": fileType,
    "priority": priority,
  };

  UploadFile(
    this.file,
    this.fileType,
    this.priority,
  );
}

@reflector
class UploadStickerFile extends TdFunction {
  Type get returnType => File;

  final int userId;
  final InputFile pngSticker;

  @override
  Map<String, dynamic> get params => {
    "user_id": userId,
    "png_sticker": pngSticker,
  };

  UploadStickerFile(
    this.userId,
    this.pngSticker,
  );
}

@reflector
class GetMapThumbnailFile extends TdFunction {
  Type get returnType => File;

  final Location location;
  final int zoom;
  final int width;
  final int height;
  final int scale;
  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "location": location,
    "zoom": zoom,
    "width": width,
    "height": height,
    "scale": scale,
    "chat_id": chatId,
  };

  GetMapThumbnailFile(
    this.location,
    this.zoom,
    this.width,
    this.height,
    this.scale,
    this.chatId,
  );
}

@reflector
class GetChats extends TdFunction {
  Type get returnType => Chats;

  final int offsetOrder;
  final int offsetChatId;
  final int limit;

  @override
  Map<String, dynamic> get params => {
    "offset_order": offsetOrder,
    "offset_chat_id": offsetChatId,
    "limit": limit,
  };

  GetChats(
    this.offsetOrder,
    this.offsetChatId,
    this.limit,
  );
}

@reflector
class SearchPublicChats extends TdFunction {
  Type get returnType => Chats;

  final String query;

  @override
  Map<String, dynamic> get params => {
    "query": query,
  };

  SearchPublicChats(
    this.query,
  );
}

@reflector
class SearchChats extends TdFunction {
  Type get returnType => Chats;

  final String query;
  final int limit;

  @override
  Map<String, dynamic> get params => {
    "query": query,
    "limit": limit,
  };

  SearchChats(
    this.query,
    this.limit,
  );
}

@reflector
class SearchChatsOnServer extends TdFunction {
  Type get returnType => Chats;

  final String query;
  final int limit;

  @override
  Map<String, dynamic> get params => {
    "query": query,
    "limit": limit,
  };

  SearchChatsOnServer(
    this.query,
    this.limit,
  );
}

@reflector
class GetTopChats extends TdFunction {
  Type get returnType => Chats;

  final TopChatCategory category;
  final int limit;

  @override
  Map<String, dynamic> get params => {
    "category": category,
    "limit": limit,
  };

  GetTopChats(
    this.category,
    this.limit,
  );
}

@reflector
class GetCreatedPublicChats extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  Map<String, dynamic> get params => {};

  GetCreatedPublicChats();
}

@reflector
class GetGroupsInCommon extends TdFunction {
  Type get returnType => Chats;

  final int userId;
  final int offsetChatId;
  final int limit;

  @override
  Map<String, dynamic> get params => {
    "user_id": userId,
    "offset_chat_id": offsetChatId,
    "limit": limit,
  };

  GetGroupsInCommon(
    this.userId,
    this.offsetChatId,
    this.limit,
  );
}

@reflector
class GetChatNotificationSettingsExceptions extends TdFunction {
  Type get returnType => Chats;

  final NotificationSettingsScope scope;
  final bool compareSound;

  @override
  Map<String, dynamic> get params => {
    "scope": scope,
    "compare_sound": compareSound,
  };

  GetChatNotificationSettingsExceptions(
    this.scope,
    this.compareSound,
  );
}

@reflector
class CheckChatUsername extends TdFunction {
  Type get returnType => CheckChatUsernameResult;

  final int chatId;
  final String username;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "username": username,
  };

  CheckChatUsername(
    this.chatId,
    this.username,
  );
}

@reflector
class SearchSecretMessages extends TdFunction {
  Type get returnType => FoundMessages;

  final int chatId;
  final String query;
  final int fromSearchId;
  final int limit;
  final SearchMessagesFilter filter;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "query": query,
    "from_search_id": fromSearchId,
    "limit": limit,
    "filter": filter,
  };

  SearchSecretMessages(
    this.chatId,
    this.query,
    this.fromSearchId,
    this.limit,
    this.filter,
  );
}

@reflector
class GetChatMessageCount extends TdFunction {
  Type get returnType => Count;

  final int chatId;
  final SearchMessagesFilter filter;
  final bool returnLocal;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "filter": filter,
    "return_local": returnLocal,
  };

  GetChatMessageCount(
    this.chatId,
    this.filter,
    this.returnLocal,
  );
}

@reflector
class GetFileDownloadedPrefixSize extends TdFunction {
  Type get returnType => Count;

  final int fileId;
  final int offset;

  @override
  Map<String, dynamic> get params => {
    "file_id": fileId,
    "offset": offset,
  };

  GetFileDownloadedPrefixSize(
    this.fileId,
    this.offset,
  );
}

@reflector
class GetImportedContactCount extends TdFunction {
  @override
  Type get returnType => Count;

  @override
  Map<String, dynamic> get params => {};

  GetImportedContactCount();
}

@reflector
class GetPublicMessageLink extends TdFunction {
  Type get returnType => PublicMessageLink;

  final int chatId;
  final int messageId;
  final bool forAlbum;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
    "for_album": forAlbum,
  };

  GetPublicMessageLink(
    this.chatId,
    this.messageId,
    this.forAlbum,
  );
}

@reflector
class GetMessageLink extends TdFunction {
  Type get returnType => HttpUrl;

  final int chatId;
  final int messageId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
  };

  GetMessageLink(
    this.chatId,
    this.messageId,
  );
}

@reflector
class GetEmojiSuggestionsUrl extends TdFunction {
  Type get returnType => HttpUrl;

  final String languageCode;

  @override
  Map<String, dynamic> get params => {
    "language_code": languageCode,
  };

  GetEmojiSuggestionsUrl(
    this.languageCode,
  );
}

@reflector
class GetBackgroundUrl extends TdFunction {
  Type get returnType => HttpUrl;

  final String name;
  final BackgroundType type;

  @override
  Map<String, dynamic> get params => {
    "name": name,
    "type": type,
  };

  GetBackgroundUrl(
    this.name,
    this.type,
  );
}

@reflector
class GetChatStatisticsUrl extends TdFunction {
  Type get returnType => HttpUrl;

  final int chatId;
  final String parameters;
  final bool isDark;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "parameters": parameters,
    "is_dark": isDark,
  };

  GetChatStatisticsUrl(
    this.chatId,
    this.parameters,
    this.isDark,
  );
}

@reflector
class GetMessageLinkInfo extends TdFunction {
  Type get returnType => MessageLinkInfo;

  final String url;

  @override
  Map<String, dynamic> get params => {
    "url": url,
  };

  GetMessageLinkInfo(
    this.url,
  );
}

@reflector
class GetTextEntities extends TdFunction {
  Type get returnType => TextEntities;

  final String text;

  @override
  Map<String, dynamic> get params => {
    "text": text,
  };

  GetTextEntities(
    this.text,
  );
}

@reflector
class ParseTextEntities extends TdFunction {
  Type get returnType => FormattedText;

  final String text;
  final TextParseMode parseMode;

  @override
  Map<String, dynamic> get params => {
    "text": text,
    "parse_mode": parseMode,
  };

  ParseTextEntities(
    this.text,
    this.parseMode,
  );
}

@reflector
class GetFileMimeType extends TdFunction {
  Type get returnType => Text;

  final String fileName;

  @override
  Map<String, dynamic> get params => {
    "file_name": fileName,
  };

  GetFileMimeType(
    this.fileName,
  );
}

@reflector
class GetFileExtension extends TdFunction {
  Type get returnType => Text;

  final String mimeType;

  @override
  Map<String, dynamic> get params => {
    "mime_type": mimeType,
  };

  GetFileExtension(
    this.mimeType,
  );
}

@reflector
class CleanFileName extends TdFunction {
  Type get returnType => Text;

  final String fileName;

  @override
  Map<String, dynamic> get params => {
    "file_name": fileName,
  };

  CleanFileName(
    this.fileName,
  );
}

@reflector
class GetJsonString extends TdFunction {
  Type get returnType => Text;

  final JsonValue jsonValue;

  @override
  Map<String, dynamic> get params => {
    "json_value": jsonValue,
  };

  GetJsonString(
    this.jsonValue,
  );
}

@reflector
class GetPreferredCountryLanguage extends TdFunction {
  Type get returnType => Text;

  final String countryCode;

  @override
  Map<String, dynamic> get params => {
    "country_code": countryCode,
  };

  GetPreferredCountryLanguage(
    this.countryCode,
  );
}

@reflector
class GetCountryCode extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  Map<String, dynamic> get params => {};

  GetCountryCode();
}

@reflector
class GetInviteText extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  Map<String, dynamic> get params => {};

  GetInviteText();
}

@reflector
class GetProxyLink extends TdFunction {
  Type get returnType => Text;

  final int proxyId;

  @override
  Map<String, dynamic> get params => {
    "proxy_id": proxyId,
  };

  GetProxyLink(
    this.proxyId,
  );
}

@reflector
class GetLanguagePackString extends TdFunction {
  Type get returnType => LanguagePackStringValue;

  final String languagePackDatabasePath;
  final String localizationTarget;
  final String languagePackId;
  final String key;

  @override
  Map<String, dynamic> get params => {
    "language_pack_database_path": languagePackDatabasePath,
    "localization_target": localizationTarget,
    "language_pack_id": languagePackId,
    "key": key,
  };

  GetLanguagePackString(
    this.languagePackDatabasePath,
    this.localizationTarget,
    this.languagePackId,
    this.key,
  );
}

@reflector
class GetJsonValue extends TdFunction {
  Type get returnType => JsonValue;

  final String json;

  @override
  Map<String, dynamic> get params => {
    "json": json,
  };

  GetJsonValue(
    this.json,
  );
}

@reflector
class GetApplicationConfig extends TdFunction {
  @override
  Type get returnType => JsonValue;

  @override
  Map<String, dynamic> get params => {};

  GetApplicationConfig();
}

@reflector
class GetInlineQueryResults extends TdFunction {
  Type get returnType => InlineQueryResults;

  final int botUserId;
  final int chatId;
  final Location userLocation;
  final String query;
  final String offset;

  @override
  Map<String, dynamic> get params => {
    "bot_user_id": botUserId,
    "chat_id": chatId,
    "user_location": userLocation,
    "query": query,
    "offset": offset,
  };

  GetInlineQueryResults(
    this.botUserId,
    this.chatId,
    this.userLocation,
    this.query,
    this.offset,
  );
}

@reflector
class GetCallbackQueryAnswer extends TdFunction {
  Type get returnType => CallbackQueryAnswer;

  final int chatId;
  final int messageId;
  final CallbackQueryPayload payload;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
    "payload": payload,
  };

  GetCallbackQueryAnswer(
    this.chatId,
    this.messageId,
    this.payload,
  );
}

@reflector
class GetGameHighScores extends TdFunction {
  Type get returnType => GameHighScores;

  final int chatId;
  final int messageId;
  final int userId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
    "user_id": userId,
  };

  GetGameHighScores(
    this.chatId,
    this.messageId,
    this.userId,
  );
}

@reflector
class GetInlineGameHighScores extends TdFunction {
  Type get returnType => GameHighScores;

  final String inlineMessageId;
  final int userId;

  @override
  Map<String, dynamic> get params => {
    "inline_message_id": inlineMessageId,
    "user_id": userId,
  };

  GetInlineGameHighScores(
    this.inlineMessageId,
    this.userId,
  );
}

@reflector
class GetChatMember extends TdFunction {
  Type get returnType => ChatMember;

  final int chatId;
  final int userId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "user_id": userId,
  };

  GetChatMember(
    this.chatId,
    this.userId,
  );
}

@reflector
class SearchChatMembers extends TdFunction {
  Type get returnType => ChatMembers;

  final int chatId;
  final String query;
  final int limit;
  final ChatMembersFilter filter;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "query": query,
    "limit": limit,
    "filter": filter,
  };

  SearchChatMembers(
    this.chatId,
    this.query,
    this.limit,
    this.filter,
  );
}

@reflector
class GetSupergroupMembers extends TdFunction {
  Type get returnType => ChatMembers;

  final int supergroupId;
  final SupergroupMembersFilter filter;
  final int offset;
  final int limit;

  @override
  Map<String, dynamic> get params => {
    "supergroup_id": supergroupId,
    "filter": filter,
    "offset": offset,
    "limit": limit,
  };

  GetSupergroupMembers(
    this.supergroupId,
    this.filter,
    this.offset,
    this.limit,
  );
}

@reflector
class GetChatAdministrators extends TdFunction {
  Type get returnType => Users;

  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
  };

  GetChatAdministrators(
    this.chatId,
  );
}

@reflector
class GetBlockedUsers extends TdFunction {
  Type get returnType => Users;

  final int offset;
  final int limit;

  @override
  Map<String, dynamic> get params => {
    "offset": offset,
    "limit": limit,
  };

  GetBlockedUsers(
    this.offset,
    this.limit,
  );
}

@reflector
class GetContacts extends TdFunction {
  @override
  Type get returnType => Users;

  @override
  Map<String, dynamic> get params => {};

  GetContacts();
}

@reflector
class SearchContacts extends TdFunction {
  Type get returnType => Users;

  final String query;
  final int limit;

  @override
  Map<String, dynamic> get params => {
    "query": query,
    "limit": limit,
  };

  SearchContacts(
    this.query,
    this.limit,
  );
}

@reflector
class GetRecentInlineBots extends TdFunction {
  @override
  Type get returnType => Users;

  @override
  Map<String, dynamic> get params => {};

  GetRecentInlineBots();
}

@reflector
class GetScopeNotificationSettings extends TdFunction {
  Type get returnType => ScopeNotificationSettings;

  final NotificationSettingsScope scope;

  @override
  Map<String, dynamic> get params => {
    "scope": scope,
  };

  GetScopeNotificationSettings(
    this.scope,
  );
}

@reflector
class ReadFilePart extends TdFunction {
  Type get returnType => FilePart;

  final int fileId;
  final int offset;
  final int count;

  @override
  Map<String, dynamic> get params => {
    "file_id": fileId,
    "offset": offset,
    "count": count,
  };

  ReadFilePart(
    this.fileId,
    this.offset,
    this.count,
  );
}

@reflector
class GenerateChatInviteLink extends TdFunction {
  Type get returnType => ChatInviteLink;

  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
  };

  GenerateChatInviteLink(
    this.chatId,
  );
}

@reflector
class CheckChatInviteLink extends TdFunction {
  Type get returnType => ChatInviteLinkInfo;

  final String inviteLink;

  @override
  Map<String, dynamic> get params => {
    "invite_link": inviteLink,
  };

  CheckChatInviteLink(
    this.inviteLink,
  );
}

@reflector
class CreateCall extends TdFunction {
  Type get returnType => CallId;

  final int userId;
  final CallProtocol protocol;

  @override
  Map<String, dynamic> get params => {
    "user_id": userId,
    "protocol": protocol,
  };

  CreateCall(
    this.userId,
    this.protocol,
  );
}

@reflector
class ImportContacts extends TdFunction {
  Type get returnType => ImportedContacts;

  final List<Contact> contacts;

  @override
  Map<String, dynamic> get params => {
    "contacts": contacts,
  };

  ImportContacts(
    this.contacts,
  );
}

@reflector
class ChangeImportedContacts extends TdFunction {
  Type get returnType => ImportedContacts;

  final List<Contact> contacts;

  @override
  Map<String, dynamic> get params => {
    "contacts": contacts,
  };

  ChangeImportedContacts(
    this.contacts,
  );
}

@reflector
class GetUserProfilePhotos extends TdFunction {
  Type get returnType => UserProfilePhotos;

  final int userId;
  final int offset;
  final int limit;

  @override
  Map<String, dynamic> get params => {
    "user_id": userId,
    "offset": offset,
    "limit": limit,
  };

  GetUserProfilePhotos(
    this.userId,
    this.offset,
    this.limit,
  );
}

@reflector
class GetStickers extends TdFunction {
  Type get returnType => Stickers;

  final String emoji;
  final int limit;

  @override
  Map<String, dynamic> get params => {
    "emoji": emoji,
    "limit": limit,
  };

  GetStickers(
    this.emoji,
    this.limit,
  );
}

@reflector
class SearchStickers extends TdFunction {
  Type get returnType => Stickers;

  final String emoji;
  final int limit;

  @override
  Map<String, dynamic> get params => {
    "emoji": emoji,
    "limit": limit,
  };

  SearchStickers(
    this.emoji,
    this.limit,
  );
}

@reflector
class GetRecentStickers extends TdFunction {
  Type get returnType => Stickers;

  final bool isAttached;

  @override
  Map<String, dynamic> get params => {
    "is_attached": isAttached,
  };

  GetRecentStickers(
    this.isAttached,
  );
}

@reflector
class AddRecentSticker extends TdFunction {
  Type get returnType => Stickers;

  final bool isAttached;
  final InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    "is_attached": isAttached,
    "sticker": sticker,
  };

  AddRecentSticker(
    this.isAttached,
    this.sticker,
  );
}

@reflector
class GetFavoriteStickers extends TdFunction {
  @override
  Type get returnType => Stickers;

  @override
  Map<String, dynamic> get params => {};

  GetFavoriteStickers();
}

@reflector
class GetInstalledStickerSets extends TdFunction {
  Type get returnType => StickerSets;

  final bool isMasks;

  @override
  Map<String, dynamic> get params => {
    "is_masks": isMasks,
  };

  GetInstalledStickerSets(
    this.isMasks,
  );
}

@reflector
class GetArchivedStickerSets extends TdFunction {
  Type get returnType => StickerSets;

  final bool isMasks;
  final int offsetStickerSetId;
  final int limit;

  @override
  Map<String, dynamic> get params => {
    "is_masks": isMasks,
    "offset_sticker_set_id": offsetStickerSetId,
    "limit": limit,
  };

  GetArchivedStickerSets(
    this.isMasks,
    this.offsetStickerSetId,
    this.limit,
  );
}

@reflector
class GetTrendingStickerSets extends TdFunction {
  @override
  Type get returnType => StickerSets;

  @override
  Map<String, dynamic> get params => {};

  GetTrendingStickerSets();
}

@reflector
class GetAttachedStickerSets extends TdFunction {
  Type get returnType => StickerSets;

  final int fileId;

  @override
  Map<String, dynamic> get params => {
    "file_id": fileId,
  };

  GetAttachedStickerSets(
    this.fileId,
  );
}

@reflector
class SearchInstalledStickerSets extends TdFunction {
  Type get returnType => StickerSets;

  final bool isMasks;
  final String query;
  final int limit;

  @override
  Map<String, dynamic> get params => {
    "is_masks": isMasks,
    "query": query,
    "limit": limit,
  };

  SearchInstalledStickerSets(
    this.isMasks,
    this.query,
    this.limit,
  );
}

@reflector
class SearchStickerSets extends TdFunction {
  Type get returnType => StickerSets;

  final String query;

  @override
  Map<String, dynamic> get params => {
    "query": query,
  };

  SearchStickerSets(
    this.query,
  );
}

@reflector
class GetStickerSet extends TdFunction {
  Type get returnType => StickerSet;

  final int setId;

  @override
  Map<String, dynamic> get params => {
    "set_id": setId,
  };

  GetStickerSet(
    this.setId,
  );
}

@reflector
class SearchStickerSet extends TdFunction {
  Type get returnType => StickerSet;

  final String name;

  @override
  Map<String, dynamic> get params => {
    "name": name,
  };

  SearchStickerSet(
    this.name,
  );
}

@reflector
class CreateNewStickerSet extends TdFunction {
  Type get returnType => StickerSet;

  final int userId;
  final String title;
  final String name;
  final bool isMasks;
  final List<InputSticker> stickers;

  @override
  Map<String, dynamic> get params => {
    "user_id": userId,
    "title": title,
    "name": name,
    "is_masks": isMasks,
    "stickers": stickers,
  };

  CreateNewStickerSet(
    this.userId,
    this.title,
    this.name,
    this.isMasks,
    this.stickers,
  );
}

@reflector
class AddStickerToSet extends TdFunction {
  Type get returnType => StickerSet;

  final int userId;
  final String name;
  final InputSticker sticker;

  @override
  Map<String, dynamic> get params => {
    "user_id": userId,
    "name": name,
    "sticker": sticker,
  };

  AddStickerToSet(
    this.userId,
    this.name,
    this.sticker,
  );
}

@reflector
class GetStickerEmojis extends TdFunction {
  Type get returnType => Emojis;

  final InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    "sticker": sticker,
  };

  GetStickerEmojis(
    this.sticker,
  );
}

@reflector
class SearchEmojis extends TdFunction {
  Type get returnType => Emojis;

  final String text;
  final bool exactMatch;

  @override
  Map<String, dynamic> get params => {
    "text": text,
    "exact_match": exactMatch,
  };

  SearchEmojis(
    this.text,
    this.exactMatch,
  );
}

@reflector
class GetSavedAnimations extends TdFunction {
  @override
  Type get returnType => Animations;

  @override
  Map<String, dynamic> get params => {};

  GetSavedAnimations();
}

@reflector
class SearchHashtags extends TdFunction {
  Type get returnType => Hashtags;

  final String prefix;
  final int limit;

  @override
  Map<String, dynamic> get params => {
    "prefix": prefix,
    "limit": limit,
  };

  SearchHashtags(
    this.prefix,
    this.limit,
  );
}

@reflector
class GetWebPagePreview extends TdFunction {
  Type get returnType => WebPage;

  final FormattedText text;

  @override
  Map<String, dynamic> get params => {
    "text": text,
  };

  GetWebPagePreview(
    this.text,
  );
}

@reflector
class GetWebPageInstantView extends TdFunction {
  Type get returnType => WebPageInstantView;

  final String url;
  final bool forceFull;

  @override
  Map<String, dynamic> get params => {
    "url": url,
    "force_full": forceFull,
  };

  GetWebPageInstantView(
    this.url,
    this.forceFull,
  );
}

@reflector
class ChangePhoneNumber extends TdFunction {
  Type get returnType => AuthenticationCodeInfo;

  final String phoneNumber;
  final PhoneNumberAuthenticationSettings settings;

  @override
  Map<String, dynamic> get params => {
    "phone_number": phoneNumber,
    "settings": settings,
  };

  ChangePhoneNumber(
    this.phoneNumber,
    this.settings,
  );
}

@reflector
class ResendChangePhoneNumberCode extends TdFunction {
  @override
  Type get returnType => AuthenticationCodeInfo;

  @override
  Map<String, dynamic> get params => {};

  ResendChangePhoneNumberCode();
}

@reflector
class SendPhoneNumberVerificationCode extends TdFunction {
  Type get returnType => AuthenticationCodeInfo;

  final String phoneNumber;
  final PhoneNumberAuthenticationSettings settings;

  @override
  Map<String, dynamic> get params => {
    "phone_number": phoneNumber,
    "settings": settings,
  };

  SendPhoneNumberVerificationCode(
    this.phoneNumber,
    this.settings,
  );
}

@reflector
class ResendPhoneNumberVerificationCode extends TdFunction {
  @override
  Type get returnType => AuthenticationCodeInfo;

  @override
  Map<String, dynamic> get params => {};

  ResendPhoneNumberVerificationCode();
}

@reflector
class SendPhoneNumberConfirmationCode extends TdFunction {
  Type get returnType => AuthenticationCodeInfo;

  final String hash;
  final String phoneNumber;
  final PhoneNumberAuthenticationSettings settings;

  @override
  Map<String, dynamic> get params => {
    "hash": hash,
    "phone_number": phoneNumber,
    "settings": settings,
  };

  SendPhoneNumberConfirmationCode(
    this.hash,
    this.phoneNumber,
    this.settings,
  );
}

@reflector
class ResendPhoneNumberConfirmationCode extends TdFunction {
  @override
  Type get returnType => AuthenticationCodeInfo;

  @override
  Map<String, dynamic> get params => {};

  ResendPhoneNumberConfirmationCode();
}

@reflector
class GetActiveSessions extends TdFunction {
  @override
  Type get returnType => Sessions;

  @override
  Map<String, dynamic> get params => {};

  GetActiveSessions();
}

@reflector
class GetConnectedWebsites extends TdFunction {
  @override
  Type get returnType => ConnectedWebsites;

  @override
  Map<String, dynamic> get params => {};

  GetConnectedWebsites();
}

@reflector
class GetChatEventLog extends TdFunction {
  Type get returnType => ChatEvents;

  final int chatId;
  final String query;
  final int fromEventId;
  final int limit;
  final ChatEventLogFilters filters;
  final List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "query": query,
    "from_event_id": fromEventId,
    "limit": limit,
    "filters": filters,
    "user_ids": userIds,
  };

  GetChatEventLog(
    this.chatId,
    this.query,
    this.fromEventId,
    this.limit,
    this.filters,
    this.userIds,
  );
}

@reflector
class GetPaymentForm extends TdFunction {
  Type get returnType => PaymentForm;

  final int chatId;
  final int messageId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
  };

  GetPaymentForm(
    this.chatId,
    this.messageId,
  );
}

@reflector
class ValidateOrderInfo extends TdFunction {
  Type get returnType => ValidatedOrderInfo;

  final int chatId;
  final int messageId;
  final OrderInfo orderInfo;
  final bool allowSave;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
    "order_info": orderInfo,
    "allow_save": allowSave,
  };

  ValidateOrderInfo(
    this.chatId,
    this.messageId,
    this.orderInfo,
    this.allowSave,
  );
}

@reflector
class SendPaymentForm extends TdFunction {
  Type get returnType => PaymentResult;

  final int chatId;
  final int messageId;
  final String orderInfoId;
  final String shippingOptionId;
  final InputCredentials credentials;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
    "order_info_id": orderInfoId,
    "shipping_option_id": shippingOptionId,
    "credentials": credentials,
  };

  SendPaymentForm(
    this.chatId,
    this.messageId,
    this.orderInfoId,
    this.shippingOptionId,
    this.credentials,
  );
}

@reflector
class GetPaymentReceipt extends TdFunction {
  Type get returnType => PaymentReceipt;

  final int chatId;
  final int messageId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
    "message_id": messageId,
  };

  GetPaymentReceipt(
    this.chatId,
    this.messageId,
  );
}

@reflector
class GetSavedOrderInfo extends TdFunction {
  @override
  Type get returnType => OrderInfo;

  @override
  Map<String, dynamic> get params => {};

  GetSavedOrderInfo();
}

@reflector
class GetBackgrounds extends TdFunction {
  Type get returnType => Backgrounds;

  final bool forDarkTheme;

  @override
  Map<String, dynamic> get params => {
    "for_dark_theme": forDarkTheme,
  };

  GetBackgrounds(
    this.forDarkTheme,
  );
}

@reflector
class SearchBackground extends TdFunction {
  Type get returnType => Background;

  final String name;

  @override
  Map<String, dynamic> get params => {
    "name": name,
  };

  SearchBackground(
    this.name,
  );
}

@reflector
class SetBackground extends TdFunction {
  Type get returnType => Background;

  final InputBackground background;
  final BackgroundType type;
  final bool forDarkTheme;

  @override
  Map<String, dynamic> get params => {
    "background": background,
    "type": type,
    "for_dark_theme": forDarkTheme,
  };

  SetBackground(
    this.background,
    this.type,
    this.forDarkTheme,
  );
}

@reflector
class GetLocalizationTargetInfo extends TdFunction {
  Type get returnType => LocalizationTargetInfo;

  final bool onlyLocal;

  @override
  Map<String, dynamic> get params => {
    "only_local": onlyLocal,
  };

  GetLocalizationTargetInfo(
    this.onlyLocal,
  );
}

@reflector
class GetLanguagePackInfo extends TdFunction {
  Type get returnType => LanguagePackInfo;

  final String languagePackId;

  @override
  Map<String, dynamic> get params => {
    "language_pack_id": languagePackId,
  };

  GetLanguagePackInfo(
    this.languagePackId,
  );
}

@reflector
class GetLanguagePackStrings extends TdFunction {
  Type get returnType => LanguagePackStrings;

  final String languagePackId;
  final List<String> keys;

  @override
  Map<String, dynamic> get params => {
    "language_pack_id": languagePackId,
    "keys": keys,
  };

  GetLanguagePackStrings(
    this.languagePackId,
    this.keys,
  );
}

@reflector
class RegisterDevice extends TdFunction {
  Type get returnType => PushReceiverId;

  final DeviceToken deviceToken;
  final List<int> otherUserIds;

  @override
  Map<String, dynamic> get params => {
    "device_token": deviceToken,
    "other_user_ids": otherUserIds,
  };

  RegisterDevice(
    this.deviceToken,
    this.otherUserIds,
  );
}

@reflector
class GetPushReceiverId extends TdFunction {
  Type get returnType => PushReceiverId;

  final String payload;

  @override
  Map<String, dynamic> get params => {
    "payload": payload,
  };

  GetPushReceiverId(
    this.payload,
  );
}

@reflector
class GetRecentlyVisitedTMeUrls extends TdFunction {
  Type get returnType => TMeUrls;

  final String referrer;

  @override
  Map<String, dynamic> get params => {
    "referrer": referrer,
  };

  GetRecentlyVisitedTMeUrls(
    this.referrer,
  );
}

@reflector
class GetUserPrivacySettingRules extends TdFunction {
  Type get returnType => UserPrivacySettingRules;

  final UserPrivacySetting setting;

  @override
  Map<String, dynamic> get params => {
    "setting": setting,
  };

  GetUserPrivacySettingRules(
    this.setting,
  );
}

@reflector
class GetOption extends TdFunction {
  Type get returnType => OptionValue;

  final String name;

  @override
  Map<String, dynamic> get params => {
    "name": name,
  };

  GetOption(
    this.name,
  );
}

@reflector
class GetAccountTtl extends TdFunction {
  @override
  Type get returnType => AccountTtl;

  @override
  Map<String, dynamic> get params => {};

  GetAccountTtl();
}

@reflector
class GetChatReportSpamState extends TdFunction {
  Type get returnType => ChatReportSpamState;

  final int chatId;

  @override
  Map<String, dynamic> get params => {
    "chat_id": chatId,
  };

  GetChatReportSpamState(
    this.chatId,
  );
}

@reflector
class GetStorageStatistics extends TdFunction {
  Type get returnType => StorageStatistics;

  final int chatLimit;

  @override
  Map<String, dynamic> get params => {
    "chat_limit": chatLimit,
  };

  GetStorageStatistics(
    this.chatLimit,
  );
}

@reflector
class OptimizeStorage extends TdFunction {
  Type get returnType => StorageStatistics;

  final int size;
  final int ttl;
  final int count;
  final int immunityDelay;
  final List<FileType> fileTypes;
  final List<int> chatIds;
  final List<int> excludeChatIds;
  final int chatLimit;

  @override
  Map<String, dynamic> get params => {
    "size": size,
    "ttl": ttl,
    "count": count,
    "immunity_delay": immunityDelay,
    "file_types": fileTypes,
    "chat_ids": chatIds,
    "exclude_chat_ids": excludeChatIds,
    "chat_limit": chatLimit,
  };

  OptimizeStorage(
    this.size,
    this.ttl,
    this.count,
    this.immunityDelay,
    this.fileTypes,
    this.chatIds,
    this.excludeChatIds,
    this.chatLimit,
  );
}

@reflector
class GetStorageStatisticsFast extends TdFunction {
  @override
  Type get returnType => StorageStatisticsFast;

  @override
  Map<String, dynamic> get params => {};

  GetStorageStatisticsFast();
}

@reflector
class GetDatabaseStatistics extends TdFunction {
  @override
  Type get returnType => DatabaseStatistics;

  @override
  Map<String, dynamic> get params => {};

  GetDatabaseStatistics();
}

@reflector
class GetNetworkStatistics extends TdFunction {
  Type get returnType => NetworkStatistics;

  final bool onlyCurrent;

  @override
  Map<String, dynamic> get params => {
    "only_current": onlyCurrent,
  };

  GetNetworkStatistics(
    this.onlyCurrent,
  );
}

@reflector
class GetAutoDownloadSettingsPresets extends TdFunction {
  @override
  Type get returnType => AutoDownloadSettingsPresets;

  @override
  Map<String, dynamic> get params => {};

  GetAutoDownloadSettingsPresets();
}

@reflector
class GetPassportElement extends TdFunction {
  Type get returnType => PassportElement;

  final PassportElementType type;
  final String password;

  @override
  Map<String, dynamic> get params => {
    "type": type,
    "password": password,
  };

  GetPassportElement(
    this.type,
    this.password,
  );
}

@reflector
class SetPassportElement extends TdFunction {
  Type get returnType => PassportElement;

  final InputPassportElement element;
  final String password;

  @override
  Map<String, dynamic> get params => {
    "element": element,
    "password": password,
  };

  SetPassportElement(
    this.element,
    this.password,
  );
}

@reflector
class GetAllPassportElements extends TdFunction {
  Type get returnType => PassportElements;

  final String password;

  @override
  Map<String, dynamic> get params => {
    "password": password,
  };

  GetAllPassportElements(
    this.password,
  );
}

@reflector
class GetPassportAuthorizationForm extends TdFunction {
  Type get returnType => PassportAuthorizationForm;

  final int botUserId;
  final String scope;
  final String publicKey;
  final String nonce;

  @override
  Map<String, dynamic> get params => {
    "bot_user_id": botUserId,
    "scope": scope,
    "public_key": publicKey,
    "nonce": nonce,
  };

  GetPassportAuthorizationForm(
    this.botUserId,
    this.scope,
    this.publicKey,
    this.nonce,
  );
}

@reflector
class GetPassportAuthorizationFormAvailableElements extends TdFunction {
  Type get returnType => PassportElementsWithErrors;

  final int autorizationFormId;
  final String password;

  @override
  Map<String, dynamic> get params => {
    "autorization_form_id": autorizationFormId,
    "password": password,
  };

  GetPassportAuthorizationFormAvailableElements(
    this.autorizationFormId,
    this.password,
  );
}

@reflector
class SendCustomRequest extends TdFunction {
  Type get returnType => CustomRequestResult;

  final String method;
  final String parameters;

  @override
  Map<String, dynamic> get params => {
    "method": method,
    "parameters": parameters,
  };

  SendCustomRequest(
    this.method,
    this.parameters,
  );
}

@reflector
class SendTonLiteServerRequest extends TdFunction {
  Type get returnType => TonLiteServerResponse;

  final List<int> request;

  @override
  Map<String, dynamic> get params => {
    "request": request,
  };

  SendTonLiteServerRequest(
    this.request,
  );
}

@reflector
class GetTonWalletPasswordSalt extends TdFunction {
  @override
  Type get returnType => TonWalletPasswordSalt;

  @override
  Map<String, dynamic> get params => {};

  GetTonWalletPasswordSalt();
}

@reflector
class GetDeepLinkInfo extends TdFunction {
  Type get returnType => DeepLinkInfo;

  final String link;

  @override
  Map<String, dynamic> get params => {
    "link": link,
  };

  GetDeepLinkInfo(
    this.link,
  );
}

@reflector
class AddProxy extends TdFunction {
  Type get returnType => Proxy;

  final String server;
  final int port;
  final bool enable;
  final ProxyType type;

  @override
  Map<String, dynamic> get params => {
    "server": server,
    "port": port,
    "enable": enable,
    "type": type,
  };

  AddProxy(
    this.server,
    this.port,
    this.enable,
    this.type,
  );
}

@reflector
class EditProxy extends TdFunction {
  Type get returnType => Proxy;

  final int proxyId;
  final String server;
  final int port;
  final bool enable;
  final ProxyType type;

  @override
  Map<String, dynamic> get params => {
    "proxy_id": proxyId,
    "server": server,
    "port": port,
    "enable": enable,
    "type": type,
  };

  EditProxy(
    this.proxyId,
    this.server,
    this.port,
    this.enable,
    this.type,
  );
}

@reflector
class GetProxies extends TdFunction {
  @override
  Type get returnType => Proxies;

  @override
  Map<String, dynamic> get params => {};

  GetProxies();
}

@reflector
class PingProxy extends TdFunction {
  Type get returnType => Seconds;

  final int proxyId;

  @override
  Map<String, dynamic> get params => {
    "proxy_id": proxyId,
  };

  PingProxy(
    this.proxyId,
  );
}

@reflector
class GetLogStream extends TdFunction {
  @override
  Type get returnType => LogStream;

  @override
  Map<String, dynamic> get params => {};

  GetLogStream();
}

@reflector
class GetLogVerbosityLevel extends TdFunction {
  @override
  Type get returnType => LogVerbosityLevel;

  @override
  Map<String, dynamic> get params => {};

  GetLogVerbosityLevel();
}

@reflector
class GetLogTagVerbosityLevel extends TdFunction {
  Type get returnType => LogVerbosityLevel;

  final String tag;

  @override
  Map<String, dynamic> get params => {
    "tag": tag,
  };

  GetLogTagVerbosityLevel(
    this.tag,
  );
}

@reflector
class GetLogTags extends TdFunction {
  @override
  Type get returnType => LogTags;

  @override
  Map<String, dynamic> get params => {};

  GetLogTags();
}

@reflector
class TestCallString extends TdFunction {
  Type get returnType => TestString;

  final String x;

  @override
  Map<String, dynamic> get params => {
    "x": x,
  };

  TestCallString(
    this.x,
  );
}

@reflector
class TestCallBytes extends TdFunction {
  Type get returnType => TestBytes;

  final List<int> x;

  @override
  Map<String, dynamic> get params => {
    "x": x,
  };

  TestCallBytes(
    this.x,
  );
}

@reflector
class TestCallVectorInt extends TdFunction {
  Type get returnType => TestVectorInt;

  final List<int> x;

  @override
  Map<String, dynamic> get params => {
    "x": x,
  };

  TestCallVectorInt(
    this.x,
  );
}

@reflector
class TestCallVectorIntObject extends TdFunction {
  Type get returnType => TestVectorIntObject;

  final List<TestInt> x;

  @override
  Map<String, dynamic> get params => {
    "x": x,
  };

  TestCallVectorIntObject(
    this.x,
  );
}

@reflector
class TestCallVectorString extends TdFunction {
  Type get returnType => TestVectorString;

  final List<String> x;

  @override
  Map<String, dynamic> get params => {
    "x": x,
  };

  TestCallVectorString(
    this.x,
  );
}

@reflector
class TestCallVectorStringObject extends TdFunction {
  Type get returnType => TestVectorStringObject;

  final List<TestString> x;

  @override
  Map<String, dynamic> get params => {
    "x": x,
  };

  TestCallVectorStringObject(
    this.x,
  );
}

@reflector
class TestSquareInt extends TdFunction {
  Type get returnType => TestInt;

  final int x;

  @override
  Map<String, dynamic> get params => {
    "x": x,
  };

  TestSquareInt(
    this.x,
  );
}

@reflector
class TestUseUpdate extends TdFunction {
  @override
  Type get returnType => Update;

  @override
  Map<String, dynamic> get params => {};

  TestUseUpdate();
}

@reflector
class TestReturnError extends TdFunction {
  Type get returnType => Error;

  final Error error;

  @override
  Map<String, dynamic> get params => {
    "error": error,
  };

  TestReturnError(
    this.error,
  );
}
