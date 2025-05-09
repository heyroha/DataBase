SELECT r.name,
    SDO_GEOM.RELATE(r.shape, 'determine', c_b.shape, 0.005) relationship
    FROM river r, country c_b WHERE c_b.name = 'Switzerland';

SELECT c.name,
    SDO_GEOM.RELATE(c.shape, 'determine', c_b.shape, 0.5) relationship
FROM country c, country c_b 
WHERE c_b.name = 'Switzerland'
UNION
SELECT r.name,
    SDO_GEOM.RELATE(r.shape, 'determine', c_b.shape, 0.5) relationship
FROM river r, country c_b 
WHERE c_b.name = 'Switzerland';

SELECT r.name,
    SDO_GEOM.RELATE(r.shape, 'determine', c_b.shape, 0.005) relationship
    FROM river r, country c_b WHERE c_b.name = 'Hungary';

SELECT r.name,
    SDO_GEOM.RELATE(r.shape, 'determine', c_b.shape, 0.5) relationship
FROM river c_b, country r 
WHERE c_b.name = 'Seine River';

SELECT r.name,
    SDO_GEOM.RELATE(r.shape, 'determine', c_b.shape, 0.5) relationship
FROM river r, country c_b 
WHERE c_b.name = 'Italy';

SELECT r.name,
    SDO_GEOM.RELATE(r.shape, 'determine', c_b.shape, 0.5) relationship
FROM river c_b, country r 
WHERE c_b.name = 'Po River';