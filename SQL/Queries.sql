create procedure insert_restaurante @fk_pais int, @fk_ciudad int, @descripcion varchar(200), @fk_establecimiento int, @nombre varchar(30), @fk_rango_precio int
as
	insert into Restaurante (FkPais, FkCiudad, Descripcion, FkEstablecimiento, Nombre, FkRangoPrecio)
	values (@fk_pais, @fk_ciudad, @descripcion, @fk_establecimiento, @nombre, @fk_rango_precio);
go

create procedure update_restaurante @Id int, @fk_pais int, @fk_ciudad int, @descripcion varchar(200), @fk_establecimiento int, @nombre varchar(30), @fk_rango_precio int
as
	update Restaurante
		set FkPais = @fk_pais, FkCiudad = @fk_ciudad, Descripcion = @descripcion, FkEstablecimiento = @fk_establecimiento, Nombre = @nombre, @fk_rango_precio = @fk_rango_precio
		where Id = @Id;
go

create procedure delete_tipo_cocina @Id int
as 
	delete from TipoCocinaXRestaurante
	where Id = @Id;
go

create procedure delete_dieta @Id int
as
	delete from RestriccionDieteticaXRestaurante
	where Id = @Id;
go

create procedure delete_tiempo_comida @Id int
as
	delete from TiempoComidaXRestaurante
	where Id = @Id;
go

create procedure delete_evento @Id int
as
	delete from EventoXRestaurante
	where Id = @Id;
go

create procedure delete_llegada @Id int
as
	delete from Llegada
	where Id = @Id;
go

create procedure insert_tipo_cocina @fk_restaurante int, @fk_tipo_cocina int
as
	insert into TipoCocinaXRestaurante (FkRestaurante, FkTipoCocina)
	values (@fk_restaurante, @fk_tipo_cocina);
go

create procedure insert_dieta @fk_restaurante int, @fk_dieta int
as
	insert into RestriccionDieteticaXRestaurante(FkRestaurante, FkRestriccion)
	values (@fk_restaurante, @fk_dieta);
go

create procedure insert_tiempo_comida @fk_restaurante int, @fk_tiempo_comida int
as
	insert into TiempoComidaXRestaurante (FkRestaurante, FkTiempoComida)
	values (@fk_restaurante, @fk_tiempo_comida);
go

create procedure insert_evento @fk_restaurante int, @fk_evento int
as
	insert into EventoXRestaurante (FkRestaurante, FkEvento)
	values (@fk_restaurante, @fk_evento);
go

create procedure insert_llegada @fk_restaurante int, @fk_transporte int, @descripcion varchar(200)
as
	insert into Llegada (FkRestaurante, FkTransporte, Instrucciones)
	values ( @fk_restaurante, @fk_transporte, @descripcion);
go

create procedure select_restaurantes 
as 
	select r.Id, r.Nombre, r.Descripcion, e.Establecimiento, rp.Precio, c.Ciudad, p.Pais, p.Codigo from Restaurante r, Establecimiento e, RangoPrecio rp, Ciudad c, Pais p
	where r.FkCiudad = c.Id and r.FkEstablecimiento = e.Id and r.FkPais = p.Id and r.FkRangoPrecio = rp.Id;
go

create procedure select_llegada @id_restaurantes int
as
	select l.Instrucciones, t.Transporte from Llegada l, Transporte t
	where l.FkRestaurante = @id_restaurantes and t.Id = l.FkTransporte;
go

create procedure select_tipo_cocina @id_restaurante int
as
	select t.TipoCocina from TipoCocinaXRestaurante tr, TipoCocina t
	where tr.FkRestaurante = @id_restaurante and tr.FkTipoCocina = t.TipoCocina;
go

create procedure unselect_tipo_cocina @id_restaurante int
as
	select t.TipoCocina from TipoCocina t
	except
	select t.TipoCocina from TipoCocinaXRestaurante tr, TipoCocina t
	where tr.FkRestaurante = @id_restaurante and tr.FkTipoCocina = t.TipoCocina;
go

create procedure select_dieta @id_restaurantes int
as
	select r.Restriccion from RestriccionDieteticaXRestaurante rr, Restriccion r
	where rr.FkRestaurante = @id_restaurantes and rr.FkRestriccion = r.Id;
go

create procedure unselect_dieta @id_restaurantes int
as
	select r.Restriccion from Restriccion r
	except
	select r.Restriccion from RestriccionDieteticaXRestaurante rr, Restriccion r
	where rr.FkRestaurante = @id_restaurantes and rr.FkRestriccion = r.Id;
go

create procedure select_tiempo_comida @id_restaurantes int
as
	select t.Tiempo from TiempoComidaXRestaurante tr, TiempoComida t
	where tr.FkRestaurante = @id_restaurantes and t.Id = tr.FkTiempoComida;
go

create procedure unselect_tiempo_comida @id_restaurantes int
as
	select t.Tiempo from TiempoComida t
	except
	select t.Tiempo from TiempoComidaXRestaurante tr, TiempoComida t
	where tr.FkRestaurante = @id_restaurantes and t.Id = tr.FkTiempoComida;
go

create procedure select_evento @id_restaurantes int
as
	select e.Evento from EventoXRestaurante er, Eventos e
	where er.FkRestaurante = @id_restaurantes and er.FkEvento = e.Id
go

create procedure unselect_evento @id_restaurantes int
as
	select e.Evento from Eventos e
	except 
	select e.Evento from EventoXRestaurante er, Eventos e
	where er.FkRestaurante = @id_restaurantes and er.FkEvento = e.Id
go

-------------------------------------------------------------------------
------------------------------Platillos----------------------------------
-------------------------------------------------------------------------

create procedure create_platillo @nombre varchar(50), @descripcion varchar(50)
as
	insert into Platillos (Nombre, Descripcion)
	values (@nombre, @descripcion);
go

create procedure add_platillo_to_restaurante @id_restaurante int, @id_platillo int
as
	insert into PlatillosXRestaurante (FkPlatillo, FkRestaurante)
	values (@id_platillo, @id_restaurante);
go

create procedure delete_platillo @id int
as
	delete from Platillos
	where Id = @id
go

create procedure delete_platillo_to_restaurante @id int
as
	delete from ComentariosXPlatillos
	where FkPlatillo = @id;

	delete from PlatillosXRestaurante
	where Id = @id
go

------------------------------------------------------------------------------------
---------------------------------Colaborador----------------------------------------
------------------------------------------------------------------------------------

create procedure create_colaborador @correo varchar(50), @nombre varchar(50), @fk_pais int, @provincia varchar (50), @sexo varchar(50), @nombre_usuario varchar(50)
as
	insert into Usuario (CorreoEletronico, Nombre, FkPais, Provincia, Sexo, NombreUsuario)
	values (@correo, @nombre, @fk_pais, @provincia, @sexo, @nombre_usuario);
go