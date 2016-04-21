/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     21/04/2016 15:51:27                          */
/*==============================================================*/


alter table ALMACENAMIENTO
   drop constraint FK_ALMACENA_REFERENCE_TIPOALMA;

alter table AREAS
   drop constraint FK_AREAS_REFERENCE_AREAS;

alter table AREAS
   drop constraint FK_AREAS_REFERENCE_NIVEL_AL;

alter table AREAS
   drop constraint FK_AREAS_REFERENCE_EMPLEADO;

alter table CLINICA
   drop constraint FK_CLINICA_REFERENCE_TIPODEAT;

alter table CONTROLESPORRECURSOS
   drop constraint FK_CONTROLE_REFERENCE_CONTROLE;

alter table CONTROLESPORRECURSOS
   drop constraint FK_CONTROLE_REFERENCE_UTENCILI;

alter table CONTROLESPORRECURSOS
   drop constraint FK_CONTROLE_REFERENCE_ENTREGA;

alter table DATOSEXPEDIENTE
   drop constraint FK_DATOSEXP_REFERENCE_EXPEDIEN;

alter table DATOSEXPEDIENTE
   drop constraint FK_DATOSEXP_REFERENCE_TIPODEAT;

alter table DIRECCION
   drop constraint FK_DIRECCIO_REFERENCE_PERSONA;

alter table DIRECCION
   drop constraint FK_DIRECCIO_REFERENCE_UBICACIO;

alter table DOCUMENTOPERSONA
   drop constraint FK_DOCUMENT_REFERENCE_TIPODEDO;

alter table DOCUMENTOPERSONA
   drop constraint FK_DOCUMENT_REFERENCE_PERSONA;

alter table EDIFICIOS
   drop constraint FK_EDIFICIO_REFERENCE_NIVEL_AL;

alter table EMPLEADO
   drop constraint FK_EMPLEADO_REFERENCE_DEPENDEN;

alter table EMPLEADO
   drop constraint FK_EMPLEADO_REFERENCE_CARGO;

alter table EMPLEADO
   drop constraint FK_EMPLEADO_REFERENCE_PERSONA;

alter table EMPLEADO
   drop constraint FK_EMPLEADO_REFERENCE_TIPOEMPL;

alter table ENTREGA
   drop constraint FK_ENTREGA_REFERENCE_PAQUETES;

alter table ENVASEXPAQUETE
   drop constraint FK_ENVASEXP_REFERENCE_ENVASES;

alter table ENVASEXPAQUETE
   drop constraint FK_ENVASEXP_REFERENCE_PAQUETES;

alter table EXAMENES
   drop constraint FK_EXAMENES_REFERENCE_DATOSEXP;

alter table EXAMENES
   drop constraint FK_EXAMENES_REFERENCE_TIPOEXAM;

alter table EXPEDIENTE
   drop constraint FK_EXPEDIEN_REFERENCE_ENFERMED;

alter table EXPEDIENTE
   drop constraint FK_EXPEDIEN_REFERENCE_CLINICA;

alter table FACTURA
   drop constraint FK_FACTURA_REFERENCE_PACIENTE;

alter table LIMPIEZA
   drop constraint FK_LIMPIEZA_REFERENCE_AREAS;

alter table LIMPIEZA
   drop constraint FK_LIMPIEZA_REFERENCE_TIPOLIMP;

alter table LIMPIEZA
   drop constraint FK_LIMPIEZA_REFERENCE_EMPLEADO;

alter table MATENIMIENTO
   drop constraint FK_MATENIMI_REFERENCE_UTENCILI;

alter table MATENIMIENTO
   drop constraint FK_MATENIMI_REFERENCE_EMPLEADO;

alter table PACIENTE
   drop constraint FK_PACIENTE_REFERENCE_PERSONA;

alter table PACIENTE
   drop constraint FK_PACIENTE_REFERENCE_EXPEDIEN;

alter table PACIENTE
   drop constraint FK_PACIENTE_REFERENCE_HOSPITAL;

alter table PAQUETES
   drop constraint FK_PAQUETES_REFERENCE_RIEGOS;

alter table PAQUETES
   drop constraint FK_PAQUETES_REFERENCE_RIESGOS;

alter table PAQUETES
   drop constraint FK_PAQUETES_REFERENCE_ALMACENA;

