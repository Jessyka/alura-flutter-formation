class Transaction{
  final String name;
  final double value;

  Transaction(this.name, this.value);

  @override
  String toString(){
    return "Transaction[$name $value]";
  }
}
