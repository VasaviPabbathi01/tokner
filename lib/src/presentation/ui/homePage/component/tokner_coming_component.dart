import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tokner/app.dart';
import 'package:tokner/src/presentation/ui/homePage/bloc/homepage_bloc.dart';
import 'package:tokner/src/presentation/ui/homePage/bloc/homepage_event.dart';
import 'package:tokner/src/presentation/ui/homePage/bloc/homepage_state.dart';
import 'package:tokner/src/presentation/ui/homePage/component/presale_details_component.dart';
import 'package:tokner/src/presentation/widget/touch_effect.dart';

import '../../../base/bloc_page/base_page_state.dart';


class ToknerComingComponent extends StatefulWidget {
  const ToknerComingComponent({super.key});

  @override
  State<ToknerComingComponent> createState() => _ToknerComingComponentState();
}

class _ToknerComingComponentState extends BasePageState<ToknerComingComponent,HomePageBloc> {
  @override
  Widget buildPage(BuildContext context) {
    var deviceScreenType = getDeviceType(MediaQuery.of(context).size);
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return Column(
          children: [
            const SizedBox(height: 70),
            qComponent(deviceScreenType),
            Stack(
              children: [
                Positioned(
                  right: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.7,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(color: ColorName.color171B29, borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                Assets.images.toknerComingImage.image(width: MediaQuery.of(context).size.width * 0.9, height: MediaQuery.of(context).size.width * 0.7, fit: BoxFit.fill),
              ],
            ),
            const SizedBox(height: 20),
            detailComponent(deviceScreenType),
            const PresaleDetailsComponent(),
          ],
        );
      },
      desktop: (context) {
        return Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: ColorName.backGround,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(180))),
              child: Column(
                children: [
                  const SizedBox(height: 175),
                  qComponent(deviceScreenType),
                  Stack(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width * 0.45, child: detailComponent(deviceScreenType)),
                              Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                      height: MediaQuery.of(context).size.width * 0.7,
                                      width: MediaQuery.of(context).size.width * 0.4,
                                      decoration: BoxDecoration(color: ColorName.color171B29, borderRadius: BorderRadius.circular(12)),
                                    ),
                                  ),
                                  Assets.images.toknerComingImage.image(width: MediaQuery.of(context).size.width * 0.5, height: MediaQuery.of(context).size.width * 0.5, fit: BoxFit.fill),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 800),
                        ],
                      ),
                      const Positioned(
                        bottom: 0,
                          child: PresaleDetailsComponent()),
                    ],
                  )
                ],
              ),
            ),
            Assets.images.vector.image(),
          ],
        );
      },
    );
  }

  Widget qComponent(DeviceScreenType deviceScreenType) {
    List<ToknerComingModel> model = [
      ToknerComingModel(title: 'Q1', description: ['Team set-up ', 'Launch of informational website'], color: ColorName.buttonColor),
      ToknerComingModel(
          title: 'Q2',
          description: ['Presale and exchange listings', 'Blockchain development and launch', 'Launch of our MVP', ' Influencer agency partnerships', 'Marketing and promotion '],
          color: ColorName.color2278D4),
      ToknerComingModel(
          title: 'Q3',
          description: ['Celebrity, Creator and Influencer partnerships', 'Expansion of creator communities on our platform', 'More Marketing and promotion'],
          color: ColorName.colorFFD100),
      ToknerComingModel(
          title: 'Q4',
          description: ['Mainstream partnerships', '500 active creator communities', '2Million active community members', 'More Marketing and promotion'],
          color: ColorName.colorE20613),
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: deviceScreenType == DeviceScreenType.mobile ? 20 : MediaQuery.of(context).size.width*0.01),
      child: SizedBox(
        height: deviceScreenType == DeviceScreenType.mobile ? 1000 : 400,
        width: deviceScreenType == DeviceScreenType.mobile ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.75,
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: deviceScreenType == DeviceScreenType.mobile ? Axis.vertical : Axis.horizontal,
          itemCount: model.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 82,
                      width: 82,
                      decoration: BoxDecoration(
                          boxShadow: [BoxShadow(color: model[index].color.withOpacity(0.25), blurRadius: 25, offset: const Offset(0, 15))],
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(8), bottomRight: Radius.circular(50), topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                          color: model[index].color),
                      child: Center(
                          child: Text(
                        model[index].title,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(color: ColorName.backGround, fontWeight: FontWeight.w700, fontFamily: FontFamily.gothic),
                      )),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: model[index].color),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          LanguageTranslation.current.year,
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: ColorName.primaryColor),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                descriptionComponent(deviceScreenType, model[index].description, model[index].color)
              ],
            );
          },
          separatorBuilder: (context, index) => SizedBox(width: deviceScreenType == DeviceScreenType.mobile ? 0 : 12, height: deviceScreenType == DeviceScreenType.mobile ? 40 : 0),
        ),
      ),
    );
  }

  Widget descriptionComponent(DeviceScreenType deviceScreenType, List<String> description, Color color) {
    return SizedBox(
      width: deviceScreenType == DeviceScreenType.mobile ? MediaQuery.of(context).size.width * 0.9 : MediaQuery.of(context).size.width * 0.185,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: description.length,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '0${(index + 1).toString()}',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(color: color, fontWeight: FontWeight.w700, fontFamily: FontFamily.gothic),
              ),
              const SizedBox(width: 10),
              SizedBox(
                  width: deviceScreenType == DeviceScreenType.mobile ? MediaQuery.of(context).size.width * 0.8 : MediaQuery.of(context).size.width * 0.14,
                  child: Text(
                    description[index],
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ColorName.primaryColor, fontWeight: FontWeight.w400, fontFamily: FontFamily.gothic),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )),
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 8),
      ),
    );
  }

  Widget detailComponent(DeviceScreenType deviceScreenType) {
    return BlocBuilder<HomePageBloc, HomePageState>(
  builder: (context, state) {
    return Padding(
      padding: EdgeInsets.only(left: deviceScreenType == DeviceScreenType.mobile ? 20 : 155.0, right: deviceScreenType == DeviceScreenType.mobile ? 20 : 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Assets.images.appLogo.image(width: 53, height: 38),
              const SizedBox(width: 8),
              SizedBox(
                width:deviceScreenType == DeviceScreenType.mobile ? MediaQuery.of(context).size.width * 0.7 : MediaQuery.of(context).size.width * 0.22,
                child: Text(
                  deviceScreenType == DeviceScreenType.mobile ? LanguageTranslation.current.weentar_is_coming : LanguageTranslation.current.tokner_is_coming,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(color: ColorName.primaryColor, fontFamily: FontFamily.gothic, fontSize: 33, fontWeight: FontWeight.w700),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Text(LanguageTranslation.current.description_1,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: ColorName.primaryColor.withOpacity(0.6), fontFamily: FontFamily.gothic, fontSize: 14, fontWeight: FontWeight.w900, height: 1.5)),
          Text(LanguageTranslation.current.description_2,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: ColorName.primaryColor.withOpacity(0.6), fontFamily: FontFamily.gothic, fontSize: 14, fontWeight: FontWeight.w400, height: 1.5)),
          Visibility(
            visible: state.isExpanded,
            child: Column(
              children: [
                Text(LanguageTranslation.current.description_3,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: ColorName.color9FA1A6, fontFamily: FontFamily.gothic, fontSize: 14, fontWeight: FontWeight.w900, height: 1.5)),
                Text(LanguageTranslation.current.description_4,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: ColorName.color9FA1A6, fontFamily: FontFamily.gothic, fontSize: 14, fontWeight: FontWeight.w400, height: 1.5)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '''"''',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: ColorName.colorFFD100, fontFamily: FontFamily.gothic, fontSize: 22, fontWeight: FontWeight.w900, height: 1.5),
                    ),
                    const SizedBox(width: 8),
                    SizedBox(
                        width:deviceScreenType == DeviceScreenType.mobile ? MediaQuery.of(context).size.width * 0.8 : MediaQuery.of(context).size.width * 0.25,
                        child: Text(LanguageTranslation.current.description_5,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: ColorName.color9FA1A6, fontFamily: FontFamily.gothic, fontSize: 14, fontWeight: FontWeight.w700, height: 1.5))),
                  ],
                ),
                Text(LanguageTranslation.current.description_6,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: ColorName.color9FA1A6, fontFamily: FontFamily.gothic, fontSize: 14, fontWeight: FontWeight.w400, height: 1.5)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Visibility(visible: deviceScreenType == DeviceScreenType.desktop, child: readMoreButton(state.isExpanded)),
          Visibility(
            visible: deviceScreenType == DeviceScreenType.mobile,
            child: TouchEffect(
              onTap: (){
                bloc.add(IsExpanded());
              },
              child: Text(
                  state.isExpanded  ? LanguageTranslation.current.hide : LanguageTranslation.current.read_more,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.transparent,
                    fontFamily: FontFamily.gothic,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 2,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed,
                    decorationColor: ColorName.buttonColor,
                    shadows: [const Shadow(color: ColorName.buttonColor, offset: Offset(0, -5))],
                  )),
            ),
          ),
        ],
      ),
    );
  },
);
  }

  Widget readMoreButton(bool isExpanded) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: OutlinedButton(
        onPressed: () {
          bloc.add(IsExpanded());
        },
        style: OutlinedButton.styleFrom(
            side: const BorderSide(
              width: 2.0,
              color: ColorName.buttonColor,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(52.0)),
            minimumSize: Size(MediaQuery.of(context).size.width * 0.09, 48)),
        child: Text(
          isExpanded  ? LanguageTranslation.current.hide : LanguageTranslation.current.read_more,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontFamily: FontFamily.gothic,
                color: ColorName.primaryColor,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
    );
  }
}
