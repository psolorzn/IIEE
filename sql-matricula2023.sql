select a.codmod, b.ie, b.nivel, count(a.codmod) as cantidad from msolicitudes a JOIN matri01 b ON a.codmod = b.codmod group by a.codmod having count(a.codmod)>0
