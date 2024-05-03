import 'package:flutter/material.dart';

import '../../../../gen/fonts.gen.dart';
import '../../../../generated/l10n.dart';
import '../../theme/color_theme.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({Key? key, this.actionCallback}) : super(key: key);

  final VoidCallback? actionCallback;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.wifi_off),
            const SizedBox(
              height: 16,
            ),
            Text(
              LanguageTranslation.current.no_internet,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: ThemeColorName.dialogText,
                    fontWeight: FontWeight.w600,
                    fontFamily: FontFamily.jost,
                    fontSize: 20,
                  ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              LanguageTranslation.current.no_internet_subtext,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: ThemeColorName.dialogText,
                    fontWeight: FontWeight.w400,
                    fontFamily: FontFamily.hankenGrotesk,
                    fontSize: 14,
                  ),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              child: Text(LanguageTranslation.current.retry),
              onPressed: () {
                actionCallback?.call();
              },
              // style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              //   color: ThemeColorName.buttonFillText,
              //       fontWeight: FontWeight.w600,
              //       fontFamily: FontFamily.hankenGrotesk,
              //       fontSize: 14,
              //     ),
            ),
          ],
        ),
      ),
    );
  }
}
