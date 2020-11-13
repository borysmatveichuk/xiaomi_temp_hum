import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xiaomi_temp_hum/data/device_details_data.dart';

class DeviceRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Device ${Provider.of<DeviceDetailsData>(context).device.identifier}'),
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
    var connectionState = Provider.of<DeviceDetailsData>(context).deviceState;
    return Consumer<DeviceDetailsData>(
        builder: (context, deviceDetails, child) {
      return Container(
        child: Column(children: [
          SizedBox(height: 16,),
          Text('Device details ${deviceDetails.device.identifier}'),
          SizedBox(height: 32,),
          MaterialButton(
            child: Text('Connect'),
            color: Colors.lightBlueAccent,
            onPressed: () {
              deviceDetails.connectToDevice();
            },
          ),
          SizedBox(height: 32,),
          Text('Connection state: ${deviceDetails.deviceState}'),
          SizedBox(height: 32,),
          Text('Battery level: ${deviceDetails.batteryLevel}'),
          SizedBox(height: 32,),
          Text('Sensor data: ${deviceDetails.sensorData}'),
        ]),
      );
    });
  }
}
