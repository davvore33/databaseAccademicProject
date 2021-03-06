--Studenti
INSERT INTO studenti
VALUES      ('Matteo',
             'Triggiani',
             '25',
             'MatrMatteoTriggiani25'),
            ('Marcello',
             'Fregni',
             '20',
             'MatrMarcelloFregni20'),
            ('Francesco',
             'Bianchi',
             '23',
             'MatrFrancescoBianchi23'),
            ('Michela',
             'Rossi',
             '20',
             'MatrMichelaRossi20'),
            ('Vincenzo',
             'Neri',
             '21',
             'MatrVincenzoNeri21'),
            ('Giulia',
             'Furia',
             '25',
             'MatrGiuliaFuria25'),
            ('Ilaria',
             'Condizionata',
             '24',
             'MatrIlariaCondizionata24'),
            ('Rezza',
             'Capa',
             '20',
             'MatrRezzaCapa20'),
            ('Fabrizio',
             'Cherubini',
             '23',
             'MatrFabrizioCherubini23'),
            ('Marco',
             'Giudici',
             '21',
             'MatrMarcoGiudici21'),
            ('Massimo',
             'Della Pena',
             '22',
             'MatrMassimoDellaPena22'),
            ('Giuditta',
             'Penna',
             '23',
             'MatrGiudittaPenna23'),
            ('Filippo',
             'Verucchi',
             '26',
             'MatrFilippoVerucchi26'),
            ('Franco',
             'Neri',
             '20',
             'MatrFrancoNeri20'),
            ('Lucia',
             'Melella',
             '25',
             'MatrLuciaMelella25');

--Docenti
INSERT INTO docenti
VALUES      ('Mario',
             'Rossi',
             'Storia Romana',
             '49',
             'cod-docMarioRossi49'),
            ('Paolo',
             'Notai',
             'Filosofia',
             '44',
             'cod-docPaoloNotai44'),
            ('Giovanna',
             'Lapico',
             'Finanza',
             '59',
             'cod-docGiovannaLapico59'),
            ('Vincenzo',
             'Di Matteo',
             'Management Aziendale',
             '52',
             'cod-docVincenzoDiMatteo52'),
            ('Venezia',
             'Ragazzi',
             'Arte Moderna',
             '46',
             'cod-docVeneziaRagazzi46'),
            ('Stefano',
             'Ferraresi',
             'Diritto Romano',
             '36',
             'cod-docStefanoFerraresi36'),
            ('Barbara',
             'Vincenzi',
             'Diritto Civile',
             '50',
             'cod-docBarbaraVincenzi50'),
            ('Luca',
             'Rossi',
             'Linguaggi Dinamici',
             '44',
             'cod-docLucaRossi44');

--Account
INSERT INTO sa_account
VALUES      ('bash',
             'gimp',
             'Informatica',
             '2010',
             'MatrMatteoTriggiani25'),
            ('bash',
             'gimp',
             'Giurisprudenza',
             '2014',
             'MatrMarcelloFregni20'),
            ('bash',
             'gimp',
             'Farmacologia',
             '2012',
             'MatrFrancescoBianchi23'),
            ('bash',
             'gimp',
             'Filosofia',
             '2011',
             'MatrMichelaRossi20'),
            ('bash',
             'gimp',
             'Lettere',
             '2010',
             'MatrVincenzoNeri21'),
            ('bash',
             'gimp',
             'Biologia',
             '2012',
             'MatrGiuliaFuria25'),
            ('bash',
             'gimp',
             'Ingegneria Meccanica',
             '2012',
             'MatrIlariaCondizionata24'),
            ('bash',
             'gimp',
             'Lingue Orientali',
             '2011',
             'MatrRezzaCapa20'),
            ('bash',
             'gimp',
             'Informatica',
             '2013',
             'MatrFabrizioCherubini23'),
            ('bash',
             'gimp',
             'Arte Romana',
             '2015',
             'MatrMarcoGiudici21'),
            ('bash',
             'gimp',
             'Scienze Politiche',
             '2012',
             'MatrMassimoDellaPena22'),
            ('bash',
             'gimp',
             'Matematica',
             '2011',
             'MatrGiudittaPenna23'),
            ('bash',
             'gimp',
             'Chimica Farmaceutica',
             '2010',
             'MatrFilippoVerucchi26'),
            ('bash',
             'gimp',
             'Economia Aziendale',
             '2011',
             'MatrFrancoNeri20'),
            ('bash',
             'gimp',
             'Lingue Orientali',
             '2013',
             'MatrLuciaMelella25');

