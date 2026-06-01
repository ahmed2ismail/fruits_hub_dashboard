import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/features/dashboard/views/dashboard_view.dart';

// this function is declared in the lib/core/helper/on_generate_routes.dart file and is used in the main.dart file to generate routes for the app. It takes a RouteSettings object as a parameter and returns a Route object. The RouteSettings object contains the name of the route that is being navigated to. The function uses a switch statement to determine which route to return based on the name of the route. If the name of the route matches one of the cases in the switch statement, it returns a MaterialPageRoute with the corresponding view. If the name of the route does not match any of the cases, it returns a MaterialPageRoute with the SplashView as the default view.
// في ال MaterialApp:
// onGenerateRoute: onGenerateRoute,
// initialRoute: DashboardView.routeName,

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    // the route name is defined in the DashboardView class as a static constant variable.
    // const String routeName = 'dashboard_view' is defined in DashboardView class

    case DashboardView.routeName:
      return MaterialPageRoute(builder: (context) => const DashboardView());

    default:
      return MaterialPageRoute(builder: (context) => const DashboardView());
  }
}
