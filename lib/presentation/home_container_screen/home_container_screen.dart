import 'package:flutter/material.dart';
import 'package:weave/core/app_export.dart';
import 'package:weave/presentation/archived_message_tab_container_page/archived_message_tab_container_page.dart';
import 'package:weave/presentation/events_tab_container_page/events_tab_container_page.dart';
import 'package:weave/presentation/home_page/home_page.dart';
import 'package:weave/presentation/new_post_page/new_post_page.dart';
import 'package:weave/presentation/user_profile_tab_container_page/user_profile_tab_container_page.dart';
import 'package:weave/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Calendar:
        return AppRoutes.eventsTabContainerPage;
      case BottomBarEnum.Grid:
        return AppRoutes.newPostPage;
      case BottomBarEnum.Mail:
        return AppRoutes.archivedMessageTabContainerPage;
      case BottomBarEnum.User:
        return AppRoutes.userProfileTabContainerPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.eventsTabContainerPage:
        return EventsTabContainerPage();
      case AppRoutes.newPostPage:
        return NewPostPage();
      case AppRoutes.archivedMessageTabContainerPage:
        return ArchivedMessageTabContainerPage();
      case AppRoutes.userProfileTabContainerPage:
        return UserProfileTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
