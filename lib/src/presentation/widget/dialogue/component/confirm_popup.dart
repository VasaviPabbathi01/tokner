import 'package:flutter/material.dart';

import '../../../theme/color_theme.dart';


class ConfirmPopup extends StatelessWidget {
  final String title;
  final String message;
  final String okText;
  final String cancelText;
  final Function? onOk;
  final Function? onCancel;

  const ConfirmPopup(
      {super.key,
      required this.title,
      required this.message,
      required this.okText,
      required this.cancelText,
      this.onOk,
      this.onCancel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 10, 25, 32.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              textAlign: TextAlign.start,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: ThemeColorName.dialogText),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: ThemeColorName.dialogText),
            ),
            const SizedBox(
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(

                    onPressed: () {
                      Navigator.pop(context);
                      onOk?.call();
                    }, child: Text(okText),
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    child: Text(cancelText),
                    onPressed: () {
                      Navigator.pop(context);
                      onCancel?.call();
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
