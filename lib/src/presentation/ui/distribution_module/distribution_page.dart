import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tokner/src/presentation/ui/distribution_module/component/supplycomponent.dart';
import 'package:tokner/src/presentation/ui/distribution_module/component/tokens_component.dart';
import 'package:tokner/src/presentation/ui/distribution_module/component/year_component.dart';
import 'package:tokner/src/presentation/widget/webappbar.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../../generated/l10n.dart';
import '../../widget/app_logo.dart';
import '../our_team/our_team_component.dart';

class DistributionPage extends StatefulWidget {
  const DistributionPage({super.key});

  @override
  State<DistributionPage> createState() => _DistributionPageState();
}

class _DistributionPageState extends State<DistributionPage> {
  @override
  Widget build(BuildContext context) {
    List<String> actionTags = ['Our team', 'Tokens', 'Connect wallet', 'Light paper'];
    var deviceScreenType = getDeviceType(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: ColorName.backGround,
      appBar: deviceScreenType == DeviceScreenType.mobile || deviceScreenType == DeviceScreenType.tablet
          ? AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const AppLogo(),
        flexibleSpace: Assets.images.mobileBg.image(height: 321, width: 628,fit: BoxFit.fitWidth),
        actions: [
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
                // tooltip: 'Show menu',
              );
            },
            menuChildren: List<MenuItemButton>.generate(
              actionTags.length,
                  (int index) => MenuItemButton(
                    onPressed: (){
                      if(index == 0){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const OurTeamPage()));
                      }
                      if(index == 1){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const DistributionPage()));
                      }
                    },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(actionTags[index],
                        style: const TextStyle(
                          fontFamily: FontFamily.gothic,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: ColorName.backGround,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ) : const PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: SizedBox(),
      ),
      body: SingleChildScrollView(
        child: ResponsiveBuilder(builder: (BuildContext context, SizingInformation sizingInformation) {
          if(sizingInformation.isDesktop){
            return const Column(
              children: [
                TokensDistribution(),
                YearComponent(),
                SupplyComponent(),
              ],
            );
          }
          return const Column(
            children: [
              TokensDistribution(),
              YearComponent(),
              SupplyComponent(),
            ],
          );
        },),
      ),
    );
  }
}
