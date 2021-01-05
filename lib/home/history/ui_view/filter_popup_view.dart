import 'package:flutter/material.dart';
import 'package:psure/home/models/filter_type_data.dart';
import 'package:psure/home/calendar_theme.dart';

class FilterPopupView extends StatefulWidget {
  const FilterPopupView({Key key, this.onSelectClick}) : super(key: key);

  final Function(String, String) onSelectClick;

  @override
  _FilterPopupViewState createState() => _FilterPopupViewState();
}

class _FilterPopupViewState extends State<FilterPopupView> {
  List<FilterTypeData> _suggestions = FilterTypeData.dataList;

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

  Widget _buildSuggestions() {
    int suggestionsCount = _suggestions.length;
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemBuilder: (BuildContext context, int index) {
          if (index < 0 ||
              (suggestionsCount != null && index >= suggestionsCount))
            return null;

          FilterTypeData filter = _suggestions[index];
          return ListTile(
              title: Text(
                filter.name,
                style: TextStyle(fontSize: 18.0),
              ),
              onTap: () {
                try {
                  widget.onSelectClick(filter.name, filter.code);
                  Navigator.pop(context);
                } catch (_) {}
              });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                decoration: BoxDecoration(
                  color: CalendarTheme.buildLightTheme().backgroundColor,
                  borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: const Offset(4, 4),
                        blurRadius: 8.0),
                  ],
                ),
                child: _buildSuggestions(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildRow(FilterTypeData filter) {
  return ListTile(
    title: Text(
      filter.name,
      style: TextStyle(fontSize: 18.0),
    ),
  );
}
