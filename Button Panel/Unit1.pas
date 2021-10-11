unit Unit1;

{-----------------------------------------------------------------------------

Permet d'avoir des boutons en couleurs sans utiliser de composants extérieurs
à Delphi standard

Principe :
• Nommer la série de Panels à convertir avec un nom de base (ex : BP)
  suivi du nombre de boutons : 1 à N (sans trou) : BP1, BP2, BP3 ...
• Mettre la propriété TAG à la valeur du nom du bouton (1 à N)
	Exemple BP1, BP2, ... BP5 : TAG 1, 2, ... 5
• Ajouter la variable globale :  KBP : string='BP';
• Ajouter dans Form.Create :
	InitMouseBP(5,'BP'); // ,'BP' étant la valeur par défaut, peut être omis

Il ne reste qu'à définir les couleurs des boutons  !!

L'action effectuée par le "bouton" reste à l'initiative du OnClick
------------------------------------------------------------------------------}

///------------------------------------
       interface
///------------------------------------

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    LB1: TLabel;
    LB2: TLabel;
    BP1: TPanel;
    BP2: TPanel;
    BP3: TPanel;
    BP4: TPanel;
    BP5: TPanel;
    procedure BP1Click(Sender: TObject);
    procedure BP2Click(Sender: TObject);
    procedure BP4Click(Sender: TObject);
    procedure BP5Click(Sender: TObject);
    procedure BP3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure MouseBP(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure InitMouseBP(n:integer; z:string='BP');
  public
    { Déclarations publiques }
  end;

var

  Form1: TForm1;
  KBP : string='BP';

///------------------------------------
        implementation
///------------------------------------

{$R *.dfm}

//-------------------------------------------------------------- Initialisation
procedure TForm1.FormCreate(Sender: TObject); 
begin 
InitMouseBP(5,'BP'); // 5 boutons BP1 à BP5
end;

///------------------------------------
///       BoutonPanel
///------------------------------------

//------------------------------------------------------ InitMouseBP
procedure TForm1.InitMouseBP(n:integer; z:string='BP');
var i:integer; W:string;
begin
KBP := z;
for i:=1 to n do
   begin
   W := KBP + inttostr(i);
   Tpanel(findComponent(W)).OnMouseUp   := MouseBP;
   Tpanel(findComponent(W)).OnMouseDown := MouseBP;
   Tpanel(findComponent(W)).BevelInner  := BvSpace;
   Tpanel(findComponent(W)).BevelOuter  := bvRaised;
   Tpanel(findComponent(W)).BevelWidth  := 2;
   Tpanel(findComponent(W)).BorderWidth := 0;
   end;
end;

//---------------------------------------------------------- MouseBP
procedure TForm1.MouseBP;
var n:integer; z:string; //C1,c2:tcolor;
begin
n := TComponent(Sender).Tag;
z := KBP + inttostr(n);
//C1 := Tpanel(findComponent(z)).Color;
//C2 := Tpanel(findComponent(z)).font.color;
//Tpanel(findComponent(z)).Color := C2;
//Tpanel(findComponent(z)).font.Color := C1;
if Tpanel(findComponent(z)).BevelOuter=bvRaised
   then Tpanel(findComponent(z)).BevelOuter := bvLowered
   else Tpanel(findComponent(z)).BevelOuter := bvRaised;
end;

///------------------------------------
///       Spécifiques
///------------------------------------

procedure TForm1.BP1Click(Sender: TObject);
begin
LB1.Caption := 'Message 1, Bouton BP1';
end;

procedure TForm1.BP2Click(Sender: TObject);
begin
LB1.Caption := 'Message 2, Bouton BP2';
end;

procedure TForm1.BP4Click(Sender: TObject);
begin
LB2.Caption := 'Message 3, Bouton BP4';
end;

procedure TForm1.BP5Click(Sender: TObject);
begin
LB2.Caption := 'Message 4, Bouton BP5';
end;

procedure TForm1.BP3Click(Sender: TObject);
begin
Close
end;

end.