--Utenti
INSERT INTO utenti (cod_u)
VALUES      ('cod u'),
            ('cod u1'),
            ('cod u2'),
            ('cod u3'),
            ('cod u4'),
            ('cod u5'),
            ('cod u6'),
            ('cod u7'),
            ('cod u8'),
            ('cod u9'),
            ('cod u10'),
            ('cod u11'),
            ('cod u12'),
            ('cod u13'),
            ('cod u14'),
            ('cod u15'),
            ('cod u16'),
            ('cod u17'),
            ('cod u18'),
            ('cod u19'),
            ('cod u20'),
            ('cod u21'),
            ('cod u22'),
            ('cod u23');

--utenti in studenti
INSERT INTO in_studenti
VALUES      ('MatrMatteoTriggiani25',
             'cod u'),
            ('MatrMarcelloFregni20',
             'cod u1'),
            ('MatrFrancescoBianchi23',
             'cod u2'),
            ('MatrMichelaRossi20',
             'cod u3'),
            ('MatrVincenzoNeri21',
             'cod u4'),
            ('MatrGiuliaFuria25',
             'cod u5'),
            ('MatrIlariaCondizionata24',
             'cod u6'),
            ('MatrRezzaCapa20',
             'cod u7'),
            ('MatrFabrizioCherubini23',
             'cod u8'),
            ('MatrMarcoGiudici21',
             'cod u9'),
            ('MatrMassimoDellaPena22',
             'cod u10'),
            ('MatrGiudittaPenna23',
             'cod u11'),
            ('MatrFilippoVerucchi26',
             'cod u12'),
            ('MatrFrancoNeri20',
             'cod u13'),
            ('MatrLuciaMelella25',
             'cod u14');

--utenti in docenti
INSERT INTO in_docenti
VALUES      ('cod u15',
             'cod-docMarioRossi49'),
            ('cod u16',
             'cod-docPaoloNotai44'),
            ('cod u17',
             'cod-docGiovannaLapico59'),
            ('cod u18',
             'cod-docVincenzoDiMatteo52'),
            ('cod u19',
             'cod-docVeneziaRagazzi46'),
            ('cod u20',
             'cod-docStefanoFerraresi36'),
            ('cod u21',
             'cod-docBarbaraVincenzi50'),
            ('cod u22',
             'cod-docLucaRossi44');

--laboratorio didattico
INSERT INTO lab_did
VALUES      ('cod lab'),
            ('cod lab1'),
            ('cod lab2'),
            ('cod lab3');

--posti
INSERT INTO posti
VALUES      ('1',
             'cod lab'),
            ('2',
             'cod lab'),
            ('3',
             'cod lab'),
            ('4',
             'cod lab'),
            ('5',
             'cod lab'),
            ('6',
             'cod lab'),
            ('7',
             'cod lab'),
            ('8',
             'cod lab'),
            ('9',
             'cod lab'),
            ('10',
             'cod lab'),
            ('1',
             'cod lab1'),
            ('2',
             'cod lab1'),
            ('3',
             'cod lab1'),
            ('4',
             'cod lab1'),
            ('1',
             'cod lab2'),
            ('2',
             'cod lab2'),
            ('3',
             'cod lab2'),
            ('4',
             'cod lab2'),
            ('5',
             'cod lab2'),
            ('6',
             'cod lab2'),
            ('7',
             'cod lab2'),
            ('8',
             'cod lab2'),
            ('9',
             'cod lab2'),
            ('10',
             'cod lab2'),
            ('11',
             'cod lab2'),
            ('1',
             'cod lab3'),
            ('2',
             'cod lab3'),
            ('3',
             'cod lab3'),
            ('4',
             'cod lab3'),
            ('5',
             'cod lab3'),
            ('6',
             'cod lab3');

