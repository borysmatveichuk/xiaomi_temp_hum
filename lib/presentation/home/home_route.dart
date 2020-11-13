import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xiaomi_temp_hum/data/device_data.dart';
import 'package:xiaomi_temp_hum/presentation/app_routes.dart';
import 'package:xiaomi_temp_hum/presentation/device/device_route_arguments.dart';

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Devices'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Provider.of<DeviceData>(context).scanDevices();
              },
              child: Icon(
                Icons.search,
                size: 26,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          child: DevicesListWidget(),
        ),
      ),
    );
  }
}

class DevicesListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DeviceData>(builder: (context, deviceData, child) {
      return deviceData.devices.length == 0
          ? Text('No devices')
          : ListView.builder(
              itemCount: deviceData.devices.length,
              itemBuilder: (context, idx) {
                return ListTile(
                  title: Text(
                    deviceData.devices[idx].name ??
                        ' ' + deviceData.devices[idx].identifier,
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.deviceDetails,
                      arguments: DeviceRouteArguments(
                        deviceData.devices[idx],
                      ),
                    );
                  },
                );
              });
    });
  }
}
