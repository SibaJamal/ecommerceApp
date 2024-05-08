import 'package:flutter/material.dart';
import '../../constants.dart';

class CreateProductPost extends StatefulWidget {
  const CreateProductPost({Key? key}) : super(key: key);

  @override
  State<CreateProductPost> createState() => _CreateProductPostState();
}

class _CreateProductPostState extends State<CreateProductPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Add a new product',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'product details',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  child: SingleChildScrollView(
                    child: Column(children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Title',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2.0,
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          color: textGray,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'description',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2.0,
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          color: textGray,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Price',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2.0,
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          color: textGray,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const SizedBox(
                        /// todo
                        height: 100,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Categories',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            TestCards(
                              data: 'history',
                            ),
                            TestCards(
                              data: 'religion',
                            ),
                            TestCards(
                              data: 'technology',
                            ),
                            TestCards(
                              data: 'economy',
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(400, 60),
                        ),
                        onPressed: () {
                          //TODO
                        },
                        child: const Text(
                          'Add',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
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
