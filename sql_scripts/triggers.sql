--gestione Rifiuti
Create Function Controllo () returns trigger AS $$
    begin
        if (new.cod_u, new.cod_loc) not in (
            Select cod_u, cod_loc
            From Permesso p
            Where new.cod_u = p.cod_u
            And new.cod_loc = p.cod_loc) then
            Insert into Rifiuti Values (new.data, new.cod_loc, new.cod_u);
            --RAISE Exception 'Non hai il permesso per accedere qui';
        end if;
    Return new;
    end;
$$Language 'plpgsql';

Create trigger Gestione_rifiuti
Before Insert on Tentativo
for each row execute procedure Controllo ();

--gestione accesso generico
Create Function Generico () returns trigger AS $$
    begin
        Update loc_gen set n_accessi = n_accessi +1
            Where new.cod_gen = cod_gen;
    Return new;
    end;
$$Language 'plpgsql';

Create trigger Gestione_generici
Before Insert on accede_gen
for each row execute procedure Generico ();

--gestione Sessione
Create Function Sessione () returns trigger AS $$
    Declare
        n integer;
        
    begin
        select count(*) into n
        from Rifiuti
        Where Matr = new.Matr and data = new.data and cod_loc = new.cod_loc;
        
        if n = 3 then
            RAISE Exception 'Hai gia` ricevuto 3 rifiuti, non hai il permesso per entrare qui'; 
            
        end if;
    Return new;
    end;
$$Language 'plpgsql';

Create trigger Gestione_accessi
Before Insert on Rifiuti
for each row execute procedure Sessione();

--Assegnazioni univoche
Create Function Assegnazioni () returns trigger AS $$
    begin
        if  (new.Matr, new.Mese, new.cod_lab) in (Select Matr, Mese, cod_lab
            From Assegnazione a
            Where new.cod_lab = a.cod_lab
            And new.Matr = a.Matr
            And new.Mese = a.Mese) then
            RAISE Exception 'una sola assegnazionezione';
        end if;
    Return new;
    end;
$$Language 'plpgsql';

Create trigger Gestione_Assegnazioni
Before Insert on Assegnazione
for each row execute procedure Assegnazioni();

--Permessi univoci
Create Function Permessi () returns trigger AS $$
    begin
        if  new.cod_u in (Select cod_u
            From Permesso p
            Where new.cod_loc = p.cod_loc
            And new.cod_u = p.cod_u) then
            RAISE Exception 'una solo permesso';
        end if;
    Return new;
    end;
$$Language 'plpgsql';

Create trigger Gestione_Permessi
Before Insert on Permesso
for each row execute procedure Permessi();