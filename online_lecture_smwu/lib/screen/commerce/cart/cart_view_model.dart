import 'package:flutter/cupertino.dart';
import 'package:online_lecture_smwu/screen/commerce/model/product_model.dart';
import 'package:online_lecture_smwu/screen/commerce/util.dart';

class CartViewModel with ChangeNotifier{
  static final CartViewModel instance = CartViewModel();

  List<ProductModel> cartList = [];

  void clear(){
    cartList.clear();
  }

  void addProduct(ProductModel product){
    if(cartList.any((element) => element == product)){
      Util.showToast("이미 추가된 제품입니다");
      return;
    }
    cartList.add(product);
    notifyListeners();
    Util.showToast("장바구니 추가");
  }
  void removeProduct(ProductModel product){
    cartList.removeWhere((element) => element == product);
    notifyListeners();

  }
}