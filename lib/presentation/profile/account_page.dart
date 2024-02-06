import 'package:e_commerce/application/auth/auth_bloc.dart';
import 'package:e_commerce/application/products/products_cubit.dart';
import 'package:e_commerce/presentation/profile/product_details.dart';
import 'package:e_commerce/presentation/profile/widgets/my_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CreateProductPost()));
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    state.maybeMap(
                      authenticated: (state) => const SizedBox(
                          width: 100,
                          height: 100,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('images/Profile Picture.png'),
                            // AssetImage('images/Profile Picture.png'),
                          )),
                      orElse: () => const SizedBox(
                          width: 100,
                          height: 100,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('images/Profile Picture.png'),
                          )),
                    ),
                    state.maybeMap(
                      authenticated: (state) => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.user.displayName!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            state.user.email!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      orElse: () => const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'user name',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'user email',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuButton(
                      itemBuilder: (BuildContext context) => [
                        const PopupMenuItem(
                          value: 1,
                          child: Text('change account info'),
                        ),
                        const PopupMenuItem(
                          value: 2,
                          child: Text('orders'),
                        ),
                        const PopupMenuItem(
                          value: 3,
                          child: Text('Sign Out'),
                        ),
                      ],
                      icon: const Icon(Icons.settings),
                      onSelected: (value) {
                        print('Value selected: $value');
                      },
                    ),
                  ],
                );
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Your Products",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              BlocBuilder<ProductsCubit, ProductState>(
                  builder: (context, state) {
                return Center(
                    child: state.maybeMap(
                  // initial: (_) => const SizedBox(
                  //     height: 250,
                  //     child: Center(child: CircularProgressIndicator())),
                  productError: (_) => const SizedBox(
                      height: 250, child: Center(child: Text('error'))),
                  productLoaded: (state) {
                    return SizedBox(
                        height: 500,
                        child: GridView.builder(
                          itemCount: 2,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 1,
                            mainAxisSpacing: 1,
                            childAspectRatio: 1 / 1.25,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return MyCard(state.allData[index]);
                          },
                        ));
                  },
                  // loading: (_) => const SizedBox(
                  //     height: 250,
                  //     child: Center(child: CircularProgressIndicator())),
                  // empty: (_) => const SizedBox(
                  //     height: 250, child: Center(child: Text('No Posts Yet1'))),
                  orElse: () => const SizedBox(
                      height: 250, child: Center(child: Text('No Posts Yet'))),
                ));
                // GridView.count(
                //   crossAxisCount: 3,
                //   children: List.generate(100, (index) {
                //     return Center(child: TestCards());
                //   }),
                // )
              })
            ],
          )
        ],
      ),
    );
  }
}

// class TestCards extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       height: 300,
//       child: Column(
//         children: [Text('product name')],
//       ),
//     );
//   }
// }
