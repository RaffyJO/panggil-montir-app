import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panggil_montir_app/data/dto/motorcycle_create_model.dart';
import 'package:panggil_montir_app/presentation/blocs/brand/brand_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/motorcycle/motorcycle_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/production_year/production_year_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/tipe/tipe_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/variant/variant_bloc.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/widgets/text_field.dart';

class GarasiAddPage extends StatefulWidget {
  const GarasiAddPage({super.key});

  @override
  State<GarasiAddPage> createState() => _GarasiAddPageState();
}

class _GarasiAddPageState extends State<GarasiAddPage> {
  final TextEditingController _firstNpController = TextEditingController();
  final TextEditingController _middleNpController = TextEditingController();
  final TextEditingController _lastNpController = TextEditingController();

  int? selectedBrand;
  int? selectedType;
  int? selectedVariant;
  int? selectedProductionYear;

  @override
  dispose() {
    _firstNpController.dispose();
    _middleNpController.dispose();
    _lastNpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        centerTitle: true,
        title: Text(
          'Tambah Motor',
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nomor Polisi',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            verticalSpace(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 76,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: CustomTextField(
                    title: 'First NP',
                    maxLength: 2,
                    isShowTitle: false,
                    isBorder: false,
                    isTextCenter: true,
                    isTextUpperCase: true,
                    textInputType: TextInputType.text,
                    controller: _firstNpController,
                  ),
                ),
                horizontalSpace(12),
                Container(
                  width: MediaQuery.of(context).size.width - 76 - 76 - 24 - 32,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: CustomTextField(
                    title: 'Middle NP',
                    maxLength: 4,
                    isShowTitle: false,
                    isBorder: false,
                    isTextCenter: true,
                    isTextUpperCase: true,
                    textInputType: TextInputType.number,
                    controller: _middleNpController,
                  ),
                ),
                horizontalSpace(12),
                Container(
                  width: 76,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: CustomTextField(
                    title: 'Last NP',
                    maxLength: 3,
                    isShowTitle: false,
                    isBorder: false,
                    isTextCenter: true,
                    isTextUpperCase: true,
                    textInputType: TextInputType.text,
                    controller: _lastNpController,
                  ),
                ),
              ],
            ),
            verticalSpace(16),
            Text(
              'Brand',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            verticalSpace(8),
            BlocBuilder<BrandBloc, BrandState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Text('Something went wrong'),
                  loading: () => const Text('Loading...'),
                  success: (data) => DropdownButtonFormField2(
                    isExpanded: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    hint: const Text(
                      'Pilih Brand',
                      style: TextStyle(fontSize: 14),
                    ),
                    items: data
                        .map((item) => DropdownMenuItem(
                              value: item,
                              child: Text(
                                item.name!,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select brand.';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      selectedBrand = value!.id;
                      context
                          .read<TipeBloc>()
                          .add(TipeEvent.getListTypes(value.id!));
                    },
                    onSaved: (value) {
                      selectedBrand = value!.id;
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.only(right: 8),
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                      iconSize: 24,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        color: orangeColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                );
              },
            ),
            verticalSpace(12),
            Text(
              'Tipe',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            verticalSpace(8),
            BlocBuilder<TipeBloc, TipeState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Text('Something went wrong'),
                  loading: () => const Text('Loading...'),
                  success: (data) => DropdownButtonFormField2(
                    isExpanded: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    hint: const Text(
                      'Pilih Tipe',
                      style: TextStyle(fontSize: 14),
                    ),
                    items: data
                        .map((item) => DropdownMenuItem(
                              value: item,
                              child: Text(
                                item.name!,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select tipe.';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      selectedType = value!.id;
                      context
                          .read<VariantBloc>()
                          .add(VariantEvent.getListVariants(value.id!));
                    },
                    onSaved: (value) {
                      selectedType = value!.id;
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.only(right: 8),
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                      iconSize: 24,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        color: orangeColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                );
              },
            ),
            verticalSpace(12),
            Text(
              'Variant',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            verticalSpace(8),
            BlocBuilder<VariantBloc, VariantState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Text('Something went wrong'),
                  loading: () => const Text('Loading...'),
                  success: (data) => DropdownButtonFormField2(
                    isExpanded: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    hint: const Text(
                      'Pilih Variant',
                      style: TextStyle(fontSize: 14),
                    ),
                    items: data
                        .map((item) => DropdownMenuItem(
                              value: item,
                              child: Text(
                                item.name!,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select variant.';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      selectedVariant = value!.id;
                    },
                    onSaved: (value) {
                      selectedVariant = value!.id;
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.only(right: 8),
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                      iconSize: 24,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        color: orangeColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                );
              },
            ),
            verticalSpace(12),
            Text(
              'Tahun Produksi',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            verticalSpace(8),
            BlocBuilder<ProductionYearBloc, ProductionYearState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Text('Something went wrong'),
                  loading: () => const Text('Loading...'),
                  success: (data) => DropdownButtonFormField2(
                    isExpanded: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    hint: const Text(
                      'Pilih Tahun Produksi',
                      style: TextStyle(fontSize: 14),
                    ),
                    items: data
                        .map((item) => DropdownMenuItem(
                              value: item,
                              child: Text(
                                item.year!,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select variant.';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      selectedProductionYear = value!.id;
                    },
                    onSaved: (value) {
                      selectedProductionYear = value!.id;
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.only(right: 8),
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                      iconSize: 24,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        color: orangeColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                );
              },
            ),
            verticalSpace(32),
            BlocConsumer<MotorcycleBloc, MotorcycleState>(
              listener: (context, state) {
                state.maybeWhen(
                  failure: (message) =>
                      ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: Colors.red,
                    ),
                  ),
                  success: (motorcycle) {
                    Navigator.pop(context);
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_firstNpController.text.isNotEmpty &&
                            _middleNpController.text.isNotEmpty &&
                            _lastNpController.text.isNotEmpty &&
                            selectedBrand != null &&
                            selectedType != null &&
                            selectedVariant != null &&
                            selectedProductionYear != null) {
                          context.read<MotorcycleBloc>().add(
                                MotorcycleEvent.addMotorcycle(
                                  MotorcycleCreateModel(
                                    licensePlate:
                                        "${_firstNpController.text} ${_middleNpController.text} ${_lastNpController.text}",
                                    brandId: selectedBrand,
                                    typeId: selectedType,
                                    variantId: selectedVariant,
                                    productionYearId: selectedProductionYear,
                                  ),
                                ),
                              );
                          context.read<MotorcycleBloc>().add(
                                const MotorcycleEvent.getListMotorcycle(),
                              );
                        } else {
                          showCustomSnackbar(
                              context, "Semua field tidak boleh kosong");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: whiteColor,
                        backgroundColor: orangeColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Simpan',
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: semiBold),
                      ),
                    ),
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
