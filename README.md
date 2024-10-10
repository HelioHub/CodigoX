# Desafio DELPHI - TOTVS Hospitalidade - Daine Codigo.X

Desenvolvimento de exemplos em DELPHI para consolidar conceitos - Hélio Marques

![## MVC 1](https://github.com/HelioHub/CodigoX/blob/main/images/Desafio.png)

## GIT to windows 

	…or create a new repository on the command line
	echo "# CodigoX" >> README.md
	git init
	git add README.md
	git commit -m "first commit"
	git branch -M main
	git remote add origin git@github.com:HelioHub/CodigoX.git
	git push -u origin main
	…or push an existing repository from the command line
    ssh-keygen
    cat /c/Users/hislindo/.ssh/id_ed25519.pub
    git remote add origin git@github.com:HelioHub/CodigoX.git
	git branch -M main
	git push -u origin main
	
## Questão 1

O que você entende por arquitetura MVC?

### Significado:
	MVC significa Model-View-Controller, isto é, Modelo-Visão-Controle.
	Trata-se da separação em camadas de uma aplicação em diferentes níveis. 
	MVC não é um Padrão de Projeto, mas um Padrão de Arquitetura de Software, 
	pois refere-se aos fundamentos estruturais na composição das camadas do software.

![## MVC 1](https://github.com/HelioHub/CodigoX/blob/main/images/ImagemMVC1.jpg)

	A separação das camadas é feita em três componentes: Modelo, Visão e Controle. 
	Cada um dos componentes tem uma função específica e obviamente conectados entre si. 
	O objetivo destas camadas é facilitar a compreensão e a manutenção.

![## MVC 2](https://github.com/HelioHub/CodigoX/blob/main/images/ImagemMVC2.jpg)

### Camadas:
	````
	Visão (View):
	````
	> Essa camada é responsável por apresentar as informações de forma visual ao usuário. 
	> Em seu desenvolvimento devem ser aplicados apenas recursos ligados a aparência como:
	  mensagens, botões ou telas.
	> A View está na linha de frente da comunicação com usuário.
	> Responsável em transmitir questionamentos ao Controller e entregar as respostas obtidas 
	  ao usuário. 
	> Interface que se comunica, disponibilizando e capturando todas as informação do usuário.	
	
	````
	Controle (Controller):
	````
	> A camada de controle é responsável por intermediar as requisições enviadas pela View 
	  e com as respostas fornecidas pelo Model, processando os dados que o usuário informou 
	  e repassando para outras camadas.
	> Numa analogia simplista, o 'controller' opera como o "maestro de uma orquestra" que permite 
	  a comunicação entre o detentor dos dados e o usuário com vários questionamentos no MVC.		

	````
	Modelo (Model):
	````
	> Essa classe também é conhecida como Business Object Model (objeto modelo de negócio). 
	> Sua responsabilidade é gerenciar e controlar a forma como os dados se comportam por meio 
	  das funções, lógica e regras de negócios estabelecidas.
	> Ele é o detentor dos dados que recebe as informações do Controller, 
	  válida se ela está correta ou não e envia a resposta mais adequada.	
	> Consiste na essência as regras de negócio, envolvendo as classes do sistema 
	  e o acesso aos dados.

### Vantagem MVC:
	> O sistema fica mais organizado quando está estruturado com MVC. 
	> No desevolvedor ao trabalhar no projeto não terá grandes dificuldades em compreender 
	  a estrutura do código. 
	> Também as exceções são mais fáceis de serem identificadas e tratadas. 
	> Quando ocorre ERRO ao invés de revirar o código todo, 
	  o MVC pode indicar em qual camada o erro ocorre.
	> Outro ponto importante do MVC é a segurança da transição de dados. 
	> Na camada Controle é possível evitar que qualquer dado inconsistente chegue à camada 
	  de Modelo para persistir no banco de dados. Como uma espécie de Firewall, o usuário 
	  entra com os dados e a camada de Controle se responsabiliza por bloquear os dados 
	  que venham a causar inconsistências no banco de dados. Camada muito importante.

### Extensão da camada View:
	> Embora o MVC sugira a organização do sistema em três camadas, nada impede que você "estenda" 
	  essas camadas para expandir a dimensão do projeto. 
	> Por exemplo, vamos supor que um determinado projeto tenha um módulo WEB para consulta 
	  de dados. Aonde esse módulo se encaixaria dentro das três camadas?
	  Este módulo poderia ser agrupado com os outros objetos da camada Visão,
	  mas seria conveniente criar uma camada exclusiva (como "Web") estendida da camada de Visão 
	  e agrupar todos os itens relacionados a esse módulo dentro dela. 
	> Do mesmo modo para um módulo Mobile ou WebService. 
	> Nestes casos, no nível de abstração, essas novas camadas estariam dentro da camada de Visão, 
	  mas são unidades estendidas.

### Extensão da camada Model:
	> Podemos utilizar de extensão na camada Model outra camada de Persistência dos dados, chamado 
	  de DAO, responsável pelo acesso direto ao banco de dados específico e persistência dos dados. 

### Exemplos no DELPHI:
	````
	Exemplo usando MVC no Delphi.
	
    Embarcadero® Delphi 12 Version 29.0.51961.7529 
    Copyright © 2024 Embarcadero Technologies, Inc. All Rights Reserved.	
	
	ProjetoMVC.exe
	````
![## MVC 3](https://github.com/HelioHub/CodigoX/blob/main/images/ImagemMVC3.png)


	````
	FrameWork de terceiro, chamado DMVC
	````
	
	Criado por Daniele Teti
	GitHub: https://github.com/danieleteti/delphimvcframework

### Nota: 
	Existem outros padrões de Arquitetura de Software:
		Pipeline ...
		Blackboard ...
		Microkernel ...
		Reflection ...
		Layers (camadas) ...
		Client-server (cliente-servidor) ...
		Microservices (microsserviços) ...
		Pipes-and-filters (PF) ...
		Peer-to-Peer (P2P) ...
		Service-Oriented Architecture (SOA) ...
		Publish-Subscribe (Pub/Sub).		
		
	No entanto, o MVC é o mais utilizado pelos desenvolvedores em função da objetividade.

## Questão 2

Escolha um padrão de projeto e escreva seu conceito, objetivo e um cenário de uso.

### Padrão de Projeto

	Visitor Pattern

### Conceito Visitor Pattern

	Em programação orientada a objetos e engenharia de software, 
	o Visitor Pattern é um padrão de projeto comportamental. 
	Representa uma operação a ser realizada sobre elementos da estrutura de um objeto. 
	O Visitor permite que se crie uma nova operação sem que se mude a classe dos elementos sobre as quais ela opera.

    Isto é, permite separar algoritmos dos objetos nos quais eles operam.	

	Reduz a complexidade de implementação de regras de negócios no Sistema, 
	evitando utilização de comandos condicionais como If e Case.

	Cria Sistema Desacoplado, 
	separando componentes ou camadas individuais dentro de um aplicativo para permitir que cada parte evolua, 
	seja dimensionada e mantida independentemente uma da outra.

![## Visitor Pattern](https://github.com/HelioHub/CodigoX/blob/main/images/VisitorPattern.png)

### Objetivo do Visitor Pattern

	O padrão Visitor objetiva que se coloque o novo comportamento em uma classe separada chamada visitor, 
	em vez de tentar integrá-lo às classes existentes. 
	O objeto original que tinha que executar o comportamento agora é passado para um dos métodos do visitante como argumento, 
	fornecendo ao método acesso a todos os dados necessários contidos no objeto.

