import 'package:auto_route/annotations.dart';
import 'package:e_commerce/application/search/search_bloc.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/presentation/search/widgets/search_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String start = categoriesList[0];
  String numOfResults = '10';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 300,
                    child: TextField(
                      onChanged: (value) {
                        String searchValue = value.trim();
                        if (searchValue == '') {
                          BlocProvider.of<SearchBloc>(context)
                              .add(const SearchEvent.valueDeleted());
                        } else {
                          BlocProvider.of<SearchBloc>(context)
                              .add(SearchEvent.searchValueChanged(value));
                        }
                      },
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsetsDirectional.only(start: 3.0),
                          child: IconButton(
                            icon: const Icon(
                              Icons.search,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        hintText: 'Search',
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                      ),
                    ),
                  ),
                  PopupMenuButton<String>(
                    itemBuilder: (BuildContext context) {
                      return categoriesList.map((String value) {
                        return PopupMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList();
                    },
                    icon: const Icon(Icons.filter_alt_sharp),
                    onSelected: (value) {
                      setState(() {
                        start = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    start,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: primaryColor),
                  ),
                ],
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: BlocConsumer<SearchBloc, SearchState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    return state.map(
                      initial: (_) => const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            size: 100,
                            color: textGray,
                          ),
                          Text(
                            'search for any thing you want',
                            style: TextStyle(
                              color: textGray,
                            ),
                          ),
                        ],
                      ),
                      loading: (_) => const CircularProgressIndicator(),
                      loadedData: (state) => SingleChildScrollView(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.6,
                          child: ListView.builder(
                            itemCount: state.allData.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return SearchList(
                                product: state.allData[index],
                              );
                            },
                            scrollDirection: Axis.vertical,
                          ),
                        ),
                      ),
                      notFound: (_) => const Text(
                        'Not Found',
                        style: TextStyle(
                          fontSize: 30,
                          color: textGray,
                        ),
                      ),
                      connection: (_) => const Text(
                        'No connection',
                        style: TextStyle(
                          fontSize: 500,
                          color: textGray,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///fix the center and make it responsive
