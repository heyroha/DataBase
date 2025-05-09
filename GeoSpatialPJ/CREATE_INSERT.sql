CREATE TABLE COUNTRY (
    country_id NUMBER PRIMARY KEY, --국가 ID
    name VARCHAR(32), --국가 이름
    shape SDO_GEOMETRY --국가 모양
);
CREATE TABLE RIVER (
    river_id NUMBER PRIMARY KEY, --강 ID
    name VARCHAR(32), -- 강 이름
    shape SDO_GEOMETRY -- 강의 모양
);

INSERT INTO COUNTRY(country_id, name, shape)  VALUES(
    1,
    'Germany',
    SDO_GEOMETRY(
        2003, -- Geometry Type (Polygon)
        NULL, 
        NULL, -- NULL for polygons
        SDO_ELEM_INFO_ARRAY(1, 1003, 1), 
        SDO_ORDINATE_ARRAY(
            9.04851,54.85969,
            14.07120,54.00219,
            14.88149,50.91809,
            12.24806,50.23199,
            13.86863,48.74072,
            17.00850,48.80947,
            17.10978,48.11343,
            15.36702,46.85867,
            13.46386,46.50925,
            10.37246,46.81301,
            9.11671,49.69576,
            7.80371,47.54018,
            8.12909,48.89633,
            5.49429,49.85531,
            5.93309,51.24916,
            9.04852,54.85969,
            14.07120,54.00219
        )
    )
);
INSERT INTO COUNTRY(country_id, name, shape)
VALUES (
    2,
    'France',
    SDO_GEOMETRY(
        2003, 
        NULL, 
        NULL, 
        SDO_ELEM_INFO_ARRAY(1, 1003, 1), 
        SDO_ORDINATE_ARRAY(
            -4.90690,48.46563,
            2.46156,51.09831,
            7.80391,47.54018,
            6.20416,46.32972,
            7.65219,44.00317,
            3.01948,42.42735,
            -1.67478,43.41352,
            -1.29000,46.22393,
            -4.90690,48.46563
        )
    )
);

INSERT INTO COUNTRY(country_id, name, shape)
VALUES (
    3,
    'Italy',
    SDO_GEOMETRY(
        2003, 
        NULL, 
        NULL, 
        SDO_ELEM_INFO_ARRAY(1, 1003, 1), 
        SDO_ORDINATE_ARRAY(
            6.96400,45.89993,
            6.20446,46.32992,
            7.65219,44.00317,
            9.24510,44.49025,
            15.22167,37.81588,
            18.16600,40.27284,
            12.39272,44.38592,
            13.46386,46.50925,
            10.3724,46.81301,
            6.96400,45.89993
        )
    )
);

INSERT INTO COUNTRY(country_id, name, shape)
VALUES (
    4,
    'Switzerland',
    SDO_GEOMETRY(
        2003, 
        NULL, 
        NULL, 
        SDO_ELEM_INFO_ARRAY(1, 1003, 1), 
        SDO_ORDINATE_ARRAY(
            9.11671,49.69576,
            7.80371,47.54018,
            6.2046,46.32992,
            6.96400,45.89993,
            10.3724,46.81301,
            9.11671,49.69576
        )
    )
);


INSERT INTO COUNTRY(country_id, name, shape)
VALUES (
    5,
    'Austria',
    SDO_GEOMETRY(
        2003, 
        NULL, 
        NULL, 
        SDO_ELEM_INFO_ARRAY(1, 1003, 1), 
        SDO_ORDINATE_ARRAY(
            13.86863,48.74072,
            17.00850,48.80947,
            17.10978,48.11343,
            16.36702,46.85867,
            13.46386,46.50925,
            10.3724,46.81301,
            13.86863,48.74072
        )
    )
);


INSERT INTO COUNTRY(country_id, name, shape)
VALUES (
    6,
    'Hungary',
    SDO_GEOMETRY(
        2003, 
        NULL, 
        NULL, 
        SDO_ELEM_INFO_ARRAY(1, 1003, 1), 
        SDO_ORDINATE_ARRAY(
            17.10978,48.11343,
            16.36702,46.85867,
            18.35898,45.92357,
            21.05993,46.36700,
            22.78180,47.97348,
            21.05993,48.53546,
            17.10978,48.11343
        )
    )
);
-- RIVER DATA
-- 라인강
INSERT INTO river(river_id,name,shape)
VALUES (
    1, 
    'Rhine River', 
    SDO_GEOMETRY(
        2002,  -- Geometry Type (LineString)
        NULL,  -- SRID (WGS84)
        NULL, 
        SDO_ELEM_INFO_ARRAY(1, 2, 1), 
        SDO_ORDINATE_ARRAY(
    		8.10697, 46.84960, -- 스위스 중앙
            7.5886, 47.5596,  -- 스위스 바젤 (Basel)
            7.6204, 48.5818,  -- 독일 프라이부르크 근처
            7.9116, 49.4077,  -- 독일 만하임 (Mannheim)
            8.4044, 49.9929,  -- 독일 비스바덴 (Wiesbaden)
            8.6833, 50.1109,  -- 독일 프랑크푸르트 (Frankfurt)
            7.5901, 51.2277,  -- 독일 쾰른 (Cologne)
            6.9603, 50.9375,  -- 독일 뒤셀도르프 (Düsseldorf)
            5.6860, 52.0907,  -- 네덜란드 위트레흐트 (Utrecht)
            4.4777, 51.9244   -- 네덜란드 로테르담 (Rotterdam, 라인강이 바다로 흘러가는 지역)
        )
    )
);

