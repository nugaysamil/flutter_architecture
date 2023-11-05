import 'package:architecture_template_v2/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template_v2/feature/home/view/widget/home_app_bar.dart';
import 'package:architecture_template_v2/product/init/language/locale_keys.g.dart';
import 'package:architecture_template_v2/product/init/product_localization.dart';
import 'package:architecture_template_v2/product/navigation/app_router.dart';
import 'package:architecture_template_v2/product/utility/constants/enums/locales.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

@RoutePage()

// ignore: public_member_api_docs
final class HomeView extends StatefulWidget {
  // ignore: public_member_api_docs
  const HomeView({super.key, });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //  Assets.icons.icLove.svg(package: 'gen'),
          Assets.lottie.animZombie.lottie(package: 'gen'),
          ElevatedButton(
            onPressed: () async {
              await context.router.push<bool?>(HomeDetailRoute(id: '1'));
            },
            child: const Text(''),
          ),
          const Text('Change Language'),
          ElevatedButton(
            onPressed: () {
              ProductLocalization.updateLanguage(
                context: context,
                value: Locales.en,
              );
            },
            child: Text(
              LocaleKeys.general_button_save,
              style: Theme.of(context).textTheme.bodySmall,
            ).tr(
              args: ['Samil'],
            ),
          ),
        ],
      ),
    );
  }
}
