// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../../features/navigation/widget/navigation_screen.dart' as _i1;

class RootRouter extends _i2.RootStackRouter {
  RootRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    NavigationRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigationScreen());
    }
  };

  @override
  List<_i2.RouteConfig> get routes =>
      [_i2.RouteConfig(NavigationRoute.name, path: '/')];
}

/// generated route for
/// [_i1.NavigationScreen]
class NavigationRoute extends _i2.PageRouteInfo<void> {
  const NavigationRoute() : super(NavigationRoute.name, path: '/');

  static const String name = 'NavigationRoute';
}
