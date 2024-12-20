import 'package:appbible/src/config.dart';
import 'package:appbible/src/content/harpContent.dart';
import 'package:appbible/src/initial/initial.dart';
import 'package:flutter/material.dart';

class HarpaList extends StatefulWidget {
  const HarpaList({super.key});

  @override
  _HarpaListState createState() => _HarpaListState();
}

class _HarpaListState extends State<HarpaList> {
  final List<String> harps = [
    '1 - Chuvas de Graça',
    '2 - Saudosa Lembrança',
    '3 - Plena Paz',
    '4 - Deus Velará Por Ti',
    '5 - Ó Desce Fogo Santo',
    '6 - Na Maldição Da Cruz',
    '7 - Cristo Cura Sim!',
    '8 - Cristo, O Fiel Amigo',
    "9 - Marchai Soldados De Cristo",
    "10 - Eu Te Louvo",
    "11 - Ó Cristão, Eia Avante",
    "12 - Vem Já, Pecador",
    "13 - Jesus Comprou-me",
    "14 - Gozo Em Jesus",
    "15 - Conversão",
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
    "85 - Deixai Entrar o Espírito de Deus",
    '86 - Satisfeito com Cristo',
    "87 - Meu Testemunho",
    "88 - Revela a Nós Senhor",
    "89 - Sublime e Grande Amor",
    "90 - Há Paz e Alegria",
    "91 - Nívea Luz",
    "92 - O Bondoso Salvador",
    "93 - Há Trabalho Pronto",
    "94 - Na Jerusalém de Deus",
    "95 - Ouve, ó Pecador",
    "96 - Deixa Penetrar a Luz",
    "97 - Há um Caminho Santo",
    "98 - Estarás Vigiando?",
    "99 - Eis o Dia a Declinar",
    "100 - O Bom Consolador",
    "101 - A Unção Real",
    "102 - Crê na Promessa",
    "103 - Caminhemos na Luz",
    "104 - Jesus Procura a Ovelha",
    "105 - A Gloriosa Esperança",
    "106 - Viva Cristo",
    "107 - Firme nas Promessas",
    "108 - Pelejar Por Jesus",
    "109 - Venha a Jesus",
    "110 - Clama: Jesus, Jesus!",
    "111 - Que Mudança!",
    "112 - O Nome Soberano",
    "113 - O Celeste Diretor",
    "114 - Aceita o Perdão de Jesus",
    "115 - Trabalhai e Orai",
    "116 - Livre Estou",
    "117 - O Senhor Salva a Todo o Pecador",
    "118 - Face a Face",
    "119 - Inesgotável é Seu Amor",
    "120 - Noite de Paz",
    "121 - Maravilhoso é Jesus",
    "122 - Fogo Divino",
    "123 - Cristo Voltará",
    "124 - Adoração",
    "125 - Quem Dera Hoje Vir!",
    "126 - Bem-Aventurança do Crente",
    "127 - O Senhor da Ceifa Chama",
    "128 - Entrega o Teu Coração",
    "129 - A Fonte Salvadora",
    "130 - Cristo é Meu!",
    "131 - De Valor Em Valor",
    "132 - Obreiros do Senhor",
    "133 - No Rol do livro",
    "134 - Jesus à Porta do Coração",
    "135 - O Nome Precioso",
    "136 - Jesus, Nosso Socorro",
    "137 - Liberto da Escravidão",
    "138 - Quem Bate é Jesus Cristo",
    "139 - Jesus, Meu Eterno Redentor",
    "140 - A Segurança do Crente",
    "141 - Guia-me Sempre, Meu Senhor",
    "142 - A Cidade Celeste",
    "143 - O Verdadeiro Amigo",
    "144 - Vem à Assembléia de Deus",
    "145 - União do Crente Com Seu Senhor",
    "146 - Caminho brilhante",
    "147 - Servir a Jesus",
    "148 - Bendirei a Jesus",
    "149 - Canto do Pescador",
    "150 - Para Casamentos",
    "151 - Fala Jesus Querido",
    "152 - Pela Cruz ao Céu Irei",
    "153 - Soldados de Cristo",
    "154 - Doce Nome de Jesus",
    "155 - Imploramos Teu Poder",
    "156 - A Ovelha Perdida",
    "157 - Cristo, em Breve, Vem!",
    "158 - Que Farás de Jesus Cristo?",
    "159 - Cantai, ó Peregrinos",
    "160 - Deus Nos Quis Salvar",
    "161 - Navegando Pra Terra Celeste",
    "162 - O Estandarte da Verdade",
    "163 - Cristo Morreu Por Mim",
    "164 - Paz Luz e Amor",
    "165 - A Armadura Cristã",
    "166 - Deixa Entrar o Rei da Glória",
    "167 - As Testemunhas de Jesus",
    "168 - Meus Irmãos, Nos Jubilemos",
    "169 - Oh! Jesus Me Ama",
    "170 - Ao Calvário de Horror",
    "171 - Um Pecador Remido",
    "172 - Ó Vem Te Entregar",
    "173 - Os Santos Louvam Ao Senhor",
    "174 - Glória, Aleluia, Gloria",
    "175 - Irmãos Amados",
    "176 - Sacerdotes do Senhor",
    "177 - Salvo Estou",
    "178 - Gloriosa Paz",
    "179 - Redentor Formoso",
    "180 - Em Cristo Fruímos a Paz",
    "181 - Vem, Celeste Redentor",
    "182 - Jesus no Getsêmane",
    "183 - Ressuscitou!",
    "184 - Meu Jesus! Meu Jesus!",
    "185 - Invocação e Louvor",
    "186 - De Valor em Valor",
    "187 - Mais Perto Meu Deus de Ti!",
    "188 - O Gozo do Céu",
    "189 - Glória ao Salvador",
    "190 - Cristo! Meu Cristo!",
    "191 - O Meu Jesus",
    "192 - Pelo Sangue",
    "193 - A Alma Abatida",
    "194 - Jesus Me Guiará",
    "195 - Benigno Salvador",
    "196 - Uma Flor Gloriosa",
    "197 - O Lar da Glória",
    "198 - Jesus o Bom Amigo",
    "199 - A Ceia do Senhor",
    "200 - O Bondoso Amigo"
  ];

  List<String> filteredHarps = [];

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();

    filteredHarps = harps;
    _searchController.addListener(_filterHarps);
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterHarps);
    _searchController.dispose();
    super.dispose();
  }

  void _filterHarps() {
    setState(() {
      filteredHarps = harps
          .where((hino) =>
              hino.toLowerCase().contains(_searchController.text.toLowerCase()))
          .toList();
    });
  }

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                labelText: 'Pesquisar Hino',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredHarps.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.menu_book_rounded),
                  title: Text(filteredHarps[index]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            HarpContentScreen(harp: filteredHarps[index]),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
