class TransactionTypeData {
  TransactionTypeData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.desc,
    this.code = '', //send to api endpoint
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String> desc;
  String code;

  static List<TransactionTypeData> tabIconsList = <TransactionTypeData>[
    TransactionTypeData(
      imagePath: 'assets/home/cleared_type.png',
      titleTxt: 'Cleared',
      code: '525',
      desc: <String>['Transactions,', 'cleared into', 'your wallet'],
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    TransactionTypeData(
      imagePath: 'assets/home/pending_type.png',
      titleTxt: 'Pending',
      code: '602',
      desc: <String>['Transactions', 'yet to,', 'enter wallet'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    TransactionTypeData(
      imagePath: 'assets/home/transfer_type.png',
      titleTxt: 'Transfers',
      code: '0',
      desc: <String>['Transfers', 'or bills,', 'paid'],
      startColor: '#FE95B6',
      endColor: '#FF5287',
    ),
    TransactionTypeData(
      imagePath: 'assets/home/all_type.png',
      titleTxt: 'All',
      code: '0',
      desc: <String>['All', 'Transactions', 'Made'],
      startColor: '#6F72CA',
      endColor: '#1E1466',
    ),
  ];
}
