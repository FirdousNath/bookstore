class BookModel {
  const BookModel({
    this.title = "",
    this.isbn = -1,
    this.pageCount = -1,
    this.publishedDate = "",
    this.thumbnailUrl = "",
    this.longDescription = "",
    this.shortDescription = "",
    this.authors = const [],
    this.categories = const [],
    this.status = "",
  });

  final List<String> authors;
  final List<String> categories;
  final int isbn;
  final String longDescription;
  final int pageCount;
  final String publishedDate;
  final String shortDescription;
  final String status;
  final String thumbnailUrl;
  final String title;
}
