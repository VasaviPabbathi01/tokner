import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tokner/app.dart';
import 'package:tokner/src/presentation/ui/distribution_module/distribution_page.dart';
import 'package:tokner/src/presentation/ui/our_team/our_team_component.dart';
import 'package:tokner/src/presentation/widget/touch_effect.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../../generated/l10n.dart';
import 'app_logo.dart';

class WebAppBar extends StatefulWidget {
  const WebAppBar({
    super.key,
  });

  @override
  State<WebAppBar> createState() => _WebAppBarState();
}

class _WebAppBarState extends State<WebAppBar> {
  LanguageTranslation text = LanguageTranslation.current;
  @override
  Widget build(BuildContext context) {
    List<String> actionTags = ['Our team', 'Tokens', 'Connect wallet', 'Light paper'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const AppLogo(),
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
          return TouchEffect(
            onTap: (){
              if(index == 0){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OurTeamPage()));
              }
              if(index == 1){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DistributionPage()));
              }
            },
            child: Text(
              actionTags[index],
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ColorName.primaryColor, fontWeight: FontWeight.w600, letterSpacing: 2, fontFamily: FontFamily.gothic),
            ),
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
}
