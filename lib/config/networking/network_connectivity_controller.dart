import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class NetworkConnectivityController extends GetxController {
  RxBool isConnected = false.obs;

  Future<void> listenConnectivity() async {
    Connectivity().onConnectivityChanged.listen(
      (List<ConnectivityResult> connectivityResult) {
        if (connectivityResult.contains(ConnectivityResult.mobile)) {
          // Mobile network available.
          isConnected.value = true;
        } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
          // Wi-fi is available.
          // Note for Android:
          // When both mobile and Wi-Fi are turned on system will return Wi-Fi only as active network type
          isConnected.value = true;
        } else if (connectivityResult.contains(ConnectivityResult.ethernet)) {
          // Ethernet connection available.
          isConnected.value = true;
        } else if (connectivityResult.contains(ConnectivityResult.vpn)) {
          // Vpn connection active.
          // Note for iOS and macOS:
          // There is no separate network interface type for [vpn].
          // It returns [other] on any device (also simulator)
          isConnected.value = true;
        } else if (connectivityResult.contains(ConnectivityResult.bluetooth)) {
          // Bluetooth connection available.
          isConnected.value = true;
        } else if (connectivityResult.contains(ConnectivityResult.other)) {
          // Connected to a network which is not in the above mentioned networks.
          isConnected.value = true;
        } else if (connectivityResult.contains(ConnectivityResult.none)) {
          isConnected.value = false;
        }
      },
    );
  }

  void checkConnectivity() async {
    List<ConnectivityResult> connectivityResult =
        await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.mobile)) {
      // Mobile network available.
      isConnected.value = true;
    } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
      // Wi-fi is available.
      // Note for Android:
      // When both mobile and Wi-Fi are turned on system will return Wi-Fi only as active network type
      isConnected.value = true;
    } else if (connectivityResult.contains(ConnectivityResult.ethernet)) {
      // Ethernet connection available.
      isConnected.value = true;
    } else if (connectivityResult.contains(ConnectivityResult.vpn)) {
      // Vpn connection active.
      // Note for iOS and macOS:
      // There is no separate network interface type for [vpn].
      // It returns [other] on any device (also simulator)
      isConnected.value = true;
    } else if (connectivityResult.contains(ConnectivityResult.bluetooth)) {
      // Bluetooth connection available.
      isConnected.value = true;
    } else if (connectivityResult.contains(ConnectivityResult.other)) {
      // Connected to a network which is not in the above mentioned networks.
      isConnected.value = true;
    } else if (connectivityResult.contains(ConnectivityResult.none)) {
      isConnected.value = false;
    }
  }
}
