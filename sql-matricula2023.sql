select a.codmod, b.ie, b.nivel, count(a.codmod) as cantidad from msolicitudes a JOIN matri01 b ON a.codmod = b.codmod group by a.codmod having count(a.codmod)>0

select a.codmod, b.ie, c.nivel, count(a.codmod) as cantidad from msolicitudes a JOIN matri01 b ON a.codmod = b.codmod join niveles c on b.nivel = c.idnivel group by a.codmod having count(a.codmod)>0
