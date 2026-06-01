import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/features/dashboard/widgets/dashboard_view_body.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  static const String routeName = 'dashboard_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: const DashboardViewBody()));
  }
}
