import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:tokner/app.dart';

class CoverPage extends StatefulWidget {
  const CoverPage({super.key});

  @override
  State<CoverPage> createState() => _CoverPageState();
}

class _CoverPageState extends State<CoverPage> {
  @override
  Widget build(BuildContext context) {
    var deviceScreenType = getDeviceType(MediaQuery.of(context).size);
    List<String> actionTags = ['Our team', 'Tokens', 'Connect wallet', 'Light paper'];
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return Stack(
          children: [
            Assets.images.mobileBg.image(width: MediaQuery.of(context).size.width, fit: BoxFit.cover),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 70),
                  child: Row(
                    children: [
                      appLogo(),
                      const Spacer(),
                      MenuAnchor(
                        builder: (BuildContext context, MenuController controller, Widget? child) {
                          return IconButton(
                            onPressed: () {
                              if (controller.isOpen) {
                                controller.close();
                              } else {
                                controller.open();
                              }
                            },
                            icon: const Icon(
                              Icons.menu,
                              color: ColorName.primaryColor,
                            ),
                            tooltip: 'Show menu',
                          );
                        },
                        menuChildren: List<MenuItemButton>.generate(
                          actionTags.length,
                          (int index) => MenuItemButton(
                            onPressed: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(actionTags[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Color(int.parse('0xFF333333')),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                coverPageText(deviceScreenType),
                Stack(
                  children: [
                    Assets.images.mobileCoverPageImg.image(width: MediaQuery.of(context).size.width, height: 600, fit: BoxFit.cover),
                    learnMoreButton(deviceScreenType)
                  ],
                ),
              ],
            ),
          ],
        );
      },
      desktop: (context) {
        return Stack(
          children: [
            Assets.images.backGround.image(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30, top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      appLogo(),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                      Padding(
                        padding: const EdgeInsets.only(top: 45.0),
                        child: webAppBarText(actionTags),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          LanguageTranslation.current.sign_in,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: ColorName.primaryColor, fontWeight: FontWeight.w600, letterSpacing: 2, fontFamily: FontFamily.gothic),
                        ),
                      ),
                      const SizedBox(width: 30),
                      signUpButton(),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.45, child: coverPageText(deviceScreenType)),
                    const Spacer(),
                    Assets.images.coverPageImg.image(width: MediaQuery.of(context).size.width * 0.55, height: 650, fit: BoxFit.fill)
                  ],
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget appLogo() {
    return Row(
      children: [
        Assets.images.appLogo.image(width: 47, height: 29),
        Text(
          LanguageTranslation.current.tokners,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: ColorName.primaryColor, fontWeight: FontWeight.w600, letterSpacing: 2, fontFamily: FontFamily.gothic),
        ),
      ],
    );
  }

  Widget webAppBarText(List<String> actionTags) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 50,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: actionTags.length,
        itemBuilder: (context, index) {
          return Text(
            actionTags[index],
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ColorName.primaryColor, fontWeight: FontWeight.w600, letterSpacing: 2, fontFamily: FontFamily.gothic),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: MediaQuery.of(context).size.width * 0.02,
        ),
      ),
    );
  }

  Widget signUpButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            side: const BorderSide(
              width: 2.0,
              color: ColorName.buttonColor,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(52.0)),
            minimumSize: Size(MediaQuery.of(context).size.width * 0.09, 48)),
        child: Text(
          LanguageTranslation.current.sign_up,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontFamily: FontFamily.gothic,
                color: ColorName.primaryColor,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
    );
  }

  Widget coverPageText(DeviceScreenType deviceScreenType) {
    return Padding(
      padding: EdgeInsets.only(left: deviceScreenType == DeviceScreenType.mobile ? 25 : 175.0,right: deviceScreenType == DeviceScreenType.mobile ? 25 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GradientText(
            gradientDirection: GradientDirection.ttb,
            LanguageTranslation.current.at_tokens,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontFamily: FontFamily.gothic, color: ColorName.primaryColor, fontWeight: FontWeight.w700, fontSize: deviceScreenType == DeviceScreenType.mobile ? 14 : 16),
            colors: const [
              ColorName.gradientShade2,
              ColorName.gradientShade1,
            ],
          ),
          const SizedBox(height: 18),
          Text(
            LanguageTranslation.current.cover_page_text,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: ColorName.primaryColor,
                fontWeight: FontWeight.w700,
                letterSpacing: -2,
                fontFamily: FontFamily.gothic,
                fontSize: deviceScreenType == DeviceScreenType.mobile ? 36 : 38,
                height: 1.2),
          ),
          const SizedBox(height: 18),
          Text(
            LanguageTranslation.current.cover_page_description,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: ColorName.descriptionText.withOpacity(0.6),
                fontWeight: FontWeight.w400,
                fontFamily: FontFamily.gothic,
                fontSize: 14,
                height: 1.5),
          ),
          const SizedBox(height: 20),
          Visibility(
            visible: deviceScreenType == DeviceScreenType.desktop,
              child: learnMoreButton(deviceScreenType)),
        ],
      ),
    );
  }

  Widget learnMoreButton(DeviceScreenType deviceScreenType){
    return Padding(
      padding:EdgeInsets.only(left: deviceScreenType == DeviceScreenType.mobile ? 25 : 0,right: deviceScreenType == DeviceScreenType.mobile ? 25 : 0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(52), boxShadow: [BoxShadow(color: ColorName.buttonColor.withOpacity(0.25), blurRadius: 25, offset: const Offset(0, 15))]),
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: ColorName.buttonColor,
                minimumSize: Size(MediaQuery.of(context).size.width * 0.12, 48),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(52.0)),
                shadowColor: ColorName.buttonColor.withOpacity(0.25)),
            child: Text(
              LanguageTranslation.current.learn_more,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: ColorName.primaryColor, fontFamily: FontFamily.gothic),
            )),
      ),
    );
  }
}
