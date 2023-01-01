import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:she_healthy/presentation/bloc/classification/classification_bloc.dart';
import 'package:she_healthy/presentation/bloc/classification/classification_event.dart';
import 'package:she_healthy/presentation/components/image/image_place_holder.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/theme/app_primary_theme.dart';
import '../../utils/default.dart';
import '../bloc/classification/classification_state.dart';
import '../components/appbar/custom_generic_appbar.dart';
import '../components/button/primary_button.dart';
import '../components/dialog/dialog_component.dart';
import '../components/dropdown/dropdown_value.dart';
import '../components/dropdown/generic_dropdown.dart';
import '../components/image/image_result.dart';
import 'classification_detail_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CervixClassificationPage extends StatefulWidget {
  const CervixClassificationPage({Key? key}) : super(key: key);

  @override
  State<CervixClassificationPage> createState() =>
      _CervixClassificationPageState();
}

class _CervixClassificationPageState extends State<CervixClassificationPage> {
  final picker = ImagePicker();
  File? image;
  String selectedItem = initialDataShown;
  ClassificationBloc bloc = ClassificationBloc();

  Widget blocListener({required Widget child}) {
    return BlocListener(
      bloc: bloc,
      listener: (ctx, state) {
        if (state is ShowLoading) {
          showLoadingDialog(context: context);
          return;
        }

        if (state is ShowSuccessClassification) {
          Navigator.pop(context);
          showSuccessDialog(
              context: context,
              title: "Berhasil!",
              message: "Tekan OK untuk melanjutkan",
              onTap: () {
                List<String> classificationData = state.data.split(',');
                Navigator.pop(context);
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => ClassificationDetailPage(
                      data: classificationData,
                      image: image!,
                      assumption: state.classification, classificationType: selectedItem,
                    ),
                  ),
                );
              });
          return;
        }

        if (state is ShowFailedClassification) {
          Navigator.pop(context);
          showFailedDialog(
              context: context,
              title: "Terjadi Kesalahan",
              message:
                  'Sepertinya ada kesalahan dari server kami, coba lagi nanti!',
              onTap: () {
                Navigator.pop(context);
              });
          return;
        }
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.canvasColor,
      body: SafeArea(
        child: blocListener(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: HomeAppBar(
                    url: '',
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
                        child: image != null
                            ? ExploriaImageResult(
                                onTapGallery: () {
                                  Navigator.pop(context);
                                  pickImageFromGallery();
                                },
                                image: image!,
                                heroTag: '1b')
                            : ImagePlaceHolder(
                                onTapGallery: () {
                                  pickImageFromGallery();
                                },
                              ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'Pastikan gambar jelas.',
                          textAlign: TextAlign.center,
                          style: AppTheme.smallBodyGrey,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    'Jenis Klasifikasi',
                    style: AppTheme.subTitle,
                  ),
                ),
                GenericDropdown(
                  selectedItem: selectedItem,
                  items: classificationItem,
                  height: 45,
                  width: double.infinity,
                  backgroundColor: Colors.white,
                  borderColor: Colors.transparent,
                  onChanged: (String? value) {
                    setState(() {
                      selectedItem = value ?? initialDataShown;
                    });
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: PrimaryButton(
                      width: double.infinity,
                      context: context,
                      isEnabled: true,
                      onPressed: () {
                        if (image == null) {
                          showWarningDialog(
                              context: context,
                              title: 'Peringatan',
                              message: 'Gambar tidak boleh kosong!');
                          return;
                        }
                        bloc.add(UploadClassification(
                            file: image!, classificationType: selectedItem));
                      },
                      text: 'Analisa'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future pickImageFromGallery() async {
    print("Called gallery");
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      } else {}
    });
  }
}
