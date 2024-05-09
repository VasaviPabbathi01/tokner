import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tokner/app.dart';

class YearComponent extends StatefulWidget {
  const YearComponent({super.key});

  @override
  State<YearComponent> createState() => _YearComponentState();
}

class _YearComponentState extends State<YearComponent> {
  @override
  Widget build(BuildContext context) {
    var deviceScreenType = getDeviceType(MediaQuery.of(context).size);
    List<YearModel> data = [
      YearModel(year: '1', color: ColorName.buttonColor, title: 'Day 1 - Day 90', description: '10', subText: '900'),
      YearModel(year: '1', color: ColorName.colorFFD100, title: 'Day 90 - Day 365', description: '5', subText: '1375'),
      YearModel(year: '2', color: ColorName.color0F87CA, title: '', description: '4', subText: '1460'),
      YearModel(year: '3', color: ColorName.colorE20613, title: '', description: '3', subText: '195'),
      YearModel(year: '4', color: ColorName.buttonColor, title: '', description: '2', subText: '730'),
      YearModel(year: '5', color: ColorName.colorFFD100, title: '', description: '1', subText: '365'),
      YearModel(year: '6', color: ColorName.color0F87CA, title: '', description: '1', subText: '365'),
      YearModel(year: '7', color: ColorName.colorE20613, title: '', description: '1', subText: '365'),
      YearModel(year: '8', color: ColorName.buttonColor, title: '', description: '1', subText: '345'),
    ];
    return Center(
      child: SingleChildScrollView(
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,
          spacing: 15,
          children: data
              .map((data) => Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    padding: const EdgeInsets.only(top: 8),
                    height: deviceScreenType == DeviceScreenType.mobile ? 170 : 175,
                    width: deviceScreenType == DeviceScreenType.mobile ? MediaQuery.of(context).size.width * 0.45 : 246,
                    decoration: BoxDecoration(color: ColorName.color171B29.withOpacity(0.7), borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                    boxShadow: [BoxShadow(color: data.color.withOpacity(0.25), blurRadius: 25, offset: const Offset(0, 15))],
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(8), bottomRight: Radius.circular(50), topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                                    color: data.color),
                              ),
                              const SizedBox(width: 12),
                              Text(
                                "${LanguageTranslation.current.year_text} ${data.year}",
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontSize: deviceScreenType == DeviceScreenType.mobile ? 12 : 14, fontWeight: FontWeight.w700, color: data.color, fontFamily: FontFamily.gothic),
                              ),
                            ],
                          ),
                          if (data.title.isNotEmpty) ...[const SizedBox(height: 10)],
                          Text(
                            data.title,
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontSize: deviceScreenType == DeviceScreenType.mobile ? 14 : 18,
                                fontWeight: FontWeight.w700,
                                color: ColorName.primaryColor,
                                fontFamily: FontFamily.gothic),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "${data.description} ${LanguageTranslation.current.tokens_per_day}",
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontSize: deviceScreenType == DeviceScreenType.mobile ? 15 : 20,
                                fontWeight: FontWeight.w400,
                                color: ColorName.primaryColor.withOpacity(0.7),
                                fontFamily: FontFamily.gothic),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "(${data.subText} ${LanguageTranslation.current.m_tokens})",
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontSize: deviceScreenType == DeviceScreenType.mobile ? 12 : 14,
                                fontWeight: FontWeight.w400,
                                color: ColorName.primaryColor.withOpacity(0.7),
                                fontFamily: FontFamily.gothic),
                          ),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
