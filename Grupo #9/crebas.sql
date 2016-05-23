/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 11                       */
/* Created on:     23/05/2016 5:12:50 p. m.                     */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_ALM_REFERENCE_HPTL_TIP') then
    alter table HPTL_ALMACENAMIENTO
       delete foreign key FK_HPTL_ALM_REFERENCE_HPTL_TIP
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_DOC_PK_HTPL_CIT_FK') then
    alter table HPTL.HPTL_CITAS
       delete foreign key HPTL_DOC_PK_HTPL_CIT_FK
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_CIT_REFERENCE_HPTL_CLI') then
    alter table HPTL.HPTL_CITAS
       delete foreign key FK_HPTL_CIT_REFERENCE_HPTL_CLI
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_DIR_PK_HPTL_CLI_FK') then
    alter table HPTL.HPTL_CLINICAS
       delete foreign key HPTL_DIR_PK_HPTL_CLI_FK
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_CON_REFERENCE_HPTL_CON') then
    alter table HPTL_CONTROLESPORRECURSOS
       delete foreign key FK_HPTL_CON_REFERENCE_HPTL_CON
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_CON_REFERENCE_HPTL_UTE') then
    alter table HPTL_CONTROLESPORRECURSOS
       delete foreign key FK_HPTL_CON_REFERENCE_HPTL_UTE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_CON_REFERENCE_HPTL_ENT') then
    alter table HPTL_CONTROLESPORRECURSOS
       delete foreign key FK_HPTL_CON_REFERENCE_HPTL_ENT
end if;

if exists(select 1 from sys.sysforeignkey where role='HTPTL_PAISES_FK_DEP') then
    alter table HPTL.HPTL_DEPARTAMENTOS
       delete foreign key HTPTL_PAISES_FK_DEP
end if;

if exists(select 1 from sys.sysforeignkey where role='HTPL_MUN_FK_DIRECCIONES') then
    alter table HPTL.HPTL_DIRECCIONES
       delete foreign key HTPL_MUN_FK_DIRECCIONES
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_EMPLEADOS_PK_HPTL_DOC_FK') then
    alter table HPTL.HPTL_DOCTORES
       delete foreign key HPTL_EMPLEADOS_PK_HPTL_DOC_FK
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_DOC_PK_DOC_ESP_DOC_FK') then
    alter table HPTL.HPTL_DOCTORES_ESPECIALIDAD_DOC
       delete foreign key HPTL_DOC_PK_DOC_ESP_DOC_FK
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_ESP_DOC_PK_HTPL_DOC_FK') then
    alter table HPTL.HPTL_DOCTORES_ESPECIALIDAD_DOC
       delete foreign key HPTL_ESP_DOC_PK_HTPL_DOC_FK
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_PERSONAS_PK_HPTL_EMP_PK') then
    alter table HPTL.HPTL_EMPLEADOS
       delete foreign key HPTL_PERSONAS_PK_HPTL_EMP_PK
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_PUE_PK_HPTL_EMP_PUE_FK') then
    alter table HPTL.HPTL_EMPLEADOS_PUESTOS
       delete foreign key HPTL_PUE_PK_HPTL_EMP_PUE_FK
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_ENF_PK_HPTL_TIP_ENF_FK') then
    alter table HPTL.HPTL_ENFERMEDADES
       delete foreign key HPTL_ENF_PK_HPTL_TIP_ENF_FK
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_ENT_REFERENCE_HPTL_PAQ') then
    alter table HPTL_ENTREGA
       delete foreign key FK_HPTL_ENT_REFERENCE_HPTL_PAQ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_ENV_REFERENCE_HPTL_ENV') then
    alter table HPTL_ENVASEXPAQUETE
       delete foreign key FK_HPTL_ENV_REFERENCE_HPTL_ENV
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_ENV_REFERENCE_HPTL_PAQ') then
    alter table HPTL_ENVASEXPAQUETE
       delete foreign key FK_HPTL_ENV_REFERENCE_HPTL_PAQ
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_EQ_PK_HPTL_TIP_ENF_FK') then
    alter table HPTL.HPTL_EQUIPOS
       delete foreign key HPTL_EQ_PK_HPTL_TIP_ENF_FK
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_EX_HPTL_TIPOS_ENF_FK') then
    alter table HPTL.HPTL_EXAMENES
       delete foreign key HPTL_EX_HPTL_TIPOS_ENF_FK
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_LIM_REFERENCE_HPTL_ARE') then
    alter table HPTL_LIMPIEZA
       delete foreign key FK_HPTL_LIM_REFERENCE_HPTL_ARE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_LIM_REFERENCE_HPTL_TIP') then
    alter table HPTL_LIMPIEZA
       delete foreign key FK_HPTL_LIM_REFERENCE_HPTL_TIP
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_LIM_REFERENCE_HPTL_PUE') then
    alter table HPTL_LIMPIEZA
       delete foreign key FK_HPTL_LIM_REFERENCE_HPTL_PUE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_MAT_REFERENCE_HPTL_UTE') then
    alter table HPTL_MATENIMIENTO
       delete foreign key FK_HPTL_MAT_REFERENCE_HPTL_UTE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_MAT_REFERENCE_HPTL_PUE') then
    alter table HPTL_MATENIMIENTO
       delete foreign key FK_HPTL_MAT_REFERENCE_HPTL_PUE
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_DEPARTAMENTOS_FK_MUN') then
    alter table HPTL.HPTL_MUNICIPIOS
       delete foreign key HPTL_DEPARTAMENTOS_FK_MUN
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_PAQ_REFERENCE_HPTL_RIE') then
    alter table HPTL_PAQUETES
       delete foreign key FK_HPTL_PAQ_REFERENCE_HPTL_RIE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_PAQ_REFERENCE_HPTL_ALM') then
    alter table HPTL_PAQUETES
       delete foreign key FK_HPTL_PAQ_REFERENCE_HPTL_ALM
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_PAQ_REFERENCE_HPTL_TRA') then
    alter table HPTL_PAQUETES
       delete foreign key FK_HPTL_PAQ_REFERENCE_HPTL_TRA
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_PER_PK_HPTL_PER_TEL_FK') then
    alter table HPTL.HPTL_PERSONAS_TELEFONOS
       delete foreign key HPTL_PER_PK_HPTL_PER_TEL_FK
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_TEL_PK_HPTL_PER_TEL_FK') then
    alter table HPTL.HPTL_PERSONAS_TELEFONOS
       delete foreign key HPTL_TEL_PK_HPTL_PER_TEL_FK
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_PER_PK_HPTL_PER_DOC_FK') then
    alter table HPTL.HPTL_PERSONA_DOCTO
       delete foreign key HPTL_PER_PK_HPTL_PER_DOC_FK
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_TIP_PK_HPTL_PER_DOC_FK') then
    alter table HPTL.HPTL_PERSONA_DOCTO
       delete foreign key HPTL_TIP_PK_HPTL_PER_DOC_FK
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_AREAS_PK_HPTL_PUE_ARE_FK') then
    alter table HPTL.HPTL_PUESTOS_AREAS
       delete foreign key HPTL_AREAS_PK_HPTL_PUE_ARE_FK
