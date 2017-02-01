CREATE TABLE studenti
  (
     nome    CHAR(20),
     cognome CHAR(20),
     eta     INTEGER,
     matr    CHAR(30) UNIQUE NOT NULL,
     PRIMARY KEY (matr),
     CHECK ( eta >= '18' )
  );

CREATE TABLE sa_account
  (
     shell           TEXT,
     applicativi     TEXT,
     corso           CHAR(20) NOT NULL,
     anno_accademico INTEGER NOT NULL,
     matr            CHAR(30) NOT NULL,
     PRIMARY KEY (corso, anno_accademico, matr),
     FOREIGN KEY (matr) REFERENCES studenti(matr)
  );

CREATE TABLE utenti
  (
     rifiuti INTEGER,
     cod_u   CHAR(20) NOT NULL,
     PRIMARY KEY (cod_u)
  );

CREATE TABLE in_studenti
  (
     matr  CHAR(30) NOT NULL,
     cod_u CHAR(20) NOT NULL,
     FOREIGN KEY (matr) REFERENCES studenti(matr),
     FOREIGN KEY (cod_u) REFERENCES utenti(cod_u)
  );

CREATE TABLE docenti
  (
     nome    CHAR(20),
     cognome CHAR(20),
     materia CHAR(20),
     eta     INTEGER,
     cod_doc CHAR(30) NOT NULL,
     PRIMARY KEY (cod_doc)
  );

CREATE TABLE in_docenti
  (
     cod_u   CHAR(20) NOT NULL,
     cod_doc CHAR(30) NOT NULL,
     FOREIGN KEY (cod_u) REFERENCES utenti(cod_u),
     FOREIGN KEY (cod_doc) REFERENCES docenti(cod_doc)
  );

CREATE TABLE lab_did
  (
     cod_lab CHAR(20) NOT NULL,
     PRIMARY KEY (cod_lab)
  );

CREATE TABLE posti
  (
     n_p     INTEGER NOT NULL,
     cod_lab CHAR(20) NOT NULL,
     PRIMARY KEY (n_p, cod_lab),
     FOREIGN KEY (cod_lab) REFERENCES lab_did(cod_lab)
  );

CREATE TABLE posti_assegnati
  (
     n_p     INTEGER NOT NULL,
     cod_lab CHAR(20) NOT NULL,
     PRIMARY KEY (n_p, cod_lab),
     FOREIGN KEY (n_p, cod_lab) REFERENCES posti(n_p, cod_lab)
  );

CREATE TABLE assegnazione
  (
     mese    CHAR(20) NOT NULL,
     matr    CHAR(30) NOT NULL,
     cod_lab CHAR(20) NOT NULL,
     n_p     INTEGER NOT NULL,
     PRIMARY KEY (mese, matr, n_p, cod_lab),
     FOREIGN KEY (matr) REFERENCES studenti(matr),
     FOREIGN KEY (n_p, cod_lab) REFERENCES posti_assegnati(n_p, cod_lab),
     CHECK ( mese = 'gennaio' OR mese = 'febbraio' OR mese = 'marzo' OR mese =
     'aprile' OR mese = 'maggio' OR mese = 'giugno' OR mese = 'luglio' OR mese =
     'agosto' OR mese = 'settembre' OR mese = 'ottobre' OR mese = 'novembre' OR
     mese = 'dicembre')
  );

CREATE TABLE autorizza
  (
     cod_doc CHAR(30) NOT NULL,
     cod_lab CHAR(20) NOT NULL,
     matr    CHAR(30) NOT NULL,
     mese    CHAR(20) NOT NULL,
     n_p     INTEGER NOT NULL,
     PRIMARY KEY (matr, mese, n_p, cod_lab, cod_doc),
     FOREIGN KEY (cod_doc) REFERENCES docenti(cod_doc),
     FOREIGN KEY (matr, mese, n_p, cod_lab) REFERENCES assegnazione(matr, mese,
     n_p, cod_lab)
  );

CREATE TABLE posti_prenotati
  (
     n_p     INTEGER NOT NULL,
     cod_lab CHAR(20) NOT NULL,
     PRIMARY KEY (n_p, cod_lab),
     FOREIGN KEY (n_p, cod_lab) REFERENCES posti(n_p, cod_lab)
  );

