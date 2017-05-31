select rta.compania,rta.trabajador,dat.dato as clave_planta,dat.descripcion as Planta, dat1.dato as clave_depto, dat1.descripcion as Departamento, dat2.dato as clave_area, dat2.descripcion as Area, dat3.dato as clave_subarea, dat3.descripcion as Subarea from rel_trab_agr as rta 
left join datos_agr_trab dat on rta.dato=dat.dato and rta.agrupacion= dat.agrupacion
left join rel_trab_agr rta1 on rta.compania=rta1.compania and rta.trabajador=rta1.trabajador and rta1.agrupacion='DEPTO'
left join datos_agr_trab dat1 on rta1.dato=dat1.dato and rta1.agrupacion= dat1.agrupacion
left join rel_trab_agr rta2 on rta.compania=rta2.compania and rta.trabajador=rta2.trabajador and rta2.agrupacion='AREA'
left join datos_agr_trab dat2 on rta2.dato=dat2.dato and rta2.agrupacion= dat2.agrupacion
left join rel_trab_agr rta3 on rta.compania=rta3.compania and rta.trabajador=rta3.trabajador and rta3.agrupacion='SUBAREA'
left join datos_agr_trab dat3 on rta3.dato=dat3.dato and rta3.agrupacion= dat3.agrupacion
where rta.agrupacion='PLANTA' and rta.compania in ('03','05','06') 
Group by rta.compania,rta.trabajador,dat.dato, dat.descripcion, dat1.dato,dat1.descripcion, dat2.dato,dat2.descripcion, dat3.dato, dat3.descripcion
order by dat.descripcion;