alter table PAQUETES
   drop constraint FK_PAQUETES_REFERENCE_TRANSPOR;

alter table RECETA
   drop constraint FK_RECETA_REFERENCE_DATOSEXP;

alter table RECURSOSPORAREA
   drop constraint FK_RECURSOS_REFERENCE_UTENCILI;

alter table RECURSOSPORAREA
   drop constraint FK_RECURSOS_REFERENCE_AREAS;

alter table RIEGOS
   drop constraint FK_RIEGOS_REFERENCE_TIPORIES;

alter table RIESGOS
   drop constraint FK_RIESGOS_REFERENCE_TIPORIES;

alter table SEDE
   drop constraint FK_SEDE_REFERENCE_HOSPITAL;

alter table SEDE
   drop constraint FK_SEDE_REFERENCE_EDIFICIO;

alter table TELEFONOPORPERSONA
   drop constraint FK_TELEFONO_REFERENCE_TELEFONO;

alter table TELEFONOPORPERSONA
   drop constraint FK_TELEFONO_REFERENCE_PERSONA;

alter table TRANSPORTE
   drop constraint FK_TRANSPOR_REFERENCE_TIPOTRAN;

alter table UBICACIONGEO
   drop constraint FK_UBICACIO_REFERENCE_PAIS;

alter table UBICACIONGEO
   drop constraint FK_UBICACIO_REFERENCE_DEPARTAM;

alter table UBICACIONGEO
   drop constraint FK_UBICACIO_REFERENCE_MUNICIPI;

alter table UTENCILIOSXPAQUETE
   drop constraint FK_UTENCILI_REFERENCE_PAQUETES;

alter table UTENCILIOSXPAQUETE
   drop constraint FK_UTENCILI_REFERENCE_UTENCILI;

drop table ALMACENAMIENTO cascade constraints;

drop table AREAS cascade constraints;

drop table CARGO cascade constraints;

drop table CLINICA cascade constraints;

drop table CONTROLES cascade constraints;

drop table CONTROLESPORRECURSOS cascade constraints;

drop table DATOSEXPEDIENTE cascade constraints;

drop table DEPARTAMENTO cascade constraints;

drop table DEPENDENCIA cascade constraints;

drop table DIRECCION cascade constraints;

drop table DOCUMENTOPERSONA cascade constraints;

drop table EDIFICIOS cascade constraints;

drop table EMPLEADO cascade constraints;

drop table ENFERMEDAD cascade constraints;

drop table ENTREGA cascade constraints;

drop table ENVASES cascade constraints;

drop table ENVASEXPAQUETE cascade constraints;

drop table EXAMENES cascade constraints;

drop table EXPEDIENTE cascade constraints;

drop table FACTURA cascade constraints;

drop table HOSPITAL cascade constraints;

drop table LIMPIEZA cascade constraints;

drop table MATENIMIENTO cascade constraints;

drop table MUNICIPIO cascade constraints;

drop table NIVEL_ALA cascade constraints;

drop table PACIENTE cascade constraints;

drop table PAIS cascade constraints;

drop table PAQUETES cascade constraints;

drop table PERSONA cascade constraints;

drop table RECETA cascade constraints;

drop table RECURSOSPORAREA cascade constraints;

drop table RIEGOS cascade constraints;

drop table RIESGOS cascade constraints;

drop table SEDE cascade constraints;

drop table TELEFONO cascade constraints;

drop table TELEFONOPORPERSONA cascade constraints;

drop table TIPOALMACENAMIENTO cascade constraints;

drop table TIPODEATENCION cascade constraints;

drop table TIPODEDOCUMENTO cascade constraints;

drop table TIPOEMPLEADO cascade constraints;

drop table TIPOEXAMEN cascade constraints;

drop table TIPOLIMPIEZA cascade constraints;

drop table TIPORIESGO cascade constraints;

drop table TIPORIESGOS cascade constraints;

drop table TIPOTRANSPORTE cascade constraints;

drop table TRANSPORTE cascade constraints;

drop table UBICACIONGEO cascade constraints;

drop table UTENCILIOS cascade constraints;

drop table UTENCILIOSXPAQUETE cascade constraints;

