import 'package:architecture_template_v2/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template_v2/feature/home/view/widget/home_app_bar.dart';
import 'package:architecture_template_v2/product/widget/padding/project_padding.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';
import 'package:widgets/widgets.dart';

@RoutePage()

// ignore: public_member_api_docs
final class HomeView extends StatefulWidget {
  // ignore: public_member_api_docs
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  List<User> _users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _users = await loginService.users();
          setState(
            () {},
          );
        },
      ),
      appBar: const HomeAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                const ProjectPadding.allNormal() + const EdgeInsets.all(10),
            child: AdaptAllView(
              phone: Text(
                ''.ext.version,
                style: context.general.textTheme.titleLarge,
              ),
              tablet: Text(
                ''.ext.version,
                style: context.general.textTheme.bodyLarge,
              ),
              desktop: Text(
                ''.ext.version,
                style: context.general.textTheme.headlineLarge,
              ),
            ),
          ),
          Text(
            'Samil',
            style: context.general.textTheme.titleLarge?.copyWith(
              color: 'fcb103'.ext.color,
              backgroundColor: Colors.red,
            ),
          ),
          SizedBox(
            height: context.sized.dynamicHeight(0.4),
          ),
         
          Expanded(
            child: ListView.builder(
              itemCount: _users.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_users[index].userId.toString()),
                  subtitle: Text(_users[index].body.toString()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
