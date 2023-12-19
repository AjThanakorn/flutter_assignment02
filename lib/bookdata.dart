class BookData {
  String bookName="";
  String bookType="";
  String bookPrice="";
  int pages=0;

  BookData(this.bookName, this.bookType, this.bookPrice,this.pages);
}
List<BookData> myBook=[
  BookData("Harry", "Novel", "150",456),
  BookData("Titanic", "Novel", "35",150),
  BookData("Three pigs", "Novel", "459",560),
  BookData("Lord of the ring", "Novel", "1250",789),
  BookData("Spider man ", "Novel", "200",546),
  BookData("Super man ", "Novel", "200",123),
  BookData("Iron man ", "Novel", "200",789),
];