end if;

if exists(select 1 from sys.sysforeignkey where role='HPTL_PUE_PK_HPTL_PUE_ARE_FK') then
    alter table HPTL.HPTL_PUESTOS_AREAS
       delete foreign key HPTL_PUE_PK_HPTL_PUE_ARE_FK
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_REC_REFERENCE_HPTL_UTE') then
    alter table HPTL_RECURSOXAREA
       delete foreign key FK_HPTL_REC_REFERENCE_HPTL_UTE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_REC_REFERENCE_HPTL_ARE') then
    alter table HPTL_RECURSOXAREA
       delete foreign key FK_HPTL_REC_REFERENCE_HPTL_ARE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_RIE_REFERENCE_HPTL_TIP') then
    alter table HPTL_RIESGOS
       delete foreign key FK_HPTL_RIE_REFERENCE_HPTL_TIP
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_TRA_REFERENCE_HPTL_TIP') then
    alter table HPTL_TRANSPORTE
       delete foreign key FK_HPTL_TRA_REFERENCE_HPTL_TIP
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_UTE_REFERENCE_HPTL_PAQ') then
    alter table HPTL_UTENCILIOSXPAQUETE
       delete foreign key FK_HPTL_UTE_REFERENCE_HPTL_PAQ
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HPTL_UTE_REFERENCE_HPTL_UTE') then
    alter table HPTL_UTENCILIOSXPAQUETE
       delete foreign key FK_HPTL_UTE_REFERENCE_HPTL_UTE
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_ALMACENAMIENTO'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_ALMACENAMIENTO
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_AREAS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_AREAS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_CITAS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_CITAS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_CLINICAS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_CLINICAS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_CONTROLES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_CONTROLES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_CONTROLESPORRECURSOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_CONTROLESPORRECURSOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_DEPARTAMENTOS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_DEPARTAMENTOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_DIRECCIONES'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_DIRECCIONES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_DOCTORES'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_DOCTORES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_DOCTORES_ESPECIALIDAD_DOC'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_DOCTORES_ESPECIALIDAD_DOC
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_EMPLEADOS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_EMPLEADOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_EMPLEADOS_PUESTOS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_EMPLEADOS_PUESTOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_ENFERMEDADES'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_ENFERMEDADES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_ENTREGA'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_ENTREGA
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_ENVASES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_ENVASES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_ENVASEXPAQUETE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_ENVASEXPAQUETE
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_EQUIPOS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_EQUIPOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_ESPECIALIDADES_DOCTORES'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_ESPECIALIDADES_DOCTORES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_EXAMENES'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_EXAMENES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_HORARIOS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_HORARIOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_LIMPIEZA'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_LIMPIEZA
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_MATENIMIENTO'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_MATENIMIENTO
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_MEDICAMENTOS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_MEDICAMENTOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_MUNICIPIOS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_MUNICIPIOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_PAISES'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_PAISES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_PAQUETES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_PAQUETES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_PERSONAS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_PERSONAS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_PERSONAS_TELEFONOS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_PERSONAS_TELEFONOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_PERSONA_DOCTO'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_PERSONA_DOCTO
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_PUESTOS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_PUESTOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_PUESTOS_AREAS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_PUESTOS_AREAS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_RECURSOXAREA'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_RECURSOXAREA
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_RIESGOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_RIESGOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_TELEFONOS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_TELEFONOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_TIPOALMACENAMIENTO'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_TIPOALMACENAMIENTO
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_TIPOLIMPIEZA'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_TIPOLIMPIEZA
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_TIPORIESGOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_TIPORIESGOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_TIPOS_EQUIPOS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_TIPOS_EQUIPOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_TIPOS_EXAMENES'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_TIPOS_EXAMENES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_TIPOTRANSPORTE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_TIPOTRANSPORTE
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_TIPO_DOCUMENTOS'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_TIPO_DOCUMENTOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_TIPO_ENFERMEDADES'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_TIPO_ENFERMEDADES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_TIPO_SANGRE'
     and table_type in ('BASE', 'GBL TEMP')
     and creator=user_id('HPTL')
) then
    drop table HPTL.HPTL_TIPO_SANGRE
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_TRANSPORTE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_TRANSPORTE
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_UTENCILIOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_UTENCILIOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HPTL_UTENCILIOSXPAQUETE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HPTL_UTENCILIOSXPAQUETE
end if;

