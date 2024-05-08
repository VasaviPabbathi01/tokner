import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tokner/src/presentation/ui/homePage/bloc/homepage_bloc.dart';
import 'package:tokner/src/presentation/ui/homePage/component/footer_component.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../../generated/l10n.dart';
import '../../base/bloc_page/base_page_state.dart';
import 'component/cards_component.dart';
import 'component/cover_page.dart';
import 'component/tokner_coming_component.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends BasePageState<Homepage,HomePageBloc> {
  @override
  Widget buildPage(BuildContext context) {
    List<String> actionTags = ['Our team', 'Tokens', 'Connect wallet', 'Light paper'];
    var deviceScreenType = getDeviceType(MediaQuery.of(context).size);
    return  Scaffold(
      backgroundColor: ColorName.backGround,
      appBar: deviceScreenType == DeviceScreenType.mobile || deviceScreenType == DeviceScreenType.tablet
      ? AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: appLogo(),
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
                onPressed: () {},
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
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CoverPage(),
            CardsComponent(),
            ToknerComingComponent(),
            FooterComponent(),
          ],
        ),
      ),
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
}
