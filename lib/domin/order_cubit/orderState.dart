abstract class OrderStates{}
class LoadingOrder extends OrderStates{}

class SuccesAddOrder extends OrderStates{}

class FaildAddOrder extends OrderStates{
  String? err;
  FaildAddOrder(this.err);
}

class Succesdelete extends OrderStates{}

class Failddelete extends OrderStates{
  String? err;
  Failddelete(this.err);
}