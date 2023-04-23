import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfoBase {
  Future<bool> isConnected();

  Future<ConnectivityResult> get connectivityResult;

  Stream<ConnectivityResult> get onConnectivityChanged;
}

class NetworkInformation implements NetworkInfoBase {
  Connectivity connectivity;

  NetworkInformation(this.connectivity) {
    connectivity = connectivity;
  }

  //Check connecting to internet
  @override
  Future<bool> isConnected() async {
    final result = await connectivity.checkConnectivity();
    if (result != ConnectivityResult.none) {
      return true;
    }
    return false;
  }

  //Connectivity Result

  @override
  Future<ConnectivityResult> get connectivityResult async {
    return connectivity.checkConnectivity();
  }

  //Show changed connect in stream
  @override
  Stream<ConnectivityResult> get onConnectivityChanged =>
      connectivity.onConnectivityChanged;
}
