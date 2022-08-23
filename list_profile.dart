import 'package:flutter/material.dart';
import 'package:sciencenotes/domain/people.dart';
import 'package:sciencenotes/assets/colors/custom_colors.dart';
import 'package:sciencenotes/pages/enter_page.dart';
import 'package:sciencenotes/pages/listPeople_page.dart';
import 'package:sciencenotes/pages/changeData_page.dart';

class ListProfile extends StatefulWidget {
  final People people;
  const ListProfile({
    Key? key,
    required this.people,
  }) : super(key: key);

  @override
  State<ListProfile> createState() => _ListProfileState();
}

class _ListProfileState extends State<ListProfile> {
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
       Column( 
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Center(
             child: Image.network('https://static.thenounproject.com/png/448730-200.png')
           ),
           const SizedBox(height: 30),
           const Text(
             "Nome: ",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: CustomColors.textColor,
                fontFamily: 'Abel-Regular'
              ),
            ),
            Text(
              widget.people.name,
              style: const TextStyle(
                fontSize: 22,
                color: CustomColors.textColor,
                fontFamily: 'Abel-Regular'
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Usuário: ",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: CustomColors.textColor,
                fontFamily: 'Abel-Regular'
              ),
            ),
            Text(
              widget.people.user,
              style: const TextStyle(
                fontSize: 22,
                color: CustomColors.textColor,
                fontFamily: 'Abel-Regular'
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "E-mail: ",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: CustomColors.textColor,
                fontFamily: 'Abel-Regular'
              ),
            ),
            Text(
              widget.people.email,
              style: const TextStyle(
                fontSize: 22,
                color: CustomColors.textColor,
                fontFamily: 'Abel-Regular'
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Data de Nascimento: ",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: CustomColors.textColor,
                fontFamily: 'Abel-Regular',
              ),
            ),
            Text(
              widget.people.birthdate,
              style: const TextStyle(
                fontSize: 22,
                color: CustomColors.textColor,
                fontFamily: 'Abel-Regular'
              ),
            ),
            const SizedBox(height: 70),
            Center(
              child: 
              ElevatedButton(
                onPressed: onPressedButton,
                  style: ElevatedButton.styleFrom(
                    primary:CustomColors.appeButtonColor,
                  ),
                  child: const Text(
                    'ALTERAR DADOS CADASTRAIS',
                    style: TextStyle(
                      fontSize: 28,
                      color: CustomColors.white,
                      fontFamily: 'AmaticSC-Regular',
                    ),
                  ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: 
              TextButton(
                onPressed: onPressedButton2,
                  child: const Text(
                    'USUÁRIOS',
                    style: TextStyle(
                      fontSize: 28,
                      color: CustomColors.textColor,
                      fontFamily: 'AmaticSC-Regular',
                    ),
                  ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: 
              ElevatedButton(
                onPressed: onPressedButton3,
                  style: ElevatedButton.styleFrom(
                    primary:CustomColors.appeButtonColor,
                  ),
                  child: const Text(
                    'SAIR',
                    style: TextStyle(
                      fontSize: 28,
                      color: CustomColors.white,
                      fontFamily: 'AmaticSC-Regular',
                    ),
                  ),
              ),
            ),
          ]
        ),
      ]
    );
  }

  void onPressedButton(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context){
          return const ChangeDataPage();
        },
      ),
    );
  }

  void onPressedButton2(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context){
          return const listPeoplePage();
        },
      ),
    );
  }

  void onPressedButton3(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context){
          return const EnterPage();
        },
      ),
    );
  }

}



  