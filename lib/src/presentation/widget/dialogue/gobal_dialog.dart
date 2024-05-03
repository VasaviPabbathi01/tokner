import 'dart:async';
import 'dart:ui';


import 'package:data/data.dart';
import 'package:flutter/material.dart';

import 'component/message_popup.dart';


class GlobalDialog extends StatefulWidget {
  const GlobalDialog(
      {Key? key,
      this.hasIconClose = true,
      this.isTimer = true,
      required this.body})
      : super(key: key);

  final bool hasIconClose;
  final Widget body;
  final bool isTimer;

  @override
  State<GlobalDialog> createState() => _GlobalDialogState();
}

class _GlobalDialogState extends State<GlobalDialog> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    if (widget.hasIconClose == false && widget.isTimer == true) {
      _timer = Timer(const Duration(seconds: 10), () {
        Navigator.of(context).pop();
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      insetPadding: const EdgeInsets.all(24),
      elevation: 8,
      child: Wrap(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Visibility(
                visible: widget.hasIconClose,
                child: Positioned(
                  top: 16,
                  right: 16,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.close,
                        size: 20,
                        color:Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              widget.body
            ],
          )
        ],
      ),
    );
  }
}

void showActDialog(
    {required BuildContext context,
    required Widget body,
    bool hasIconClose = false,
    bool? dismissible = true,
    bool hasDismissOutSideClick = false,
    bool isTimer = true,
    Function()? onDismiss}) {
  if (context.mounted) {
    showDialog(
      barrierDismissible: hasDismissOutSideClick
          ? true
          : hasIconClose == false && dismissible == true,
      context: context,
      useRootNavigator: false,
      builder: (_) => WillPopScope(
        /* Don't dismiss popup when pressing physical back button */
        /* False will prevent and true will allow to dismiss */
        onWillPop: () async => hasDismissOutSideClick
            ? true
            : hasIconClose == false && dismissible == true,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
          child: GlobalDialog(
            body: body,
            hasIconClose: hasIconClose,
            isTimer: isTimer,
          ),
        ),
      ),
    ).then((value) => onDismiss?.call());
  }
}


void showMessageDialog(
    {required BuildContext context,
      required MessageDialogModel message,
      bool? status}) {
  showActDialog(
    context: context,
    dismissible: true,
    hasDismissOutSideClick: true,
    body: MessagePopup(
      title: message.title,
      message: message.message!,
      status: status,
    ),
    hasIconClose: true,
    onDismiss: message.onDismiss,
  );
}
