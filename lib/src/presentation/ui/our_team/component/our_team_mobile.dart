import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tokner/src/presentation/base/bloc_page/base_page_state.dart';
import 'package:tokner/src/presentation/widget/footer.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/colors.gen.dart';
import '../../../../../gen/fonts.gen.dart';
import '../../../../../generated/l10n.dart';
import '../bloc/our_team_bloc.dart';
import '../bloc/our_team_event.dart';
import '../bloc/our_team_state.dart';

class OurTeamMobile extends StatefulWidget {
  const OurTeamMobile({super.key});

  @override
  State<OurTeamMobile> createState() => _OurTeamMobileState();
}

class _OurTeamMobileState extends BasePageState<OurTeamMobile, OurTeamBloc> {
  LanguageTranslation text = LanguageTranslation.current;
  @override
  Widget buildPage(BuildContext context) {
    List<OurTeamModel> data = [
      OurTeamModel(title: "Brad pie", description: "CEO and Co founder", image: Assets.images.image1.image()),
      OurTeamModel(title: "Lee Lee", description: "CTO and Co founder", image: Assets.images.image2.image()),
      OurTeamModel(title: "Shan khan", description: "Head of Development", image: Assets.images.image3.image()),
      OurTeamModel(title: "Shan Lopez", description: "Head of marketing", image: Assets.images.image4.image()),
      OurTeamModel(title: "Lily", description: "Community manager", image: Assets.images.image1.image()),
      OurTeamModel(title: "Brad pie", description: "Team Lead", image: Assets.images.image2.image()),
      OurTeamModel(title: "Lee Lee", description: "Senior Developer", image: Assets.images.image3.image()),
      OurTeamModel(title: "Shan Khan", description: "Junior Developer", image: Assets.images.image4.image()),
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Assets.images.mobileBg.image(
                    height: 200, width: MediaQuery.of(context).size.width, fit: BoxFit.cover),
              ),
              teamCards(data)
            ],
          ),
          const Footer()
        ],
      ),
    );
  }

  Widget teamCards(List<OurTeamModel> model) {
    return BlocBuilder<OurTeamBloc, OurTeamState>(
        buildWhen: (p, c) => p.cardIndex != c.cardIndex,
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 23.0, top: 70, right: 15, bottom: 30),
                child: Text(
                  LanguageTranslation.current.team_title,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontFamily: FontFamily.gothic,
                      color: ColorName.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 36,
                      letterSpacing: 2),
                ),
              ),
              SizedBox(
                height: 550,
                child: PageView.builder(
                  padEnds: true,
                  itemCount: model.length,
                  onPageChanged: (index) {
                    bloc.add(CardIndexChanged(index: index));
                  },
                  physics: const BouncingScrollPhysics(),
                  controller: PageController(viewportFraction: 0.9, initialPage: 1),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        right: index != model.length - 1 ? 20.0 : 0,
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.width,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                            color: ColorName.color0D0B16, borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30.0, left: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                model[index].title,
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  fontFamily: FontFamily.gothic,
                                  color: ColorName.primaryColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                model[index].description,
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  fontFamily: FontFamily.gothic,
                                  color: ColorName.primaryColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              const Spacer(),
                              Center(child: model[index].image)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(model.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: index == state.cardIndex ? 8 : 4,
                        width: index == state.cardIndex ? 8 : 4,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: index == state.cardIndex ? ColorName.primaryColor : Colors.transparent,
                            border: Border.all(width: 1, color: ColorName.primaryColor)),
                      ),
                    );
                  })),

              const SizedBox(
                height: 30,
              ),
            ],
          );
        });
  }
}