/*==============================================================*/
/* Table: ALMACENAMIENTO                                        */
/*==============================================================*/
create table ALMACENAMIENTO 
(
   IDALMACENAMIENTO     INT                  not null,
   IDTIPOALMACENAMIENTO INT,
   constraint PK_ALMACENAMIENTO primary key (IDALMACENAMIENTO)
);

/*==============================================================*/
/* Table: AREAS                                                 */
/*==============================================================*/
create table AREAS 
(
   IDAREA               INT                  not null,
   ARE_IDAREA           INT,
   IDNIVEL_ALA          INT,
   IDEMPLEADO           INT,
   NOMBREAREA           VARCHAR2(50),
   SUBAREA              VARCHAR2(50),
   constraint PK_AREAS primary key (IDAREA)
);

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO 
(
   IDCARGO              INT                  not null,
   NOMBRE               VARCHAR2(50),
   DESCRIPCION          VARCHAR2(50),
   constraint PK_CARGO primary key (IDCARGO)
);

/*==============================================================*/
/* Table: CLINICA                                               */
/*==============================================================*/
create table CLINICA 
(
   IDCLINICA            INT                  not null,
   IDATENCION           INT,
   constraint PK_CLINICA primary key (IDCLINICA)
);

/*==============================================================*/
/* Table: CONTROLES                                             */
/*==============================================================*/
create table CONTROLES 
(
   IDCONTROL            INT                  not null,
   TIPOCONTROL          VARCHAR2(50),
   constraint PK_CONTROLES primary key (IDCONTROL)
);

/*==============================================================*/
/* Table: CONTROLESPORRECURSOS                                  */
/*==============================================================*/
create table CONTROLESPORRECURSOS 
(
   IDCONTROLXRECURSO    INT                  not null,
   IDCONTROL            INT,
   IDRECURSO            INT,
   IDENTREGA            INT,
   constraint PK_CONTROLESPORRECURSOS primary key (IDCONTROLXRECURSO)
);

/*==============================================================*/
/* Table: DATOSEXPEDIENTE                                       */
/*==============================================================*/
create table DATOSEXPEDIENTE 
(
   IDEXPEDIENTE         INT,
   IDATENCION           INT,
   IDDATOSEXPEDIENTE    INT                  not null,
   constraint PK_DATOSEXPEDIENTE primary key (IDDATOSEXPEDIENTE)
);

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO 
(
   IDEPARTAMENTO        INT                  not null,
   DEPARTAMENTO         VARCHAR2(50),
   constraint PK_DEPARTAMENTO primary key (IDEPARTAMENTO)
);

/*==============================================================*/
/* Table: DEPENDENCIA                                           */
/*==============================================================*/
create table DEPENDENCIA 
(
   IDDEPENDENCIA        INT                  not null,
   NOMBRE               VARCHAR2(50),
   DESCRIPCION          VARCHAR2(50),
   constraint PK_DEPENDENCIA primary key (IDDEPENDENCIA)
);

/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create table DIRECCION 
(
   ID_DIRECCION         NUMBER               not null,
   IDPERSONA            INT,
   IDUBICACIONGEO       INT,
   constraint PK_DIRECCION primary key (ID_DIRECCION)
);

/*==============================================================*/
/* Table: DOCUMENTOPERSONA                                      */
/*==============================================================*/
create table DOCUMENTOPERSONA 
(
   IDTIPODOCTO          INT                  not null,
   IDPERSONA            INT                  not null,
   NODOCTO              VARCHAR2(50),
   constraint PK_DOCUMENTOPERSONA primary key (IDTIPODOCTO, IDPERSONA)
);

