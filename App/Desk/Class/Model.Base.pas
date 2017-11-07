unit Model.Base;

interface

Type

  TRegra = (rProduto, rCiente);


  TBase =class
  private
    Fid: string;
    procedure Setid(const Value: string);

  public
    property id: string read Fid write Setid;

  published
  end;
implementation

{ TModel }

procedure TBase.Setid(const Value: string);
begin
  Fid := Value;
end;

end.
