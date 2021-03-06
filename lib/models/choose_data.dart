import 'dart:collection';

import 'package:d_bam/providers/disposable_providers.dart';

class Choose {
  String label;
  bool isSelected;
  String images;

  Choose({
    required this.label,
    this.isSelected = false,
    required this.images,
  });

  void isSelect() {
    isSelected = !isSelected;
  }
}

class ChooseData extends DisposableProviders {
  final List<Choose> _chooseDatas = [
    Choose(
        label: 'Provisioning',
        images: 'assets/images/img_psb.svg',
        isSelected: false),
    Choose(
        label: 'Assurance',
        images: 'assets/images/img_ggn.svg',
        isSelected: false),
    Choose(
        label: 'Dismantle',
        images: '',
        isSelected: false)
  ];

  int get chooseCount {
    return _chooseDatas.length;
  }

  UnmodifiableListView<Choose> get chooseDatas {
    return UnmodifiableListView(_chooseDatas);
  }

  String get selected {
    return _chooseDatas
        .lastWhere((Choose choose) => choose.isSelected,
            orElse: () => Choose(label: '', images: ''))
        .label;
  }

  set selected(String? value) {
    for (var choose in _chooseDatas) {
      choose.isSelected = choose.label == value;
    }
    notifyListeners();
  }

  void updateSelect(Choose choose) {
    choose.isSelect();
    notifyListeners();
  }

  int? _takeChip;

  int? get takeChip => _takeChip;

  set takeChip(int? takeChip) {
    _takeChip = takeChip;
    notifyListeners();
  }

  @override
  void disposeValue() {
    _takeChip = null;
  }
}