/*==============================================================*/
/* Table: EDIFICIOS                                             */
/*==============================================================*/
create table EDIFICIOS 
(
   IDEDIFICIO           INT                  not null,
   IDNIVEL_ALA          INT,
   constraint PK_EDIFICIOS primary key (IDEDIFICIO)
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO 
(
   IDEMPLEADO           INT                  not null,
   IDPERSONA            INT,
   IDTIPOEMPLEADO       INT,
   IDDEPENDENCIA        INT,
   IDCARGO              INT,
   constraint PK_EMPLEADO primary key (IDEMPLEADO)
);

/*==============================================================*/
/* Table: ENFERMEDAD                                            */
/*==============================================================*/
create table ENFERMEDAD 
(
   IDENFERMEDAD         INT                  not null,
   DESCRIPCION          VARCHAR2(100),
   constraint PK_ENFERMEDAD primary key (IDENFERMEDAD)
);

/*==============================================================*/
/* Table: ENTREGA                                               */
/*==============================================================*/
create table ENTREGA 
(
   IDENTREGA            INT                  not null,
   IDPAQUETE            INT,
   FECHADEESTERILAZION  DATE,
   FECHADECADUCIDAD     DATE,
   HORADENTREGA         DATE,
   constraint PK_ENTREGA primary key (IDENTREGA)
);

/*==============================================================*/
/* Table: ENVASES                                               */
/*==============================================================*/
create table ENVASES 
(
   IDENVASE             INT                  not null,
   TIPOEVASE            VARCHAR2(50),
   constraint PK_ENVASES primary key (IDENVASE)
);

/*==============================================================*/
/* Table: ENVASEXPAQUETE                                        */
/*==============================================================*/
create table ENVASEXPAQUETE 
(
   ENVASEXPAQUETE       INT                  not null,
   IDPAQUETE            INT,
   IDENVASE             INT,
   constraint PK_ENVASEXPAQUETE primary key (ENVASEXPAQUETE)
);

/*==============================================================*/
/* Table: EXAMENES                                              */
/*==============================================================*/
create table EXAMENES 
(
   IDEXAMEN             INT                  not null,
   IDDATOSEXPEDIENTE    INT,
   IDTIPOEXAMEN         INT,
   constraint PK_EXAMENES primary key (IDEXAMEN)
);

/*==============================================================*/
/* Table: EXPEDIENTE                                            */
/*==============================================================*/
create table EXPEDIENTE 
(
   IDEXPEDIENTE         INT                  not null,
   IDCLINICA            INT,
   IDENFERMEDAD         INT,
   constraint PK_EXPEDIENTE primary key (IDEXPEDIENTE)
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA 
(
   IDFACTURA            INT                  not null,
   IDPACIENTE           INT,
   FECHADEGENERACION    VARCHAR2(50),
   constraint PK_FACTURA primary key (IDFACTURA)
);

/*==============================================================*/
/* Table: HOSPITAL                                              */
/*==============================================================*/
create table HOSPITAL 
(
   IDHOSPITAL           INT                  not null,
   NOMBRE               VARCHAR2(50),
   constraint PK_HOSPITAL primary key (IDHOSPITAL)
);

/*==============================================================*/
/* Table: LIMPIEZA                                              */
/*==============================================================*/
create table LIMPIEZA 
(
   IDLIMPIEZA           INT                  not null,
   IDAREA               INT,
   IDTIPOLIMPIEZA       INT,
   IDEMPLEADO           INT,
   constraint PK_LIMPIEZA primary key (IDLIMPIEZA)
);

/*==============================================================*/
/* Table: MATENIMIENTO                                          */
/*==============================================================*/
create table MATENIMIENTO 
(
   IDMANTENIMIENTO      INT                  not null,
   IDRECURSO            INT,
   IDEMPLEADO           INT,
   COMTROLBIOLOGICO     VARCHAR2(50),
   CONTROLQUIMICO       VARCHAR2(50),
   constraint PK_MATENIMIENTO primary key (IDMANTENIMIENTO)
);

/*==============================================================*/
/* Table: MUNICIPIO                                             */
/*==============================================================*/
create table MUNICIPIO 
(
   IDMUNICIPIO          INT                  not null,
   MUNICIPIO            VARCHAR2(50),
   constraint PK_MUNICIPIO primary key (IDMUNICIPIO)
);

/*==============================================================*/
/* Table: NIVEL_ALA                                             */
/*==============================================================*/
create table NIVEL_ALA 
(
   IDNIVEL_ALA          INT                  not null,
   DESCRIPCION          VARCHAR2(50),
   constraint PK_NIVEL_ALA primary key (IDNIVEL_ALA)
);

/*==============================================================*/
/* Table: PACIENTE                                              */
/*==============================================================*/
create table PACIENTE 
(
   IDPACIENTE           INT                  not null,
   IDPERSONA            INT,
   IDEXPEDIENTE         INT,
   IDHOSPITAL           INT,
   constraint PK_PACIENTE primary key (IDPACIENTE)
);

/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS 
(
   IDPAIS               INT                  not null,
   PAIS                 VARCHAR2(50),
   constraint PK_PAIS primary key (IDPAIS)
);

/*==============================================================*/
/* Table: PAQUETES                                              */
/*==============================================================*/
create table PAQUETES 
(
   IDPAQUETE            INT                  not null,
   IDRIESGO             INT,
   IDCONSERVACION       INT,
   IDALMACENAMIENTO     INT,
   IDTRANSPORTE         INT,
   constraint PK_PAQUETES primary key (IDPAQUETE)
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA 
(
   IDPERSONA            INT                  not null,
   NOMBRES              VARCHAR2(20),
   APELLIDOS            VARCHAR2(20),
   GENERO               VARCHAR2(2),
   constraint PK_PERSONA primary key (IDPERSONA)
);

/*==============================================================*/
/* Table: RECETA                                                */
/*==============================================================*/
create table RECETA 
(
   IDDATOSEXPEDIENTE    INT
);

/*==============================================================*/
/* Table: RECURSOSPORAREA                                       */
/*==============================================================*/
create table RECURSOSPORAREA 
(
   IDRECURSO            INT,
   IDAREA               INT
);

/*==============================================================*/
/* Table: RIEGOS                                                */
/*==============================================================*/
create table RIEGOS 
(
   IDRIESGO             INT                  not null,
   IDTIPORIESGO         INT,
   constraint PK_RIEGOS primary key (IDRIESGO)
);

/*==============================================================*/
/* Table: RIESGOS                                               */
/*==============================================================*/
create table RIESGOS 
(
   IDRIESGOS            INT                  not null,
   IDTIPORIESGOS        INT,
   constraint PK_RIESGOS primary key (IDRIESGOS)
);

/*==============================================================*/
/* Table: SEDE                                                  */
/*==============================================================*/
create table SEDE 
(
   IDSEDE               INT                  not null,
   IDHOSPITAL           INT,
   IDEDIFICIO           INT,
   constraint PK_SEDE primary key (IDSEDE)
);

/*==============================================================*/
/* Table: TELEFONO                                              */
/*==============================================================*/
create table TELEFONO 
(
   IDTELEFONO           INT                  not null,
   TIPODETEL            VARCHAR2(20),
   constraint PK_TELEFONO primary key (IDTELEFONO)
);

/*==============================================================*/
/* Table: TELEFONOPORPERSONA                                    */
/*==============================================================*/
create table TELEFONOPORPERSONA 
(
   IDPERSONA            INT,
   IDTELEFONO           INT
);

/*==============================================================*/
/* Table: TIPOALMACENAMIENTO                                    */
/*==============================================================*/
create table TIPOALMACENAMIENTO 
(
   IDTIPOALMACENAMIENTO INT                  not null,
   DESCRIPCION          VARCHAR2(50),
   constraint PK_TIPOALMACENAMIENTO primary key (IDTIPOALMACENAMIENTO)
);

/*==============================================================*/
/* Table: TIPODEATENCION                                        */
/*==============================================================*/
create table TIPODEATENCION 
(
   IDATENCION           INT                  not null,
   DESCRIPCION          VARCHAR2(100),
   constraint PK_TIPODEATENCION primary key (IDATENCION)
);

/*==============================================================*/
/* Table: TIPODEDOCUMENTO                                       */
/*==============================================================*/
create table TIPODEDOCUMENTO 
(
   IDTIPODOCTO          INT                  not null,
   TIPODOCTO            VARCHAR2(50),
   constraint PK_TIPODEDOCUMENTO primary key (IDTIPODOCTO)
);

/*==============================================================*/
/* Table: TIPOEMPLEADO                                          */
/*==============================================================*/
create table TIPOEMPLEADO 
(
   IDTIPOEMPLEADO       INT                  not null,
   DESCRIPCION          VARCHAR2(100),
   constraint PK_TIPOEMPLEADO primary key (IDTIPOEMPLEADO)
);

/*==============================================================*/
/* Table: TIPOEXAMEN                                            */
/*==============================================================*/
create table TIPOEXAMEN 
(
   IDTIPOEXAMEN         INT                  not null,
   DESCTIPOEXAMEN       VARCHAR2(100),
   constraint PK_TIPOEXAMEN primary key (IDTIPOEXAMEN)
);

/*==============================================================*/
/* Table: TIPOLIMPIEZA                                          */
/*==============================================================*/
create table TIPOLIMPIEZA 
(
   IDTIPOLIMPIEZA       INT                  not null,
   DESCRIPCION          VARCHAR2(50),
   constraint PK_TIPOLIMPIEZA primary key (IDTIPOLIMPIEZA)
);

/*==============================================================*/
/* Table: TIPORIESGO                                            */
/*==============================================================*/
create table TIPORIESGO 
(
   IDTIPORIESGO         INT                  not null,
   DESCRIPCION          VARCHAR2(50),
   constraint PK_TIPORIESGO primary key (IDTIPORIESGO)
);

/*==============================================================*/
/* Table: TIPORIESGOS                                           */
/*==============================================================*/
create table TIPORIESGOS 
(
   IDTIPORIESGOS        INT                  not null,
   DESCRIPCION          VARCHAR2(50),
   constraint PK_TIPORIESGOS primary key (IDTIPORIESGOS)
);

/*==============================================================*/
/* Table: TIPOTRANSPORTE                                        */
/*==============================================================*/
create table TIPOTRANSPORTE 
(
   IDTIPOTRANSPORTE     INT                  not null,
   DESCRIPCION          VARCHAR2(50),
   constraint PK_TIPOTRANSPORTE primary key (IDTIPOTRANSPORTE)
);

/*==============================================================*/
/* Table: TRANSPORTE                                            */
/*==============================================================*/
create table TRANSPORTE 
(
   IDTRANSPORTE         INT                  not null,
   IDTIPOTRANSPORTE     INT,
   constraint PK_TRANSPORTE primary key (IDTRANSPORTE)
);

/*==============================================================*/
/* Table: UBICACIONGEO                                          */
/*==============================================================*/
create table UBICACIONGEO 
(
   IDUBICACIONGEO       INT                  not null,
   IDPAIS               INT,
   IDEPARTAMENTO        INT,
   IDMUNICIPIO          INT,
   constraint PK_UBICACIONGEO primary key (IDUBICACIONGEO)
);

/*==============================================================*/
/* Table: UTENCILIOS                                            */
/*==============================================================*/
create table UTENCILIOS 
(
   IDRECURSO            INT                  not null,
   TIPOMATERIAL         VARCHAR2(50),
   constraint PK_UTENCILIOS primary key (IDRECURSO)
);

/*==============================================================*/
/* Table: UTENCILIOSXPAQUETE                                    */
/*==============================================================*/
create table UTENCILIOSXPAQUETE 
(
   IDUTENCILIOSXPAQUETE INT                  not null,
   IDPAQUETE            INT,
   IDRECURSO            INT,
   constraint PK_UTENCILIOSXPAQUETE primary key (IDUTENCILIOSXPAQUETE)
);

alter table ALMACENAMIENTO
   add constraint FK_ALMACENA_REFERENCE_TIPOALMA foreign key (IDTIPOALMACENAMIENTO)
      references TIPOALMACENAMIENTO (IDTIPOALMACENAMIENTO);

alter table AREAS
   add constraint FK_AREAS_REFERENCE_AREAS foreign key (ARE_IDAREA)
      references AREAS (IDAREA);

alter table AREAS
   add constraint FK_AREAS_REFERENCE_NIVEL_AL foreign key (IDNIVEL_ALA)
      references NIVEL_ALA (IDNIVEL_ALA);

alter table AREAS
   add constraint FK_AREAS_REFERENCE_EMPLEADO foreign key (IDEMPLEADO)
      references EMPLEADO (IDEMPLEADO);

alter table CLINICA
   add constraint FK_CLINICA_REFERENCE_TIPODEAT foreign key (IDATENCION)
      references TIPODEATENCION (IDATENCION);

alter table CONTROLESPORRECURSOS
   add constraint FK_CONTROLE_REFERENCE_CONTROLE foreign key (IDCONTROL)
      references CONTROLES (IDCONTROL);

alter table CONTROLESPORRECURSOS
   add constraint FK_CONTROLE_REFERENCE_UTENCILI foreign key (IDRECURSO)
      references UTENCILIOS (IDRECURSO);

alter table CONTROLESPORRECURSOS
   add constraint FK_CONTROLE_REFERENCE_ENTREGA foreign key (IDENTREGA)
      references ENTREGA (IDENTREGA);

alter table DATOSEXPEDIENTE
   add constraint FK_DATOSEXP_REFERENCE_EXPEDIEN foreign key (IDEXPEDIENTE)
      references EXPEDIENTE (IDEXPEDIENTE);

alter table DATOSEXPEDIENTE
   add constraint FK_DATOSEXP_REFERENCE_TIPODEAT foreign key (IDATENCION)
      references TIPODEATENCION (IDATENCION);

alter table DIRECCION
   add constraint FK_DIRECCIO_REFERENCE_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA);

alter table DIRECCION
   add constraint FK_DIRECCIO_REFERENCE_UBICACIO foreign key (IDUBICACIONGEO)
      references UBICACIONGEO (IDUBICACIONGEO);

alter table DOCUMENTOPERSONA
   add constraint FK_DOCUMENT_REFERENCE_TIPODEDO foreign key (IDTIPODOCTO)
      references TIPODEDOCUMENTO (IDTIPODOCTO);

alter table DOCUMENTOPERSONA
   add constraint FK_DOCUMENT_REFERENCE_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA);

alter table EDIFICIOS
   add constraint FK_EDIFICIO_REFERENCE_NIVEL_AL foreign key (IDNIVEL_ALA)
      references NIVEL_ALA (IDNIVEL_ALA);

alter table EMPLEADO
   add constraint FK_EMPLEADO_REFERENCE_DEPENDEN foreign key (IDDEPENDENCIA)
      references DEPENDENCIA (IDDEPENDENCIA);

alter table EMPLEADO
   add constraint FK_EMPLEADO_REFERENCE_CARGO foreign key (IDCARGO)
      references CARGO (IDCARGO);

alter table EMPLEADO
   add constraint FK_EMPLEADO_REFERENCE_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA);