--posti assegnati
INSERT INTO posti_assegnati
VALUES      ('1',
             'cod lab'),
            ('2',
             'cod lab'),
            ('3',
             'cod lab'),
            ('4',
             'cod lab'),
            ('5',
             'cod lab'),
            ('6',
             'cod lab'),
            ('7',
             'cod lab'),
            ('8',
             'cod lab'),
            ('9',
             'cod lab');

--assegnazione
INSERT INTO assegnazione (Mese, Matr, cod_lab, N_P)
VALUES      ('gennaio',
             'MatrMarcelloFregni20',
             'cod lab',
             '1'),
            ('gennaio',
             'MatrIlariaCondizionata24',
             'cod lab',
             '2'),
            ('febbraio',
             'MatrGiuliaFuria25',
             'cod lab',
             '3'),
            ('luglio',
             'MatrMarcelloFregni20',
             'cod lab',
             '1'),
            ('marzo',
             'MatrGiudittaPenna23',
             'cod lab',
             '2'),
            ('marzo',
             'MatrLuciaMelella25',
             'cod lab',
             '1'),
            ('aprile',
             'MatrMarcelloFregni20',
             'cod lab',
             '2'),
            ('luglio',
             'MatrLuciaMelella25',
             'cod lab',
             '4'),
            ('gennaio',
             'MatrGiudittaPenna23',
             'cod lab',
             '5');

--autorizzazione
INSERT INTO autorizza
            (cod_doc,
             mese,
             matr,
             cod_lab,
             np)
VALUES      ('cod-docGiovannaLapico59',
             'gennaio',
             'MatrMarcelloFregni20',
             'cod lab',
             '1'),
            ('cod-docStefanoFerraresi36',
             'gennaio',
             'MatrIlariaCondizionata24',
             'cod lab',
             '2'),
            ('cod-docBarbaraVincenzi50',
             'febbraio',
             'MatrGiuliaFuria25',
             'cod lab',
             '3'),
            ('cod-docBarbaraVincenzi50',
             'luglio',
             'MatrMarcelloFregni20',
             'cod lab',
             '1'),
            ('cod-docPaoloNotai44',
             'marzo',
             'MatrGiudittaPenna23',
             'cod lab',
             '2'),
            ('cod-docPaoloNotai44',
             'marzo',
             'MatrLuciaMelella25',
             'cod lab',
             '1'),
            ('cod-docVincenzoDiMatteo52',
             'aprile',
             'MatrMarcelloFregni20',
             'cod lab',
             '2'),
            ('cod-docVincenzoDiMatteo52',
             'luglio',
             'MatrLuciaMelella25',
             'cod lab',
             '4'),
            ('cod-docGiovannaLapico59',
             'gennaio',
             'MatrGiudittaPenna23',
             'cod lab',
             '5');

--Posti prenotati
INSERT INTO posti_prenotati
VALUES      ('1',
             'cod lab2'),
            ('2',
             'cod lab2'),
            ('3',
             'cod lab2'),
            ('4',
             'cod lab2'),
            ('5',
             'cod lab2'),
            ('6',
             'cod lab2'),
            ('7',
             'cod lab2'),
            ('8',
             'cod lab2'),
            ('9',
             'cod lab2'),
            ('10',
             'cod lab2'),
            ('11',
             'cod lab2');

--Prenotazioni
INSERT INTO prenota
VALUES      ('6',
             '1',
             'cod lab2',
             'MatrFabrizioCherubini23',
             '14/04/2015'),
            ('8',
             '1',
             'cod lab2',
             'MatrLuciaMelella25',
             '12/04/2015'),
            ('10',
             '3',
             'cod lab2',
             'MatrFabrizioCherubini23',
             '15/04/2015'),
            ('12',
             '6',
             'cod lab2',
             'MatrLuciaMelella25',
             '16/03/2015'),
            ('7',
             '11',
             'cod lab2',
             'MatrGiudittaPenna23',
             '11/04/2015'),
            ('14',
             '4',
             'cod lab2',
             'MatrMichelaRossi20',
             '22/04/2015'),
            ('17',
             '2',
             'cod lab2',
             'MatrFilippoVerucchi26',
             '01/02/2015');

