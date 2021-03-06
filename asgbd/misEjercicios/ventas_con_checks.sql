--**********claves ajenas --------------
--Crea automaticamente la restricion con nombre autogenerado
-- Si no se tiene cuidado duplica
--ALTER TABLE empleado
--ADD FOREIGN KEY (coddist_emp) REFERENCES distrito

-- o tambien
--ALTER TABLE empleado
--ADD FOREIGN KEY  (coddist_emp) REFERENCES distrito(cod_dist)

--Mejor
ALTER TABLE [dbo].[empleado]  WITH CHECK 
ADD  CONSTRAINT [fk_empleado_distrito]
FOREIGN KEY([coddist_emp])
REFERENCES [dbo].[distrito] ([cod_dist])
GO
-- WITH CHECK valida datos existenets 
-- WITH noCHECK no valida . Problemas posterioeres
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD CONSTRAINT [FK_empleado_empleado]
FOREIGN KEY([cod_supervisor])
REFERENCES [dbo].[empleado] ([cod_emp])
GO
--ahora activa la restriccion aunque no es necesario .
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_empleado]
GO
--Para desactiva la restriccion. 
--ALTER TABLE [dbo].[empleado] noCHECK CONSTRAINT [FK_empleado_empleado]
--GO
--Cuando se activa no comprueba datos existentes 
-- Para eso borrar y volver a crear alter table
--ALTER TABLE [dbo].[empleado]   drop CONSTRAINT [FK_empleado_empleado]
--GO
-- seguimos....

ALTER TABLE [dbo].[cliente]  WITH CHECK ADD  CONSTRAINT [pk_cliente_distrito] FOREIGN KEY([coddist_cli])
REFERENCES [dbo].[distrito] ([cod_dist])
go
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [fk_tipo_producto] FOREIGN KEY([cod_tipo_pro])
REFERENCES [dbo].[tipo_producto] ([cod_tipo_prod])
GO
ALTER TABLE [dbo].[cliente_per_natural]  WITH CHECK ADD  CONSTRAINT [fk_cliente_per_natural_cliente] FOREIGN KEY([cod_cli_na])
REFERENCES [dbo].[cliente] ([cod_cli])
GO
ALTER TABLE [dbo].[cliente_per_juridica]  WITH CHECK ADD  CONSTRAINT [fk_cliente_per_juridica_cliente] FOREIGN KEY([cod_cli_ju])
REFERENCES [dbo].[cliente] ([cod_cli])
GO
ALTER TABLE [dbo].[boleta]  WITH CHECK ADD  CONSTRAINT [fk_boleta_cliente] FOREIGN KEY([cod_cli])
REFERENCES [dbo].[cliente] ([cod_cli])
GO
ALTER TABLE [dbo].[boleta]  WITH CHECK ADD  CONSTRAINT [fk_boleta_empleado] FOREIGN KEY([cod_emp])
REFERENCES [dbo].[empleado] ([cod_emp])
GO
ALTER TABLE [dbo].[detalleboleta]  WITH CHECK ADD  CONSTRAINT [fk_detalleboleta_boleta] FOREIGN KEY([cod_bol])
REFERENCES [dbo].[boleta] ([cod_bol])
GO
--el resto
ALTER TABLE [dbo].[cliente] ADD  DEFAULT ('no registra') 
FOR [correo_e]
GO
ALTER TABLE [dbo].[producto] ADD  DEFAULT ('tipo01') FOR [cod_tipo_pro]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK 
ADD  CONSTRAINT [CHKprecio_pro] 
CHECK  (([precio_pro]='<= 1000' and [precio_pro]='>= 0'))
GO
-- no necesario ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [CHKprecio_pro]
--GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD 
 CONSTRAINT [CHKfecha_nac_emp] 
 CHECK  (([fecha_nac_emp]<'sysdatetime'))
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD 
 CONSTRAINT [CHKfecha_nac_emp] 
 CHECK  (([fecha_nac_emp]<getdate()))
GO

--ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [CHKfecha_nac_emp]
--GO







