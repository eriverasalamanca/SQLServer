altas_bajas:
Select a.altas, descripcion,b.bajas, b.descripcion1, a.periodo, a.tipo_nomina, a.fecha_inicio, a.fecha_termino, a.fecha_pago from vwAltasRotacion a
left join vwBajasRotacion b on a.periodo=b.periodo and a.tipo_nomina=b.tipo_nomina and a.fecha_inicio=b.fecha_inicio and a.fecha_termino=b.fecha_termino
order by a.fecha_termino desc;
store altas_bajas into ..\qvd\altas_bajas.qvd;
drop Table altas_bajas;

Select a.altas, descripcion,b.bajas, b.descripcion1, a.periodo, a.tipo_nomina, a.fecha_inicio, a.fecha_termino, a.fecha_pago from vwAltasRotacion a
left join vwBajasRotacion b on a.periodo=b.periodo and a.tipo_nomina=b.tipo_nomina and a.fecha_inicio=b.fecha_inicio and a.fecha_termino=b.fecha_termino
order by a.fecha_termino desc;
