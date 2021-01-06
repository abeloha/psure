class TransactionHistoryData {
  TransactionHistoryData({
    this.currencyCode = '',
    this.amount = 0,
    this.sender = '',
    this.recipient = '',
    this.ref = '',
    this.desc = '',
    this.contractStartDate = '',
    this.contractEndDate = '',
    this.contractStatus = '',
    this.transactionType = '',
    this.transactionDate = '',
  });

  String currencyCode;
  double amount;
  String sender;
  String recipient;
  String ref;
  String desc;
  String contractStartDate;
  String contractEndDate;
  String contractStatus;
  String transactionType; //Credit or Debit
  String transactionDate;

  static List<TransactionHistoryData> dataList = <TransactionHistoryData>[
    TransactionHistoryData(
        currencyCode: 'NGN',
        amount: 2500150,
        sender: 'Elizabeth Onuoha',
        recipient: 'Onuoha Abel Agu',
        ref: 'PSURE_GR90_1002',
        desc: 'Payment for organic products',
        contractStartDate: '25-Nov-2020',
        contractEndDate: '30-Nov-2020',
        contractStatus: 'CLEARED',
        transactionType: 'CREDIT',
        transactionDate: '12-Nov-2020'),
    TransactionHistoryData(
        currencyCode: 'NGN',
        amount: 3000000,
        sender: 'Onuoha Abel Agu',
        recipient: 'Dami Oluwole',
        ref: 'PSURE_DS07_2510',
        desc: 'Tailor Matterials',
        contractStartDate: '20-Nov-2020',
        contractEndDate: '1-Jan-2021',
        contractStatus: 'CLEARED',
        transactionType: 'DEBIT',
        transactionDate: '15-Nov-2020'),
    TransactionHistoryData(
        currencyCode: 'NGN',
        amount: 5000025,
        sender: 'John Paul',
        recipient: 'Onuoha Abel Agu',
        ref: 'PSURE_QS24_2012',
        desc: 'Android App Project',
        contractStartDate: '01-Dec-2020',
        contractEndDate: '15-Mar-2021',
        contractStatus: 'CLEARED',
        transactionType: 'CREDIT',
        transactionDate: '05-Dec-2020'),
    TransactionHistoryData(
        currencyCode: 'NGN',
        amount: 2500150,
        sender: 'Silas Owubiko',
        recipient: 'Onuoha Abel Agu',
        ref: 'PSURE_GH45_2236',
        desc: 'Website Contract',
        contractStartDate: '05-Dec-2020',
        contractEndDate: '30-Feb-2021',
        contractStatus: 'CLEARED',
        transactionType: 'CREDIT',
        transactionDate: '05-Dec-2020'),
    TransactionHistoryData(
        currencyCode: 'NGN',
        amount: 3000000,
        sender: 'Onuoha Abel Agu',
        recipient: 'Thompson Chukwu',
        ref: 'PSURE_DS45_256',
        desc: 'Hosting Setup',
        contractStartDate: '1-Jan-2021',
        contractEndDate: '1-Jan-2021',
        contractStatus: 'CLEARED',
        transactionType: 'DEBIT',
        transactionDate: '01-Jan-2020'),
    TransactionHistoryData(
        currencyCode: 'NGN',
        amount: 5000025,
        sender: 'John Paul',
        recipient: 'Onuoha Abel Agu',
        ref: 'PSURE_FA72_1542',
        desc: 'IOS App Project',
        contractStartDate: '01-Dec-2020',
        contractEndDate: '15-Apr-2021',
        contractStatus: 'CLEARED',
        transactionType: 'CREDIT',
        transactionDate: '06-Jan-2021'),
  ];
}
