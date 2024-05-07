import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokner/src/presentation/ui/homePage/bloc/homepage_bloc.dart';
import 'package:tokner/src/presentation/ui/homePage/component/footer_component.dart';

import '../../../../gen/colors.gen.dart';
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
    return   const Scaffold(
      backgroundColor: ColorName.backGround,
      body: SingleChildScrollView(
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
}
