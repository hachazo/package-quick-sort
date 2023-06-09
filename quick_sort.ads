with Vector;
generic
   
   type Telemento is private;
   type Indice is (<>);
   with procedure Put(X: in Telemento);
   with procedure Get(X: out Telemento);
   with function "<"(A,B: in Telemento) return Boolean;
   with function "<="(A,B: in Telemento) return Boolean;
   with function ">"(A,B: in Telemento) return Boolean;
   
   package Quick_sort is
      
      package Vectorinc is new Vector(Telemento, Indice, put,get);
      use Vectorinc;
      
      type Tipovecc is new Tipovec;
      
      procedure Dividir (Datos: in out Tipovecc; Primero, Ultimo: in indice; Puntodivision: in out Indice);
      procedure Ordrapida (Datos: in out Tipovecc; Primero, Ultimo: in indice);
      
   end Quick_Sort;
   
--   subtype Indice is Integer range 1..8;
--   
--   procedure Putinc(X: in Integer) is
--   begin
--      put(x);
--      end putinc;
--   
--   procedure Getinc(X: out Integer) is
--   begin
--      Get(X);
--      end getinc;
--   
--   function Menor(X,Y: Integer) return Boolean is
--   begin
--      return x<Y;
--   end Menor;
--   
--   function Menorigual(X,Y: Integer) return Boolean is
--   begin
--      return x<=Y;
--   end Menorigual;
--   
--   function Mayor(X,Y: Integer) return Boolean is
--   begin
--      return x>Y;
--   end Mayor;
--   
--   package quickinc is new quick_Sort(integer,indice,putinc,getinc,menor,menorigual,mayor);
--   use quickinc;
--   vector:tipovecc;
--   