CREATE TABLE prenota
  (
     ora     INTEGER NOT NULL,
     n_p     INTEGER NOT NULL,
     cod_lab CHAR(20) NOT NULL,
     matr    CHAR(30) NOT NULL,
     data    DATE NOT NULL,
     PRIMARY KEY (data, matr, n_p, cod_lab),
     FOREIGN KEY (matr) REFERENCES studenti(matr),
     FOREIGN KEY (n_p, cod_lab) REFERENCES posti_prenotati(n_p, cod_lab),
     CHECK (ora >= 6 AND ora<=20)
  );

CREATE TABLE posti_liberi
  (
     n_p     INTEGER NOT NULL,
     cod_lab CHAR(20) NOT NULL,
     PRIMARY KEY (n_p, cod_lab),
     FOREIGN KEY (n_p, cod_lab) REFERENCES posti(n_p, cod_lab)
  );

CREATE TABLE accede_liberamente
  (
     n_p     INTEGER NOT NULL,
     matr    CHAR(30) NOT NULL,
     cod_lab CHAR(20) NOT NULL,
     PRIMARY KEY (n_p, cod_lab, matr),
     FOREIGN KEY (n_p, cod_lab) REFERENCES posti_liberi(n_p, cod_lab),
     FOREIGN KEY (matr) REFERENCES studenti(matr)
  );

CREATE TABLE resp_org
  (
     cod_lab CHAR(20) NOT NULL,
     cod_doc CHAR(30) NOT NULL,
     PRIMARY KEY (cod_doc, cod_lab),
     FOREIGN KEY (cod_lab) REFERENCES lab_did(cod_lab),
     FOREIGN KEY (cod_doc) REFERENCES docenti(cod_doc)
  );

CREATE TABLE tecnico
  (
     cognome CHAR(20),
     nome    CHAR(20),
     eta     INTEGER,
     cf      CHAR(20) NOT NULL,
     PRIMARY KEY (cf)
  );

CREATE TABLE resp_ope
  (
     cod_lab CHAR(20) NOT NULL,
     cf      CHAR(20) NOT NULL,
     PRIMARY KEY (cf, cod_lab),
     FOREIGN KEY (cod_lab) REFERENCES lab_did(cod_lab),
     FOREIGN KEY (cf) REFERENCES tecnico(cf)
  );

CREATE TABLE risorsa
  (
     tipologia   CHAR(20),
     cod_risorsa CHAR(20) NOT NULL,
     PRIMARY KEY (cod_risorsa)
  );

CREATE TABLE assegnata
  (
     n_p         INTEGER NOT NULL,
     cod_lab     CHAR(20) NOT NULL,
     cod_risorsa CHAR(20) NOT NULL,
     PRIMARY KEY (cod_risorsa, n_p, cod_lab),
     FOREIGN KEY (n_p, cod_lab) REFERENCES posti(n_p, cod_lab),
     FOREIGN KEY (cod_risorsa) REFERENCES risorsa(cod_risorsa)
  );

CREATE TABLE unita_di_calcolo
  (
     cod_risorsa CHAR(20) NOT NULL,
     PRIMARY KEY (cod_risorsa),
     FOREIGN KEY (cod_risorsa) REFERENCES risorsa(cod_risorsa)
  );

CREATE TABLE accede
  (
     corso           CHAR(20) NOT NULL,
     cod_risorsa     CHAR(20) NOT NULL,
     matr            CHAR(30) NOT NULL,
     anno_accademico INTEGER NOT NULL,
     PRIMARY KEY (corso, anno_accademico, matr, cod_risorsa),
     FOREIGN KEY (corso, anno_accademico, matr) REFERENCES sa_account(corso,
     anno_accademico, matr),
     FOREIGN KEY (cod_risorsa) REFERENCES unita_di_calcolo(cod_risorsa)
  );

