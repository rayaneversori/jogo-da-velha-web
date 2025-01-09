# Jogo da Velha Web - Flutter
Este projeto apresenta um jogo da velha funcional, desenvolvido com Flutter. O design utiliza uma paleta de cores em violeta e dourado, proporcionando uma experiência visual sofisticada e agradável, com a opção de jogar contra outro humano ou contra o computador.

## Recursos Utilizados
- **Linguagem**: Dart (utilizando o framework Flutter)
- **Estilos**: Cores violeta e dourado, bordas arredondadas, sombras suaves e design responsivo
- **Componentes Personalizados**: Interface interativa com `GridView` para o tabuleiro e `PopupMenuButton` para selecionar o modo de jogo

## Estrutura do Código
- **JogoDaVelha**: Widget principal que gerencia a lógica do jogo e exibe a interface do usuário.
- **Tabuleiro**: Utiliza `GridView` para representar as células do jogo.
- **PopupMenuButton**: Permite ao usuário selecionar entre jogar contra outro humano ou contra o computador.

## Funcionalidades
- **Modo de Jogo**: Opção para jogar contra outro humano ou contra o computador.
- **Jogadas**: Os jogadores podem clicar nas células do tabuleiro para fazer suas jogadas.
- **Inteligência Artificial**: O computador faz suas jogadas com base em uma estratégia simples: priorizando vitória, bloqueando o adversário, e jogando no centro e nas bordas.
- **Verificação de Vitória e Empate**: O jogo verifica automaticamente se algum jogador venceu ou se houve empate.
- **Reinício do Jogo**: Após o fim de uma partida, o jogador pode reiniciar o jogo com um botão estilizado.

## Layout e Design
- **Tabuleiro**: Organizado em uma grade 3x3 utilizando `GridView.builder`.
- **Estilo**: O tabuleiro e os botões possuem bordas arredondadas, sombras suaves e um gradiente de cores violeta e dourado para proporcionar uma experiência visual agradável.
- **Responsividade**: O layout é responsivo, adaptando-se ao tamanho da tela, para uma experiência otimizada em diferentes dispositivos.

## Acesse a Página Web
https://rayaneversori.github.io/jogo-da-velha-web/
