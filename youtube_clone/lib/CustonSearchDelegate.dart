import 'package:flutter/material.dart';

class CustonSearchDelegate extends SearchDelegate<String> {
  /*
   * Cria metodos no appbar da pesquisa
   */
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            // limpa campo de pesquisa
            query = '';
          })
    ];
  }

  /*
   * configura btn voltar
   */
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        // fecha tela de pesquisa
        onPressed: () {
          close(context, '');
        });
  }

  /*
   * Constrio o resultado do que foi pesquisado
   */
  @override
  Widget buildResults(BuildContext context) {
    // print('pesquisa realizada');
    close(context, query);
    return Container();
  }

  /*
  * Define sugestoes de pesquisa
   */
  @override
  Widget buildSuggestions(BuildContext context) {
    // print('resulatoo da presuisa' + query);
    List<String> list = List();
    if (query.isNotEmpty) {
      list = ["Andriod", "Andriod Navegação", "IOS", "Jogos"]
          .where((text) => text.toLowerCase().startsWith(query.toLowerCase())).toList();
      return ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: (){
                close(context, list[index] );
              },
              title: Text(list[index]),
            );
          });
    } else {
      return Center(
        child: Text("Nenhuma pesquisa realizada"),
      );
    }
  }
}
