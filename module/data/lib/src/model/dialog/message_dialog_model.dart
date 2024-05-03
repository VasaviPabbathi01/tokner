
import '../../common/enum/enumerations.dart';

class MessageDialogModel {
  String? title;
  String? message;
  ErrorMessageType? type;
  Function()? onDismiss;
  bool? status;

  MessageDialogModel(this.title, this.message, this.onDismiss, {this.type, this.status});
}
