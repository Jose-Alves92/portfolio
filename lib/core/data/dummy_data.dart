import 'package:portfolio/app/models/project_model.dart';
import 'package:portfolio/core/utils/screenshots.dart';

class DummyData {
  static DummyData? _instance;
  // Avoid self isntance
  DummyData._();
  static DummyData get instance {
    _instance ??= DummyData._();
    return _instance!;
  }

  List<Project> projects = [
    Project(
        title: "PlayNuvem App - Flutter UI",
        description:
            "PlayNuvem é uma aplicação reprodutor de filmes e TvShows de arquivos em nuvem storage pessoal, este projeto é um case de estudos e esta em fase de desenvolvimento, esta sendo utilizado consumo de Api rest, gestão de estado e injeção de dependência com packages provider, padrões de projetos com MVC, Repository pattern. PlayNuvem organiza as mídias pessoas com informações da biblioteca TMDB, como seções de recomendados, lançamentos e principais gêneros, centralizando as mídias a parti de um nuvem storage e reproduzindo direto no PlayNuvem.",
        urls: {
          'github': 'https://github.com/Jose-Alves92/PlayNuvem',
          'website': '',
          'google-play': '',
        },
        images: [],
        isProjectMobile: true),
    Project(
      title: "Portfólio Web - Flutter UI",
      description:
          "Projeto web para meu portfólio construído com Flutter para demostrar o pouco do meu trabalho",
      urls: {
        'github': '',
        'website': '',
        'google-play': '',
      },
      images: [],
      isProjectMobile: false,
    ),
    Project(
      title: "Shop E-commerce App - Flutter UI",
      description:
          "Shop é uma aplicação mobile construída durante o curso de Flutter, curso organizado pela COD3R. O aplicativo shop é um exemplo de e-commerce mobile com uma tela de registro e login do usuário com persistência por um período de tempo, o que significa que os usuários não precisam fazer login continuamente. No início do aplicativo existe uma grade de produtos, clique nela para ir para os detalhes e você poderá adicionar o produto aos seus favoritos ou adicionar ao carrinho para fazer o pedido. Tem a capacidade de acompanhar pedidos feitos e gerenciar produtos na loja.",
      urls: {
        'github': 'https://github.com/Jose-Alves92/shop',
        'website': '',
        'google-play': '',
      },
      images: [],
      isProjectMobile: true,
    ),
    Project(
      title: "Delivery App - Flutter UI",
      description:
          "Projeto Deliveryapp do curso flutter na COD3ER, é um, aplicativo de delivery para restaurante, neste app o usuário terá acesso a tela de categorias de refeições, onde selecionando-a será mostrado uma nova tela com todas as refeições disponível, permitindo o usuário clicar na refeição e ver todos os detalhes da mesma, inclusive marca uma refeição como favorita, e também tem um menu com opção de filtrar as refeições que não contem glúten, lactose ou mostrar refeições veganas, vegetarianas.",
      urls: {
        'github': 'https://github.com/Jose-Alves92/deliveryapp',
        'website': '',
        'google-play': '',
      },
      images: Screenshots.deliveryapp,
      isProjectMobile: true,
    ),
    Project(
      title: "Expenses App - Flutter UI",
      description:
          "Projeto expenses do curso Flutter na Cod3r, é um app de despesas pessoais simples que mostra um gráfico de despesas dos últimos 7 dias, onde cada barra do gráfico representa o percentual gasto no dia em relação aos últimos 7 dias.",
      urls: {
        'github': 'https://github.com/Jose-Alves92/expenses',
        'website': '',
        'google-play': 'https://google.com.br',
      },
      images: Screenshots.expenses,
      isProjectMobile: true,
    ),
  ];
}
