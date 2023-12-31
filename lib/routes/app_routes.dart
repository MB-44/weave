import 'package:flutter/material.dart';
import 'package:weave/presentation/login_screen/login_screen.dart';
import 'package:weave/presentation/signup_screen/signup_screen.dart';
import 'package:weave/presentation/home_container_screen/home_container_screen.dart';
import 'package:weave/presentation/search_tab_container_screen/search_tab_container_screen.dart';
import 'package:weave/presentation/search_results_screen/search_results_screen.dart';
import 'package:weave/presentation/single_story_screen/single_story_screen.dart';
import 'package:weave/presentation/single_post_screen/single_post_screen.dart';
import 'package:weave/presentation/comments_screen/comments_screen.dart';
import 'package:weave/presentation/single_video_screen/single_video_screen.dart';
import 'package:weave/presentation/single_event_screen/single_event_screen.dart';
import 'package:weave/presentation/notifications_screen/notifications_screen.dart';
import 'package:weave/presentation/video_chat_screen/video_chat_screen.dart';
import 'package:weave/presentation/chat_screen/chat_screen.dart';
import 'package:weave/presentation/group_chat_screen/group_chat_screen.dart';
import 'package:weave/presentation/settings_screen/settings_screen.dart';
import 'package:weave/presentation/my_friends_screen/my_friends_screen.dart';
import 'package:weave/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String searchPage = '/search_page';

  static const String searchTabContainerScreen = '/search_tab_container_screen';

  static const String searchResultsScreen = '/search_results_screen';

  static const String singleStoryScreen = '/single_story_screen';

  static const String singlePostScreen = '/single_post_screen';

  static const String commentsScreen = '/comments_screen';

  static const String singleVideoScreen = '/single_video_screen';

  static const String eventsPage = '/events_page';

  static const String eventsTabContainerPage = '/events_tab_container_page';

  static const String singleEventScreen = '/single_event_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String newPostPage = '/new_post_page';

  static const String videoChatScreen = '/video_chat_screen';

  static const String chatScreen = '/chat_screen';

  static const String messagesPage = '/messages_page';

  static const String archivedMessagePage = '/archived_message_page';

  static const String archivedMessageTabContainerPage =
      '/archived_message_tab_container_page';

  static const String groupChatScreen = '/group_chat_screen';

  static const String settingsScreen = '/settings_screen';

  static const String userProfilePage = '/user_profile_page';

  static const String userProfileTabContainerPage =
      '/user_profile_tab_container_page';

  static const String galleryPage = '/gallery_page';

  static const String myFriendsScreen = '/my_friends_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignupScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    searchTabContainerScreen: (context) => SearchTabContainerScreen(),
    searchResultsScreen: (context) => SearchResultsScreen(),
    singleStoryScreen: (context) => SingleStoryScreen(),
    singlePostScreen: (context) => SinglePostScreen(),
    commentsScreen: (context) => CommentsScreen(),
    singleVideoScreen: (context) => SingleVideoScreen(),
    singleEventScreen: (context) => SingleEventScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    videoChatScreen: (context) => VideoChatScreen(),
    chatScreen: (context) => ChatScreen(),
    groupChatScreen: (context) => GroupChatScreen(),
    settingsScreen: (context) => SettingsScreen(),
    myFriendsScreen: (context) => MyFriendsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
