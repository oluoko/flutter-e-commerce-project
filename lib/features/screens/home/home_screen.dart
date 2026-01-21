import 'package:e_store/common/widgets/primary_header_container.dart';
import 'package:flutter/material.dart';
import 'widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