alter table EMPLEADO
   add constraint FK_EMPLEADO_REFERENCE_TIPOEMPL foreign key (IDTIPOEMPLEADO)
      references TIPOEMPLEADO (IDTIPOEMPLEADO);

alter table ENTREGA
   add constraint FK_ENTREGA_REFERENCE_PAQUETES foreign key (IDPAQUETE)
      references PAQUETES (IDPAQUETE);

alter table ENVASEXPAQUETE
   add constraint FK_ENVASEXP_REFERENCE_ENVASES foreign key (IDENVASE)
      references ENVASES (IDENVASE);

alter table ENVASEXPAQUETE
   add constraint FK_ENVASEXP_REFERENCE_PAQUETES foreign key (IDPAQUETE)
      references PAQUETES (IDPAQUETE);

alter table EXAMENES
   add constraint FK_EXAMENES_REFERENCE_DATOSEXP foreign key (IDDATOSEXPEDIENTE)
      references DATOSEXPEDIENTE (IDDATOSEXPEDIENTE);

alter table EXAMENES
   add constraint FK_EXAMENES_REFERENCE_TIPOEXAM foreign key (IDTIPOEXAMEN)
      references TIPOEXAMEN (IDTIPOEXAMEN);

alter table EXPEDIENTE
   add constraint FK_EXPEDIEN_REFERENCE_ENFERMED foreign key (IDENFERMEDAD)
      references ENFERMEDAD (IDENFERMEDAD);

