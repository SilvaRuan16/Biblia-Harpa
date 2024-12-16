import 'package:appbible/src/config.dart';
import 'package:appbible/src/content/harpContent.dart';
import 'package:appbible/src/initial/initial.dart';
import 'package:flutter/material.dart';

class HarpaList extends StatelessWidget {
  HarpaList({super.key});

  final List<String> harps = [
    '1 - Chuvas de Graça',
    '2 - Saudosa Lembrança',
    '3 - Plena Paz',
    '4 - Deus Velará Por Ti',
    '5 - Ó Desce Fogo Santo',
    '6 – Na Maldição da Cruz',
    '7 – Cristo Cura Sim',
    '8 – Cristo, o Fiel Amigo',
    '9 – Marchai Soldado',
    '10 – Eu Te Louvo',
    '11 – Ó Cristão, Eia Avante',
    '12 – Vem Já Pecador',
    '13 – Jesus Comprou-me',
    '14 – Gozo Em Jesus',
    '15 – Conversão',
    '16 - Despertar Para o Trabalho',
    '17 - Pensando Em Jesus',
    '18 - Grata Nova',
    '19 - O Convite De Cristo',
    '20 - Olhai o Cordeiro De Deus',
    '21 - Gloriosa Aurora',
    '22 - Ceia Do Senhor',
    '23 - Glória a Jesus',
    '24 - Poder Pentecostal',
    '25 - Jesus Tu és Bom',
    '26 - A Formosa Jerusálem',
    '27 - Amor Que Vence',
    '28 - Deus Vai Te Guiar',
    '29 - O Precioso Sangue',
    '30 - Não Sou Meu',
    '31 - Glória ao Meu Jesus',
    '32 - Meu Cristo! Meu Cristo!',
    '33 - Com Tua Mão Segura',
    '34 - Milícia De Jesus',
    '35 - O Grande Amor',
    '36 - O Exilado',
    '37 - Cristo Pra Mim',
    '38 - O Senhor é Rei',
    '39 - Alvo Mais Que a Neve',
    '40 - A Cidade Do Bom Jesus',
    '41 - A Cristo Coroai',
    '42 - Saudai Jesus',
    '43 - Doce Lar',
    '44 - Oh! Que Glória!',
    '45 - Redentor Onipotente',
    "46 - Um Pendão Real",
    "47 - Rocha Eterna",
    "48 - O Dia do Triunfo",
    "49 - Aleluia! Já Creio",
    "50 - Sempre Fiéis",
    "51 - Adoração Reconhecida",
    "52 - Tudo Está Bem",
    "53 - A Esperança da Igreja",
    "54 - Louvemos ao Redentor",
    "55 - Mais Perto da Tua Cruz",
    "56 - Tudo em Cristo",
    "57 - Vivifica-nos Senhor",
    "58 - Não Temas",
    '59 - Eu creio, Sim',
    '60 - Exultação do Crente',
    '61 - Deus Tomará Conta de Ti',
    '62 - Achei Jesus',
    '63 - Acordai, Acordai',
    '64 - De Todo o Mundo: Aleluia!',
    '65 - Quem Irá?',
    '66 - Pronto a Salvar',
    '67 - Quem Quer ir Com Cristo?',
    '68 - Gozo de Ter Salvação',
    '69 - Jesus Quebrou os Meus Grilhões',
    '70 - Cristo Vai Voltar',
    "71 - Santo és Tu, Senhor",
    "72 - Rasgou-se o Véu",
    "73 - Vem, Vem a Mim",
    "74 - Cristo Virá",
    "75 - Em Jesus Tens a Palma da Vitória",
    "76 - Vem, ó Pródigo",
    "77 - Guarda o Contacto",
    "78 - Meu Forte Redentor",
    "79 - Sua Graça Me Basta",
    "80 - Cristo Te Chama",
    "81 - Pode Salvar",
    "82 - Um Meigo Salvador",
    "83 - Não Posso Explicar",
    "84 - O Grande “Eu sou”",
    "85 - Deixai Entrar o Espírito de Deus"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu, color: Colors.white),
            );
          },
        ),
        title: const Text(
          'Harpa Cristã',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: mainColor,
              ),
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(
                  'assets/images/drawerimg.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ListTile(
                tileColor: mainColor,
                title: const Text(
                  'Voltar',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Initial()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: harps.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.menu_book_rounded),
            title: Text(harps[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HarpContentScreen(harp: harps[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
