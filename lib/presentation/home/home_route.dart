import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xiaomi_temp_hum/data/devices_scan_data.dart';
import 'package:xiaomi_temp_hum/data/devices_scan_states.dart';
import 'package:xiaomi_temp_hum/presentation/app_routes.dart';
import 'package:xiaomi_temp_hum/presentation/device/device_route_arguments.dart';

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DevicesScanData>(
      builder: (context, deviceData, child) {
        return WillPopScope(
          onWillPop: () async {
            deviceData.disposeResources();
            return true;
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text('Devices'),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: () {
                      deviceData.scanDevices();
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
                child: deviceData.state.when(
                  (value) {
                    if (value.isEmpty) {
                      return NoDevicesWidget();
                    } else {
                      return DevicesListWidget();
                    }
                  },
                  scanning: () => ScanDevicesWidget(),
                  error: (message) => ErrorWidget(message),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class DevicesListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DevicesScanData>(
      builder: (context, deviceData, child) {
        final devices = (deviceData.state as Data).value;
        return ListView.builder(
          itemCount: devices.length,
          itemBuilder: (context, idx) {
            return ListTile(
              title: Text(
                devices[idx].name ?? 'unknown device',
              ),
              subtitle: Text(devices[idx].identifier),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.deviceDetails,
                  arguments: DeviceRouteArguments(
                    devices[idx],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

class NoDevicesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('No devices'),
      ),
    );
  }
}

class ErrorWidget extends StatelessWidget {
  final String errorMessage;

  ErrorWidget(this.errorMessage);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('An error has occurred:'),
          SizedBox(
            height: 16,
          ),
          Text(errorMessage),
        ],
      ),
    );
  }
}

class ScanDevicesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
            SizedBox(
              height: 16,
            ),
            Text('Scanning...'),
          ],
        ),
      ),
    );
  }
}
