// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class LanguageTranslation {
  LanguageTranslation();

  static LanguageTranslation? _current;

  static LanguageTranslation get current {
    assert(_current != null,
        'No instance of LanguageTranslation was loaded. Try to initialize the LanguageTranslation delegate before accessing LanguageTranslation.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<LanguageTranslation> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = LanguageTranslation();
      LanguageTranslation._current = instance;

      return instance;
    });
  }

  static LanguageTranslation of(BuildContext context) {
    final instance = LanguageTranslation.maybeOf(context);
    assert(instance != null,
        'No instance of LanguageTranslation present in the widget tree. Did you add LanguageTranslation.delegate in localizationsDelegates?');
    return instance!;
  }

  static LanguageTranslation? maybeOf(BuildContext context) {
    return Localizations.of<LanguageTranslation>(context, LanguageTranslation);
  }

  /// `api error`
  String get error {
    return Intl.message(
      'api error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Some thing went wrong`
  String get err_something_went_wrong {
    return Intl.message(
      'Some thing went wrong',
      name: 'err_something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `We apologise for the inconvenience,\nplease check your internet connection`
  String get no_internet_subtext {
    return Intl.message(
      'We apologise for the inconvenience,\nplease check your internet connection',
      name: 'no_internet_subtext',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `No Internet connection`
  String get no_internet {
    return Intl.message(
      'No Internet connection',
      name: 'no_internet',
      desc: '',
      args: [],
    );
  }

  /// `Tokners`
  String get tokners {
    return Intl.message(
      'Tokners',
      name: 'tokners',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `At Tokners we are`
  String get at_tokens {
    return Intl.message(
      'At Tokners we are',
      name: 'at_tokens',
      desc: '',
      args: [],
    );
  }

  /// `Reimagining social media through the power of the blockchain.`
  String get cover_page_text {
    return Intl.message(
      'Reimagining social media through the power of the blockchain.',
      name: 'cover_page_text',
      desc: '',
      args: [],
    );
  }

  /// `We are creating social media 3.0 with influencers, celebrities and creators being able to launch their own digital currency by simply creating a profile with media content posted as Non fungible Tokens that can be owned and traded on the Tknrs network`
  String get cover_page_description {
    return Intl.message(
      'We are creating social media 3.0 with influencers, celebrities and creators being able to launch their own digital currency by simply creating a profile with media content posted as Non fungible Tokens that can be owned and traded on the Tknrs network',
      name: 'cover_page_description',
      desc: '',
      args: [],
    );
  }

  /// `Learn More`
  String get learn_more {
    return Intl.message(
      'Learn More',
      name: 'learn_more',
      desc: '',
      args: [],
    );
  }

  /// `2021`
  String get year {
    return Intl.message(
      '2021',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `Tokner is coming`
  String get tokner_is_coming {
    return Intl.message(
      'Tokner is coming',
      name: 'tokner_is_coming',
      desc: '',
      args: [],
    );
  }

  /// `Cryptocurrency adoption is at less than 1% of the global world population with some countries and entities actively fighting against its mass adoption and the smartest developers and nerds holding the fort.`
  String get description_1 {
    return Intl.message(
      'Cryptocurrency adoption is at less than 1% of the global world population with some countries and entities actively fighting against its mass adoption and the smartest developers and nerds holding the fort.',
      name: 'description_1',
      desc: '',
      args: [],
    );
  }

  /// `\nBitcoin was the first, and it has since grown to thousands of tokens launched all aiming to fix one problem or the other with some quite simply FOMOing the moment. Our goal is to bring mass adoption to the cryptocurrency space by dumbing it down. How far down? So down that even a celebrity can explain it in simple words to their followers and have them download an app, buy into the social currency of their favourite person and watch their\ninvestment as is with other crypto currency project. \n\nWe are trying to do to this space what investment apps did for the "nonexistent retail investors". We are gamefying digital currency, bringing in popular faces instead of hard to understand projects to make it the norm and inadvertently being the "gateway drug" for a lot of people to finally give this space a real look.`
  String get description_2 {
    return Intl.message(
      '\nBitcoin was the first, and it has since grown to thousands of tokens launched all aiming to fix one problem or the other with some quite simply FOMOing the moment. Our goal is to bring mass adoption to the cryptocurrency space by dumbing it down. How far down? So down that even a celebrity can explain it in simple words to their followers and have them download an app, buy into the social currency of their favourite person and watch their\ninvestment as is with other crypto currency project. \n\nWe are trying to do to this space what investment apps did for the "nonexistent retail investors". We are gamefying digital currency, bringing in popular faces instead of hard to understand projects to make it the norm and inadvertently being the "gateway drug" for a lot of people to finally give this space a real look.',
      name: 'description_2',
      desc: '',
      args: [],
    );
  }

  /// `\nA new digital economy is coming. People would be just as powerful as countries and creators would be paid beyond the peanuts that conventional social media platforms can offer.`
  String get description_3 {
    return Intl.message(
      '\nA new digital economy is coming. People would be just as powerful as countries and creators would be paid beyond the peanuts that conventional social media platforms can offer.',
      name: 'description_3',
      desc: '',
      args: [],
    );
  }

  /// `\nThere would be new markets and advertisers with little to offer would not find home there. Like Kanye said,`
  String get description_4 {
    return Intl.message(
      '\nThere would be new markets and advertisers with little to offer would not find home there. Like Kanye said,',
      name: 'description_4',
      desc: '',
      args: [],
    );
  }

  /// `"Personalities would become the new currency, and services would be built on top of them".`
  String get description_5 {
    return Intl.message(
      '"Personalities would become the new currency, and services would be built on top of them".',
      name: 'description_5',
      desc: '',
      args: [],
    );
  }

  /// `Well, Kanye didn't exactly say that, but it sounds like something we hope he would say.\n\nCurrency is digital, it has been that way for a while now, but this time there would be no dead presidents on the money, there would people like you on the money, and you would own it because it would make the most sense in the world.`
  String get description_6 {
    return Intl.message(
      'Well, Kanye didn\'t exactly say that, but it sounds like something we hope he would say.\n\nCurrency is digital, it has been that way for a while now, but this time there would be no dead presidents on the money, there would people like you on the money, and you would own it because it would make the most sense in the world.',
      name: 'description_6',
      desc: '',
      args: [],
    );
  }

  /// `Read More`
  String get read_more {
    return Intl.message(
      'Read More',
      name: 'read_more',
      desc: '',
      args: [],
    );
  }

  /// `Hide`
  String get hide {
    return Intl.message(
      'Hide',
      name: 'hide',
      desc: '',
      args: [],
    );
  }

  /// `Reimagining social media through the power of the blockchain.`
  String get title_text {
    return Intl.message(
      'Reimagining social media through the power of the blockchain.',
      name: 'title_text',
      desc: '',
      args: [],
    );
  }

  /// `We are creating social media 3.0 with influencers, celebrities and creators being able to launch their own digital currency by simply creating a profile with media content posted as Non fungible Tokens that can be owned and traded on the Tknrs network`
  String get cover_description {
    return Intl.message(
      'We are creating social media 3.0 with influencers, celebrities and creators being able to launch their own digital currency by simply creating a profile with media content posted as Non fungible Tokens that can be owned and traded on the Tknrs network',
      name: 'cover_description',
      desc: '',
      args: [],
    );
  }

  /// `Presale Details`
  String get presale_details {
    return Intl.message(
      'Presale Details',
      name: 'presale_details',
      desc: '',
      args: [],
    );
  }

  /// `Soft cap: `
  String get soft_cap {
    return Intl.message(
      'Soft cap: ',
      name: 'soft_cap',
      desc: '',
      args: [],
    );
  }

  /// `Hard cap: `
  String get hard_cap {
    return Intl.message(
      'Hard cap: ',
      name: 'hard_cap',
      desc: '',
      args: [],
    );
  }

  /// `What makes us different?\n\n`
  String get white_container_question {
    return Intl.message(
      'What makes us different?\n\n',
      name: 'white_container_question',
      desc: '',
      args: [],
    );
  }

  /// `We would only launch tokens with the express permission of the creators.\n\n`
  String get white_container_main_answer {
    return Intl.message(
      'We would only launch tokens with the express permission of the creators.\n\n',
      name: 'white_container_main_answer',
      desc: '',
      args: [],
    );
  }

  /// `There are several thousand celebrities and creators on twitter, tiktok, Instagram and YouTube with followings in the millions who we would be actively engaging before we go viral.\n\nWe would get them on our platform and they would see the opportunity to create a fan driven digital economy where their digital content can be traded as NFTs and their most loyal fans can have the monetary value of their creator's currency increase significantly as they promote their digital currency across their channels while our native token holders benefit from the Weentar popularity.`
  String get white_container_answer {
    return Intl.message(
      'There are several thousand celebrities and creators on twitter, tiktok, Instagram and YouTube with followings in the millions who we would be actively engaging before we go viral.\n\nWe would get them on our platform and they would see the opportunity to create a fan driven digital economy where their digital content can be traded as NFTs and their most loyal fans can have the monetary value of their creator\'s currency increase significantly as they promote their digital currency across their channels while our native token holders benefit from the Weentar popularity.',
      name: 'white_container_answer',
      desc: '',
      args: [],
    );
  }

  /// `How to buy`
  String get how_to_buy {
    return Intl.message(
      'How to buy',
      name: 'how_to_buy',
      desc: '',
      args: [],
    );
  }

  /// `© 2021 Tokners. All rights reserved.`
  String get footer_cp {
    return Intl.message(
      '© 2021 Tokners. All rights reserved.',
      name: 'footer_cp',
      desc: '',
      args: [],
    );
  }

  /// `Weentar is coming`
  String get weentar_is_coming {
    return Intl.message(
      'Weentar is coming',
      name: 'weentar_is_coming',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate
    extends LocalizationsDelegate<LanguageTranslation> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<LanguageTranslation> load(Locale locale) =>
      LanguageTranslation.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
