class CashbackData {
  late final String cardNumber;
  late final String cardOwner;
  late final String closingBalance;

  CashbackData.fromJson(Map<String, dynamic> json) {
    cardNumber = json['cardNumber'];
    cardOwner = json['cardOwner'];
    closingBalance = json['closingBalance'];
  }
}