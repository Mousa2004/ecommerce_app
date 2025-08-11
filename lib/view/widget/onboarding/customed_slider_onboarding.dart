import 'package:ecommerce_app/core/class/apptheme.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class CustomedSliderOnboarding extends StatelessWidget {
  const CustomedSliderOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: onboardingList.length,
      itemBuilder: (context, index) => Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Apptheme.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(150),
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                  Image.asset(onboardingList[index].titleImage!),
                  SizedBox(height: 5),
                  Text(
                    onboardingList[index].title!,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Divider(color: Apptheme.white, endIndent: 150),
                  Text(
                    onboardingList[index].titleBody!,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),
          Image.asset(onboardingList[index].image!),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),
          Text(
            onboardingList[index].bodyTitle!,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              textAlign: TextAlign.center,
              onboardingList[index].body!,
              style: Theme.of(context).textTheme.bodyLarge!
                  .copyWith(color: Colors.black)
                  .copyWith(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
