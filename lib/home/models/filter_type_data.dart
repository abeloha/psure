class FilterTypeData {
  FilterTypeData({
    this.name = '',
    this.code = '', //sent to api endpoint
  });

  String name;
  String code;

  static List<FilterTypeData> dataList = <FilterTypeData>[
    FilterTypeData(
      name: 'All',
      code: '',
    ),
    FilterTypeData(
      name: 'Credit - all',
      code: 'CREDIT_ALL',
    ),
    FilterTypeData(
      name: 'Credit - Cleared',
      code: '',
    ),
    FilterTypeData(
      name: 'Credit - Pending',
      code: '',
    ),
    FilterTypeData(
      name: 'Debit - all',
      code: '',
    ),
    FilterTypeData(
      name: 'Debit - Cleared',
      code: '',
    ),
    FilterTypeData(
      name: 'Debit - Pending',
      code: '',
    ),
  ];
}
