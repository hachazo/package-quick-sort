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
      
   end Quick_sort;
   
