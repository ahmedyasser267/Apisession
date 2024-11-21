class Book {
  final String title;
  final String auther;
  final String fristpublishyear;
  final String coverletter;

  Book(
      {required this.title, required this.auther, required this.fristpublishyear, required this.coverletter
      });
factory Book.fromJson(Map<String,dynamic> json){
  var work=json['work'];
  
  
  return Book(
      title: work['title'],
      auther: work['author_names'][0],
      fristpublishyear:work['first_publish_year'] .toString(),
      coverletter:'https://covers.openlibrary.org/b/id/ ${work['cover_id']}-L.jpg'



  );
  
}


}