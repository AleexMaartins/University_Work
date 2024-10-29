create function EAP.Viagem_paragens (@viagem_id int) returns table
as
	return (
	select * from EAP.Paragem where viagem_id = @viagem_id
	)
go

create function EAP.ordem_paragem (@viagem_id int, @rodoviaria varchar(15)) returns int
as
begin
	declare @ordem int
	select @ordem = ordem from EAP.Paragem where viagem_id = @viagem_id and rodoviaria = @rodoviaria
	return @ordem
end
go

create function EAP.Viagens_por_Origem_Destino (@origem varchar(15), @destino varchar(15)) returns table
as
	return (
	select *
	from EAP.Viagem
	where @origem in (select rodoviaria from EAP.Viagem_paragens(id)) 
		and @destino in (select rodoviaria from EAP.Viagem_paragens(id))
		and EAP.ordem_paragem(id, @origem) < EAP.ordem_paragem(id, @destino)
	)
go

create function EAP.proximo_assento_livre (@viagem_id int, @origem varchar(15), @destino varchar(15) ) returns int
as
begin
	declare @num_assento int = 1
	declare @next_assento int
	declare @max_assento int

	select @max_assento = num_lugares 
	from EAP.Autocarro
	where id in (select id from EAP.Viagem where id = @viagem_id)

	declare assento_cursor cursor for
	select num_assento
	from EAP.Bilhete join EAP.Escala on id = bilhete_id and viagem_id = @viagem_id
	where @origem in (select rodoviaria from EAP.Escala_paragens(@viagem_id, origem, destino) )
		or @destino in (select rodoviaria from EAP.Escala_paragens(@viagem_id, origem, destino) )
	order by num_assento

	open assento_cursor
	fetch assento_cursor into @next_assento

	while @@fetch_status = 0
	begin
		
		if @num_assento <> @next_assento
		begin
			break
		end
		set @num_assento = @num_assento+1
		fetch assento_cursor into @next_assento
	end

	if @num_assento > @max_assento
	begin
		set @num_assento = 0
	end

	close assento_cursor
	deallocate assento_cursor
	return @num_assento	
end
go

create function EAP.Escala_paragens (@viagem_id int, @origem varchar(15), @destino varchar(15)) returns table
as
	return (
		select *
		from EAP.Viagem_paragens(@viagem_id) as Viagem_p
		where Viagem_p.viagem_id in (select viagem_id from EAP.Escala
		where ordem >= EAP.ordem_paragem(@viagem_id, @origem) and ordem <= EAP.ordem_paragem(@viagem_id, @destino))
	)
go
