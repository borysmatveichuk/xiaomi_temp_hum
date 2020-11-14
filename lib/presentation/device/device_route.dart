import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xiaomi_temp_hum/data/device_details_data.dart';

class DeviceRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '${Provider.of<DeviceDetailsData>(context).device.name ?? 'unknown device'}'),
      ),
      body: SafeArea(
        child: Container(
          child: DeviceDetailsWidget(),
        ),
      ),
    );
  }
}

class DeviceDetailsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DeviceDetailsData>(
        builder: (context, deviceDetails, child) {
      return Container(
        margin: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            Text('Device id: ${deviceDetails.device.identifier}'),
            SizedBox(
              height: 32,
            ),
            MaterialButton(
              child: Text('Connect'),
              color: Colors.lightBlueAccent,
              onPressed: () {
                deviceDetails.connectToDevice();
              },
            ),
            SizedBox(
              height: 32,
            ),
            Text('Connection state: ${deviceDetails.deviceState}'),
            SizedBox(
              height: 32,
            ),
            Text('Battery level: ${deviceDetails.batteryLevel}'),
            SizedBox(
              height: 32,
            ),
            Text('Sensor data: ${deviceDetails.sensorData}'),
          ],
        ),
      );
    });
  }
}