alter table EXPEDIENTE
   add constraint FK_EXPEDIEN_REFERENCE_CLINICA foreign key (IDCLINICA)
      references CLINICA (IDCLINICA);

alter table FACTURA
   add constraint FK_FACTURA_REFERENCE_PACIENTE foreign key (IDPACIENTE)
      references PACIENTE (IDPACIENTE);

alter table LIMPIEZA
   add constraint FK_LIMPIEZA_REFERENCE_AREAS foreign key (IDAREA)
      references AREAS (IDAREA);

alter table LIMPIEZA
   add constraint FK_LIMPIEZA_REFERENCE_TIPOLIMP foreign key (IDTIPOLIMPIEZA)
      references TIPOLIMPIEZA (IDTIPOLIMPIEZA);

alter table LIMPIEZA
   add constraint FK_LIMPIEZA_REFERENCE_EMPLEADO foreign key (IDEMPLEADO)
      references EMPLEADO (IDEMPLEADO);

alter table MATENIMIENTO
   add constraint FK_MATENIMI_REFERENCE_UTENCILI foreign key (IDRECURSO)
      references UTENCILIOS (IDRECURSO);

alter table MATENIMIENTO
   add constraint FK_MATENIMI_REFERENCE_EMPLEADO foreign key (IDEMPLEADO)
      references EMPLEADO (IDEMPLEADO);

