
import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/application/auth/auth_bloc.dart';
import 'package:e_commerce/application/category/category_cubit.dart';
import 'package:e_commerce/application/products/products_cubit.dart';
import 'package:e_commerce/presentation/home/widgets/category_cards.dart';
import 'package:e_commerce/presentation/home/widgets/grid_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:e_commerce/constants.dart';

import '../../application/cart/cart_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _currentImage = 0;
  final int _numOfImages = 3;
  final _imageList = [
    'images/image1.jpg',
    'images/image2.jpg',
    'images/ss.jpg'
  ];

  List<Widget> _buildImageIndicators() {
    List<Widget> list = [];
    for (int i = 0; i < _numOfImages; i++) {
      list.add(i == _currentImage ? _indicator(true, i) : _indicator(false, i));
    }
    return list;
  }

  Widget _indicator(bool isActive, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // _currentImage = index ;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        height: 8.0,
        width: isActive ? 24.0 : 16.0,
        decoration: BoxDecoration(
          color: isActive ? primaryColor : secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocListener<CartBloc, CartState>(
        listener: (context, state) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              duration: Duration(microseconds: 2000),
              backgroundColor: primaryColor,
              content: Text('added to your cart',style: TextStyle(color: Colors.white),),
            ),
          );
        },
  child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<AuthBloc, AuthState>(
             builder: (context, state) {
              return state.map(
                ///Error case change it
                  initialState: (_)=> const Text (''),
                  authenticated: (e)=> Text (e.user.email.toString()),
                  unAuthenticated:(_)=>const Text ('not registered'),
              );
         },
         ),
            SizedBox(
              height: 200,
              width: 400,
              child: PhotoViewGallery(
                pageOptions: <PhotoViewGalleryPageOptions>[
                  PhotoViewGalleryPageOptions(
                    imageProvider: AssetImage(_imageList[0]),
                  ),
                  PhotoViewGalleryPageOptions(
                    imageProvider: AssetImage(_imageList[1]),
                  ),
                  PhotoViewGalleryPageOptions(
                    imageProvider: AssetImage(_imageList[2]),
                  ),
                ],
                backgroundDecoration: const BoxDecoration(color: Colors.white),
                pageController: _pageController,
                onPageChanged: (int value) {
                  setState(() {
                    _currentImage = value;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildImageIndicators(),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              child: BlocBuilder<CategoryCubit, CategoryState>(
                builder: (context, state) {
                  return state.map(
                    loading: (_) => const SizedBox(
                        height: 250,
                        child: Center(child: CircularProgressIndicator())),
                    categoryLoaded: (state) {
                      return SizedBox(
                          height: 50,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: state.allCategories.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Cards(
                                category: state.allCategories[index],
                              );
                            },
                          ));
                    },
                    /// delete this
                    categoryError: (_) => ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        ErrorCards(
                          category: 'clothes',
                        ),
                        ErrorCards(
                          category: 'Houseware',
                        ),
                        ErrorCards(
                          category: 'kitchen utensils',
                        ),
                        ErrorCards(
                          category: 'Electronic Devices',
                        ),
                        ErrorCards(
                          category: 'Stationery',
                        ),
                        ErrorCards(
                          category: 'toys',
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.003,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Products",
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.001,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: BlocBuilder<ProductsCubit, ProductState>(
                  builder: (context, state) {
                    return state.map(
                        loading: (_) => const SizedBox(
                            height: 250,
                            child: Center(child: CircularProgressIndicator())),
                        productLoaded: (state) {
                          return Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: secondaryColor)),
                            child: SizedBox(
                                height: MediaQuery.of(context).size.height * 0.6,
                                child: GridView.builder(
                                  itemCount: state.allData.length,
                                  gridDelegate:
                                   const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 1,
                                    mainAxisSpacing: 1,
                                    childAspectRatio: 1 / 2,
                                  ),
                                  itemBuilder: (BuildContext context, int index) {
                                    return GridCard(state.allData[index]);
                                  },
                                )),
                          );
                        },
                        productError: (_) => const SizedBox(
                            height: 250, child: Center(child: Text('Error'))));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
),
    );
  }
}
// bottom: PreferredSize(
// preferredSize: const Size.fromHeight(10.0),
// child: Padding(
// padding: const EdgeInsets.all(3.0),
// child: TextField(
// onChanged: (value){},
// textAlign: TextAlign.left,
// decoration: InputDecoration(
// prefixIcon: Padding(
// padding: const EdgeInsetsDirectional.only(start: 12.0),
// child: IconButton(icon: const Icon(Icons.arrow_drop_down,),
// onPressed: (){},
// ),
// ),
// suffixIcon: Padding(
// padding: const EdgeInsetsDirectional.only(start: 12.0),
// child: IconButton(icon: const Icon(Icons.search,),
// onPressed: (){},
// ),
// ),
// hintText: 'Search',
// filled: true,
// fillColor: Colors.white,
// hintStyle: const TextStyle(
// fontWeight: FontWeight.bold,
// //fontSize: 16.0,
// ),
// border: const OutlineInputBorder(
// borderRadius:BorderRadius.all(Radius.circular(5.0)),
// ) ,
// enabledBorder: const OutlineInputBorder(
// borderSide: BorderSide(),
// borderRadius: BorderRadius.all(Radius.circular(5.0)),
// ),
// ),
// ),
// ),
// ),

///Todo remove it from here
// class Cards extends StatelessWidget {
//   const TestCards({required this.category});
//
//   final String category;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {},
//       child: Padding(
//         padding: const EdgeInsets.all(5.0),
//         child: Container(
//           height: 36,
//           width: 80,
//           decoration: BoxDecoration(
//               borderRadius: const BorderRadius.all(Radius.circular(5.0)),
//               border: Border.all(
//                 color: const Color(0xFF4C956C),
//                 width: 2,
//                 style: BorderStyle.solid,
//               )),
//           child: Padding(
//             padding: const EdgeInsets.all(1.0),
//             child: Center(
//               child: Text(category,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     color: primaryColor,
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                   )),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class TestCards extends StatelessWidget {
  final String data;

  const TestCards({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 300,
      child: Column(
        children: [Text(data)],
      ),
    );
  }
}

class ErrorCards extends StatelessWidget {
  const ErrorCards({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print(
        //     '1gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg');
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => CategoryPage(
        //       categoryName: category,
        //     ),
        //   ),
        // );
        // print(
        //     '2gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg');
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 36,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              border: Border.all(
                color: textGray,
                width: 2,
                style: BorderStyle.solid,
              )),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Center(
              child: Text(category,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