--Posti Liberi
INSERT INTO posti_liberi
VALUES      ('1',
             'cod lab1'),
            ('2',
             'cod lab1'),
            ('3',
             'cod lab1'),
            ('4',
             'cod lab1');

--accessi liberi
INSERT INTO accede_liberamente
VALUES      ('1',
             'MatrRezzaCapa20',
             'cod lab1'),
            ('2',
             'MatrVincenzoNeri21',
             'cod lab1'),
            ('3',
             'MatrFrancoNeri20',
             'cod lab1');

--resposabile organizzativo
INSERT INTO resp_org
            (cod_lab,
             cod_doc)
VALUES      ('cod lab',
             'cod-docGiovannaLapico59'),
            ('cod lab',
             'cod-docPaoloNotai44'),
            ('cod lab',
             'cod-docVincenzoDiMatteo52'),
            ('cod lab',
             'cod-docBarbaraVincenzi50');

--tecnici
INSERT INTO tecnico
VALUES      ('Donati',
             'Mario',
             '30',
             'DNTMRA00XX00X000X'),
            ('Verucchi',
             'Maria',
             '40',
             'VRCMRA00XX00X000X'),
            ('Benvatto',
             'Lorenzo',
             '35',
             'BNVLRN00XX00X000X'),
            ('Tavoni',
             'Franco',
             '38',
             'TVNFRN00XX00X000X'),
            ('Ronchi',
             'Laura',
             '29',
             'RNCLRA00XX00X000X'),
            ('Signorini',
             'Luca',
             '42',
             'SGNLCU00XX00X000X');

--responsabile operativo
INSERT INTO resp_ope
            (cod_lab,
             cf)
VALUES      ('cod lab',
             'VRCMRA00XX00X000X'),
            ('cod lab',
             'BNVLRN00XX00X000X'),
            ('cod lab',
             'SGNLCU00XX00X000X'),
            ('cod lab',
             'DNTMRA00XX00X000X');

--risorse
INSERT INTO risorsa
VALUES      ('Stampante',
             'cod risorsa1'),
            ('Fax',
             'cod risorsa2'),
            ('Drone',
             'cod risorsa3'),
            ('Large Hadron Collider',
             'cod risorsa4'),
            ('Velocipede',
             'cod risorsa5'),
            ('Unità di calcolo',
             'cod risorsa6');

--UC
INSERT INTO unita_di_calcolo
VALUES      ('cod risorsa6');

INSERT INTO accede
VALUES      ('Arte Romana',
             'cod risorsa6',
             '2015',
             'MatrMarcoGiudici21');

INSERT INTO assegnata_a
VALUES      ('MatrMarcoGiudici21',
             'cod risorsa6',
             '2015',
             'Arte Romana');

INSERT INTO locale
VALUES      ('cod loc'),
            ('cod loc1'),
            ('cod loc2'),
            ('cod loc3'),
            ('cod loc4'),
            ('cod loc5'),
            ('cod loc6'),
            ('cod loc7');

INSERT INTO is_lab
VALUES      ('cod lab',
             'cod loc'),
            ('cod lab1',
             'cod loc1'),
            ('cod lab2',
             'cod loc2'),
            ('cod lab3',
             'cod loc3');

INSERT INTO permesso
VALUES      ('cod u',
             'cod loc');

INSERT INTO tipologia
VALUES      ('nome tipo');

INSERT INTO appartiene
VALUES      ('nome tipo',
             'cod u',
             'cod loc' );

INSERT INTO orario
VALUES      ('Lunedi',
             'nome tipo',
             '13');

INSERT INTO tentativo
            (cod_loc,
             cod_u,
             data,
             ora)
VALUES      ('cod loc',
             'cod u',
             '14/04/2014',
             '15:00'); 