alter table PACIENTE
   add constraint FK_PACIENTE_REFERENCE_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA);

alter table PACIENTE
   add constraint FK_PACIENTE_REFERENCE_EXPEDIEN foreign key (IDEXPEDIENTE)
      references EXPEDIENTE (IDEXPEDIENTE);

alter table PACIENTE
   add constraint FK_PACIENTE_REFERENCE_HOSPITAL foreign key (IDHOSPITAL)
      references HOSPITAL (IDHOSPITAL);

alter table PAQUETES
   add constraint FK_PAQUETES_REFERENCE_RIEGOS foreign key (IDRIESGO)
      references RIEGOS (IDRIESGO);

alter table PAQUETES
   add constraint FK_PAQUETES_REFERENCE_RIESGOS foreign key (IDCONSERVACION)
      references RIESGOS (IDRIESGOS);

alter table PAQUETES
   add constraint FK_PAQUETES_REFERENCE_ALMACENA foreign key (IDALMACENAMIENTO)
      references ALMACENAMIENTO (IDALMACENAMIENTO);

alter table PAQUETES
   add constraint FK_PAQUETES_REFERENCE_TRANSPOR foreign key (IDTRANSPORTE)
      references TRANSPORTE (IDTRANSPORTE);

alter table RECETA
   add constraint FK_RECETA_REFERENCE_DATOSEXP foreign key (IDDATOSEXPEDIENTE)
      references DATOSEXPEDIENTE (IDDATOSEXPEDIENTE);

