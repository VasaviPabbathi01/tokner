import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tokner/app.dart';

import '../../../widget/webappbar.dart';

class TokensDistribution extends StatelessWidget {
  const TokensDistribution({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return Padding(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleText(context, fontSize: 32),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  LanguageTranslation.current.token_distribution_sub_text,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16, fontFamily: FontFamily.gothic, fontWeight: FontWeight.w700, color: ColorName.primaryColor,letterSpacing: 2),
                 ),
              ),
              Text(
                "10,000,000,000",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 40, fontFamily: FontFamily.gothic, letterSpacing: 2, fontWeight: FontWeight.w700, color: ColorName.colorFFD100),
                 ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  LanguageTranslation.current.tknrs_tokens,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 14, fontFamily: FontFamily.gothic, fontWeight: FontWeight.w700, color: ColorName.primaryColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LanguageTranslation.current.premined_tokens,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 14, fontFamily: FontFamily.gothic, fontWeight: FontWeight.w700, color: ColorName.primaryColor),
                           ),
                        Text(
                          "3,000,000,000",
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 32,
                            fontFamily: FontFamily.gothic,
                            fontWeight: FontWeight.w700,
                            color: ColorName.color2278D4,),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        LanguageTranslation.current.tknrs_tokens,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16, fontFamily: FontFamily.gothic, fontWeight: FontWeight.w700, color: ColorName.primaryColor),
                        ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LanguageTranslation.current.daily_token_distribution,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 14, fontFamily: FontFamily.gothic, fontWeight: FontWeight.w700, color: ColorName.primaryColor),
                          ),
                        Text(
                          "7,000,000,000",
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 32,
                            fontFamily: FontFamily.gothic,
                            fontWeight: FontWeight.w700,
                            color: ColorName.colorE20613,),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: Text(
                        LanguageTranslation.current.tknrs_tokens,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16, fontFamily: FontFamily.gothic, fontWeight: FontWeight.w700, color: ColorName.primaryColor),
                        ),
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Transform.scale(
                    scale: 1.2,
                    child: Assets.images.tokenDistribution.image(width: MediaQuery.of(context).size.width, height: 300),
                  ),
                  Positioned(top: 10, right: 10, child: Assets.images.tokenDistributionBlur.image(width: MediaQuery.of(context).size.width * 0.9, height: 300)),
                ],
              ),
            ],
          ),
        );
      },
      desktop: (context) {
        return Stack(
          children: [
            Align(alignment: Alignment.topRight, child: Assets.images.backGround.image(width: MediaQuery.of(context).size.width, fit: BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: WebAppBar(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 100,
                    right: MediaQuery.of(context).size.width * 0.05,
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.35, child: titleText(context, fontSize: 30)),
                      Center(child: subText(context)),
                      buildDistribution(context)
                    ],
                  ),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget titleText(BuildContext context, {double? fontSize}) {
    return Text(
      LanguageTranslation.current.token_distribution_title,
      maxLines: 3,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: fontSize,
        fontFamily: FontFamily.gothic,
        fontWeight: FontWeight.w700,
        color: ColorName.primaryColor,),
    );
  }

  Widget subText(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.34,
        child: buildToken(context,LanguageTranslation.current.token_distribution_sub_text, "10,000,000,000",
            titleFontSize: 18, countFontSize: 60, countColor: ColorName.colorFFD100, subTetxFontSize: 18));
  }

  Widget buildDistribution(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.18,
            child: buildToken(context,LanguageTranslation.current.premined_tokens, "3,000,000,000",
                titleFontSize: 20, countFontSize: 32, countColor: ColorName.color2278D4, subTetxFontSize: 20)),
        buildImage(
          context,
          MediaQuery.of(context).size.width * 0.5,
          MediaQuery.of(context).size.width * 0.4,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 90.0),
          child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.18,
              child: buildToken(context,
                LanguageTranslation.current.daily_token_distribution,
                "7,000,000,000",
                titleFontSize: 20,
                countFontSize: 32,
                countColor: ColorName.colorE20613,
                subTetxFontSize: 20,
              )),
        ),
      ],
    );
  }

  Widget buildToken(BuildContext context,String title, String count, {double? titleFontSize, double? countFontSize, double? subTetxFontSize, Color? countColor}) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: titleFontSize, fontFamily: FontFamily.gothic, fontWeight: FontWeight.w700, letterSpacing: -1, color: ColorName.primaryColor),
             ),
            Text(
              count,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: countFontSize,
                fontFamily: FontFamily.gothic,
                fontWeight: FontWeight.w700,
                color: countColor,),
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            LanguageTranslation.current.tknrs_tokens,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: subTetxFontSize, fontFamily: FontFamily.gothic, fontWeight: FontWeight.w700, color: ColorName.primaryColor),
          ),
        ),
      ],
    );
  }

  Widget buildImage(BuildContext context, imageWidth, bgImageWidth) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Assets.images.tokenDistribution.image(width: imageWidth, height: 300),
        Positioned(bottom: -25, left: 45, child: Assets.images.tokenDistributionBlur.image(width: bgImageWidth, height: 300)),
      ],
    );
  }
}
