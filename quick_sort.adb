package body Quick_sort is

   procedure Intercambiar (Der,izq: in out Telemento) is
      Temp:Telemento;
   begin
      Temp:= Izq;
      Izq:=Der;
      Der:=Temp;
   end Intercambiar;


   procedure Ordrapida(Datos: in out Tipovecc; Primero, Ultimo: in Indice) is
      Puntodivision: Indice;
   begin
      if Primero < Ultimo then
         Dividir(Datos, Primero, Ultimo, Puntodivision);
         if Puntodivision > Indice'First then
            Ordrapida(Datos, Primero, Indice'Pred(Puntodivision));
         end if;
         if Puntodivision < Indice'Last then
            Ordrapida(Datos, Indice'Succ(Puntodivision), Ultimo);
         end if;
      end if;
   end Ordrapida;
   

   procedure Dividir (Datos: in out Tipovecc; Primero, Ultimo: in indice; Puntodivision: in out Indice) is
      Derecha, Izquierda: Integer;
      V: telemento;
   begin
      V:= Datos(Primero);
      Derecha:= Indice'Pos(Indice'Succ(Primero));
      Izquierda:= indice'pos(ultimo);
      loop
         while Derecha < Izquierda and Datos(indice'val(Derecha)) <= V loop
            Derecha:=Derecha+1;
         end loop;
            if Derecha = Izquierda and Datos(indice'val(Derecha)) <= V then Derecha:=Derecha+1;
         end if;
         while Derecha <= Izquierda and Datos(indice'val(Izquierda)) > V loop
            Izquierda:= Izquierda-1;
         end loop;
         if Derecha < Izquierda then 
            Intercambiar(Datos(indice'val(Derecha)), Datos(indice'val(Izquierda)));
            Derecha:= Derecha+1;
            Izquierda:= Izquierda-1;
         end if;
         exit when Derecha > Izquierda;
      end loop;
      Intercambiar(Datos(Primero), Datos(indice'val(Izquierda)));
      Puntodivision:= indice'val(Izquierda);
   end Dividir;
   



end Quick_sort;


