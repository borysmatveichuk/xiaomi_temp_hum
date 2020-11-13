import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xiaomi_temp_hum/data/device_data.dart';
import 'package:xiaomi_temp_hum/data/device_details_data.dart';
import 'package:xiaomi_temp_hum/presentation/app_routes.dart';
import 'package:xiaomi_temp_hum/presentation/device/device_route.dart';
import 'package:xiaomi_temp_hum/presentation/device/device_route_arguments.dart';
import 'package:xiaomi_temp_hum/presentation/home/home_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DeviceData(),
      child: MaterialApp(
        title: 'Xiaomi temperature',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeRoute(),
        onGenerateRoute: (settings) {
          if (settings.name == AppRoutes.deviceDetails) {
            return _createDeviceDetailsRoute(settings);
          } else {
            return null;
          }
        },
      ),
    );
  }

  _createDeviceDetailsRoute(RouteSettings settings) {
    final DeviceRouteArguments args = settings.arguments;
    return MaterialPageRoute(builder: (BuildContext context) {
      return ChangeNotifierProvider(
        create: (context) => DeviceDetailsData(args.device),
        child: DeviceRoute(),
      );
    });
  }
}
