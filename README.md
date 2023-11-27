# GerenciaPedidos

Etapa 1: Criação de Tabelas e Inserção de Dados

Crie as tabelas "Clientes" e "Pedidos" com campos apropriados. Insira dados de exemplo nas tabelas para simular clientes e pedidos. Certifique-se de incluir uma chave primária em cada tabela.

![image](https://github.com/fzkdiniz/GerenciaPedidos/assets/61026576/21960bd5-c382-4af7-87e6-30603bc85389)

Etapa 2: Criação de Stored Procedure

Crie uma stored procedure chamada "InserirPedido" que permite inserir um novo pedido na tabela "Pedidos" com as informações apropriadas. A stored procedure deve receber parâmetros como o ID do cliente e os detalhes do pedido. Ao término teste o funcionamento da stored procedure criada inserindo um pedido.

![image](https://github.com/fzkdiniz/GerenciaPedidos/assets/61026576/6ce838cc-ee17-4835-ae5a-ceb3e1dbf452)


Etapa 3: Trigger

Crie uma trigger que seja acionada APÓS a inserção de um novo pedido na tabela "Pedidos". A trigger deve calcular o valor total dos pedidos para o cliente correspondente e atualizar um campo "TotalPedidos" na tabela "Clientes" com o valor total. Teste a Trigger inserindo um novo pedido na tabela "Pedidos“.

![image](https://github.com/fzkdiniz/GerenciaPedidos/assets/61026576/eae589c2-2c88-4d52-841a-cf3bdc1b4167)


Etapa 4: View

Crie uma view chamada "PedidosClientes" que combina informações das tabelas "Clientes" e "Pedidos" usando JOIN para mostrar os detalhes dos pedidos e os nomes dos clientes.

![image](https://github.com/fzkdiniz/GerenciaPedidos/assets/61026576/19ffd653-15d5-4bef-8e32-b6e4501ad63b)


Etapa 5: Consulta com JOIN

Escreva uma consulta SQL que utiliza JOIN para listar os detalhes dos pedidos de cada cliente, incluindo o nome do cliente e o valor total de seus pedidos. Utilize a view "PedidosClientes" para essa consulta.

![image](https://github.com/fzkdiniz/GerenciaPedidos/assets/61026576/db984423-88ba-425e-8f8a-0dd73102e132)




