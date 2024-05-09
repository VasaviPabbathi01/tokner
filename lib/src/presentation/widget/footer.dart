import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../../generated/l10n.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  LanguageTranslation text = LanguageTranslation.current;
  @override
  Widget build(BuildContext context) {
    List<String> actionTags = ['Our team', 'Tokens', 'Connect wallet', 'Light paper'];
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      if (sizingInfo.isDesktop) {
        return Column(
          children: [
          SizedBox(
          height: 170,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: actionTags.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Text(
                    actionTags[index].toUpperCase(),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontFamily: FontFamily.gothic,
                        color: ColorName.primaryColor,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                        letterSpacing: 2),
                  ),
                  SizedBox(
                    width: index == actionTags.length - 1 ? 0 : 40,
                  ),
                  if (!(index == actionTags.length - 1)) ...[
                    Text(
                      "/",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontFamily: FontFamily.gothic,
                        color: ColorName.primaryColor.withOpacity(0.16),
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                  SizedBox(
                    width: index == actionTags.length - 1 ? 0 : 40,
                  ),
                ],
              );
            },
          ),
        ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Assets.images.icLogo.image(height: 30, fit: BoxFit.fill),
                Assets.images.contactUs.image(height: 30, fit: BoxFit.fill),
                Text(
                  text.footer_cp,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontFamily: FontFamily.gothic,
                        color: ColorName.primaryColor,
                        fontSize: 8,
                        fontWeight: FontWeight.w700,
                      ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        );
      }
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Assets.images.icLogo.image(height: 30, fit: BoxFit.fitHeight),
          const SizedBox(
            height: 40,
          ),
          Assets.images.contactUs.image(height: 60, width: 400, fit: BoxFit.fill),
          const SizedBox(
            height: 40,
          ),
          Text(
            text.footer_cp,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontFamily: FontFamily.gothic,
                  color: ColorName.primaryColor,
                  fontSize: 8,
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      );
    });
  }
}
