import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../theme/color_theme.dart';

class MessagePopup extends StatelessWidget {
  final String? title;
  final String message;
  final bool? status;

  const MessagePopup(
      {Key? key, this.title, required this.message, this.status = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 10, 25, 32.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            (status == true)
                ? Icon(Icons.check)

                : Icon(Icons.warning),
            Text(
              title ?? LanguageTranslation.current.message,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
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
          ],
        ),
      ),
    );
  }
}
