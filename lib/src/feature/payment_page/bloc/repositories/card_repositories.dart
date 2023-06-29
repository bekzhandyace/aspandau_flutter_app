class CardRepositories {
  Future<bool> addCard({
    required String cardNumber,
    required String cardExpiryDate,
    required String cardCvv,
    required String cardHolderName,
  }) async {
    print('addCardProggres');
    await Future.delayed(Duration(seconds: 1));
    if (cardNumber == '4307 3566 6712 9732' ||
        cardExpiryDate == '11/22' ||
        cardCvv == '437' ||
        cardHolderName == 'ADMIN ADMIN') {
      return true;
    } else {
      throw Exception('Sorry, but this inavalid data');
    }
  }
}
