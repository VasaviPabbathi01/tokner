import 'package:data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tokner/app.dart';
import 'package:tokner/src/presentation/ui/our_team/bloc/our_team_bloc.dart';
import 'package:tokner/src/presentation/ui/our_team/bloc/our_team_event.dart';
import 'package:tokner/src/presentation/ui/our_team/bloc/our_team_state.dart';
import 'package:tokner/src/presentation/widget/footer.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../base/bloc_page/base_page_state.dart';
import '../../../widget/webappbar.dart';

class OurTeamDesktop extends StatefulWidget {
  const OurTeamDesktop({super.key});

  @override
  State<OurTeamDesktop> createState() => _OurTeamDesktopState();
}

class _OurTeamDesktopState extends BasePageState<OurTeamDesktop, OurTeamBloc> {
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
    final ScrollController controller = ScrollController();
    return SingleChildScrollView(
      child: Column(children: [
        BlocBuilder<OurTeamBloc, OurTeamState>(
          builder: (context, state) {
            return Stack(
              children: [
                Assets.images.backGround.image(width: MediaQuery.of(context).size.width, fit: BoxFit.cover),
                Positioned(bottom: -40, child: Assets.images.webFotter.image(height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,fit: BoxFit.cover)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 28.0, right: 28, top: 10),
                      child: WebAppBar(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.07),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Our Team",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontFamily: FontFamily.gothic, color: ColorName.primaryColor, fontWeight: FontWeight.w700, fontSize: 36, letterSpacing: -2),
                          ),
                          const Spacer(),
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: ColorName.primaryColor.withOpacity(0.05), width: 2)),
                            child: IconButton(
                              onPressed: () {
                                bloc.add(CardIndexDecrement(index: state.cardIndex, controller: controller, width: MediaQuery.of(context).size.width * 0.2));
                              },
                              icon: const Icon(
                                Icons.arrow_back_outlined,
                                color: ColorName.primaryColor,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: ColorName.primaryColor.withOpacity(0.05), width: 2)),
                            child: IconButton(
                              onPressed: () {
                                bloc.add(CardIndexIncrement(index: state.cardIndex, controller: controller, width: MediaQuery.of(context).size.width * 0.2));
                              },
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: ColorName.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 350,
                      child: ListView.separated(
                          controller: controller,
                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.07),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: ColorName.color0D0B16),
                              child: Stack(
                                children: [
                                  if (index == state.cardIndex) ...[Align(alignment: Alignment.bottomCenter, child: Assets.images.ourteamBackground.image())],
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width * 0.15,
                                          child: Text(
                                            data[index].title,
                                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                  fontFamily: FontFamily.gothic,
                                                  color: ColorName.primaryColor,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 18,
                                                ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width * 0.15,
                                          child: Text(
                                            data[index].description,
                                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                  fontFamily: FontFamily.gothic,
                                                  color: ColorName.primaryColor,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        const SizedBox(height: 17),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: SizedBox(
                                            height: 270,
                                            child: data[index].image,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 12,
                              )),
                    ),
                    const SizedBox(height: 30),
                    const Footer(),
                    const SizedBox(height: 50),
                  ],
                ),
              ],
            );
          },
        ),
      ]),
    );
  }
}
