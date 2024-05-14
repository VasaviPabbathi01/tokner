import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tokner/src/presentation/ui/our_team/component/our_team_desktop.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../../generated/l10n.dart';
import '../../widget/app_logo.dart';
import '../distribution_module/distribution_page.dart';
import 'component/our_team_mobile.dart';

class OurTeamPage extends StatefulWidget {
  const OurTeamPage({super.key});

  @override
  State<OurTeamPage> createState() => _OurTeamPageState();
}

class _OurTeamPageState extends State<OurTeamPage> {
  LanguageTranslation text = LanguageTranslation.current;

  @override
  Widget build(BuildContext context) {
    List<String> actionTags = ['Our team', 'Tokens', 'Connect wallet', 'Light paper'];
    var deviceScreenType = getDeviceType(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: ColorName.backGround,
      appBar: deviceScreenType == DeviceScreenType.mobile || deviceScreenType == DeviceScreenType.tablet
          ? AppBar(
        automaticallyImplyLeading: false,
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
      body: ResponsiveBuilder(builder: (BuildContext context, SizingInformation sizingInformation) {
        if(sizingInformation.isDesktop){
          return const OurTeamDesktop();
        }
        return const OurTeamMobile();
      },),
    );
  }
}