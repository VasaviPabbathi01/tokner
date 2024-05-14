import 'package:flutter/material.dart';
import 'package:tokner/src/presentation/ui/homePage/homepage.dart';
import 'package:tokner/src/presentation/widget/touch_effect.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../generated/l10n.dart';

class AppLogo extends StatelessWidget {
  final int indexValue;
  const AppLogo({super.key,this.indexValue = 0});

  @override
  Widget build(BuildContext context) {
    return TouchEffect(
      onTap: (){
        if(indexValue != 5){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Homepage()));
        }
      },
      child: Row(
        children: [
          Assets.images.appLogo.image(width: 47, height: 29),
          Text(
            LanguageTranslation.current.tokners,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: ColorName.primaryColor, fontWeight: FontWeight.w600, letterSpacing: 2, fontFamily: FontFamily.gothic),
          ),
        ],
      ),
    );
  }
}
