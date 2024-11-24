import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TDeviceUtils {
  // 키보드 숨기기
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  // 상태바 색상 설정
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  // 가로모드인지 체크
  static bool isLandScapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  // 세로모드인지 체크
  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  // 전체화면 모드 설정
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  // 화면 높이 반환
  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  // 화면 너비 반환
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(Get.context!).size.width;
  }

  // 디바이스 픽셀 밀도 반환
  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  // 상태바 높이 반환
  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  // 네비게이션 바 높이 반환
  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  // 앱 바 높이 반환
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  // 키보드 높이 반환
  static double getKeyboardHeight() {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  // 키보드 활성화 체크
  static Future<bool> isKeyboardVisible() async {
    final viewInsets = View.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;
  }

  // 실제 디바이스인지 체크
  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;
  }

  // 디바이스 진동
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  // 앱에서 허용할 방향 설정
  static Future<void> setPreferredOrientations(List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  // 상태바 숨기기
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  // 상태바 표시
  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }

  // 인터넷 연결 체크
  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  // IOS 체크
  static bool isIOS() {
    return Platform.isIOS;
  }

  // 안드로이드 체크
  static bool isAndroid() {
    return Platform.isAndroid;
  }

  // 외부 브라우저에서 URL 열기(리다이렉션 or 특정 앱)
  static void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
