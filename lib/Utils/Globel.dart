import 'dart:math';
import 'package:quotes_app/Screens/HomeScreen.dart';
import 'package:quotes_app/Utils/QuoteList.dart';

int i = Random().nextInt(quotesList.length - 1);
QuotesModel quotesModel = QuotesModel().fromJson(quotesList[i]);


// class QuotesModel {
//   String? quote;
//   String? author;
//   QuotesModel({this.quote, this.author});
//
//   QuotesModel fromJson(Map m1) {
//     quote = m1['quote'];
//     author = m1['author'];
//     QuotesModel quotesModel = QuotesModel(author: author, quote: quote);
//     return quotesModel;
//   }
// }
