# Jogo da Cobra do açude
Um jogo 2D desenvolvido na Godot Engine, no qual o jogador deve controlar o personagem, coletar 10 goiabas enquanto foge da cobra do açude.

Link para jogar: https://thaisavila.itch.io/cobra-do-acude

## Sobre o projeto
Este projeto foi criado como uma experiência prática de desenvolvimento de jogos 2D. Durante o desenvolvimento, foram trabalhados conceitos como movimentação de personagem, colisões, detecção por áreas, inimigos com perseguição, itens coletáveis, condições de vitória e derrota e organização de cenas e scripts na Godot.

## Objetivo do jogo
O objetivo é coletar os itens disponíveis no mapa antes que o tempo termine, evitando a colisão com a cobra. O jogador perde quando é alcançado pela cobra e vence ao cumprir a condição de coleta definida no jogo.

## Narrativa 
A narrativa do jogo é ambientada no sertão cearense, onde uma lenda popular conta que uma enorme serpente, conhecida como Cobra do Açude, habita as águas dos açudes e protege seu território contra qualquer intruso.

Durante a partida, o jogador deve explorar as margens do açude e coletar dez goiabas douradas, que amadureceram sob a proteção da criatura. 

## Funcionalidades
- Movimentação do Player pelo mapa.
- Coleta de goiabas.
- Contagem dos itens coletados.
- Cobra com movimentação de perseguir o Player.
- Detecção de colisão entre o Player e a Snake.
- Condição de vitória ao concluir a coleta dos itens.
- Condição de derrota ao ser alcançado pela Snake ou finalizar o tempo.
- Limites de movimentação no mapa.

## Tecnologias utilizadas
Godot Engine.

## Estrutura do projeto
A estrutura pode variar conforme a organização final dos arquivos, mas a ideia principal é:

Snake-Game/

├── project.godot

├── scenes/

├── scripts/

├── imgs/

└── README.md
Os nomes das pastas e cenas podem ser ajustados para corresponder à estrutura atual do projeto.

## Principais elementos
- Player

O Player é o personagem controlado pelo usuário. Ele possui uma sprite, área de colisão e um script responsável pela movimentação.

- Snake

A Snake é um inimigo representado por um CharacterBody2D. Sua estrutura inclui a sprite, um CollisionShape2D e uma Area2D para auxiliar na detecção de contato com o Player.
A cobra calcula continuamente a direção entre sua posição e a posição do Player, movimentando-se pelo mapa para persegui-lo.

- Goiabas

As goiabas funcionam como itens coletáveis. Quando o Player entra em contato com uma delas, o item é coletado, o  progresso do jogador é atualizado e uma nova goiaba aparece em um lugar aleatório no mapa.

- Mapa

O mapa reúne os principais elementos da fase, como Player, Snake, goiabas, limites de movimentação, contador e demais componentes da interface.

## Como executar
1. Instale a Godot Engine.
2. Baixe ou clone este repositório:
bash
``` git clone URL_DO_REPOSITORIO ```
3. Abra a Godot Engine.
4. Selecione a opção Importar.
5. Escolha a pasta do projeto.
6. Abra o arquivo project.godot.
7. Execute o projeto usando o botão de reprodução ou a tecla F5.

## Possíveis melhorias
- Adicionar diferentes níveis de dificuldade.
- Adicionar sons e música de fundo.
- Criar animações para o Player e para a Snake.
- Adicionar um menu de pausa.
- Salvar a maior pontuação.
- Implementar diferentes tipos de obstáculos no mapa.
- Adicionar suporte para dispositivos móveis.
- Melhorar a interface e os efeitos visuais.

## Demonstração
### Mapa
<img width="1150" height="642" alt="demo" src="https://github.com/user-attachments/assets/ab960fba-121a-45db-b4e7-56875dc02917" />

### Menu
<img width="1146" height="646" alt="MENU" src="https://github.com/user-attachments/assets/045e1ea2-0260-453a-af4a-2ab42495bf85" />

## Autora
Desenvolvido por Thais Ávila.

