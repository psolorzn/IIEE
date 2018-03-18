INSERT INTO `eshos_20293635_db`.`cargos` (`idcargo`, `cargo`) VALUES ('1', 'Director(a)'), ('2', 'SubDirector');

select accesos.codmod, accesos.clave, iiee.nombre from accesos, iiee where accesos.codmod = '$codmod' and accesos.clave = '$clave' and accesos.codmod = iiee.codmod;
