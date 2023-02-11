import 'package:bookstore/models/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({required this.bookModel, super.key});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Details Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: bookModel.isbn,
              child: Image.network(
                bookModel.thumbnailUrl,
                height: 240,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookModel.title,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    bookModel.shortDescription,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (bookModel.authors.isNotEmpty)
                    const SizedBox(
                      height: 10,
                    ),
                  if (bookModel.authors.isNotEmpty)
                    Row(
                      children: [
                        const Text(
                          "Authors: ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          bookModel.authors.join(","),
                        ),
                      ],
                    ),
                  if (bookModel.categories.isNotEmpty)
                    const SizedBox(
                      height: 10,
                    ),
                  if (bookModel.categories.isNotEmpty)
                    Row(
                      children: [
                        const Text(
                          "Categories: ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          bookModel.categories.join(","),
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Long description: ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    bookModel.longDescription,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
