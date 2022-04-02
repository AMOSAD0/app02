abstract class ProductStates{}
class GetProductLoad extends ProductStates{}
class GetProductSuccess extends ProductStates{}
class GetProductFailed extends ProductStates{
  String err;
  GetProductFailed(this.err);
}