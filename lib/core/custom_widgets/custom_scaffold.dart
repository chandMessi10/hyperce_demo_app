import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:hyperce_demo_app/config/networking/network_connectivity_controller.dart';
import 'package:hyperce_demo_app/config/services/locator.dart';

class CustomScaffold extends StatefulWidget implements PreferredSizeWidget {
  const CustomScaffold({
    required this.scaffoldBody,
    this.appBar,
    this.canPop,
    this.bottomNavBar,
    this.drawerWidget,
    this.fab,
    super.key,
  });

  final Widget scaffoldBody;
  final PreferredSizeWidget? appBar;
  final bool? canPop;
  final Widget? bottomNavBar;
  final Widget? drawerWidget;
  final Widget? fab;

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomScaffoldState extends State<CustomScaffold> {
  late NetworkConnectivityController _networkConnectivityController;

  @override
  void initState() {
    super.initState();
    _networkConnectivityController = getIt.get<NetworkConnectivityController>();
    SchedulerBinding.instance.addPostFrameCallback(
      (timeStamp) {
        _networkConnectivityController.checkConnectivity();
        _networkConnectivityController.listenConnectivity();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: false,
      child: PopScope(
        canPop: widget.canPop ?? true,
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: widget.appBar,
            drawer: widget.drawerWidget,
            body: Obx(() {
              if (!_networkConnectivityController.isConnected.value) {
                SchedulerBinding.instance.addPostFrameCallback(
                  (timeStamp) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showMaterialBanner(
                        MaterialBanner(
                          content: Text(
                            "No Internet Connection",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          actions: const [
                            SizedBox(
                              height: 24,
                              width: 24,
                              child: CircularProgressIndicator(),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                );
              } else {
                SchedulerBinding.instance.addPostFrameCallback(
                  (timeStamp) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).clearMaterialBanners();
                    }
                  },
                );
              }
              return SafeArea(
                child: widget.scaffoldBody,
              );
            }),
            bottomNavigationBar: widget.bottomNavBar,
            floatingActionButton: widget.fab,
          ),
        ),
      ),
    );
  }
}
