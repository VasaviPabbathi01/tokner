import 'package:data/data.dart';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tokner/app.dart';
import '../../../widget/footer.dart';

class SupplyComponent extends StatefulWidget {
  const SupplyComponent({super.key});

  @override
  State<SupplyComponent> createState() => _SupplyComponentState();
}

class _SupplyComponentState extends State<SupplyComponent> {
  List<ToknerSupplyModel> supplyModel = [
    ToknerSupplyModel(
        title:
            "Proposal regarding Total Supply, ICO and Pricing Total Supply (after periodical increase of supply):",
        description: "",
        tokensCount: "10,000,000,000"),
    ToknerSupplyModel(
        title: "Supply at Genesis:",
        description:
            "from the Genesis supply, 2,500,000,000 will be reserved for the ICO while 500,000,000 will be allocated for team members, founders and to onboard celebrities and influencers.",
        tokensCount: "3,000,000,000")
  ];
  @override
  Widget build(BuildContext context) {
    DeviceScreenType deviceType = getDeviceType(MediaQuery.of(context).size);
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.isDesktop) {
        return Stack(
          children: [
            webImage(),
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1, top: MediaQuery.of(context).size.width*0.1,right:  MediaQuery.of(context).size.width*0.1),
              child: SizedBox(
                child: ListView.builder(
                  itemCount: supplyModel.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: index.isEven ? Alignment.centerRight : Alignment.centerLeft,
                            child: whiteContainer(deviceType, supplyModel, index)),
                        const SizedBox(
                          height: 40,
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        );
      }
     return Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Assets.images.mobilePresale.image(
                  height: MediaQuery.of(context).size.width*1.8,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20,top: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width*1.5,
                  child: ListView.builder(
                    itemCount: supplyModel.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          whiteContainer(deviceType, supplyModel, index),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          // Container(
          //   height: MediaQuery.of(context).size.height * 1.2,
          //   width: MediaQuery.of(context).size.width,
          //   alignment: Alignment.center,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage(Assets.images.imgMobilePresale.path),
          //       fit: BoxFit.fill,
          //     ),
          //   ),
          //   child: Padding(
          //     padding: EdgeInsets.only(
          //         left: 20.0, right: 20, top: MediaQuery.of(context).size.height * 0.1),
          //     child: SizedBox(
          //       height: 600,
          //       child: ListView.builder(
          //         itemCount: supplyModel.length,
          //         shrinkWrap: true,
          //         physics: const NeverScrollableScrollPhysics(),
          //         scrollDirection: Axis.vertical,
          //         itemBuilder: (context, index) {
          //           return Column(
          //             mainAxisAlignment: MainAxisAlignment.start,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               whiteContainer(deviceType, supplyModel, index),
          //               const SizedBox(
          //                 height: 20,
          //               )
          //             ],
          //           );
          //         },
          //       ),
          //     ),
          //   ),
          // ),

          const Footer()
        ],
      );      //   Column(
      //   children: [
      //     Container(
      //       height: MediaQuery.of(context).size.height*1.2,
      //       width: MediaQuery.of(context).size.width,
      //       alignment: Alignment.center,
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage(Assets.images.mobilePresale.path),
      //           fit: BoxFit.fill,
      //         ),
      //       ),
      //       child: Padding(
      //         padding: EdgeInsets.only(left: 20,right: 20,top: MediaQuery.of(context).size.height*0.1),
      //         child: SizedBox(
      //           height: 600,
      //           child: ListView.builder(
      //             itemCount: supplyModel.length,
      //             shrinkWrap: true,
      //             physics: const NeverScrollableScrollPhysics(),
      //             scrollDirection: Axis.vertical,
      //             itemBuilder: (context, index) {
      //               return Column(
      //                 mainAxisAlignment: MainAxisAlignment.start,
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   whiteContainer(deviceType, supplyModel, index),
      //                   const SizedBox(
      //                     height: 20,
      //                   )
      //                 ],
      //               );
      //             },
      //           ),
      //         ),
      //       ),
      //     ),
      //     const Footer()
      //   ],
      // );
    });
  }

  Widget webImage() {
    return Stack(
      children: [
        Positioned(
          bottom: -40,
          child: Assets.images.webFotter.image(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill),
        ),
        Column(
          children: [
            Container(
              child: Assets.images.desktopPresale
                  .image(width: MediaQuery.of(context).size.width, fit: BoxFit.fill),
            ),
            const SizedBox(
              height: 20,
            ),
            const Footer(),
            const SizedBox(
              height: 50,
            )
          ],
        ),
        Positioned(
            right: 0,
            top: MediaQuery.of(context).size.width * 0.1,
            child: Assets.images.vectorPresaleTop.image(
                height: MediaQuery.of(context).size.width * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
                fit: BoxFit.fill)),
        Positioned(
            left: 0,
            bottom: MediaQuery.of(context).size.width * 0.368,
            child: Assets.images.presaleVectorBottom.image(
                height: MediaQuery.of(context).size.width * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
                fit: BoxFit.fill)),
      ],
    );
  }

  Widget whiteContainer(
    DeviceScreenType deviceType,
    List<ToknerSupplyModel> supplyModel,
    int index,
  ) {
    return Container(
      width: deviceType == DeviceScreenType.desktop
          ? MediaQuery.of(context).size.width * 0.55
          : MediaQuery.of(context).size.width * 0.9,
      height: deviceType == DeviceScreenType.desktop
          ? null
          : MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(color: ColorName.primaryColor, borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: deviceType == DeviceScreenType.desktop
                ? MediaQuery.of(context).size.width * 0.05
                : MediaQuery.of(context).size.width * 0.07,
            vertical: deviceType == DeviceScreenType.desktop
                ? MediaQuery.of(context).size.width * 0.025
                : MediaQuery.of(context).size.width * 0.07,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              supplyModel[index].title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontFamily: FontFamily.gothic,
                  color: ColorName.backGround,
                  fontWeight: FontWeight.w700,
                  fontSize: deviceType == DeviceScreenType.desktop ? 28 : 18,
                  letterSpacing: 2),
            ),
            SizedBox(
              height: deviceType == DeviceScreenType.desktop ? 30 : 15,
            ),
            Text(
              supplyModel[index].tokensCount,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontFamily: FontFamily.gothic,
                  color: index == 0 ? ColorName.buttonColor : ColorName.colorFFD100,
                  fontWeight: FontWeight.w900,
                  fontSize: deviceType == DeviceScreenType.desktop ? 50 : 40,),
            ),
            Padding(
              padding: EdgeInsets.only(left: deviceType == DeviceScreenType.desktop ? 290.0 : 250),
              child: Text(
                LanguageTranslation.current.tokners,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontFamily: FontFamily.gothic,
                    color: ColorName.backGround,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w400,
                    fontSize: deviceType == DeviceScreenType.desktop ? 18 : 14),
              ),
            ),
            supplyModel[index].description.isNotEmpty ? const SizedBox(
              height: 20,
            ) : const SizedBox.shrink(),
           supplyModel[index].description.isNotEmpty ? Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: deviceType == DeviceScreenType.desktop ? 0 : 18.0),
              child: Text(
                supplyModel[index].description,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    letterSpacing: 2,
                    fontFamily: FontFamily.gothic,
                    color: ColorName.color000000.withOpacity(0.6),
                    fontWeight: FontWeight.w400,
                    fontSize: deviceType == DeviceScreenType.desktop ? 14 : 12),
              ),
            ) : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