revoke connect from HPTL;

/*==============================================================*/
/* User: HPTL                                                   */
/*==============================================================*/
grant connect to HPTL identified by "";

/*==============================================================*/
/* Table: HPTL_ALMACENAMIENTO                                   */
/*==============================================================*/
create table HPTL_ALMACENAMIENTO 
(
   IDALMACENAMIENTO     INT                            not null,
   IDTIPOALMACENAMIENTO INT                            null,
   constraint PK_HPTL_ALMACENAMIENTO primary key (IDALMACENAMIENTO)
);

/*==============================================================*/
/* Table: HPTL_AREAS                                            */
/*==============================================================*/
create table HPTL.HPTL_AREAS 
(
   ID                   INTEGER                        not null,
   CODIGO               VARCHAR2(10)                   null,
   DESCRIPCION          VARCHAR2(256)                  null,
   constraint HPTL_AREAS_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_CITAS                                            */
/*==============================================================*/
create table HPTL.HPTL_CITAS 
(
   ID                   INTEGER                        not null,
   PACIENTES_ID         INTEGER                        not null,
   CLILNICAS_ID         INTEGER                        not null,
   DOCTORES_ID          INTEGER                        not null,
   FECHA_CITA           DATE                           null,
   HORA_CITA            TIME                           null,
   constraint HPTL_CITAS_PK primary key (ID)
)
CREATE TABLE HPTL.HPTL_HIS_MEDICA_ENCA (
		ID INTEGER NOT NULL,
		PACIENTES_ID INTEGER NOT NULL,
		CONSTRAINT HPTL_HIS_MEDICA_ENCA_PK PRIMARY KEY (ID),
		CONSTRAINT HPTL_PAC_PK_HTPL_HIS_FK FOREIGN KEY (PACIENTES_ID) REFERENCES HPTL.HPTL_PACIENTES(ID)
)

CREATE TABLE HPTL.HPTL_HIS_MEDICA_DETA (
		ID INTEGER NOT NULL,
		HIS_ENC_ID INTEGER,
		OBSERVACIONES VARCHAR(50),
		ENFERMEDADES_ID INTEGER,
		CITAS_ID INTEGER,
		CONSTRAINT HPTL_HIS_MEDICA_DETA_PK PRIMARY KEY (ID),
		CONSTRAINT HPTL_HIS_PK_HPTL_HIS_FK FOREIGN KEY (HIS_ENC_ID) REFERENCES HPTL.HPTL_HIS_MEDICA_ENCA(ID),
		CONSTRAINT HPTL_ENF_PK_HPTL_HIS_FK FOREIGN KEY (ENFERMEDADES_ID) REFERENCES HPTL.HPTL_ENFERMEDADES(ID),
		CONSTRAINT HPTL_CIT_PK_HPTL_HIS_FK FOREIGN KEY (CITAS_ID) REFERENCES HPTL.HPTL_CITAS(ID)
)

CREATE TABLE HPTL.HPTL_RECETAS (
		ID INTEGER NOT NULL,
		HIS_DET_ID INTEGER,
		OBSERVACIONES VARCHAR(250),
		CONSTRAINT HPTL_RECETAS_PK PRIMARY KEY (ID),
		CONSTRAINT HPTL_HIS_PK_HPTL_REC_FK FOREIGN KEY (HIS_DET_ID) REFERENCES HPTL.HPTL_HIS_MEDICA_DETA(ID)
)

CREATE TABLE HPTL.HPTL_HIS_EXAMENES (
		EXAMENES_ID INTEGER NOT NULL,
		HIS_DET_ID INTEGER NOT NULL,
		CONSTRAINT HPTL_HIS_EXAMENES_PK PRIMARY KEY (EXAMENES_ID,HIS_DET_ID),
		CONSTRAINT HPTL_EXA_PK_HPTL_HIS_EXA_FK FOREIGN KEY (EXAMENES_ID) REFERENCES HPTL.HPTL_EXAMENES,
		CONSTRAINT HPTL_HIS_PK_HPTL_HIS_EXA_FK FOREIGN KEY (HIS_DET_ID) REFERENCES HPTL.HPTL_HIS_MEDICA_DETA
);

/*==============================================================*/
/* Table: HPTL_CLINICAS                                         */
/*==============================================================*/
create table HPTL.HPTL_CLINICAS 
(
   ID                   INTEGER                        not null,
   CODIGO               VARCHAR2(30)                   not null,
   DESCRIPCION          VARCHAR2(50)                   null,
   DIRECCIONES_ID       INTEGER                        not null,
   constraint HPTL_CLINICAS_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_CONTROLES                                        */
/*==============================================================*/
create table HPTL_CONTROLES 
(
   IDCONTROL            INT                            not null,
   TIPOCONTROL          VARCHAR2(50)                   null,
   constraint PK_HPTL_CONTROLES primary key (IDCONTROL)
);

/*==============================================================*/
/* Table: HPTL_CONTROLESPORRECURSOS                             */
/*==============================================================*/
create table HPTL_CONTROLESPORRECURSOS 
(
   IDCONTROLXRECURSO    INT                            not null,
   IDCONTROL            INT                            null,
   IDRECURSO            INT                            null,
   IDENTREGA            INT                            null,
   constraint PK_HPTL_CONTROLESPORRECURSOS primary key (IDCONTROLXRECURSO)
);

/*==============================================================*/
/* Table: HPTL_DEPARTAMENTOS                                    */
/*==============================================================*/
create table HPTL.HPTL_DEPARTAMENTOS 
(
   ID                   INTEGER                        not null,
   CODIGO               VARCHAR2(15)                   not null,
   DESCRIPCION          VARCHAR2(50)                   null,
   PAIS_ID              INTEGER                        not null,
   constraint HPTL_DEPARTAMENTOS_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_DIRECCIONES                                      */
/*==============================================================*/
create table HPTL.HPTL_DIRECCIONES 
(
   ID                   INTEGER                        not null,
   NUMERO_CASA          VARCHAR2(10)                   null,
   COLONIA              VARCHAR2(50)                   null,
   CALLE_AVENIDA        VARCHAR2(50)                   null,
   MUNICIPIO_ID         INTEGER                        not null,
   constraint HPTL_DIRECCIONES_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_DOCTORES                                         */
/*==============================================================*/
create table HPTL.HPTL_DOCTORES 
(
   ID                   INTEGER                        not null,
   COLEGIADO            VARCHAR2(20)                   not null,
   EMPLEADOS_ID         INTEGER                        not null,
   constraint HPTL_DOCTORES_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_DOCTORES_ESPECIALIDAD_DOC                        */
/*==============================================================*/
create table HPTL.HPTL_DOCTORES_ESPECIALIDAD_DOC 
(
   ID                   INTEGER                        not null,
   DOCTORES_ID          INTEGER                        not null,
   ESPECIALIDADES_DOCTORES INTEGER                        not null,
   constraint HPTL_DOCTORES_ESP_DOC_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_EMPLEADOS                                        */
/*==============================================================*/
create table HPTL.HPTL_EMPLEADOS 
(
   ID                   INTEGER                        not null,
   CODIGO_EMPLEADO      VARCHAR2(20)                   null,
   FECHA_INICIO_LABORES DATE                           null,
   PERSONAS_ID          INTEGER                        not null,
   constraint HPTL_EMPLEADOS_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_EMPLEADOS_PUESTOS                                */
/*==============================================================*/
create table HPTL.HPTL_EMPLEADOS_PUESTOS 
(
   ID                   INTEGER                        not null,
   EMPLEADOS_ID         INTEGER                        not null,
   PUESTOS_ID           INTEGER                        not null,
   constraint HPTL_EMPLEADOS_PUESTOS_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_ENFERMEDADES                                     */
/*==============================================================*/
create table HPTL.HPTL_ENFERMEDADES 
(
   ID                   INTEGER                        not null,
   CODIGO               VARCHAR2(20)                   not null,
   TIPOS_ENFERMEDADES_ID INTEGER                        not null,
   DESCRIPCION          VARCHAR2(50)                   null,
   constraint HPTL_ENFERMEDADES_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_ENTREGA                                          */
/*==============================================================*/
create table HPTL_ENTREGA 
(
   IDENTREGA            INT                            not null,
   IDPAQUETE            INT                            null,
   FECHADEESTERILAZION  DATE                           null,
   FECHADECADUCIDAD     DATE                           null,
   HORADENTREGA         DATE                           null,
   constraint PK_HPTL_ENTREGA primary key (IDENTREGA)
);

/*==============================================================*/
/* Table: HPTL_ENVASES                                          */
/*==============================================================*/
create table HPTL_ENVASES 
(
   IDENVASE             INT                            not null,
   TIPOEVASE            VARCHAR2(50)                   null,
   constraint PK_HPTL_ENVASES primary key (IDENVASE)
);

/*==============================================================*/
/* Table: HPTL_ENVASEXPAQUETE                                   */
/*==============================================================*/
create table HPTL_ENVASEXPAQUETE 
(
   ENVASEXPAQUETE       INT                            not null,
   IDPAQUETE            INT                            null,
   IDENVASE             INT                            null,
   constraint PK_HPTL_ENVASEXPAQUETE primary key (ENVASEXPAQUETE)
);

/*==============================================================*/
/* Table: HPTL_EQUIPOS                                          */
/*==============================================================*/
create table HPTL.HPTL_EQUIPOS 
(
   ID                   INTEGER                        not null,
   CODIGO               VARCHAR2(30)                   not null,
   TIPO_EQUIPOS_ID      INTEGER                        not null,
   DESCRIPCION          VARCHAR2(30)                   null,
   constraint HPTL_EQUIPOS_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_ESPECIALIDADES_DOCTORES                          */
/*==============================================================*/
create table HPTL.HPTL_ESPECIALIDADES_DOCTORES 
(
   ID                   INTEGER                        not null,
   CODIGO               VARCHAR2(10)                   null,
   DESCRIPCION          VARCHAR2(256)                  null,
   constraint HPTL_ESPECIALIDADES_DOC_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_EXAMENES                                         */
/*==============================================================*/
create table HPTL.HPTL_EXAMENES 
(
   ID                   INTEGER                        not null,
   CODIGO               VARCHAR2(30)                   not null,
   TIPOS_EXAMENES_ID    INTEGER                        not null,
   DESCRIPCION          VARCHAR2(30)                   null,
   constraint HPTL_EXAMENES_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_HORARIOS                                         */
/*==============================================================*/
create table HPTL.HPTL_HORARIOS 
(
   ID                   INTEGER                        not null,
   HORA_INICIO          DATE                           not null,
   HORA_FIN             DATE                           not null,
   constraint HPTL_HORARIOS_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_LIMPIEZA                                         */
/*==============================================================*/
create table HPTL_LIMPIEZA 
(
   IDLIMPIEZA           INT                            not null,
   IDAREA               INT                            null,
   IDTIPOLIMPIEZA       INT                            null,
   ID                   INTEGER                        null,
   HPT_ID               INTEGER                        null,
   IDEMPLEADO           INT                            null,
   constraint PK_HPTL_LIMPIEZA primary key (IDLIMPIEZA)
);

/*==============================================================*/
/* Table: HPTL_MATENIMIENTO                                     */
/*==============================================================*/
create table HPTL_MATENIMIENTO 
(
   IDMANTENIMIENTO      INT                            not null,
   ID                   INTEGER                        null,
   IDRECURSO            INT                            null,
   IDEMPLEADO           INT                            null,
   COMTROLBIOLOGICO     VARCHAR2(50)                   null,
   CONTROLQUIMICO       VARCHAR2(50)                   null,
   constraint PK_HPTL_MATENIMIENTO primary key (IDMANTENIMIENTO)
);

/*==============================================================*/
/* Table: HPTL_MEDICAMENTOS                                     */
/*==============================================================*/
create table HPTL.HPTL_MEDICAMENTOS 
(
   ID                   INTEGER                        not null,
   CODIGO               VARCHAR2(30)                   not null,
   DESCRIPCION          VARCHAR2(30)                   null,
   constraint HPTL_MEDICAMENTOS_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_MUNICIPIOS                                       */
/*==============================================================*/
create table HPTL.HPTL_MUNICIPIOS 
(
   ID                   INTEGER                        not null,
   CODIGO               VARCHAR2(15)                   not null,
   DESCRIPCION          VARCHAR2(50)                   null,
   DEPARTAMENTO_ID      INTEGER                        not null,
   constraint HPTL_MUNICIPIOS_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_PAISES                                           */
/*==============================================================*/
create table HPTL.HPTL_PAISES 
(
   ID                   INTEGER                        not null,
   CODIGO               VARCHAR2(15)                   not null,
   DESCRIPCION          VARCHAR2(30)                   null,
   constraint HPTL_PAISES_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_PAQUETES                                         */
/*==============================================================*/
create table HPTL_PAQUETES 
(
   IDPAQUETE            INT                            not null,
   IDCONSERVACION       INT                            null,
   IDALMACENAMIENTO     INT                            null,
   IDTRANSPORTE         INT                            null,
   constraint PK_HPTL_PAQUETES primary key (IDPAQUETE)
);

/*==============================================================*/
/* Table: HPTL_PERSONAS                                         */
/*==============================================================*/
create table HPTL.HPTL_PERSONAS 
(
   ID                   INTEGER                        not null,
   PRIMER_NOMBRE        VARCHAR2(60)                   not null,
   SEGUNDO_NOMBRE       VARCHAR2(60)                   null,
   TERCER_NOMBRE        VARCHAR2(60)                   null,
   PRIMER_APELLIDO      VARCHAR2(60)                   not null,
   SEGUNDO_APELLIDO     VARCHAR2(60)                   null,
   APELLIDO_CASADA      VARCHAR2(60)                   null,
   FECHA_NACIMIENTO     DATE                           null,
   SEXO                 CHAR(1)                        null,
   constraint HPTL_PERSONAS_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_PERSONAS_TELEFONOS                               */
/*==============================================================*/
create table HPTL.HPTL_PERSONAS_TELEFONOS 
(
   ID                   INTEGER                        not null,
   PERSONAS_ID          INTEGER                        not null,
   TELEFONOS_ID         INTEGER                        not null,
   constraint HPTL_PERSONAS_TELEFONOS_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_PERSONA_DOCTO                                    */
/*==============================================================*/
create table HPTL.HPTL_PERSONA_DOCTO 
(
   ID                   INTEGER                        not null,
   PERSONAS_ID          INTEGER                        not null,
   TIPO_DOC_ID          INTEGER                        not null,
   constraint HPTL_PERSONAS_DOCTO_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_PUESTOS                                          */
/*==============================================================*/
create table HPTL.HPTL_PUESTOS 
(
   ID                   INTEGER                        not null,
   CODIGO               VARCHAR2(10)                   not null,
   DESCRIPCION          VARCHAR2(256)                  null,
   constraint HPTL_PUESTOS_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_PUESTOS_AREAS                                    */
/*==============================================================*/
create table HPTL.HPTL_PUESTOS_AREAS 
(
   ID                   INTEGER                        not null,
   PUESTOS_ID           INTEGER                        not null,
   AREAS_ID             INTEGER                        not null,
   constraint HPTL_PUESTOS_AREAS_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_RECURSOXAREA                                     */
/*==============================================================*/
create table HPTL_RECURSOXAREA 
(
   IDRECURSO            INT                            null,
   ID                   INTEGER                        null,
   IDAREA               INT                            null
);

/*==============================================================*/
/* Table: HPTL_RIESGOS                                          */
/*==============================================================*/
create table HPTL_RIESGOS 
(
   IDRIESGOS            INT                            not null,
   IDTIPORIESGOS        INT                            null,
   constraint PK_HPTL_RIESGOS primary key (IDRIESGOS)
);

/*==============================================================*/
/* Table: HPTL_TELEFONOS                                        */
/*==============================================================*/
create table HPTL.HPTL_TELEFONOS 
(
   ID                   INTEGER                        not null,
   DESCRIPCION          VARCHAR2(60)                   null,
   TELEFONO             INTEGER                        null,
   constraint HPTL_TELEFONOS_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_TIPOALMACENAMIENTO                               */
/*==============================================================*/
create table HPTL_TIPOALMACENAMIENTO 
(
   IDTIPOALMACENAMIENTO INT                            not null,
   DESCRIPCION          VARCHAR2(50)                   null,
   constraint PK_HPTL_TIPOALMACENAMIENTO primary key (IDTIPOALMACENAMIENTO)
);

/*==============================================================*/
/* Table: HPTL_TIPOLIMPIEZA                                     */
/*==============================================================*/
create table HPTL_TIPOLIMPIEZA 
(
   IDTIPOLIMPIEZA       INT                            not null,
   DESCRIPCION          VARCHAR2(50)                   null,
   constraint PK_HPTL_TIPOLIMPIEZA primary key (IDTIPOLIMPIEZA)
);

/*==============================================================*/
/* Table: HPTL_TIPORIESGOS                                      */
/*==============================================================*/
create table HPTL_TIPORIESGOS 
(
   IDTIPORIESGOS        INT                            not null,
   DESCRIPCION          VARCHAR2(50)                   null,
   constraint PK_HPTL_TIPORIESGOS primary key (IDTIPORIESGOS)
);

/*==============================================================*/
/* Table: HPTL_TIPOS_EQUIPOS                                    */
/*==============================================================*/
create table HPTL.HPTL_TIPOS_EQUIPOS 
(
   ID                   INTEGER                        not null,
   EQUIPOS_ID           INTEGER                        not null,
   DESCRIPCION          VARCHAR2(50)                   null,
   constraint HPTL_TIPOS_EQUIPOS_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_TIPOS_EXAMENES                                   */
/*==============================================================*/
create table HPTL.HPTL_TIPOS_EXAMENES 
(
   ID                   INTEGER                        not null,
   DESCRIPCION          VARCHAR2(50)                   null,
   constraint HPTL_TIPOS_ENFERMEDADES_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_TIPOTRANSPORTE                                   */
/*==============================================================*/
create table HPTL_TIPOTRANSPORTE 
(
   IDTIPOTRANSPORTE     INT                            not null,
   DESCRIPCION          VARCHAR2(50)                   null,
   constraint PK_HPTL_TIPOTRANSPORTE primary key (IDTIPOTRANSPORTE)
);

/*==============================================================*/
/* Table: HPTL_TIPO_DOCUMENTOS                                  */
/*==============================================================*/
create table HPTL.HPTL_TIPO_DOCUMENTOS 
(
   ID                   INTEGER                        not null,
   CODIGO               VARCHAR2(15)                   not null,
   DESCRIPCION          VARCHAR2(30)                   null,
   constraint HPTL_DOCUMENTO_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_TIPO_ENFERMEDADES                                */
/*==============================================================*/
create table HPTL.HPTL_TIPO_ENFERMEDADES 
(
   ID                   INTEGER                        not null,
   CODIGO               INTEGER                        not null,
   DESCRIPCION          VARCHAR2(50)                   null,
   constraint HTPTL_TIPO_ENFERMEDADES_PK primary key (ID)
);

/*==============================================================*/
/* Table: HPTL_TIPO_SANGRE                                      */
/*==============================================================*/
create table HPTL.HPTL_TIPO_SANGRE 
(
   ID                   INTEGER                        not null,
   TIPOSANGRE           VARCHAR(20)                    null,
   constraint HPTL_TIPO_SANGRE_PK primary key (ID)
)
CREATE TABLE HPTL.HPTL_PACIENTES(
        ID INTEGER NOT NULL,
        CODIGO_PACIENTE INTEGER NOT NULL,
        FECHA_REGISTO_PACIENTE DATE,
        PERSONAS_ID INTEGER NOT NULL,
		TIPOSANGRE_ID INTEGER,
        CONSTRAINT HPTL_PACIENTES_PK PRIMARY KEY(ID),
        CONSTRAINT HPTL_PERSONA_PK_HPTL_PAC_FK FOREIGN KEY(PERSONAS_ID) REFERENCES HPTL.HPTL_PERSONAS(ID),
		CONSTRAINT HPTL_TIPO_SANGRE_PK_HPTL_PAC_FK FOREIGN KEY (TIPOSANGRE_ID) REFERENCES HPTL.HPTL_TIPO_SANGRE(ID)
);

/*==============================================================*/
/* Table: HPTL_TRANSPORTE                                       */
/*==============================================================*/
create table HPTL_TRANSPORTE 
(
   IDTRANSPORTE         INT                            not null,
   IDTIPOTRANSPORTE     INT                            null,
   constraint PK_HPTL_TRANSPORTE primary key (IDTRANSPORTE)
);

/*==============================================================*/
/* Table: HPTL_UTENCILIOS                                       */
/*==============================================================*/
create table HPTL_UTENCILIOS 
(
   IDRECURSO            INT                            not null,
   TIPOMATERIAL         VARCHAR2(50)                   null,
   constraint PK_HPTL_UTENCILIOS primary key (IDRECURSO)
);

/*==============================================================*/
/* Table: HPTL_UTENCILIOSXPAQUETE                               */
/*==============================================================*/
create table HPTL_UTENCILIOSXPAQUETE 
(
   IDUTENCILIOSXPAQUETE INT                            not null,
   IDPAQUETE            INT                            null,
   IDRECURSO            INT                            null,
   constraint PK_HPTL_UTENCILIOSXPAQUETE primary key (IDUTENCILIOSXPAQUETE)
);

alter table HPTL_ALMACENAMIENTO
   add constraint FK_HPTL_ALM_REFERENCE_HPTL_TIP foreign key (IDTIPOALMACENAMIENTO)
      references HPTL_TIPOALMACENAMIENTO (IDTIPOALMACENAMIENTO)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_CITAS
   add constraint HPTL_DOC_PK_HTPL_CIT_FK foreign key (DOCTORES_ID)
      references HPTL.HPTL_DOCTORES (ID)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_CITAS
   add constraint FK_HPTL_CIT_REFERENCE_HPTL_CLI foreign key (ID)
      references HPTL.HPTL_CLINICAS (ID)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_CLINICAS
   add constraint HPTL_DIR_PK_HPTL_CLI_FK foreign key (DIRECCIONES_ID)
      references HPTL.HPTL_DIRECCIONES (ID)
      on update restrict
      on delete restrict;

alter table HPTL_CONTROLESPORRECURSOS
   add constraint FK_HPTL_CON_REFERENCE_HPTL_CON foreign key (IDCONTROL)
      references HPTL_CONTROLES (IDCONTROL)
      on update restrict
      on delete restrict;

alter table HPTL_CONTROLESPORRECURSOS
   add constraint FK_HPTL_CON_REFERENCE_HPTL_UTE foreign key (IDRECURSO)
      references HPTL_UTENCILIOS (IDRECURSO)
      on update restrict
      on delete restrict;

alter table HPTL_CONTROLESPORRECURSOS
   add constraint FK_HPTL_CON_REFERENCE_HPTL_ENT foreign key (IDENTREGA)
      references HPTL_ENTREGA (IDENTREGA)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_DEPARTAMENTOS
   add constraint HTPTL_PAISES_FK_DEP foreign key (PAIS_ID)
      references HPTL.HPTL_PAISES (ID)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_DIRECCIONES
   add constraint HTPL_MUN_FK_DIRECCIONES foreign key (MUNICIPIO_ID)
      references HPTL.HPTL_MUNICIPIOS (ID)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_DOCTORES
   add constraint HPTL_EMPLEADOS_PK_HPTL_DOC_FK foreign key (EMPLEADOS_ID)
      references HPTL.HPTL_PERSONAS (ID)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_DOCTORES_ESPECIALIDAD_DOC
   add constraint HPTL_DOC_PK_DOC_ESP_DOC_FK foreign key (DOCTORES_ID)
      references HPTL.HPTL_DOCTORES (ID)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_DOCTORES_ESPECIALIDAD_DOC
   add constraint HPTL_ESP_DOC_PK_HTPL_DOC_FK foreign key (ESPECIALIDADES_DOCTORES)
      references HPTL.HPTL_ESPECIALIDADES_DOCTORES (ID)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_EMPLEADOS
   add constraint HPTL_PERSONAS_PK_HPTL_EMP_PK foreign key (PERSONAS_ID)
      references HPTL.HPTL_PERSONAS (ID)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_EMPLEADOS_PUESTOS
   add constraint HPTL_PUE_PK_HPTL_EMP_PUE_FK foreign key (PUESTOS_ID)
      references HPTL.HPTL_PUESTOS (ID)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_ENFERMEDADES
   add constraint HPTL_ENF_PK_HPTL_TIP_ENF_FK foreign key (TIPOS_ENFERMEDADES_ID)
      references HPTL.HPTL_TIPO_ENFERMEDADES (ID)
      on update restrict
      on delete restrict;

alter table HPTL_ENTREGA
   add constraint FK_HPTL_ENT_REFERENCE_HPTL_PAQ foreign key (IDPAQUETE)
      references HPTL_PAQUETES (IDPAQUETE)
      on update restrict
      on delete restrict;

alter table HPTL_ENVASEXPAQUETE
   add constraint FK_HPTL_ENV_REFERENCE_HPTL_ENV foreign key (IDENVASE)
      references HPTL_ENVASES (IDENVASE)
      on update restrict
      on delete restrict;

alter table HPTL_ENVASEXPAQUETE
   add constraint FK_HPTL_ENV_REFERENCE_HPTL_PAQ foreign key (IDPAQUETE)
      references HPTL_PAQUETES (IDPAQUETE)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_EQUIPOS
   add constraint HPTL_EQ_PK_HPTL_TIP_ENF_FK foreign key (TIPO_EQUIPOS_ID)
      references HPTL.HPTL_TIPOS_EQUIPOS (ID)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_EXAMENES
   add constraint HPTL_EX_HPTL_TIPOS_ENF_FK foreign key (TIPOS_EXAMENES_ID)
      references HPTL.HPTL_TIPOS_EXAMENES (ID)
      on update restrict
      on delete restrict;

alter table HPTL_LIMPIEZA
   add constraint FK_HPTL_LIM_REFERENCE_HPTL_ARE foreign key (ID)
      references HPTL.HPTL_AREAS (ID)
      on update restrict
      on delete restrict;

alter table HPTL_LIMPIEZA
   add constraint FK_HPTL_LIM_REFERENCE_HPTL_TIP foreign key (IDTIPOLIMPIEZA)
      references HPTL_TIPOLIMPIEZA (IDTIPOLIMPIEZA)
      on update restrict
      on delete restrict;

alter table HPTL_LIMPIEZA
   add constraint FK_HPTL_LIM_REFERENCE_HPTL_PUE foreign key (HPT_ID)
      references HPTL.HPTL_PUESTOS_AREAS (ID)
      on update restrict
      on delete restrict;

alter table HPTL_MATENIMIENTO
   add constraint FK_HPTL_MAT_REFERENCE_HPTL_UTE foreign key (IDRECURSO)
      references HPTL_UTENCILIOS (IDRECURSO)
      on update restrict
      on delete restrict;

alter table HPTL_MATENIMIENTO
   add constraint FK_HPTL_MAT_REFERENCE_HPTL_PUE foreign key (ID)
      references HPTL.HPTL_PUESTOS_AREAS (ID)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_MUNICIPIOS
   add constraint HPTL_DEPARTAMENTOS_FK_MUN foreign key (DEPARTAMENTO_ID)
      references HPTL.HPTL_DEPARTAMENTOS (ID)
      on update restrict
      on delete restrict;

alter table HPTL_PAQUETES
   add constraint FK_HPTL_PAQ_REFERENCE_HPTL_RIE foreign key (IDCONSERVACION)
      references HPTL_RIESGOS (IDRIESGOS)
      on update restrict
      on delete restrict;

alter table HPTL_PAQUETES
   add constraint FK_HPTL_PAQ_REFERENCE_HPTL_ALM foreign key (IDALMACENAMIENTO)
      references HPTL_ALMACENAMIENTO (IDALMACENAMIENTO)
      on update restrict
      on delete restrict;

alter table HPTL_PAQUETES
   add constraint FK_HPTL_PAQ_REFERENCE_HPTL_TRA foreign key (IDTRANSPORTE)
      references HPTL_TRANSPORTE (IDTRANSPORTE)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_PERSONAS_TELEFONOS
   add constraint HPTL_PER_PK_HPTL_PER_TEL_FK foreign key (PERSONAS_ID)
      references HPTL.HPTL_PERSONAS (ID)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_PERSONAS_TELEFONOS
   add constraint HPTL_TEL_PK_HPTL_PER_TEL_FK foreign key (TELEFONOS_ID)
      references HPTL.HPTL_TELEFONOS (ID)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_PERSONA_DOCTO
   add constraint HPTL_PER_PK_HPTL_PER_DOC_FK foreign key (PERSONAS_ID)
      references HPTL.HPTL_PERSONAS (ID)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_PERSONA_DOCTO
   add constraint HPTL_TIP_PK_HPTL_PER_DOC_FK foreign key (TIPO_DOC_ID)
      references HPTL.HPTL_TIPO_DOCUMENTOS (ID)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_PUESTOS_AREAS
   add constraint HPTL_AREAS_PK_HPTL_PUE_ARE_FK foreign key (AREAS_ID)
      references HPTL.HPTL_AREAS (ID)
      on update restrict
      on delete restrict;

alter table HPTL.HPTL_PUESTOS_AREAS
   add constraint HPTL_PUE_PK_HPTL_PUE_ARE_FK foreign key (PUESTOS_ID)
      references HPTL.HPTL_PUESTOS (ID)
      on update restrict
      on delete restrict;

alter table HPTL_RECURSOXAREA
   add constraint FK_HPTL_REC_REFERENCE_HPTL_UTE foreign key (IDRECURSO)
      references HPTL_UTENCILIOS (IDRECURSO)
      on update restrict
      on delete restrict;

alter table HPTL_RECURSOXAREA
   add constraint FK_HPTL_REC_REFERENCE_HPTL_ARE foreign key (ID)
      references HPTL.HPTL_AREAS (ID)
      on update restrict
      on delete restrict;

alter table HPTL_RIESGOS
   add constraint FK_HPTL_RIE_REFERENCE_HPTL_TIP foreign key (IDTIPORIESGOS)
      references HPTL_TIPORIESGOS (IDTIPORIESGOS)
      on update restrict
      on delete restrict;

alter table HPTL_TRANSPORTE
   add constraint FK_HPTL_TRA_REFERENCE_HPTL_TIP foreign key (IDTIPOTRANSPORTE)
      references HPTL_TIPOTRANSPORTE (IDTIPOTRANSPORTE)
      on update restrict
      on delete restrict;

alter table HPTL_UTENCILIOSXPAQUETE
   add constraint FK_HPTL_UTE_REFERENCE_HPTL_PAQ foreign key (IDPAQUETE)
      references HPTL_PAQUETES (IDPAQUETE)
      on update restrict
      on delete restrict;

alter table HPTL_UTENCILIOSXPAQUETE
   add constraint FK_HPTL_UTE_REFERENCE_HPTL_UTE foreign key (IDRECURSO)
      references HPTL_UTENCILIOS (IDRECURSO)
      on update restrict
      on delete restrict;

