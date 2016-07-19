class Pico_placa
  def initialize()#metodo constructior simpre debe ir
  end
  def toma_datos ()# metodo salud
  
   # begin#loop infinito
      
      t = Time.now
      
      puts t.strftime("FECHA Y HORA: %d/%m/%Y %H:%M:%S")
      
      h=t.strftime("%H").to_i#anlisis de horas
      m=t.strftime("%M").to_i#anlisis de minutos
      
      case h    #caso de horas
      when 7..9  then 
      activo=1#ctivmos un vriaable par luego usarla
      when 16..19 then 
      activo=1#ctivmos un vriaable par luego usarla
      else 
      activo=0#ctivmos un vriaable par luego usarla
      end
      
       case m    #caso de horas
      when 30..59  then 
      activo1=1#ctivmos un vriaable par luego usarla
      else 
      activo1=0#ctivmos un vriaable par luego usarla
      end
    
      
      if activo==1 and activo1== 1 then 
        print"\n PICO Y PLACA ACTIVO\n"
        usar=1
      else print"\n NO HAY PICO Y PLACA EN ESTE HORARIO\n"
        usar=0
    end  
      
      
     
      
      dia = t.wday
      dia1=dia.to_i
   case dia1 #caso de seleccion de dia
     when 0 then  print "\nDia de Hoy es: Domingo \n"
     when 1 then  print "\nDia de Hoy es: Lunes \n"
     when 2 then  print "\nDia de Hoy es: Martes \n"
     when 3 then  print "\nDia de Hoy es: Miercole \n"
     when 4 then  print "\nDia de Hoy es: Jueves \n"
     when 5 then  print "\nDia de Hoy es: Viernes \n"
     when 6 then  print "\nDia de Hoy es: Sabado \n"  
      end
     
     print "\nELIJA UNA OPCION\n "
      print "\n1) Pico y Placa"
       print "\n2) Salir" 
      print "\nIngere la Opcion: "
            
      opcion = gets.chomp#obtenr un string y psr a int
      opcion1=opcion.to_i
      case opcion1
        when 1 then(
      
      
      
      print "\nIngrese la placa de se vehiculo completa: " 
  
      placa = gets.chomp#obtenr un string 
  
      placa1 = placa.length
  
      case placa1
      when 0..5 then
              print"\n Placa incompleta\n  "
             
      when 6..7 then
        print"\n Su placa es: " + placa.upcase+"\n"
              
            #..................EN EST OPCION SE VE I SE PUEDE O NO USAR EL CARRO 
            c=placa.scan(/./)
            u_letra=c[placa1-1]
            print "\nLa ultima letra es: "+u_letra+"\n"
            print "\n"
            #..................................................................
      else 
              print"\n Error de placa \n"
            
      end)
    
        when 2 then  exit() 
          #when opcion1> then print"\n Error de Opcion "
       else 
              print"\n Error de Opcion\n "
              
             
  end
  
 #   end while 1>0#condicion infinit loop repetitivo
 if usar==1 and u_letra==dia1 then
 print"ESTA EN PICO Y PLCA NO CONDUCIR\n "
 else
   print"PUEDES CONDUCIR\n "
    end
  end 
  end  

  objeto= Pico_placa.new()
objeto.toma_datos
gets()