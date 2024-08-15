import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: const ProduitDefectueuexPage(),
    );
  }
}

class ProduitDefectueuexPage extends StatefulWidget {
  const ProduitDefectueuexPage({super.key});

  @override
  _ProduitDefectueuexPageState createState() => _ProduitDefectueuexPageState();
}

class _ProduitDefectueuexPageState extends State<ProduitDefectueuexPage> {
  String? _selectedType;
  String? _selectedBrand;
  DateTime? _purchaseDate;

  final TextEditingController _serialNumberController = TextEditingController();
  final TextEditingController _purchaseDateController = TextEditingController();
  final TextEditingController _panelBrandController = TextEditingController(); // Updated
  final TextEditingController _panelCountController = TextEditingController(); // Updated
  final TextEditingController _chainCountController = TextEditingController();
  final TextEditingController _pumpPowerController = TextEditingController();
  final TextEditingController _acProtectionController = TextEditingController();
  final TextEditingController _vocController = TextEditingController();
  final TextEditingController _iscController = TextEditingController();
  final TextEditingController _vmpController = TextEditingController();
  final TextEditingController _impController = TextEditingController();
  final TextEditingController _autreController = TextEditingController();
  final TextEditingController _puissanceController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _serialNumberController.dispose();
    _purchaseDateController.dispose();
    _panelBrandController.dispose(); // Dispose of the new controller
    _panelCountController.dispose(); // Dispose of the new controller
    _chainCountController.dispose();
    _pumpPowerController.dispose();
    _acProtectionController.dispose();
    _vocController.dispose();
    _iscController.dispose();
    _vmpController.dispose();
    _impController.dispose();
    _autreController.dispose();
    _puissanceController.dispose();
    super.dispose();
  }

  void _handleTypeChange(String? value) {
    setState(() {
      _selectedType = value;
      if (_selectedType != 'Autre') {
        _autreController.clear();
      }
      if (_selectedType == 'Variateur') {
        _selectedBrand = null; // Clear the brand selection when "Variateur" is selected
      }
    });
  }

  void _handleBrandChange(String? value) {
    setState(() {
      _selectedBrand = value;
    });
  }

  void _clearForm() {
    setState(() {
      _selectedType = null;
      _selectedBrand = null;
      _purchaseDate = null;

      _serialNumberController.clear();
      _purchaseDateController.clear();
      _panelBrandController.clear(); // Clear the new controller
      _panelCountController.clear(); // Clear the new controller
      _chainCountController.clear();
      _pumpPowerController.clear();
      _acProtectionController.clear();
      _vocController.clear();
      _iscController.clear();
      _vmpController.clear();
      _impController.clear();
      _autreController.clear();
      _puissanceController.clear();
    });
  }

  void _uploadPhoto() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Upload Photo'),
          content: const Text('Functionality to upload photo will be implemented here.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _selectPurchaseDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _purchaseDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != _purchaseDate) {
      setState(() {
        _purchaseDate = pickedDate;
        _purchaseDateController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
      });
    }
  }

  Widget _buildFormField({
    required String label,
    required TextEditingController controller,
    required String? Function(String?) validator,
    GestureTapCallback? onTap,
    bool readOnly = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black),
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(),
        ),
        style: const TextStyle(color: Colors.black),
        validator: validator,
        readOnly: readOnly,
        onTap: onTap,
        keyboardType: keyboardType,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: screenWidth,
                    height: screenHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/Smart.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.327,
                  top: screenHeight * 0.059,
                  child: Container(
                    width: screenWidth * 0.344,
                    height: screenHeight * 0.078,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Container(
                      width: screenWidth * 0.261,
                      height: screenHeight * 0.066,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: AssetImage("images/smartbg.png"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.094,
                  top: screenHeight * 0.042,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(0),
                      backgroundColor: Colors.white,
                      elevation: 5,
                    ),
                    onPressed: () {
                      // Handle button press
                    },
                    child: const Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.764,
                  top: screenHeight * 0.042,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(0),
                      backgroundColor: Colors.white,
                      elevation: 5,
                    ),
                    onPressed: () {
                      // Handle button press
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.056,
                  top: screenHeight * 0.187,
                  right: screenWidth * 0.056,
                  bottom: screenHeight * 0.025,
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            width: screenWidth * 0.89,
                            padding: const EdgeInsets.all(20),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Informations sur le Produit:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Type de produit:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Radio<String>(
                                            value: 'Onduleur',
                                            groupValue: _selectedType,
                                            onChanged: _handleTypeChange,
                                          ),
                                          const Text(
                                            'Onduleur',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Radio<String>(
                                            value: 'Variateur',
                                            groupValue: _selectedType,
                                            onChanged: _handleTypeChange,
                                          ),
                                          const Text(
                                            'Variateur',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Radio<String>(
                                            value: 'Autre',
                                            groupValue: _selectedType,
                                            onChanged: _handleTypeChange,
                                          ),
                                          const Text(
                                            'Autre',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                if (_selectedType == 'Autre')
                                  _buildFormField(
                                    label: 'Veuillez spécifier',
                                    controller: _autreController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Veuillez spécifier le type';
                                      }
                                      return null;
                                    },
                                  ),
                                const SizedBox(height: 10),
                                if (_selectedType != 'Variateur') ...[
                                  const Text(
                                    'Marque:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Radio<String>(
                                                  value: 'Solis',
                                                  groupValue: _selectedBrand,
                                                  onChanged: _handleBrandChange,
                                                ),
                                                const Text(
                                                  'Solis',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Radio<String>(
                                                  value: 'Invt',
                                                  groupValue: _selectedBrand,
                                                  onChanged: _handleBrandChange,
                                                ),
                                                const Text(
                                                  'Invt',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Radio<String>(
                                                  value: 'Renac',
                                                  groupValue: _selectedBrand,
                                                  onChanged: _handleBrandChange,
                                                ),
                                                const Text(
                                                  'Renac',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      if (_selectedBrand == null)
                                        const Text(
                                          'Veuillez sélectionner la marque',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                    ],
                                  ),
                                ],
                                const SizedBox(height: 10),
                                _buildFormField(
                                  label: 'Puissance (KW)',
                                  controller: _puissanceController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Veuillez entrer la puissance';
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.number,
                                ),
                                const SizedBox(height: 10),
                                _buildFormField(
                                  label: 'Numéro de série',
                                  controller: _serialNumberController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Veuillez entrer le numéro de série';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 20),
                                ElevatedButton(
                                  onPressed: _uploadPhoto,
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 15,
                                    ),
                                    backgroundColor:
                                        const Color.fromARGB(255, 11, 35, 55),
                                  ),
                                  child: const Text(
                                    'Upload Photo',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                _buildFormField(
                                  label: 'Date d\'achat',
                                  controller: _purchaseDateController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Veuillez entrer la date d\'achat';
                                    }
                                    return null;
                                  },
                                  onTap: _selectPurchaseDate,
                                  readOnly: true,
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Détails d\'installation:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                _buildFormField(
                                  label: 'Marque des panneaux',
                                  controller: _panelBrandController, // Updated
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Veuillez entrer la marque des panneaux';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 10),
                                _buildFormField(
                                  label: 'Puissance (KW)',
                                  controller: _puissanceController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Veuillez entrer la puissance';
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.number,
                                ),
                                _buildFormField(
                                  label: 'Nombre de panneaux',
                                  controller: _panelCountController, // Updated
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Veuillez entrer le nombre de panneaux';
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.number,
                                ),
                                _buildFormField(
                                  label: 'Nombre de chaînes',
                                  controller: _chainCountController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Veuillez entrer le nombre de chaînes';
                                    }
                                    return null;
                                  },
                                ),
                                if (_selectedType != 'Onduleur')
                                  _buildFormField(
                                    label: 'Puissance de la pompe',
                                    controller: _pumpPowerController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Veuillez entrer la puissance de la pompe';
                                      }
                                      return null;
                                    },
                                  ),
                                if (_selectedType != 'Variateur')
                                  _buildFormField(
                                    label: 'Protection AC',
                                    controller: _acProtectionController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Veuillez entrer la protection AC';
                                      }
                                      return null;
                                    },
                                  ),
                                _buildFormField(
                                  label: 'Voc',
                                  controller: _vocController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Veuillez entrer le Voc';
                                    }
                                    return null;
                                  },
                                ),
                                _buildFormField(
                                  label: 'Isc',
                                  controller: _iscController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Veuillez entrer l\'Isc';
                                    }
                                    return null;
                                  },
                                ),
                                _buildFormField(
                                  label: 'Vmp',
                                  controller: _vmpController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Veuillez entrer le Vmp';
                                    }
                                    return null;
                                  },
                                ),
                                _buildFormField(
                                  label: 'Imp',
                                  controller: _impController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Veuillez entrer l\'Imp';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: _uploadPhoto,
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 15,
                                    ),
                                    backgroundColor:
                                        const Color.fromARGB(255, 11, 35, 55),
                                  ),
                                  child: const Text(
                                    'Upload Photo',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate() &&
                                            (_selectedType != 'Variateur' || _selectedBrand != null)) {
                                          Navigator.pushNamed(context, '/home');
                                        } else {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(content: Text('Veuillez compléter tous les champs requis')),
                                          );
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                          vertical: 15,
                                        ),
                                        backgroundColor:
                                            const Color.fromARGB(255, 11, 35, 55),
                                      ),
                                      child: const Text(
                                        'Soumettre',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: _clearForm,
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                          vertical: 15,
                                        ),
                                        backgroundColor: Colors.red,
                                      ),
                                      child: const Text(
                                        'Annuler',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