CREATE TABLE assegnata_a
  (
     matr            CHAR(30) NOT NULL,
     cod_risorsa     CHAR(20) NOT NULL,
     anno_accademico INTEGER NOT NULL,
     corso           CHAR(20) NOT NULL,
     PRIMARY KEY (corso, anno_accademico, matr, cod_risorsa),
     FOREIGN KEY (cod_risorsa) REFERENCES risorsa(cod_risorsa),
     FOREIGN KEY (anno_accademico, corso, matr) REFERENCES sa_account(
     anno_accademico, corso, matr)
  );

CREATE TABLE locale
  (
     cod_loc CHAR(20) NOT NULL,
     PRIMARY KEY (cod_loc)
  );

CREATE TABLE loc_gen
  (
     cod_gen   CHAR(20) NOT NULL,
     n_accessi INTEGER,
     PRIMARY KEY (cod_gen)
  );

CREATE TABLE accede_gen
  (
     cod_gen CHAR(20) NOT NULL,
     cod_u   CHAR(20) NOT NULL,
     data    DATE NOT NULL,
     PRIMARY KEY (cod_gen, cod_u),
     FOREIGN KEY (cod_gen) REFERENCES loc_gen(cod_gen),
     FOREIGN KEY (cod_u) REFERENCES utenti(cod_u)
  );

CREATE TABLE is_gen
  (
     cod_gen CHAR(20) NOT NULL,
     cod_loc CHAR(20) NOT NULL,
     PRIMARY KEY (cod_gen, cod_loc),
     FOREIGN KEY (cod_gen) REFERENCES loc_gen(cod_gen),
     FOREIGN KEY (cod_loc) REFERENCES locale(cod_loc)
  );

CREATE TABLE is_lab
  (
     cod_lab CHAR(20) NOT NULL,
     cod_loc CHAR(20) NOT NULL,
     PRIMARY KEY (cod_lab, cod_loc),
     FOREIGN KEY (cod_lab) REFERENCES lab_did(cod_lab),
     FOREIGN KEY (cod_loc) REFERENCES locale(cod_loc)
  );

CREATE TABLE permesso
  (
     cod_u   CHAR(20) NOT NULL,
     cod_loc CHAR(20) NOT NULL,
     PRIMARY KEY (cod_u, cod_loc),
     FOREIGN KEY (cod_u) REFERENCES utenti(cod_u),
     FOREIGN KEY (cod_loc) REFERENCES locale(cod_loc)
  );

CREATE TABLE tipologia
  (
     nome_tipo CHAR(20) NOT NULL,
     PRIMARY KEY (nome_tipo)
  );

CREATE TABLE appartiene
  (
     nome_tipo CHAR(20) NOT NULL,
     cod_u     CHAR(20) NOT NULL,
     cod_loc   CHAR(20) NOT NULL,
     PRIMARY KEY (nome_tipo, cod_loc, cod_u),
     FOREIGN KEY (nome_tipo) REFERENCES tipologia(nome_tipo),
     FOREIGN KEY (cod_loc, cod_u) REFERENCES permesso(cod_loc, cod_u)
  );

CREATE TABLE orario
  (
     giorno    CHAR(3) NOT NULL,
     nome_tipo CHAR(3) NOT NULL,
     ora       INTEGER NOT NULL,
     PRIMARY KEY (nome_tipo),
     FOREIGN KEY (nome_tipo) REFERENCES tipologia(nome_tipo)
  );

CREATE TABLE tentativo
  (
     data    DATE NOT NULL,
     ora     TIME NOT NULL,
     cod_loc CHAR(20) NOT NULL,
     cod_u   CHAR(30) NOT NULL,
     PRIMARY KEY (cod_u, cod_loc, data, ora),
     FOREIGN KEY (cod_loc) REFERENCES locale(cod_loc),
     FOREIGN KEY (cod_u) REFERENCES utenti(cod_u)
  );

CREATE TABLE rifiuti
  (
     data    DATE NOT NULL,
     cod_loc CHAR(20) NOT NULL,
     cod_u   CHAR(30) NOT NULL,
     PRIMARY KEY (cod_u, cod_loc, data),
     FOREIGN KEY (cod_loc) REFERENCES locale(cod_loc),
     FOREIGN KEY (cod_u) REFERENCES utenti(cod_u)
  ); 