-- 도나우강
INSERT INTO river(river_id,name,shape)
VALUES (
    2, 
    'Danube River',  
    SDO_GEOMETRY(
        2002, 
        NULL, 
        NULL, 
        SDO_ELEM_INFO_ARRAY(1, 2, 1), 
        SDO_ORDINATE_ARRAY(
            9.9872, 48.4028,  -- 독일 울름 (Ulm)
            11.6276, 48.2200, -- 오스트리아 비엔나 (Vienna)
            14.2858, 47.8979, -- 슬로바키아 브라티슬라바 (Bratislava)
            19.0402, 47.4979, -- 헝가리 부다페스트 (Budapest)
            21.0079, 44.8166, -- 세르비아 베오그라드 (Belgrade)
            22.9700, 43.6460, -- 루마니아 철판 (Drobeta-Turnu Severin)
            28.6324, 44.1586  -- 루마니아에서 흑해로 흘러가는 경로 (Tulcea)
        )
    )
);

-- 센강
INSERT INTO river(river_id,name,shape)
VALUES (
    3, 
    'Seine River', 
    SDO_GEOMETRY(
        2003, 
        NULL, 
        NULL, 
        SDO_ELEM_INFO_ARRAY(1, 1003, 1), 
        SDO_ORDINATE_ARRAY(
            2.3522, 48.8566,  -- 파리 (Paris)
            1.8230, 49.0154,  -- 프랑스 루앙 (Rouen)
            0.1218, 49.4985,  -- 프랑스 르아브르 (Le Havre)
            -0.1372, 49.4125,  -- 대서양으로 흘러가는 지점
    		2.3522, 48.8566
        )
    )
);

-- 포강
INSERT INTO  river(river_id,name,shape)
VALUES (
    4, 
    'Po River', 
    SDO_GEOMETRY(
        2003, 
        NULL, 
        NULL, 
        SDO_ELEM_INFO_ARRAY(1, 1003, 1), 
        SDO_ORDINATE_ARRAY(
            7.6869, 45.0703,  -- 이탈리아 토리노 (Torino)
            9.2100, 45.4642,  -- 이탈리아 밀라노 (Milan)
            10.9271, 45.5361, -- 이탈리아 크레모나 (Cremona)
            12.3556, 45.4408, -- 이탈리아 페라라 (Ferrara)
            12.3923, 44.8341,  -- 아드리아 해로 흘러가는 경로 (Adriatic Sea)
    		7.6869, 45.0703
        )
    )
);


-- 로네강
INSERT INTO river(river_id,name,shape)
VALUES (
    5, 
    'Rhône River',  
    SDO_GEOMETRY(
        2002, 
        NULL, 
        NULL, 
        SDO_ELEM_INFO_ARRAY(1, 2, 1), 
        SDO_ORDINATE_ARRAY(
    		8.10697, 46.84960, -- 스위스 중앙
    		7.69545, 46.31735, -- 스위스 시옹
            6.1432, 46.2044,  -- 스위스 제네바 (Geneva)
            5.7261, 45.1885,  -- 프랑스 리옹 (Lyon)
            4.8357, 44.9334,  -- 프랑스 발랑스 (Valence)
            4.3596, 43.6766,  -- 프랑스 아비뇽 (Avignon)
            4.8343, 43.2904   -- 지중해로 흘러가는 경로 (Mediterranean Sea)
        )
    )
);
-- 보덴강
INSERT INTO river(river_id,name,shape)
VALUES (
    6, 
    'Bodensee',  
    SDO_GEOMETRY(
        2002, 
        NULL, 
        NULL, 
        SDO_ELEM_INFO_ARRAY(1, 2, 1), 
        SDO_ORDINATE_ARRAY(
    		10.37246,46.81301,
    		9.11671,49.69576 -- 스위스 경계
    		
        )
    )
);

-- 발라톤강
INSERT INTO  river(river_id,name,shape)
VALUES (
    7, 
    'Balaton River', 
    SDO_GEOMETRY(
        2003, 
        NULL, 
        NULL, 
        SDO_ELEM_INFO_ARRAY(1, 1003, 1), 
        SDO_ORDINATE_ARRAY(
            17.24116, 46.75643,
    		18.03916, 47.06041,
    		18.15823, 47.00061,
    		17.39992, 46.70202,
    		17.24116, 46.75643
        )
    )
);