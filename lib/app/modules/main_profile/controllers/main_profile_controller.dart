import 'package:get/get.dart';

class MainProfileController extends GetxController {
  //TODO: Implement MainProfileController

  final _currentStep = 1.obs;
  int get currentStep => _currentStep.value;


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  nextStep() {
    if (_currentStep.value < 5) {
      _currentStep.value++;
      update();
      //print("currentStep: " + currentStep.value.toString());
    }
  }

  previousStep() {
    if (_currentStep.value > 1) {
      _currentStep.value--;
      update();
      //print("currentStep: " + currentStep.value.toString());
    }
  }

  finalStep() {
    setStep(4);
    //print("finalStep: " + _currentStep.value.toString());
  }

  initStep() {
    _currentStep.value = 0;
    update();
  }

  setStep(int val) {
    _currentStep.value = val;
    update();
  }
}