alter table RECURSOSPORAREA
   add constraint FK_RECURSOS_REFERENCE_UTENCILI foreign key (IDRECURSO)
      references UTENCILIOS (IDRECURSO);

alter table RECURSOSPORAREA
   add constraint FK_RECURSOS_REFERENCE_AREAS foreign key (IDAREA)
      references AREAS (IDAREA);

alter table RIEGOS
   add constraint FK_RIEGOS_REFERENCE_TIPORIES foreign key (IDTIPORIESGO)
      references TIPORIESGO (IDTIPORIESGO);

alter table RIESGOS
   add constraint FK_RIESGOS_REFERENCE_TIPORIES foreign key (IDTIPORIESGOS)
      references TIPORIESGOS (IDTIPORIESGOS);

alter table SEDE
   add constraint FK_SEDE_REFERENCE_HOSPITAL foreign key (IDHOSPITAL)
      references HOSPITAL (IDHOSPITAL);

alter table SEDE
   add constraint FK_SEDE_REFERENCE_EDIFICIO foreign key (IDEDIFICIO)
      references EDIFICIOS (IDEDIFICIO);

alter table TELEFONOPORPERSONA
   add constraint FK_TELEFONO_REFERENCE_TELEFONO foreign key (IDTELEFONO)
      references TELEFONO (IDTELEFONO);

alter table TELEFONOPORPERSONA
   add constraint FK_TELEFONO_REFERENCE_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA);

alter table TRANSPORTE
   add constraint FK_TRANSPOR_REFERENCE_TIPOTRAN foreign key (IDTIPOTRANSPORTE)
      references TIPOTRANSPORTE (IDTIPOTRANSPORTE);

alter table UBICACIONGEO
   add constraint FK_UBICACIO_REFERENCE_PAIS foreign key (IDPAIS)
      references PAIS (IDPAIS);

alter table UBICACIONGEO
   add constraint FK_UBICACIO_REFERENCE_DEPARTAM foreign key (IDEPARTAMENTO)
      references DEPARTAMENTO (IDEPARTAMENTO);

alter table UBICACIONGEO
   add constraint FK_UBICACIO_REFERENCE_MUNICIPI foreign key (IDMUNICIPIO)
      references MUNICIPIO (IDMUNICIPIO);

alter table UTENCILIOSXPAQUETE
   add constraint FK_UTENCILI_REFERENCE_PAQUETES foreign key (IDPAQUETE)
      references PAQUETES (IDPAQUETE);

alter table UTENCILIOSXPAQUETE
   add constraint FK_UTENCILI_REFERENCE_UTENCILI foreign key (IDRECURSO)
      references UTENCILIOS (IDRECURSO);

