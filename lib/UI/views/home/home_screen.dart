
import 'package:flutter/material.dart';

import '../../../Const/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 20),
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.85),
                  itemBuilder: (_,index){
                    return Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.grayColor.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: const Offset(0, 3))
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/images/bkash.png',height: 100,),

                          const Text('laptop',style: TextStyle(fontSize: 16),),

                          const Text('\$${20.20}',style: TextStyle(fontSize: 14),),
                        ],
                      ),
                    );
                  }),
            );
          }),
    );
  }
}
