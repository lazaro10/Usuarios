## Open Project

Para abrir o projeto use:
```
open Usuarios.xcodeproj
```

## Desafio 1
O projeto foi todo desenvolvido em swift 4, para iOS 10.0 ou superior, foi utilizada a arquitetura VIPER  e com os padrões de desenvolvimento SOLID.

 ## Desafio 2
Para solucionar o problema do calendário primeiramente teremos que criar uma UITableView para armazenar os eventos/laboratórios da WWDC, depois criaremos uma UIScrollView(horizontal) para que o usuário possa scrollar e visualizar todas as palestras do evento, dentro dessa UIScrollView criaremos uma segunda UITableView para armazenar as palestras, a largura dessa UITableView será dinâmica e a largura da UIScrollView será exatamente a mesma, e ficará atualizado de acordo com a UITableView, os horário dos eventos ficará no Header da UITableView. Os eventos ficarão na UITableViewCell da tabela, as palestras serão criadas no momento em que o usuário clicar na célula de acordo com o evento, será usado UIGestureRecognize para aumentar a UIView e assim determinando o horário na agenda e de acordo com a largura da maior UITableViewCell será determinada a largura da UITableView, o UIDropInteractionDelegate também será implementado para caso o usuário queira mudar alguma palestra de lugar.
 
 ## Desafio 3
 O problema foi resolvido com a persistencia do desenho no banco de dados e foi criada uma relação entre desenho->Usario, assim cada usuário tem seu própio desenho.
