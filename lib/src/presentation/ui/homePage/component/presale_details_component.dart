import 'package:data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tokner/app.dart';
import 'package:tokner/src/presentation/ui/homePage/bloc/homepage_bloc.dart';

import '../../../base/bloc_page/base_page_state.dart';
import '../bloc/homepage_event.dart';
import '../bloc/homepage_state.dart';

class PresaleDetailsComponent extends StatefulWidget {
  const PresaleDetailsComponent({super.key});

  @override
  State<PresaleDetailsComponent> createState() => _PresaleDetailsComponentState();
}

class _PresaleDetailsComponentState extends BasePageState<PresaleDetailsComponent, HomePageBloc> {
  @override
  Widget buildPage(BuildContext context) {
    List<PresaleDetailsModel> details = [
      PresaleDetailsModel(phase: "One", duration: "0/04/2021 - 16/04/2021", color: ColorName.buttonColor, bnbValue: 100000, softCap: 5000, hardCap: 10000),
      PresaleDetailsModel(phase: "Two", duration: "0/04/2021 - 16/04/2021", color: ColorName.color2278D4, bnbValue: 100000, softCap: 5000, hardCap: 10000),
      PresaleDetailsModel(phase: "Three", duration: "0/04/2021 - 16/04/2021", color: ColorName.colorFFD100, bnbValue: 100000, softCap: 5000, hardCap: 10000),
    ];
    List<Image> imageData = [
      Assets.images.phaseOne.image(),
      Assets.images.phaseTwo.image(),
      Assets.images.phaseThree.image(),
    ];
    DeviceScreenType deviceType = getDeviceType(MediaQuery.of(context).size);
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return Container(
            height: 750,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.mobilePresale.path),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                titleText(fontSize: 36),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(height: 450, child: buildMobileDetails(details, imageData)),
              ],
            ));
      },
      desktop: (context) {
        return Stack(
          children: [
            Assets.images.desktopPresale.image(width: MediaQuery.of(context).size.width, fit: BoxFit.fill),
            Positioned(right: 0, top: MediaQuery.of(context).size.width*0.14, child: Assets.images.vectorPresaleTop.image(height: MediaQuery.of(context).size.width*0.2,width:MediaQuery.of(context).size.width*0.2 ,fit: BoxFit.fill)),
            Positioned(left: 0, bottom: MediaQuery.of(context).size.width*0.14, child: Assets.images.presaleVectorBottom.image(height: MediaQuery.of(context).size.width*0.2,width:MediaQuery.of(context).size.width*0.2 ,fit: BoxFit.fill)),
            Positioned(
              top: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [titleText(fontSize: 48), SizedBox(height: 500, child: buildDetails(details, imageData, deviceType))],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget titleText({required double fontSize}) {
    return Text(
      LanguageTranslation.current.presale_details,
      style: TextStyle(fontFamily: FontFamily.gothic, fontSize: fontSize, fontWeight: FontWeight.w700, color: ColorName.primaryColor),
    );
  }

  Widget buildMobileDetails(List<PresaleDetailsModel> details, List<Image> imageData) {
    return BlocBuilder<HomePageBloc, HomePageState>(
        buildWhen: (p, c) => p.presaleIndex != c.presaleIndex,
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(
                height: 420,
                child: PageView.builder(
                    itemCount: details.length,
                    physics: BouncingScrollPhysics(),
                    onPageChanged: (index) {
                      bloc.add(PresaleIndexChanged(index: index));
                    },
                    controller: PageController(viewportFraction: 0.9, initialPage: 1),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 20.0, left: index == 0 ? 20 : 0),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: ColorName.primaryColor,
                          ),
                          child: detailsText(imageData, index, details, context),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(details.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: index == state.presaleIndex ? 8 : 4,
                        width: index == state.presaleIndex ? 8 : 4,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: index == state.presaleIndex ? ColorName.primaryColor : Colors.transparent,
                            border: Border.all(width: 1, color: ColorName.primaryColor)),
                      ),
                    );
                  })),
            ],
          );
        });
  }

  Widget buildDetails(List<PresaleDetailsModel> details, List<Image> imageData, DeviceScreenType deviceType) {
    return ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.only(right: 50, left: 50),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: deviceType == DeviceScreenType.desktop
                ? EdgeInsets.only(top: index.isOdd ? 80 : 0, bottom: index.isOdd ? 0 : 80,left: MediaQuery.of(context).size.width*0.025)
                : EdgeInsets.only(top: index.isOdd ? 50 : 0, bottom: index.isOdd ? 0 : 50),
            child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: ColorName.primaryColor,
                ),
                child: detailsText(imageData, index, details, context)),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
              width: 20,
            ),
        itemCount: details.length);
  }

  Widget detailsText(List<Image> imageData, int index, List<PresaleDetailsModel> details, BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: imageData[index],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 82,
              width: 82,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: details[index].color,
                  boxShadow: [BoxShadow(color: details[index].color.withOpacity(0.25), blurRadius: 25, offset: const Offset(0, 15))],
                  borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(50), bottomLeft: Radius.circular(12), bottomRight: Radius.circular(50))),
              child: Text(
                "0${index + 1}",
                style: const TextStyle(fontFamily: FontFamily.gothic, color: ColorName.backGround, fontSize: 26, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              "Phase ${details[index].phase}",
              style: const TextStyle(
                fontFamily: FontFamily.gothic,
                fontWeight: FontWeight.w700,
                fontSize: 32,
                color: ColorName.color191B21,
              ),
            ),
            SizedBox(
              height: getValueForScreenType(context: context, mobile: 4, desktop: 9, tablet: 9),
            ),
            Text(
              details[index].duration,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.gothic,
                fontSize: 16,
                color: ColorName.color191B21,
              ),
            ),
            SizedBox(height: getValueForScreenType(context: context, mobile: 40, desktop: 70, tablet: 40)),
            Text(
              "1 BNB = ${details[index].bnbValue} WNTR",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.gothic,
                fontSize: 20,
                color: ColorName.color191B21,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: LanguageTranslation.current.soft_cap,
                    style: const TextStyle(fontWeight: FontWeight.w400, fontFamily: FontFamily.gothic, fontSize: 16, color: ColorName.color191B21),
                    children: [
                      TextSpan(
                        text: "${details[index].softCap.toString()} BNB",
                        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16, fontFamily: FontFamily.gothic, color: ColorName.color191B21),
                      ),
                    ])),
            const SizedBox(
              height: 10,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: LanguageTranslation.current.hard_cap,
                    style: const TextStyle(fontWeight: FontWeight.w400, fontFamily: FontFamily.gothic, fontSize: 16, color: ColorName.color191B21),
                    children: [
                      TextSpan(
                        text: "${details[index].hardCap.toString()} BNB",
                        style: const TextStyle(fontWeight: FontWeight.w600, fontFamily: FontFamily.gothic, fontSize: 16, color: ColorName.color191B21),
                      ),
                    ])),
          ],
        )
      ],
    );
  }
}
