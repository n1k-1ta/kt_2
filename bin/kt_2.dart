import 'package:dio/dio.dart';
import 'package:kt_2/kt_2.dart' as kt_2;
import 'models/getCars/getCars/getCars.dart';
import 'models/getCars/product/product.dart';


void main(List<String> arguments) async {
  Dio httpClient = Dio();
  String url = 'https://myfakeapi.com/api/cars/';
  var response = await httpClient.get(url);

  GetCars getprod = GetCars.fromJson(response.data);
  List<Product> carsMassive = getprod.cars;

  double mid=0;
  int totalCount=0;
  for (var element in carsMassive) {
    if(element.car_color=='Yellow'){
      String pr = element.price.substring(1);
      double prd = double.parse(pr);
      mid+=prd;
      totalCount++;      
    }
    
  }
  mid/=totalCount;
  print(mid);
}
