create procedure insert_restaurante @fk_pais int, @fk_ciudad int, @descripcion varchar(200), @fk_establecimiento int, @nombre varchar(30), @fk_rango_precio int
as
	insert into Restaurante (FkPais, FkCiudad, Descripcion, FkEstablecimiento, Nombre, FkRangoPrecio)
	values (@fk_pais, @fk_ciudad, @descripcion, @fk_establecimiento, @nombre, @fk_rango_precio);
go

create procedure update_restaurante @Id int, @fk_pais int, @fk_ciudad int, @descripcion varchar(200), @fk_establecimiento int, @nombre varchar(30), @fk_rango_precio int
as
	update Restaurante
		set FkPais = @fk_pais, FkCiudad = @fk_ciudad, Descripcion = @descripcion, FkEstablecimiento = @fk_establecimiento, Nombre = @nombre, FkRangoPrecio = @fk_rango_precio
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

create procedure create_amigo @fk_usuario int, @fk_amigo int
as
	insert into Amigos (FkUsuario, FkAmigo, Estado)
	values (@fk_usuario, @fk_amigo, 'Pendiente');
go

create procedure select_solicitudes @Id int
as
	select u.Nombre, u.NombreUsuario, u.Sexo, u.CorreoEletronico, p.Pais from Amigos a, Usuario u, Pais p
	where p.Id = u.FkPais and a.FkUsuario = @Id and u.Id = a.FkAmigo and a.Estado = 'Pendiente'
go

create procedure update_amigo_aceptado @Id int, @fk_amigo int
as
	update Amigos
		set Estado = 'Aceptado'
		where FkUsuario = @Id and FkAmigo = @fk_amigo;
go

create procedure update_amigo_rechazado @Id int, @fk_amigo int
as
	update Amigos
		set Estado = 'Rechazado'
		where FkUsuario = @Id and FkAmigo = @fk_amigo;
go

------------------------------------------------------------------------------------
---------------------------------Cometarios-----------------------------------------
------------------------------------------------------------------------------------

create procedure insert_cometario_restaurante @id_restaurante int, @id_usuario int, @fecha date, @comentario varchar(200), @valoracion int, @clasificacion varchar(30)
as
	insert into Comentarios(FkUsuario, Cometario, Valoracion, Clasificacion, Fecha) 
	values (@id_usuario, @comentario, @valoracion, @clasificacion, @fecha);

	insert into CometariosXRestaurante (FkRestaurante, FkComentarios)
	values (@id_restaurante, IDENT_CURRENT('Comentarios'))
go

create procedure insert_comentario_platillo @id_platillo_restaurante int, @id_usuario int, @fecha date, @comentario varchar(200), @valoracion int, @clasificacion varchar(30)
as
	insert into Comentarios(FkUsuario, Cometario, Valoracion, Clasificacion, Fecha) 
	values (@id_usuario, @comentario, @valoracion, @clasificacion, @fecha);

	insert into CometariosXRestaurante (FkRestaurante, FkComentarios)
	values (@id_platillo_restaurante, IDENT_CURRENT('Comentarios'))
go


------------------------------------------------------------------------------------
------------------------------------Otros-------------------------------------------
------------------------------------------------------------------------------------

create procedure get_last_comments @id_restaurante int, @id_ciudad int
as
	select top(10) c.Cometario from Restaurante r, CometariosXRestaurante cr, Comentarios c
	where r.Id = @id_restaurante and r.FkCiudad = @id_ciudad and cr.FkComentarios = c.Id and cr.FkRestaurante = r.Id
	order by c.Fecha desc
go

create procedure get_restaurant_city @id_ciudad int
as
	select r.Descripcion, r.Nombre from Restaurante r, RangoPrecio rp, TiempoComida tc, TiempoComidaXRestaurante tcr, RestriccionDieteticaXRestaurante rdr, Restriccion rt
	where r.FkCiudad = @id_ciudad and tcr.FkRestaurante = r.Id and tcr.FkTiempoComida = tc.Id and tc.Tiempo = 'Cena' and rdr.FkRestaurante = r.Id and rdr.FkRestriccion = rt.Id and rt.Restriccion = 'Vegetariano' and r.FkRangoPrecio = rp.Id and rp.Precio = 'Intermedio'
go

create procedure get_amigos @Id_colaborador int
as
	select u.Nombre, u.NombreUsuario, u.Sexo, u.Provincia, u.Sexo from Amigos a, Usuario u
	where  a.FkUsuario = @Id_colaborador and a.FkAmigo = u.Id
go

create procedure 