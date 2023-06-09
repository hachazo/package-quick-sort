with Ada.Integer_Text_Io,Ada.Text_Io, quick_Sort;
use Ada.Integer_Text_Io,Ada.Text_Io;

procedure Prueba_quicksort is

   subtype Indice is Integer range 1..8;
   
   procedure Putinc(X: in Integer) is
   begin
      put(x);
      end putinc;
   
   procedure Getinc(X: out Integer) is
   begin
      Get(X);
      end getinc;
   
   function Menor(X,Y: Integer) return Boolean is
   begin
      return x<Y;
   end Menor;
   
   function Menorigual(X,Y: Integer) return Boolean is
   begin
      return x<=Y;
   end Menorigual;
   
   function Mayor(X,Y: Integer) return Boolean is
   begin
      return x>Y;
   end Mayor;
   
   package quickinc is new quick_Sort(integer,indice,putinc,getinc,menor,menorigual,mayor);
   use quickinc;
   vector:tipovecc;
begin
   Leer(Vector);
   imprimir(vector);
   Ordrapida(Vector,Indice'First,Indice'Last);
   imprimir(vector);
   end Prueba_quicksort;

