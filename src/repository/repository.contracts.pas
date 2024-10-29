unit repository.contracts;

interface

type
  IRepository<T: IInterface> = interface
    ['{1E30B09C-6636-460A-B881-456915E44282}']
    function ListarTodos: TArray<T>;
    function Listar: T;
    function Inserir: T;
    function Atualizar: T;
    function Excluir: T;
  end;

implementation

end.
