class Address{
  String street;
  String city;
  String state;
  int postalCode;
  String country;

  Address(this.street,this.city,this.state,this.postalCode,this.country);

  void showAddressDetails(){
      print(this.street);
      print(this.city);
      print(this.state);
      print(this.postalCode);
      print(this.country);
  }
}
