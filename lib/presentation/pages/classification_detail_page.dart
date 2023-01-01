import 'dart:io';

import 'package:flutter/material.dart';
import 'package:she_healthy/presentation/components/appbar/custom_generic_appbar.dart';
import 'package:she_healthy/presentation/components/dialog/dialog_component.dart';
import 'package:she_healthy/presentation/components/text/generic_radius_text_container.dart';
import 'package:she_healthy/utils/property_info.dart';

import '../../core/data/model/item.dart';
import '../../core/theme/app_primary_theme.dart';
import '../../utils/classification_detail_helper.dart';

class ClassificationDetailPage extends StatefulWidget {
  final List<String> data;
  final String assumption, classificationType;
  final File image;

  const ClassificationDetailPage(
      {Key? key,
      required this.data,
      required this.image,
      required this.assumption,
      required this.classificationType})
      : super(key: key);

  @override
  State<ClassificationDetailPage> createState() =>
      _ClassificationDetailPageState();
}

class _ClassificationDetailPageState extends State<ClassificationDetailPage> {
  List<Item> _data = [];

  @override
  void initState() {
    super.initState();
    _data = generateItems(4, widget.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.canvasColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: GenericAppBar(
                  title: 'Hasil Klasifikasi',
                  url: '',
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'Gambar Sel Serviks',
                        style: AppTheme.subTitle,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 350,
                      child: SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.file(
                            widget.image,
                            fit: BoxFit.cover,
                            color: Colors.grey,
                            colorBlendMode: BlendMode.color,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Text(
                      'Kesimpulan Klasifikasi ${widget.classificationType}',
                      style: AppTheme.subTitle,
                    ),
                    InkWell(
                      onTap: () {
                        if (widget.classificationType == 'CNN'){
                          showInfoDialog(context: context, infoText: infoCnn, title: 'CNN');
                        } else {
                          showInfoDialog(context: context, infoText: infoKnn, title: 'KNN');
                        }
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.info_outline,
                          color: AppTheme.primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              buildKesimpulan(),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'GLCM Properties',
                  style: AppTheme.subTitle,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: _buildPanel(),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildKesimpulan() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Text(
                  'Hasil analisa sel serviks dengan metode ${widget.classificationType}',
                  style: AppTheme.smallBodyGrey.copyWith(color: Colors.black87),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: GenericRadiusTextContainer(
                text: widget.assumption.toUpperCase(),
                hMargin: 4,
                radius: 32,
                color: widget.assumption.toUpperCase() == 'NORMAL'
                    ? Colors.green
                    : Colors.red),
          ),
        ],
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Row(
                children: [
                  Text(
                    item.headerValue,
                    style: AppTheme.subTitle,
                  ),
                  InkWell(
                      onTap: () {
                        print('tapped');
                        showInfoDialog(context: context, infoText: item.info, title: item.headerValue);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.info_outline,
                          color: AppTheme.primaryColor,
                        ),
                      ))
                ],
              ),
            );
          },
          body: ListView.separated(
            itemCount: item.expandedValue.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (c, idx) {
              return ListTile(
                trailing: Text(
                  item.expandedValue[idx],
                  style: AppTheme.smallTitlePrimaryColor,
                ),
                title: Text(
                  angleByIndex(idx),
                  style: AppTheme.smallTitle,
                ),
                // subtitle: Text(),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
