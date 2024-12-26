import 'dart:ui';

import 'package:app_ecommerce/screens/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:app_ecommerce/screens/home/views/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class  HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  BuildContext? get contex => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Row(
          children: [
            //colocar imagem da logo
            Image.asset('temp',
            scale: 14,
            ),
            const SizedBox(width: 5,),
            const Text(
              'LULUIA',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30
              ),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: (){

          },
          icon: Icon(CupertinoIcons.cart)
            ,),
          IconButton(onPressed: (){
            context.read<SignInBloc>().add(SignOutRequired());
          },
            icon: Icon(CupertinoIcons.arrow_right_to_line)
            ,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              childAspectRatio: 9/16
            ),
            itemCount: 8,
            itemBuilder: (context, int i) {
              return Material(
                elevation: 3,
                color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: (){
                      Navigator.push(
                          context,
                            MaterialPageRoute<void>(
                              builder:(BuildContext context) => const DetailsScreen(),
                            )
                          );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                            'colocar uma foto'
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                  child: Text(
                                    "teste",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                  child: Text(
                                    "teste",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 8
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            "prata",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            "925",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$120.00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Text(
                                      "\$150.00",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.brown,
                                          fontWeight: FontWeight.w700,
                                          decoration: TextDecoration.lineThrough
                                      ),
                                    ),
                                  ],
                                ),
                                IconButton(
                                    onPressed:(){},
                                    icon: Icon(CupertinoIcons.add_circled_solid)
                                )
                              ]
                          ),
                        )
                      ],
                    ),
              );
            }
        ),
      ),
    );
  }
}
