ingreso_datos=ARGV
precio_venta=ingreso_datos[0].to_f
usuarios=ingreso_datos[1].to_f
usuariosvip=ingreso_datos[2].to_f
usuariosfree=ingreso_datos[3].to_f
gastos=ingreso_datos[4].to_f

utilidades=(precio_venta*usuarios)
utilidades=utilidades+((precio_venta*2)*usuariosvip-gastos)
if utilidades > 0
    impuestos=utilidades*0.35
    utilidades=utilidades*0.65
    puts "Las utilidades son #{utilidades}, aplicando un impuesto total de #{impuestos}"
else
    puts "Registra una pérdida de #{utilidades}"
end
