-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           PostgreSQL 14.10 (Ubuntu 14.10-0ubuntu0.22.04.1) on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0, 64-bit
-- OS do Servidor:               
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando estrutura para função information_schema._pg_char_max_length
DELIMITER //
CREATE FUNCTION "_pg_char_max_length"(typid INTEGER, typmod INTEGER) RETURNS INTEGER AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função information_schema._pg_char_octet_length
DELIMITER //
CREATE FUNCTION "_pg_char_octet_length"(typid INTEGER, typmod INTEGER) RETURNS INTEGER AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função information_schema._pg_datetime_precision
DELIMITER //
CREATE FUNCTION "_pg_datetime_precision"(typid INTEGER, typmod INTEGER) RETURNS INTEGER AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função information_schema._pg_expandarray
DELIMITER //
CREATE FUNCTION "_pg_expandarray"("" UNKNOWN, x , n ) RETURNS UNKNOWN AS $$ select $1[s],
        s operator(pg_catalog.-) pg_catalog.array_lower($1,1) operator(pg_catalog.+) 1
        from pg_catalog.generate_series(pg_catalog.array_lower($1,1),
                                        pg_catalog.array_upper($1,1),
                                        1) as g(s) $$//
DELIMITER ;

-- Copiando estrutura para função information_schema._pg_index_position
DELIMITER //
CREATE FUNCTION "_pg_index_position"() RETURNS INTEGER AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função information_schema._pg_interval_type
DELIMITER //
CREATE FUNCTION "_pg_interval_type"(typid INTEGER, mod INTEGER) RETURNS TEXT AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função information_schema._pg_numeric_precision
DELIMITER //
CREATE FUNCTION "_pg_numeric_precision"(typid INTEGER, typmod INTEGER) RETURNS INTEGER AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função information_schema._pg_numeric_precision_radix
DELIMITER //
CREATE FUNCTION "_pg_numeric_precision_radix"(typid INTEGER, typmod INTEGER) RETURNS INTEGER AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função information_schema._pg_numeric_scale
DELIMITER //
CREATE FUNCTION "_pg_numeric_scale"(typid INTEGER, typmod INTEGER) RETURNS INTEGER AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função information_schema._pg_truetypid
DELIMITER //
CREATE FUNCTION "_pg_truetypid"() RETURNS INTEGER AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função information_schema._pg_truetypmod
DELIMITER //
CREATE FUNCTION "_pg_truetypmod"() RETURNS INTEGER AS $$  $$//
DELIMITER ;

-- Copiando estrutura para view information_schema.administrable_role_authorizations
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "administrable_role_authorizations" (
	"grantee" VARCHAR NULL COLLATE 'C',
	"role_name" VARCHAR NULL COLLATE 'C',
	"is_grantable" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.applicable_roles
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "applicable_roles" (
	"grantee" VARCHAR NULL COLLATE 'C',
	"role_name" VARCHAR NULL COLLATE 'C',
	"is_grantable" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.attributes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "attributes" (
	"udt_catalog" VARCHAR NULL COLLATE 'C',
	"udt_schema" VARCHAR NULL COLLATE 'C',
	"udt_name" VARCHAR NULL COLLATE 'C',
	"attribute_name" VARCHAR NULL COLLATE 'C',
	"ordinal_position" INTEGER NULL,
	"attribute_default" VARCHAR NULL COLLATE 'C',
	"is_nullable" VARCHAR(3) NULL COLLATE 'C',
	"data_type" VARCHAR NULL COLLATE 'C',
	"character_maximum_length" INTEGER NULL,
	"character_octet_length" INTEGER NULL,
	"character_set_catalog" VARCHAR NULL COLLATE 'C',
	"character_set_schema" VARCHAR NULL COLLATE 'C',
	"character_set_name" VARCHAR NULL COLLATE 'C',
	"collation_catalog" VARCHAR NULL COLLATE 'C',
	"collation_schema" VARCHAR NULL COLLATE 'C',
	"collation_name" VARCHAR NULL COLLATE 'C',
	"numeric_precision" INTEGER NULL,
	"numeric_precision_radix" INTEGER NULL,
	"numeric_scale" INTEGER NULL,
	"datetime_precision" INTEGER NULL,
	"interval_type" VARCHAR NULL COLLATE 'C',
	"interval_precision" INTEGER NULL,
	"attribute_udt_catalog" VARCHAR NULL COLLATE 'C',
	"attribute_udt_schema" VARCHAR NULL COLLATE 'C',
	"attribute_udt_name" VARCHAR NULL COLLATE 'C',
	"scope_catalog" VARCHAR NULL COLLATE 'C',
	"scope_schema" VARCHAR NULL COLLATE 'C',
	"scope_name" VARCHAR NULL COLLATE 'C',
	"maximum_cardinality" INTEGER NULL,
	"dtd_identifier" VARCHAR NULL COLLATE 'C',
	"is_derived_reference_attribute" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.character_sets
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "character_sets" (
	"character_set_catalog" VARCHAR NULL COLLATE 'C',
	"character_set_schema" VARCHAR NULL COLLATE 'C',
	"character_set_name" VARCHAR NULL COLLATE 'C',
	"character_repertoire" VARCHAR NULL COLLATE 'C',
	"form_of_use" VARCHAR NULL COLLATE 'C',
	"default_collate_catalog" VARCHAR NULL COLLATE 'C',
	"default_collate_schema" VARCHAR NULL COLLATE 'C',
	"default_collate_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.check_constraints
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "check_constraints" (
	"constraint_catalog" VARCHAR NULL COLLATE 'C',
	"constraint_schema" VARCHAR NULL COLLATE 'C',
	"constraint_name" VARCHAR NULL COLLATE 'C',
	"check_clause" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.check_constraint_routine_usage
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "check_constraint_routine_usage" (
	"constraint_catalog" VARCHAR NULL COLLATE 'C',
	"constraint_schema" VARCHAR NULL COLLATE 'C',
	"constraint_name" VARCHAR NULL COLLATE 'C',
	"specific_catalog" VARCHAR NULL COLLATE 'C',
	"specific_schema" VARCHAR NULL COLLATE 'C',
	"specific_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.collations
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "collations" (
	"collation_catalog" VARCHAR NULL COLLATE 'C',
	"collation_schema" VARCHAR NULL COLLATE 'C',
	"collation_name" VARCHAR NULL COLLATE 'C',
	"pad_attribute" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.collation_character_set_applicability
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "collation_character_set_applicability" (
	"collation_catalog" VARCHAR NULL COLLATE 'C',
	"collation_schema" VARCHAR NULL COLLATE 'C',
	"collation_name" VARCHAR NULL COLLATE 'C',
	"character_set_catalog" VARCHAR NULL COLLATE 'C',
	"character_set_schema" VARCHAR NULL COLLATE 'C',
	"character_set_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.columns
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "columns" (
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"column_name" VARCHAR NULL COLLATE 'C',
	"ordinal_position" INTEGER NULL,
	"column_default" VARCHAR NULL COLLATE 'C',
	"is_nullable" VARCHAR(3) NULL COLLATE 'C',
	"data_type" VARCHAR NULL COLLATE 'C',
	"character_maximum_length" INTEGER NULL,
	"character_octet_length" INTEGER NULL,
	"numeric_precision" INTEGER NULL,
	"numeric_precision_radix" INTEGER NULL,
	"numeric_scale" INTEGER NULL,
	"datetime_precision" INTEGER NULL,
	"interval_type" VARCHAR NULL COLLATE 'C',
	"interval_precision" INTEGER NULL,
	"character_set_catalog" VARCHAR NULL COLLATE 'C',
	"character_set_schema" VARCHAR NULL COLLATE 'C',
	"character_set_name" VARCHAR NULL COLLATE 'C',
	"collation_catalog" VARCHAR NULL COLLATE 'C',
	"collation_schema" VARCHAR NULL COLLATE 'C',
	"collation_name" VARCHAR NULL COLLATE 'C',
	"domain_catalog" VARCHAR NULL COLLATE 'C',
	"domain_schema" VARCHAR NULL COLLATE 'C',
	"domain_name" VARCHAR NULL COLLATE 'C',
	"udt_catalog" VARCHAR NULL COLLATE 'C',
	"udt_schema" VARCHAR NULL COLLATE 'C',
	"udt_name" VARCHAR NULL COLLATE 'C',
	"scope_catalog" VARCHAR NULL COLLATE 'C',
	"scope_schema" VARCHAR NULL COLLATE 'C',
	"scope_name" VARCHAR NULL COLLATE 'C',
	"maximum_cardinality" INTEGER NULL,
	"dtd_identifier" VARCHAR NULL COLLATE 'C',
	"is_self_referencing" VARCHAR(3) NULL COLLATE 'C',
	"is_identity" VARCHAR(3) NULL COLLATE 'C',
	"identity_generation" VARCHAR NULL COLLATE 'C',
	"identity_start" VARCHAR NULL COLLATE 'C',
	"identity_increment" VARCHAR NULL COLLATE 'C',
	"identity_maximum" VARCHAR NULL COLLATE 'C',
	"identity_minimum" VARCHAR NULL COLLATE 'C',
	"identity_cycle" VARCHAR(3) NULL COLLATE 'C',
	"is_generated" VARCHAR NULL COLLATE 'C',
	"generation_expression" VARCHAR NULL COLLATE 'C',
	"is_updatable" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.column_column_usage
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "column_column_usage" (
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"column_name" VARCHAR NULL COLLATE 'C',
	"dependent_column" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.column_domain_usage
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "column_domain_usage" (
	"domain_catalog" VARCHAR NULL COLLATE 'C',
	"domain_schema" VARCHAR NULL COLLATE 'C',
	"domain_name" VARCHAR NULL COLLATE 'C',
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"column_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.column_options
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "column_options" (
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"column_name" VARCHAR NULL COLLATE 'C',
	"option_name" VARCHAR NULL COLLATE 'C',
	"option_value" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.column_privileges
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "column_privileges" (
	"grantor" VARCHAR NULL COLLATE 'C',
	"grantee" VARCHAR NULL COLLATE 'C',
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"column_name" VARCHAR NULL COLLATE 'C',
	"privilege_type" VARCHAR NULL COLLATE 'C',
	"is_grantable" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.column_udt_usage
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "column_udt_usage" (
	"udt_catalog" VARCHAR NULL COLLATE 'C',
	"udt_schema" VARCHAR NULL COLLATE 'C',
	"udt_name" VARCHAR NULL COLLATE 'C',
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"column_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.constraint_column_usage
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "constraint_column_usage" (
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"column_name" VARCHAR NULL COLLATE 'C',
	"constraint_catalog" VARCHAR NULL COLLATE 'C',
	"constraint_schema" VARCHAR NULL COLLATE 'C',
	"constraint_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.constraint_table_usage
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "constraint_table_usage" (
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"constraint_catalog" VARCHAR NULL COLLATE 'C',
	"constraint_schema" VARCHAR NULL COLLATE 'C',
	"constraint_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.data_type_privileges
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "data_type_privileges" (
	"object_catalog" VARCHAR NULL COLLATE 'C',
	"object_schema" VARCHAR NULL COLLATE 'C',
	"object_name" VARCHAR NULL COLLATE 'C',
	"object_type" VARCHAR NULL COLLATE 'C',
	"dtd_identifier" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.domains
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "domains" (
	"domain_catalog" VARCHAR NULL COLLATE 'C',
	"domain_schema" VARCHAR NULL COLLATE 'C',
	"domain_name" VARCHAR NULL COLLATE 'C',
	"data_type" VARCHAR NULL COLLATE 'C',
	"character_maximum_length" INTEGER NULL,
	"character_octet_length" INTEGER NULL,
	"character_set_catalog" VARCHAR NULL COLLATE 'C',
	"character_set_schema" VARCHAR NULL COLLATE 'C',
	"character_set_name" VARCHAR NULL COLLATE 'C',
	"collation_catalog" VARCHAR NULL COLLATE 'C',
	"collation_schema" VARCHAR NULL COLLATE 'C',
	"collation_name" VARCHAR NULL COLLATE 'C',
	"numeric_precision" INTEGER NULL,
	"numeric_precision_radix" INTEGER NULL,
	"numeric_scale" INTEGER NULL,
	"datetime_precision" INTEGER NULL,
	"interval_type" VARCHAR NULL COLLATE 'C',
	"interval_precision" INTEGER NULL,
	"domain_default" VARCHAR NULL COLLATE 'C',
	"udt_catalog" VARCHAR NULL COLLATE 'C',
	"udt_schema" VARCHAR NULL COLLATE 'C',
	"udt_name" VARCHAR NULL COLLATE 'C',
	"scope_catalog" VARCHAR NULL COLLATE 'C',
	"scope_schema" VARCHAR NULL COLLATE 'C',
	"scope_name" VARCHAR NULL COLLATE 'C',
	"maximum_cardinality" INTEGER NULL,
	"dtd_identifier" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.domain_constraints
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "domain_constraints" (
	"constraint_catalog" VARCHAR NULL COLLATE 'C',
	"constraint_schema" VARCHAR NULL COLLATE 'C',
	"constraint_name" VARCHAR NULL COLLATE 'C',
	"domain_catalog" VARCHAR NULL COLLATE 'C',
	"domain_schema" VARCHAR NULL COLLATE 'C',
	"domain_name" VARCHAR NULL COLLATE 'C',
	"is_deferrable" VARCHAR(3) NULL COLLATE 'C',
	"initially_deferred" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.domain_udt_usage
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "domain_udt_usage" (
	"udt_catalog" VARCHAR NULL COLLATE 'C',
	"udt_schema" VARCHAR NULL COLLATE 'C',
	"udt_name" VARCHAR NULL COLLATE 'C',
	"domain_catalog" VARCHAR NULL COLLATE 'C',
	"domain_schema" VARCHAR NULL COLLATE 'C',
	"domain_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.element_types
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "element_types" (
	"object_catalog" VARCHAR NULL COLLATE 'C',
	"object_schema" VARCHAR NULL COLLATE 'C',
	"object_name" VARCHAR NULL COLLATE 'C',
	"object_type" VARCHAR NULL COLLATE 'C',
	"collection_type_identifier" VARCHAR NULL COLLATE 'C',
	"data_type" VARCHAR NULL COLLATE 'C',
	"character_maximum_length" INTEGER NULL,
	"character_octet_length" INTEGER NULL,
	"character_set_catalog" VARCHAR NULL COLLATE 'C',
	"character_set_schema" VARCHAR NULL COLLATE 'C',
	"character_set_name" VARCHAR NULL COLLATE 'C',
	"collation_catalog" VARCHAR NULL COLLATE 'C',
	"collation_schema" VARCHAR NULL COLLATE 'C',
	"collation_name" VARCHAR NULL COLLATE 'C',
	"numeric_precision" INTEGER NULL,
	"numeric_precision_radix" INTEGER NULL,
	"numeric_scale" INTEGER NULL,
	"datetime_precision" INTEGER NULL,
	"interval_type" VARCHAR NULL COLLATE 'C',
	"interval_precision" INTEGER NULL,
	"domain_default" VARCHAR NULL COLLATE 'C',
	"udt_catalog" VARCHAR NULL COLLATE 'C',
	"udt_schema" VARCHAR NULL COLLATE 'C',
	"udt_name" VARCHAR NULL COLLATE 'C',
	"scope_catalog" VARCHAR NULL COLLATE 'C',
	"scope_schema" VARCHAR NULL COLLATE 'C',
	"scope_name" VARCHAR NULL COLLATE 'C',
	"maximum_cardinality" INTEGER NULL,
	"dtd_identifier" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.enabled_roles
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "enabled_roles" (
	"role_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.foreign_data_wrappers
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "foreign_data_wrappers" (
	"foreign_data_wrapper_catalog" VARCHAR NULL COLLATE 'C',
	"foreign_data_wrapper_name" VARCHAR NULL COLLATE 'C',
	"authorization_identifier" VARCHAR NULL COLLATE 'C',
	"library_name" VARCHAR NULL COLLATE 'C',
	"foreign_data_wrapper_language" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.foreign_data_wrapper_options
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "foreign_data_wrapper_options" (
	"foreign_data_wrapper_catalog" VARCHAR NULL COLLATE 'C',
	"foreign_data_wrapper_name" VARCHAR NULL COLLATE 'C',
	"option_name" VARCHAR NULL COLLATE 'C',
	"option_value" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.foreign_servers
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "foreign_servers" (
	"foreign_server_catalog" VARCHAR NULL COLLATE 'C',
	"foreign_server_name" VARCHAR NULL COLLATE 'C',
	"foreign_data_wrapper_catalog" VARCHAR NULL COLLATE 'C',
	"foreign_data_wrapper_name" VARCHAR NULL COLLATE 'C',
	"foreign_server_type" VARCHAR NULL COLLATE 'C',
	"foreign_server_version" VARCHAR NULL COLLATE 'C',
	"authorization_identifier" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.foreign_server_options
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "foreign_server_options" (
	"foreign_server_catalog" VARCHAR NULL COLLATE 'C',
	"foreign_server_name" VARCHAR NULL COLLATE 'C',
	"option_name" VARCHAR NULL COLLATE 'C',
	"option_value" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.foreign_tables
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "foreign_tables" (
	"foreign_table_catalog" VARCHAR NULL COLLATE 'C',
	"foreign_table_schema" VARCHAR NULL COLLATE 'C',
	"foreign_table_name" VARCHAR NULL COLLATE 'C',
	"foreign_server_catalog" VARCHAR NULL COLLATE 'C',
	"foreign_server_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.foreign_table_options
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "foreign_table_options" (
	"foreign_table_catalog" VARCHAR NULL COLLATE 'C',
	"foreign_table_schema" VARCHAR NULL COLLATE 'C',
	"foreign_table_name" VARCHAR NULL COLLATE 'C',
	"option_name" VARCHAR NULL COLLATE 'C',
	"option_value" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.information_schema_catalog_name
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "information_schema_catalog_name" (
	"catalog_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.key_column_usage
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "key_column_usage" (
	"constraint_catalog" VARCHAR NULL COLLATE 'C',
	"constraint_schema" VARCHAR NULL COLLATE 'C',
	"constraint_name" VARCHAR NULL COLLATE 'C',
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"column_name" VARCHAR NULL COLLATE 'C',
	"ordinal_position" INTEGER NULL,
	"position_in_unique_constraint" INTEGER NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.parameters
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "parameters" (
	"specific_catalog" VARCHAR NULL COLLATE 'C',
	"specific_schema" VARCHAR NULL COLLATE 'C',
	"specific_name" VARCHAR NULL COLLATE 'C',
	"ordinal_position" INTEGER NULL,
	"parameter_mode" VARCHAR NULL COLLATE 'C',
	"is_result" VARCHAR(3) NULL COLLATE 'C',
	"as_locator" VARCHAR(3) NULL COLLATE 'C',
	"parameter_name" VARCHAR NULL COLLATE 'C',
	"data_type" VARCHAR NULL COLLATE 'C',
	"character_maximum_length" INTEGER NULL,
	"character_octet_length" INTEGER NULL,
	"character_set_catalog" VARCHAR NULL COLLATE 'C',
	"character_set_schema" VARCHAR NULL COLLATE 'C',
	"character_set_name" VARCHAR NULL COLLATE 'C',
	"collation_catalog" VARCHAR NULL COLLATE 'C',
	"collation_schema" VARCHAR NULL COLLATE 'C',
	"collation_name" VARCHAR NULL COLLATE 'C',
	"numeric_precision" INTEGER NULL,
	"numeric_precision_radix" INTEGER NULL,
	"numeric_scale" INTEGER NULL,
	"datetime_precision" INTEGER NULL,
	"interval_type" VARCHAR NULL COLLATE 'C',
	"interval_precision" INTEGER NULL,
	"udt_catalog" VARCHAR NULL COLLATE 'C',
	"udt_schema" VARCHAR NULL COLLATE 'C',
	"udt_name" VARCHAR NULL COLLATE 'C',
	"scope_catalog" VARCHAR NULL COLLATE 'C',
	"scope_schema" VARCHAR NULL COLLATE 'C',
	"scope_name" VARCHAR NULL COLLATE 'C',
	"maximum_cardinality" INTEGER NULL,
	"dtd_identifier" VARCHAR NULL COLLATE 'C',
	"parameter_default" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.referential_constraints
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "referential_constraints" (
	"constraint_catalog" VARCHAR NULL COLLATE 'C',
	"constraint_schema" VARCHAR NULL COLLATE 'C',
	"constraint_name" VARCHAR NULL COLLATE 'C',
	"unique_constraint_catalog" VARCHAR NULL COLLATE 'C',
	"unique_constraint_schema" VARCHAR NULL COLLATE 'C',
	"unique_constraint_name" VARCHAR NULL COLLATE 'C',
	"match_option" VARCHAR NULL COLLATE 'C',
	"update_rule" VARCHAR NULL COLLATE 'C',
	"delete_rule" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.role_column_grants
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "role_column_grants" (
	"grantor" VARCHAR NULL COLLATE 'C',
	"grantee" VARCHAR NULL COLLATE 'C',
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"column_name" VARCHAR NULL COLLATE 'C',
	"privilege_type" VARCHAR NULL COLLATE 'C',
	"is_grantable" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.role_routine_grants
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "role_routine_grants" (
	"grantor" VARCHAR NULL COLLATE 'C',
	"grantee" VARCHAR NULL COLLATE 'C',
	"specific_catalog" VARCHAR NULL COLLATE 'C',
	"specific_schema" VARCHAR NULL COLLATE 'C',
	"specific_name" VARCHAR NULL COLLATE 'C',
	"routine_catalog" VARCHAR NULL COLLATE 'C',
	"routine_schema" VARCHAR NULL COLLATE 'C',
	"routine_name" VARCHAR NULL COLLATE 'C',
	"privilege_type" VARCHAR NULL COLLATE 'C',
	"is_grantable" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.role_table_grants
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "role_table_grants" (
	"grantor" VARCHAR NULL COLLATE 'C',
	"grantee" VARCHAR NULL COLLATE 'C',
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"privilege_type" VARCHAR NULL COLLATE 'C',
	"is_grantable" VARCHAR(3) NULL COLLATE 'C',
	"with_hierarchy" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.role_udt_grants
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "role_udt_grants" (
	"grantor" VARCHAR NULL COLLATE 'C',
	"grantee" VARCHAR NULL COLLATE 'C',
	"udt_catalog" VARCHAR NULL COLLATE 'C',
	"udt_schema" VARCHAR NULL COLLATE 'C',
	"udt_name" VARCHAR NULL COLLATE 'C',
	"privilege_type" VARCHAR NULL COLLATE 'C',
	"is_grantable" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.role_usage_grants
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "role_usage_grants" (
	"grantor" VARCHAR NULL COLLATE 'C',
	"grantee" VARCHAR NULL COLLATE 'C',
	"object_catalog" VARCHAR NULL COLLATE 'C',
	"object_schema" VARCHAR NULL COLLATE 'C',
	"object_name" VARCHAR NULL COLLATE 'C',
	"object_type" VARCHAR NULL COLLATE 'C',
	"privilege_type" VARCHAR NULL COLLATE 'C',
	"is_grantable" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.routines
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "routines" (
	"specific_catalog" VARCHAR NULL COLLATE 'C',
	"specific_schema" VARCHAR NULL COLLATE 'C',
	"specific_name" VARCHAR NULL COLLATE 'C',
	"routine_catalog" VARCHAR NULL COLLATE 'C',
	"routine_schema" VARCHAR NULL COLLATE 'C',
	"routine_name" VARCHAR NULL COLLATE 'C',
	"routine_type" VARCHAR NULL COLLATE 'C',
	"module_catalog" VARCHAR NULL COLLATE 'C',
	"module_schema" VARCHAR NULL COLLATE 'C',
	"module_name" VARCHAR NULL COLLATE 'C',
	"udt_catalog" VARCHAR NULL COLLATE 'C',
	"udt_schema" VARCHAR NULL COLLATE 'C',
	"udt_name" VARCHAR NULL COLLATE 'C',
	"data_type" VARCHAR NULL COLLATE 'C',
	"character_maximum_length" INTEGER NULL,
	"character_octet_length" INTEGER NULL,
	"character_set_catalog" VARCHAR NULL COLLATE 'C',
	"character_set_schema" VARCHAR NULL COLLATE 'C',
	"character_set_name" VARCHAR NULL COLLATE 'C',
	"collation_catalog" VARCHAR NULL COLLATE 'C',
	"collation_schema" VARCHAR NULL COLLATE 'C',
	"collation_name" VARCHAR NULL COLLATE 'C',
	"numeric_precision" INTEGER NULL,
	"numeric_precision_radix" INTEGER NULL,
	"numeric_scale" INTEGER NULL,
	"datetime_precision" INTEGER NULL,
	"interval_type" VARCHAR NULL COLLATE 'C',
	"interval_precision" INTEGER NULL,
	"type_udt_catalog" VARCHAR NULL COLLATE 'C',
	"type_udt_schema" VARCHAR NULL COLLATE 'C',
	"type_udt_name" VARCHAR NULL COLLATE 'C',
	"scope_catalog" VARCHAR NULL COLLATE 'C',
	"scope_schema" VARCHAR NULL COLLATE 'C',
	"scope_name" VARCHAR NULL COLLATE 'C',
	"maximum_cardinality" INTEGER NULL,
	"dtd_identifier" VARCHAR NULL COLLATE 'C',
	"routine_body" VARCHAR NULL COLLATE 'C',
	"routine_definition" VARCHAR NULL COLLATE 'C',
	"external_name" VARCHAR NULL COLLATE 'C',
	"external_language" VARCHAR NULL COLLATE 'C',
	"parameter_style" VARCHAR NULL COLLATE 'C',
	"is_deterministic" VARCHAR(3) NULL COLLATE 'C',
	"sql_data_access" VARCHAR NULL COLLATE 'C',
	"is_null_call" VARCHAR(3) NULL COLLATE 'C',
	"sql_path" VARCHAR NULL COLLATE 'C',
	"schema_level_routine" VARCHAR(3) NULL COLLATE 'C',
	"max_dynamic_result_sets" INTEGER NULL,
	"is_user_defined_cast" VARCHAR(3) NULL COLLATE 'C',
	"is_implicitly_invocable" VARCHAR(3) NULL COLLATE 'C',
	"security_type" VARCHAR NULL COLLATE 'C',
	"to_sql_specific_catalog" VARCHAR NULL COLLATE 'C',
	"to_sql_specific_schema" VARCHAR NULL COLLATE 'C',
	"to_sql_specific_name" VARCHAR NULL COLLATE 'C',
	"as_locator" VARCHAR(3) NULL COLLATE 'C',
	"created" TIMESTAMPTZ NULL,
	"last_altered" TIMESTAMPTZ NULL,
	"new_savepoint_level" VARCHAR(3) NULL COLLATE 'C',
	"is_udt_dependent" VARCHAR(3) NULL COLLATE 'C',
	"result_cast_from_data_type" VARCHAR NULL COLLATE 'C',
	"result_cast_as_locator" VARCHAR(3) NULL COLLATE 'C',
	"result_cast_char_max_length" INTEGER NULL,
	"result_cast_char_octet_length" INTEGER NULL,
	"result_cast_char_set_catalog" VARCHAR NULL COLLATE 'C',
	"result_cast_char_set_schema" VARCHAR NULL COLLATE 'C',
	"result_cast_char_set_name" VARCHAR NULL COLLATE 'C',
	"result_cast_collation_catalog" VARCHAR NULL COLLATE 'C',
	"result_cast_collation_schema" VARCHAR NULL COLLATE 'C',
	"result_cast_collation_name" VARCHAR NULL COLLATE 'C',
	"result_cast_numeric_precision" INTEGER NULL,
	"result_cast_numeric_precision_radix" INTEGER NULL,
	"result_cast_numeric_scale" INTEGER NULL,
	"result_cast_datetime_precision" INTEGER NULL,
	"result_cast_interval_type" VARCHAR NULL COLLATE 'C',
	"result_cast_interval_precision" INTEGER NULL,
	"result_cast_type_udt_catalog" VARCHAR NULL COLLATE 'C',
	"result_cast_type_udt_schema" VARCHAR NULL COLLATE 'C',
	"result_cast_type_udt_name" VARCHAR NULL COLLATE 'C',
	"result_cast_scope_catalog" VARCHAR NULL COLLATE 'C',
	"result_cast_scope_schema" VARCHAR NULL COLLATE 'C',
	"result_cast_scope_name" VARCHAR NULL COLLATE 'C',
	"result_cast_maximum_cardinality" INTEGER NULL,
	"result_cast_dtd_identifier" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.routine_column_usage
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "routine_column_usage" (
	"specific_catalog" VARCHAR NULL COLLATE 'C',
	"specific_schema" VARCHAR NULL COLLATE 'C',
	"specific_name" VARCHAR NULL COLLATE 'C',
	"routine_catalog" VARCHAR NULL COLLATE 'C',
	"routine_schema" VARCHAR NULL COLLATE 'C',
	"routine_name" VARCHAR NULL COLLATE 'C',
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"column_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.routine_privileges
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "routine_privileges" (
	"grantor" VARCHAR NULL COLLATE 'C',
	"grantee" VARCHAR NULL COLLATE 'C',
	"specific_catalog" VARCHAR NULL COLLATE 'C',
	"specific_schema" VARCHAR NULL COLLATE 'C',
	"specific_name" VARCHAR NULL COLLATE 'C',
	"routine_catalog" VARCHAR NULL COLLATE 'C',
	"routine_schema" VARCHAR NULL COLLATE 'C',
	"routine_name" VARCHAR NULL COLLATE 'C',
	"privilege_type" VARCHAR NULL COLLATE 'C',
	"is_grantable" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.routine_routine_usage
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "routine_routine_usage" (
	"specific_catalog" VARCHAR NULL COLLATE 'C',
	"specific_schema" VARCHAR NULL COLLATE 'C',
	"specific_name" VARCHAR NULL COLLATE 'C',
	"routine_catalog" VARCHAR NULL COLLATE 'C',
	"routine_schema" VARCHAR NULL COLLATE 'C',
	"routine_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.routine_sequence_usage
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "routine_sequence_usage" (
	"specific_catalog" VARCHAR NULL COLLATE 'C',
	"specific_schema" VARCHAR NULL COLLATE 'C',
	"specific_name" VARCHAR NULL COLLATE 'C',
	"routine_catalog" VARCHAR NULL COLLATE 'C',
	"routine_schema" VARCHAR NULL COLLATE 'C',
	"routine_name" VARCHAR NULL COLLATE 'C',
	"sequence_catalog" VARCHAR NULL COLLATE 'C',
	"sequence_schema" VARCHAR NULL COLLATE 'C',
	"sequence_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.routine_table_usage
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "routine_table_usage" (
	"specific_catalog" VARCHAR NULL COLLATE 'C',
	"specific_schema" VARCHAR NULL COLLATE 'C',
	"specific_name" VARCHAR NULL COLLATE 'C',
	"routine_catalog" VARCHAR NULL COLLATE 'C',
	"routine_schema" VARCHAR NULL COLLATE 'C',
	"routine_name" VARCHAR NULL COLLATE 'C',
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.schemata
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "schemata" (
	"catalog_name" VARCHAR NULL COLLATE 'C',
	"schema_name" VARCHAR NULL COLLATE 'C',
	"schema_owner" VARCHAR NULL COLLATE 'C',
	"default_character_set_catalog" VARCHAR NULL COLLATE 'C',
	"default_character_set_schema" VARCHAR NULL COLLATE 'C',
	"default_character_set_name" VARCHAR NULL COLLATE 'C',
	"sql_path" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.sequences
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "sequences" (
	"sequence_catalog" VARCHAR NULL COLLATE 'C',
	"sequence_schema" VARCHAR NULL COLLATE 'C',
	"sequence_name" VARCHAR NULL COLLATE 'C',
	"data_type" VARCHAR NULL COLLATE 'C',
	"numeric_precision" INTEGER NULL,
	"numeric_precision_radix" INTEGER NULL,
	"numeric_scale" INTEGER NULL,
	"start_value" VARCHAR NULL COLLATE 'C',
	"minimum_value" VARCHAR NULL COLLATE 'C',
	"maximum_value" VARCHAR NULL COLLATE 'C',
	"increment" VARCHAR NULL COLLATE 'C',
	"cycle_option" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para tabela information_schema.sql_features
CREATE TABLE IF NOT EXISTS "sql_features" (
	"feature_id" VARCHAR NULL DEFAULT NULL COLLATE 'C',
	"feature_name" VARCHAR NULL DEFAULT NULL COLLATE 'C',
	"sub_feature_id" VARCHAR NULL DEFAULT NULL COLLATE 'C',
	"sub_feature_name" VARCHAR NULL DEFAULT NULL COLLATE 'C',
	"is_supported" VARCHAR(3) NULL DEFAULT NULL COLLATE 'C',
	"is_verified_by" VARCHAR NULL DEFAULT NULL COLLATE 'C',
	"comments" VARCHAR NULL DEFAULT NULL COLLATE 'C'
);

-- Copiando dados para a tabela information_schema.sql_features: 713 rows
DELETE FROM "sql_features";
/*!40000 ALTER TABLE "sql_features" DISABLE KEYS */;
-- Copiando estrutura para tabela information_schema.sql_implementation_info
CREATE TABLE IF NOT EXISTS "sql_implementation_info" (
	"implementation_info_id" VARCHAR NULL DEFAULT NULL COLLATE 'C',
	"implementation_info_name" VARCHAR NULL DEFAULT NULL COLLATE 'C',
	"integer_value" INTEGER NULL DEFAULT NULL,
	"character_value" VARCHAR NULL DEFAULT NULL COLLATE 'C',
	"comments" VARCHAR NULL DEFAULT NULL COLLATE 'C'
);

-- Copiando dados para a tabela information_schema.sql_implementation_info: 12 rows
DELETE FROM "sql_implementation_info";
/*!40000 ALTER TABLE "sql_implementation_info" DISABLE KEYS */;
-- Copiando estrutura para tabela information_schema.sql_parts
CREATE TABLE IF NOT EXISTS "sql_parts" (
	"feature_id" VARCHAR NULL DEFAULT NULL COLLATE 'C',
	"feature_name" VARCHAR NULL DEFAULT NULL COLLATE 'C',
	"is_supported" VARCHAR(3) NULL DEFAULT NULL COLLATE 'C',
	"is_verified_by" VARCHAR NULL DEFAULT NULL COLLATE 'C',
	"comments" VARCHAR NULL DEFAULT NULL COLLATE 'C'
);

-- Copiando dados para a tabela information_schema.sql_parts: 10 rows
DELETE FROM "sql_parts";
/*!40000 ALTER TABLE "sql_parts" DISABLE KEYS */;
-- Copiando estrutura para tabela information_schema.sql_sizing
CREATE TABLE IF NOT EXISTS "sql_sizing" (
	"sizing_id" INTEGER NULL DEFAULT NULL,
	"sizing_name" VARCHAR NULL DEFAULT NULL COLLATE 'C',
	"supported_value" INTEGER NULL DEFAULT NULL,
	"comments" VARCHAR NULL DEFAULT NULL COLLATE 'C'
);

-- Copiando dados para a tabela information_schema.sql_sizing: 23 rows
DELETE FROM "sql_sizing";
/*!40000 ALTER TABLE "sql_sizing" DISABLE KEYS */;
-- Copiando estrutura para view information_schema.tables
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "tables" (
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"table_type" VARCHAR NULL COLLATE 'C',
	"self_referencing_column_name" VARCHAR NULL COLLATE 'C',
	"reference_generation" VARCHAR NULL COLLATE 'C',
	"user_defined_type_catalog" VARCHAR NULL COLLATE 'C',
	"user_defined_type_schema" VARCHAR NULL COLLATE 'C',
	"user_defined_type_name" VARCHAR NULL COLLATE 'C',
	"is_insertable_into" VARCHAR(3) NULL COLLATE 'C',
	"is_typed" VARCHAR(3) NULL COLLATE 'C',
	"commit_action" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.table_constraints
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "table_constraints" (
	"constraint_catalog" VARCHAR NULL COLLATE 'C',
	"constraint_schema" VARCHAR NULL COLLATE 'C',
	"constraint_name" VARCHAR NULL COLLATE 'C',
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"constraint_type" VARCHAR NULL COLLATE 'C',
	"is_deferrable" VARCHAR(3) NULL COLLATE 'C',
	"initially_deferred" VARCHAR(3) NULL COLLATE 'C',
	"enforced" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.table_privileges
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "table_privileges" (
	"grantor" VARCHAR NULL COLLATE 'C',
	"grantee" VARCHAR NULL COLLATE 'C',
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"privilege_type" VARCHAR NULL COLLATE 'C',
	"is_grantable" VARCHAR(3) NULL COLLATE 'C',
	"with_hierarchy" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.transforms
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "transforms" (
	"udt_catalog" VARCHAR NULL COLLATE 'C',
	"udt_schema" VARCHAR NULL COLLATE 'C',
	"udt_name" VARCHAR NULL COLLATE 'C',
	"specific_catalog" VARCHAR NULL COLLATE 'C',
	"specific_schema" VARCHAR NULL COLLATE 'C',
	"specific_name" VARCHAR NULL COLLATE 'C',
	"group_name" VARCHAR NULL COLLATE 'C',
	"transform_type" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.triggered_update_columns
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "triggered_update_columns" (
	"trigger_catalog" VARCHAR NULL COLLATE 'C',
	"trigger_schema" VARCHAR NULL COLLATE 'C',
	"trigger_name" VARCHAR NULL COLLATE 'C',
	"event_object_catalog" VARCHAR NULL COLLATE 'C',
	"event_object_schema" VARCHAR NULL COLLATE 'C',
	"event_object_table" VARCHAR NULL COLLATE 'C',
	"event_object_column" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.triggers
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "triggers" (
	"trigger_catalog" VARCHAR NULL COLLATE 'C',
	"trigger_schema" VARCHAR NULL COLLATE 'C',
	"trigger_name" VARCHAR NULL COLLATE 'C',
	"event_manipulation" VARCHAR NULL COLLATE 'C',
	"event_object_catalog" VARCHAR NULL COLLATE 'C',
	"event_object_schema" VARCHAR NULL COLLATE 'C',
	"event_object_table" VARCHAR NULL COLLATE 'C',
	"action_order" INTEGER NULL,
	"action_condition" VARCHAR NULL COLLATE 'C',
	"action_statement" VARCHAR NULL COLLATE 'C',
	"action_orientation" VARCHAR NULL COLLATE 'C',
	"action_timing" VARCHAR NULL COLLATE 'C',
	"action_reference_old_table" VARCHAR NULL COLLATE 'C',
	"action_reference_new_table" VARCHAR NULL COLLATE 'C',
	"action_reference_old_row" VARCHAR NULL COLLATE 'C',
	"action_reference_new_row" VARCHAR NULL COLLATE 'C',
	"created" TIMESTAMPTZ NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.udt_privileges
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "udt_privileges" (
	"grantor" VARCHAR NULL COLLATE 'C',
	"grantee" VARCHAR NULL COLLATE 'C',
	"udt_catalog" VARCHAR NULL COLLATE 'C',
	"udt_schema" VARCHAR NULL COLLATE 'C',
	"udt_name" VARCHAR NULL COLLATE 'C',
	"privilege_type" VARCHAR NULL COLLATE 'C',
	"is_grantable" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.usage_privileges
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "usage_privileges" (
	"grantor" VARCHAR NULL COLLATE 'C',
	"grantee" VARCHAR NULL COLLATE 'C',
	"object_catalog" VARCHAR NULL COLLATE 'C',
	"object_schema" VARCHAR NULL COLLATE 'C',
	"object_name" VARCHAR NULL COLLATE 'C',
	"object_type" VARCHAR NULL COLLATE 'C',
	"privilege_type" VARCHAR NULL COLLATE 'C',
	"is_grantable" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.user_defined_types
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "user_defined_types" (
	"user_defined_type_catalog" VARCHAR NULL COLLATE 'C',
	"user_defined_type_schema" VARCHAR NULL COLLATE 'C',
	"user_defined_type_name" VARCHAR NULL COLLATE 'C',
	"user_defined_type_category" VARCHAR NULL COLLATE 'C',
	"is_instantiable" VARCHAR(3) NULL COLLATE 'C',
	"is_final" VARCHAR(3) NULL COLLATE 'C',
	"ordering_form" VARCHAR NULL COLLATE 'C',
	"ordering_category" VARCHAR NULL COLLATE 'C',
	"ordering_routine_catalog" VARCHAR NULL COLLATE 'C',
	"ordering_routine_schema" VARCHAR NULL COLLATE 'C',
	"ordering_routine_name" VARCHAR NULL COLLATE 'C',
	"reference_type" VARCHAR NULL COLLATE 'C',
	"data_type" VARCHAR NULL COLLATE 'C',
	"character_maximum_length" INTEGER NULL,
	"character_octet_length" INTEGER NULL,
	"character_set_catalog" VARCHAR NULL COLLATE 'C',
	"character_set_schema" VARCHAR NULL COLLATE 'C',
	"character_set_name" VARCHAR NULL COLLATE 'C',
	"collation_catalog" VARCHAR NULL COLLATE 'C',
	"collation_schema" VARCHAR NULL COLLATE 'C',
	"collation_name" VARCHAR NULL COLLATE 'C',
	"numeric_precision" INTEGER NULL,
	"numeric_precision_radix" INTEGER NULL,
	"numeric_scale" INTEGER NULL,
	"datetime_precision" INTEGER NULL,
	"interval_type" VARCHAR NULL COLLATE 'C',
	"interval_precision" INTEGER NULL,
	"source_dtd_identifier" VARCHAR NULL COLLATE 'C',
	"ref_dtd_identifier" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.user_mappings
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "user_mappings" (
	"authorization_identifier" VARCHAR NULL COLLATE 'C',
	"foreign_server_catalog" VARCHAR NULL COLLATE 'C',
	"foreign_server_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.user_mapping_options
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "user_mapping_options" (
	"authorization_identifier" VARCHAR NULL COLLATE 'C',
	"foreign_server_catalog" VARCHAR NULL COLLATE 'C',
	"foreign_server_name" VARCHAR NULL COLLATE 'C',
	"option_name" VARCHAR NULL COLLATE 'C',
	"option_value" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.views
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "views" (
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"view_definition" VARCHAR NULL COLLATE 'C',
	"check_option" VARCHAR NULL COLLATE 'C',
	"is_updatable" VARCHAR(3) NULL COLLATE 'C',
	"is_insertable_into" VARCHAR(3) NULL COLLATE 'C',
	"is_trigger_updatable" VARCHAR(3) NULL COLLATE 'C',
	"is_trigger_deletable" VARCHAR(3) NULL COLLATE 'C',
	"is_trigger_insertable_into" VARCHAR(3) NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.view_column_usage
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "view_column_usage" (
	"view_catalog" VARCHAR NULL COLLATE 'C',
	"view_schema" VARCHAR NULL COLLATE 'C',
	"view_name" VARCHAR NULL COLLATE 'C',
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"column_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.view_routine_usage
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "view_routine_usage" (
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C',
	"specific_catalog" VARCHAR NULL COLLATE 'C',
	"specific_schema" VARCHAR NULL COLLATE 'C',
	"specific_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema.view_table_usage
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "view_table_usage" (
	"view_catalog" VARCHAR NULL COLLATE 'C',
	"view_schema" VARCHAR NULL COLLATE 'C',
	"view_name" VARCHAR NULL COLLATE 'C',
	"table_catalog" VARCHAR NULL COLLATE 'C',
	"table_schema" VARCHAR NULL COLLATE 'C',
	"table_name" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema._pg_foreign_data_wrappers
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "_pg_foreign_data_wrappers" (
	"oid" INTEGER NULL,
	"fdwowner" INTEGER NULL,
	"fdwoptions" UNKNOWN NULL COLLATE 'C',
	"foreign_data_wrapper_catalog" VARCHAR NULL COLLATE 'C',
	"foreign_data_wrapper_name" VARCHAR NULL COLLATE 'C',
	"authorization_identifier" VARCHAR NULL COLLATE 'C',
	"foreign_data_wrapper_language" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema._pg_foreign_servers
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "_pg_foreign_servers" (
	"oid" INTEGER NULL,
	"srvoptions" UNKNOWN NULL COLLATE 'C',
	"foreign_server_catalog" VARCHAR NULL COLLATE 'C',
	"foreign_server_name" VARCHAR NULL COLLATE 'C',
	"foreign_data_wrapper_catalog" VARCHAR NULL COLLATE 'C',
	"foreign_data_wrapper_name" VARCHAR NULL COLLATE 'C',
	"foreign_server_type" VARCHAR NULL COLLATE 'C',
	"foreign_server_version" VARCHAR NULL COLLATE 'C',
	"authorization_identifier" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema._pg_foreign_tables
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "_pg_foreign_tables" (
	"foreign_table_catalog" VARCHAR NULL COLLATE 'C',
	"foreign_table_schema" VARCHAR NULL COLLATE 'C',
	"foreign_table_name" VARCHAR NULL COLLATE 'C',
	"ftoptions" UNKNOWN NULL COLLATE 'C',
	"foreign_server_catalog" VARCHAR NULL COLLATE 'C',
	"foreign_server_name" VARCHAR NULL COLLATE 'C',
	"authorization_identifier" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema._pg_foreign_table_columns
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "_pg_foreign_table_columns" (
	"nspname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"attname" VARCHAR NULL COLLATE 'C',
	"attfdwoptions" UNKNOWN NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view information_schema._pg_user_mappings
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "_pg_user_mappings" (
	"oid" INTEGER NULL,
	"umoptions" UNKNOWN NULL COLLATE 'C',
	"umuser" INTEGER NULL,
	"authorization_identifier" VARCHAR NULL COLLATE 'C',
	"foreign_server_catalog" VARCHAR NULL COLLATE 'C',
	"foreign_server_name" VARCHAR NULL COLLATE 'C',
	"srvowner" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "administrable_role_authorizations";
CREATE VIEW "administrable_role_authorizations" AS  SELECT applicable_roles.grantee,
    applicable_roles.role_name,
    applicable_roles.is_grantable
   FROM information_schema.applicable_roles
  WHERE ((applicable_roles.is_grantable)::text = 'YES'::text);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "applicable_roles";
CREATE VIEW "applicable_roles" AS  SELECT (a.rolname)::information_schema.sql_identifier AS grantee,
    (b.rolname)::information_schema.sql_identifier AS role_name,
    (
        CASE
            WHEN m.admin_option THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_grantable
   FROM ((( SELECT pg_auth_members.member,
            pg_auth_members.roleid,
            pg_auth_members.admin_option
           FROM pg_auth_members
        UNION
         SELECT pg_database.datdba,
            pg_authid.oid,
            false AS bool
           FROM pg_database,
            pg_authid
          WHERE ((pg_database.datname = current_database()) AND (pg_authid.rolname = 'pg_database_owner'::name))) m
     JOIN pg_authid a ON ((m.member = a.oid)))
     JOIN pg_authid b ON ((m.roleid = b.oid)))
  WHERE pg_has_role(a.oid, 'USAGE'::text);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "attributes";
CREATE VIEW "attributes" AS  SELECT (current_database())::information_schema.sql_identifier AS udt_catalog,
    (nc.nspname)::information_schema.sql_identifier AS udt_schema,
    (c.relname)::information_schema.sql_identifier AS udt_name,
    (a.attname)::information_schema.sql_identifier AS attribute_name,
    (a.attnum)::information_schema.cardinal_number AS ordinal_position,
    (pg_get_expr(ad.adbin, ad.adrelid))::information_schema.character_data AS attribute_default,
    (
        CASE
            WHEN (a.attnotnull OR ((t.typtype = 'd'::"char") AND t.typnotnull)) THEN 'NO'::text
            ELSE 'YES'::text
        END)::information_schema.yes_or_no AS is_nullable,
    (
        CASE
            WHEN ((t.typelem <> (0)::oid) AND (t.typlen = '-1'::integer)) THEN 'ARRAY'::text
            WHEN (nt.nspname = 'pg_catalog'::name) THEN format_type(a.atttypid, NULL::integer)
            ELSE 'USER-DEFINED'::text
        END)::information_schema.character_data AS data_type,
    (information_schema._pg_char_max_length(information_schema._pg_truetypid(a.*, t.*), information_schema._pg_truetypmod(a.*, t.*)))::information_schema.cardinal_number AS character_maximum_length,
    (information_schema._pg_char_octet_length(information_schema._pg_truetypid(a.*, t.*), information_schema._pg_truetypmod(a.*, t.*)))::information_schema.cardinal_number AS character_octet_length,
    (NULL::name)::information_schema.sql_identifier AS character_set_catalog,
    (NULL::name)::information_schema.sql_identifier AS character_set_schema,
    (NULL::name)::information_schema.sql_identifier AS character_set_name,
    (
        CASE
            WHEN (nco.nspname IS NOT NULL) THEN current_database()
            ELSE NULL::name
        END)::information_schema.sql_identifier AS collation_catalog,
    (nco.nspname)::information_schema.sql_identifier AS collation_schema,
    (co.collname)::information_schema.sql_identifier AS collation_name,
    (information_schema._pg_numeric_precision(information_schema._pg_truetypid(a.*, t.*), information_schema._pg_truetypmod(a.*, t.*)))::information_schema.cardinal_number AS numeric_precision,
    (information_schema._pg_numeric_precision_radix(information_schema._pg_truetypid(a.*, t.*), information_schema._pg_truetypmod(a.*, t.*)))::information_schema.cardinal_number AS numeric_precision_radix,
    (information_schema._pg_numeric_scale(information_schema._pg_truetypid(a.*, t.*), information_schema._pg_truetypmod(a.*, t.*)))::information_schema.cardinal_number AS numeric_scale,
    (information_schema._pg_datetime_precision(information_schema._pg_truetypid(a.*, t.*), information_schema._pg_truetypmod(a.*, t.*)))::information_schema.cardinal_number AS datetime_precision,
    (information_schema._pg_interval_type(information_schema._pg_truetypid(a.*, t.*), information_schema._pg_truetypmod(a.*, t.*)))::information_schema.character_data AS interval_type,
    (NULL::integer)::information_schema.cardinal_number AS interval_precision,
    (current_database())::information_schema.sql_identifier AS attribute_udt_catalog,
    (nt.nspname)::information_schema.sql_identifier AS attribute_udt_schema,
    (t.typname)::information_schema.sql_identifier AS attribute_udt_name,
    (NULL::name)::information_schema.sql_identifier AS scope_catalog,
    (NULL::name)::information_schema.sql_identifier AS scope_schema,
    (NULL::name)::information_schema.sql_identifier AS scope_name,
    (NULL::integer)::information_schema.cardinal_number AS maximum_cardinality,
    (a.attnum)::information_schema.sql_identifier AS dtd_identifier,
    ('NO'::character varying)::information_schema.yes_or_no AS is_derived_reference_attribute
   FROM ((((pg_attribute a
     LEFT JOIN pg_attrdef ad ON (((a.attrelid = ad.adrelid) AND (a.attnum = ad.adnum))))
     JOIN (pg_class c
     JOIN pg_namespace nc ON ((c.relnamespace = nc.oid))) ON ((a.attrelid = c.oid)))
     JOIN (pg_type t
     JOIN pg_namespace nt ON ((t.typnamespace = nt.oid))) ON ((a.atttypid = t.oid)))
     LEFT JOIN (pg_collation co
     JOIN pg_namespace nco ON ((co.collnamespace = nco.oid))) ON (((a.attcollation = co.oid) AND ((nco.nspname <> 'pg_catalog'::name) OR (co.collname <> 'default'::name)))))
  WHERE ((a.attnum > 0) AND (NOT a.attisdropped) AND (c.relkind = 'c'::"char") AND (pg_has_role(c.relowner, 'USAGE'::text) OR has_type_privilege(c.reltype, 'USAGE'::text)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "character_sets";
CREATE VIEW "character_sets" AS  SELECT (NULL::name)::information_schema.sql_identifier AS character_set_catalog,
    (NULL::name)::information_schema.sql_identifier AS character_set_schema,
    (getdatabaseencoding())::information_schema.sql_identifier AS character_set_name,
    (
        CASE
            WHEN (getdatabaseencoding() = 'UTF8'::name) THEN 'UCS'::name
            ELSE getdatabaseencoding()
        END)::information_schema.sql_identifier AS character_repertoire,
    (getdatabaseencoding())::information_schema.sql_identifier AS form_of_use,
    (current_database())::information_schema.sql_identifier AS default_collate_catalog,
    (nc.nspname)::information_schema.sql_identifier AS default_collate_schema,
    (c.collname)::information_schema.sql_identifier AS default_collate_name
   FROM (pg_database d
     LEFT JOIN (pg_collation c
     JOIN pg_namespace nc ON ((c.collnamespace = nc.oid))) ON (((d.datcollate = c.collcollate) AND (d.datctype = c.collctype))))
  WHERE (d.datname = current_database())
  ORDER BY (char_length((c.collname)::text)) DESC, c.collname
 LIMIT 1;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "check_constraints";
CREATE VIEW "check_constraints" AS  SELECT (current_database())::information_schema.sql_identifier AS constraint_catalog,
    (rs.nspname)::information_schema.sql_identifier AS constraint_schema,
    (con.conname)::information_schema.sql_identifier AS constraint_name,
    (SUBSTRING(pg_get_constraintdef(con.oid) FROM 7))::information_schema.character_data AS check_clause
   FROM (((pg_constraint con
     LEFT JOIN pg_namespace rs ON ((rs.oid = con.connamespace)))
     LEFT JOIN pg_class c ON ((c.oid = con.conrelid)))
     LEFT JOIN pg_type t ON ((t.oid = con.contypid)))
  WHERE (pg_has_role(COALESCE(c.relowner, t.typowner), 'USAGE'::text) AND (con.contype = 'c'::"char"))
UNION
 SELECT (current_database())::information_schema.sql_identifier AS constraint_catalog,
    (n.nspname)::information_schema.sql_identifier AS constraint_schema,
    (((((((n.oid)::text || '_'::text) || (r.oid)::text) || '_'::text) || (a.attnum)::text) || '_not_null'::text))::information_schema.sql_identifier AS constraint_name,
    (((a.attname)::text || ' IS NOT NULL'::text))::information_schema.character_data AS check_clause
   FROM pg_namespace n,
    pg_class r,
    pg_attribute a
  WHERE ((n.oid = r.relnamespace) AND (r.oid = a.attrelid) AND (a.attnum > 0) AND (NOT a.attisdropped) AND a.attnotnull AND (r.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])) AND pg_has_role(r.relowner, 'USAGE'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "check_constraint_routine_usage";
CREATE VIEW "check_constraint_routine_usage" AS  SELECT DISTINCT (current_database())::information_schema.sql_identifier AS constraint_catalog,
    (nc.nspname)::information_schema.sql_identifier AS constraint_schema,
    (c.conname)::information_schema.sql_identifier AS constraint_name,
    (current_database())::information_schema.sql_identifier AS specific_catalog,
    (np.nspname)::information_schema.sql_identifier AS specific_schema,
    (nameconcatoid(p.proname, p.oid))::information_schema.sql_identifier AS specific_name
   FROM pg_namespace nc,
    pg_constraint c,
    pg_depend d,
    pg_proc p,
    pg_namespace np
  WHERE ((nc.oid = c.connamespace) AND (c.contype = 'c'::"char") AND (c.oid = d.objid) AND (d.classid = ('pg_constraint'::regclass)::oid) AND (d.refobjid = p.oid) AND (d.refclassid = ('pg_proc'::regclass)::oid) AND (p.pronamespace = np.oid) AND pg_has_role(p.proowner, 'USAGE'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "collations";
CREATE VIEW "collations" AS  SELECT (current_database())::information_schema.sql_identifier AS collation_catalog,
    (nc.nspname)::information_schema.sql_identifier AS collation_schema,
    (c.collname)::information_schema.sql_identifier AS collation_name,
    ('NO PAD'::character varying)::information_schema.character_data AS pad_attribute
   FROM pg_collation c,
    pg_namespace nc
  WHERE ((c.collnamespace = nc.oid) AND (c.collencoding = ANY (ARRAY['-1'::integer, ( SELECT pg_database.encoding
           FROM pg_database
          WHERE (pg_database.datname = current_database()))])));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "collation_character_set_applicability";
CREATE VIEW "collation_character_set_applicability" AS  SELECT (current_database())::information_schema.sql_identifier AS collation_catalog,
    (nc.nspname)::information_schema.sql_identifier AS collation_schema,
    (c.collname)::information_schema.sql_identifier AS collation_name,
    (NULL::name)::information_schema.sql_identifier AS character_set_catalog,
    (NULL::name)::information_schema.sql_identifier AS character_set_schema,
    (getdatabaseencoding())::information_schema.sql_identifier AS character_set_name
   FROM pg_collation c,
    pg_namespace nc
  WHERE ((c.collnamespace = nc.oid) AND (c.collencoding = ANY (ARRAY['-1'::integer, ( SELECT pg_database.encoding
           FROM pg_database
          WHERE (pg_database.datname = current_database()))])));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "columns";
CREATE VIEW "columns" AS  SELECT (current_database())::information_schema.sql_identifier AS table_catalog,
    (nc.nspname)::information_schema.sql_identifier AS table_schema,
    (c.relname)::information_schema.sql_identifier AS table_name,
    (a.attname)::information_schema.sql_identifier AS column_name,
    (a.attnum)::information_schema.cardinal_number AS ordinal_position,
    (
        CASE
            WHEN (a.attgenerated = ''::"char") THEN pg_get_expr(ad.adbin, ad.adrelid)
            ELSE NULL::text
        END)::information_schema.character_data AS column_default,
    (
        CASE
            WHEN (a.attnotnull OR ((t.typtype = 'd'::"char") AND t.typnotnull)) THEN 'NO'::text
            ELSE 'YES'::text
        END)::information_schema.yes_or_no AS is_nullable,
    (
        CASE
            WHEN (t.typtype = 'd'::"char") THEN
            CASE
                WHEN ((bt.typelem <> (0)::oid) AND (bt.typlen = '-1'::integer)) THEN 'ARRAY'::text
                WHEN (nbt.nspname = 'pg_catalog'::name) THEN format_type(t.typbasetype, NULL::integer)
                ELSE 'USER-DEFINED'::text
            END
            ELSE
            CASE
                WHEN ((t.typelem <> (0)::oid) AND (t.typlen = '-1'::integer)) THEN 'ARRAY'::text
                WHEN (nt.nspname = 'pg_catalog'::name) THEN format_type(a.atttypid, NULL::integer)
                ELSE 'USER-DEFINED'::text
            END
        END)::information_schema.character_data AS data_type,
    (information_schema._pg_char_max_length(information_schema._pg_truetypid(a.*, t.*), information_schema._pg_truetypmod(a.*, t.*)))::information_schema.cardinal_number AS character_maximum_length,
    (information_schema._pg_char_octet_length(information_schema._pg_truetypid(a.*, t.*), information_schema._pg_truetypmod(a.*, t.*)))::information_schema.cardinal_number AS character_octet_length,
    (information_schema._pg_numeric_precision(information_schema._pg_truetypid(a.*, t.*), information_schema._pg_truetypmod(a.*, t.*)))::information_schema.cardinal_number AS numeric_precision,
    (information_schema._pg_numeric_precision_radix(information_schema._pg_truetypid(a.*, t.*), information_schema._pg_truetypmod(a.*, t.*)))::information_schema.cardinal_number AS numeric_precision_radix,
    (information_schema._pg_numeric_scale(information_schema._pg_truetypid(a.*, t.*), information_schema._pg_truetypmod(a.*, t.*)))::information_schema.cardinal_number AS numeric_scale,
    (information_schema._pg_datetime_precision(information_schema._pg_truetypid(a.*, t.*), information_schema._pg_truetypmod(a.*, t.*)))::information_schema.cardinal_number AS datetime_precision,
    (information_schema._pg_interval_type(information_schema._pg_truetypid(a.*, t.*), information_schema._pg_truetypmod(a.*, t.*)))::information_schema.character_data AS interval_type,
    (NULL::integer)::information_schema.cardinal_number AS interval_precision,
    (NULL::name)::information_schema.sql_identifier AS character_set_catalog,
    (NULL::name)::information_schema.sql_identifier AS character_set_schema,
    (NULL::name)::information_schema.sql_identifier AS character_set_name,
    (
        CASE
            WHEN (nco.nspname IS NOT NULL) THEN current_database()
            ELSE NULL::name
        END)::information_schema.sql_identifier AS collation_catalog,
    (nco.nspname)::information_schema.sql_identifier AS collation_schema,
    (co.collname)::information_schema.sql_identifier AS collation_name,
    (
        CASE
            WHEN (t.typtype = 'd'::"char") THEN current_database()
            ELSE NULL::name
        END)::information_schema.sql_identifier AS domain_catalog,
    (
        CASE
            WHEN (t.typtype = 'd'::"char") THEN nt.nspname
            ELSE NULL::name
        END)::information_schema.sql_identifier AS domain_schema,
    (
        CASE
            WHEN (t.typtype = 'd'::"char") THEN t.typname
            ELSE NULL::name
        END)::information_schema.sql_identifier AS domain_name,
    (current_database())::information_schema.sql_identifier AS udt_catalog,
    (COALESCE(nbt.nspname, nt.nspname))::information_schema.sql_identifier AS udt_schema,
    (COALESCE(bt.typname, t.typname))::information_schema.sql_identifier AS udt_name,
    (NULL::name)::information_schema.sql_identifier AS scope_catalog,
    (NULL::name)::information_schema.sql_identifier AS scope_schema,
    (NULL::name)::information_schema.sql_identifier AS scope_name,
    (NULL::integer)::information_schema.cardinal_number AS maximum_cardinality,
    (a.attnum)::information_schema.sql_identifier AS dtd_identifier,
    ('NO'::character varying)::information_schema.yes_or_no AS is_self_referencing,
    (
        CASE
            WHEN (a.attidentity = ANY (ARRAY['a'::"char", 'd'::"char"])) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_identity,
    (
        CASE a.attidentity
            WHEN 'a'::"char" THEN 'ALWAYS'::text
            WHEN 'd'::"char" THEN 'BY DEFAULT'::text
            ELSE NULL::text
        END)::information_schema.character_data AS identity_generation,
    (seq.seqstart)::information_schema.character_data AS identity_start,
    (seq.seqincrement)::information_schema.character_data AS identity_increment,
    (seq.seqmax)::information_schema.character_data AS identity_maximum,
    (seq.seqmin)::information_schema.character_data AS identity_minimum,
    (
        CASE
            WHEN seq.seqcycle THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS identity_cycle,
    (
        CASE
            WHEN (a.attgenerated <> ''::"char") THEN 'ALWAYS'::text
            ELSE 'NEVER'::text
        END)::information_schema.character_data AS is_generated,
    (
        CASE
            WHEN (a.attgenerated <> ''::"char") THEN pg_get_expr(ad.adbin, ad.adrelid)
            ELSE NULL::text
        END)::information_schema.character_data AS generation_expression,
    (
        CASE
            WHEN ((c.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])) OR ((c.relkind = ANY (ARRAY['v'::"char", 'f'::"char"])) AND pg_column_is_updatable((c.oid)::regclass, a.attnum, false))) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_updatable
   FROM ((((((pg_attribute a
     LEFT JOIN pg_attrdef ad ON (((a.attrelid = ad.adrelid) AND (a.attnum = ad.adnum))))
     JOIN (pg_class c
     JOIN pg_namespace nc ON ((c.relnamespace = nc.oid))) ON ((a.attrelid = c.oid)))
     JOIN (pg_type t
     JOIN pg_namespace nt ON ((t.typnamespace = nt.oid))) ON ((a.atttypid = t.oid)))
     LEFT JOIN (pg_type bt
     JOIN pg_namespace nbt ON ((bt.typnamespace = nbt.oid))) ON (((t.typtype = 'd'::"char") AND (t.typbasetype = bt.oid))))
     LEFT JOIN (pg_collation co
     JOIN pg_namespace nco ON ((co.collnamespace = nco.oid))) ON (((a.attcollation = co.oid) AND ((nco.nspname <> 'pg_catalog'::name) OR (co.collname <> 'default'::name)))))
     LEFT JOIN (pg_depend dep
     JOIN pg_sequence seq ON (((dep.classid = ('pg_class'::regclass)::oid) AND (dep.objid = seq.seqrelid) AND (dep.deptype = 'i'::"char")))) ON (((dep.refclassid = ('pg_class'::regclass)::oid) AND (dep.refobjid = c.oid) AND (dep.refobjsubid = a.attnum))))
  WHERE ((NOT pg_is_other_temp_schema(nc.oid)) AND (a.attnum > 0) AND (NOT a.attisdropped) AND (c.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'f'::"char", 'p'::"char"])) AND (pg_has_role(c.relowner, 'USAGE'::text) OR has_column_privilege(c.oid, a.attnum, 'SELECT, INSERT, UPDATE, REFERENCES'::text)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "column_column_usage";
CREATE VIEW "column_column_usage" AS  SELECT DISTINCT (current_database())::information_schema.sql_identifier AS table_catalog,
    (n.nspname)::information_schema.sql_identifier AS table_schema,
    (c.relname)::information_schema.sql_identifier AS table_name,
    (ac.attname)::information_schema.sql_identifier AS column_name,
    (ad.attname)::information_schema.sql_identifier AS dependent_column
   FROM pg_namespace n,
    pg_class c,
    pg_depend d,
    pg_attribute ac,
    pg_attribute ad
  WHERE ((n.oid = c.relnamespace) AND (c.oid = ac.attrelid) AND (c.oid = ad.attrelid) AND (d.classid = ('pg_class'::regclass)::oid) AND (d.refclassid = ('pg_class'::regclass)::oid) AND (d.objid = d.refobjid) AND (c.oid = d.objid) AND (d.objsubid = ad.attnum) AND (d.refobjsubid = ac.attnum) AND (ad.attgenerated <> ''::"char") AND pg_has_role(c.relowner, 'USAGE'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "column_domain_usage";
CREATE VIEW "column_domain_usage" AS  SELECT (current_database())::information_schema.sql_identifier AS domain_catalog,
    (nt.nspname)::information_schema.sql_identifier AS domain_schema,
    (t.typname)::information_schema.sql_identifier AS domain_name,
    (current_database())::information_schema.sql_identifier AS table_catalog,
    (nc.nspname)::information_schema.sql_identifier AS table_schema,
    (c.relname)::information_schema.sql_identifier AS table_name,
    (a.attname)::information_schema.sql_identifier AS column_name
   FROM pg_type t,
    pg_namespace nt,
    pg_class c,
    pg_namespace nc,
    pg_attribute a
  WHERE ((t.typnamespace = nt.oid) AND (c.relnamespace = nc.oid) AND (a.attrelid = c.oid) AND (a.atttypid = t.oid) AND (t.typtype = 'd'::"char") AND (c.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'f'::"char", 'p'::"char"])) AND (a.attnum > 0) AND (NOT a.attisdropped) AND pg_has_role(t.typowner, 'USAGE'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "column_options";
CREATE VIEW "column_options" AS  SELECT (current_database())::information_schema.sql_identifier AS table_catalog,
    (c.nspname)::information_schema.sql_identifier AS table_schema,
    (c.relname)::information_schema.sql_identifier AS table_name,
    (c.attname)::information_schema.sql_identifier AS column_name,
    ((pg_options_to_table(c.attfdwoptions)).option_name)::information_schema.sql_identifier AS option_name,
    ((pg_options_to_table(c.attfdwoptions)).option_value)::information_schema.character_data AS option_value
   FROM information_schema._pg_foreign_table_columns c;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "column_privileges";
CREATE VIEW "column_privileges" AS  SELECT (u_grantor.rolname)::information_schema.sql_identifier AS grantor,
    (grantee.rolname)::information_schema.sql_identifier AS grantee,
    (current_database())::information_schema.sql_identifier AS table_catalog,
    (nc.nspname)::information_schema.sql_identifier AS table_schema,
    (x.relname)::information_schema.sql_identifier AS table_name,
    (x.attname)::information_schema.sql_identifier AS column_name,
    (x.prtype)::information_schema.character_data AS privilege_type,
    (
        CASE
            WHEN (pg_has_role(x.grantee, x.relowner, 'USAGE'::text) OR x.grantable) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_grantable
   FROM ( SELECT pr_c.grantor,
            pr_c.grantee,
            a.attname,
            pr_c.relname,
            pr_c.relnamespace,
            pr_c.prtype,
            pr_c.grantable,
            pr_c.relowner
           FROM ( SELECT pg_class.oid,
                    pg_class.relname,
                    pg_class.relnamespace,
                    pg_class.relowner,
                    (aclexplode(COALESCE(pg_class.relacl, acldefault('r'::"char", pg_class.relowner)))).grantor AS grantor,
                    (aclexplode(COALESCE(pg_class.relacl, acldefault('r'::"char", pg_class.relowner)))).grantee AS grantee,
                    (aclexplode(COALESCE(pg_class.relacl, acldefault('r'::"char", pg_class.relowner)))).privilege_type AS privilege_type,
                    (aclexplode(COALESCE(pg_class.relacl, acldefault('r'::"char", pg_class.relowner)))).is_grantable AS is_grantable
                   FROM pg_class
                  WHERE (pg_class.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'f'::"char", 'p'::"char"]))) pr_c(oid, relname, relnamespace, relowner, grantor, grantee, prtype, grantable),
            pg_attribute a
          WHERE ((a.attrelid = pr_c.oid) AND (a.attnum > 0) AND (NOT a.attisdropped))
        UNION
         SELECT pr_a.grantor,
            pr_a.grantee,
            pr_a.attname,
            c.relname,
            c.relnamespace,
            pr_a.prtype,
            pr_a.grantable,
            c.relowner
           FROM ( SELECT a.attrelid,
                    a.attname,
                    (aclexplode(COALESCE(a.attacl, acldefault('c'::"char", cc.relowner)))).grantor AS grantor,
                    (aclexplode(COALESCE(a.attacl, acldefault('c'::"char", cc.relowner)))).grantee AS grantee,
                    (aclexplode(COALESCE(a.attacl, acldefault('c'::"char", cc.relowner)))).privilege_type AS privilege_type,
                    (aclexplode(COALESCE(a.attacl, acldefault('c'::"char", cc.relowner)))).is_grantable AS is_grantable
                   FROM (pg_attribute a
                     JOIN pg_class cc ON ((a.attrelid = cc.oid)))
                  WHERE ((a.attnum > 0) AND (NOT a.attisdropped))) pr_a(attrelid, attname, grantor, grantee, prtype, grantable),
            pg_class c
          WHERE ((pr_a.attrelid = c.oid) AND (c.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'f'::"char", 'p'::"char"])))) x,
    pg_namespace nc,
    pg_authid u_grantor,
    ( SELECT pg_authid.oid,
            pg_authid.rolname
           FROM pg_authid
        UNION ALL
         SELECT (0)::oid AS oid,
            'PUBLIC'::name) grantee(oid, rolname)
  WHERE ((x.relnamespace = nc.oid) AND (x.grantee = grantee.oid) AND (x.grantor = u_grantor.oid) AND (x.prtype = ANY (ARRAY['INSERT'::text, 'SELECT'::text, 'UPDATE'::text, 'REFERENCES'::text])) AND (pg_has_role(u_grantor.oid, 'USAGE'::text) OR pg_has_role(grantee.oid, 'USAGE'::text) OR (grantee.rolname = 'PUBLIC'::name)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "column_udt_usage";
CREATE VIEW "column_udt_usage" AS  SELECT (current_database())::information_schema.sql_identifier AS udt_catalog,
    (COALESCE(nbt.nspname, nt.nspname))::information_schema.sql_identifier AS udt_schema,
    (COALESCE(bt.typname, t.typname))::information_schema.sql_identifier AS udt_name,
    (current_database())::information_schema.sql_identifier AS table_catalog,
    (nc.nspname)::information_schema.sql_identifier AS table_schema,
    (c.relname)::information_schema.sql_identifier AS table_name,
    (a.attname)::information_schema.sql_identifier AS column_name
   FROM pg_attribute a,
    pg_class c,
    pg_namespace nc,
    ((pg_type t
     JOIN pg_namespace nt ON ((t.typnamespace = nt.oid)))
     LEFT JOIN (pg_type bt
     JOIN pg_namespace nbt ON ((bt.typnamespace = nbt.oid))) ON (((t.typtype = 'd'::"char") AND (t.typbasetype = bt.oid))))
  WHERE ((a.attrelid = c.oid) AND (a.atttypid = t.oid) AND (nc.oid = c.relnamespace) AND (a.attnum > 0) AND (NOT a.attisdropped) AND (c.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'f'::"char", 'p'::"char"])) AND pg_has_role(COALESCE(bt.typowner, t.typowner), 'USAGE'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "constraint_column_usage";
CREATE VIEW "constraint_column_usage" AS  SELECT (current_database())::information_schema.sql_identifier AS table_catalog,
    (x.tblschema)::information_schema.sql_identifier AS table_schema,
    (x.tblname)::information_schema.sql_identifier AS table_name,
    (x.colname)::information_schema.sql_identifier AS column_name,
    (current_database())::information_schema.sql_identifier AS constraint_catalog,
    (x.cstrschema)::information_schema.sql_identifier AS constraint_schema,
    (x.cstrname)::information_schema.sql_identifier AS constraint_name
   FROM ( SELECT DISTINCT nr.nspname,
            r.relname,
            r.relowner,
            a.attname,
            nc.nspname,
            c.conname
           FROM pg_namespace nr,
            pg_class r,
            pg_attribute a,
            pg_depend d,
            pg_namespace nc,
            pg_constraint c
          WHERE ((nr.oid = r.relnamespace) AND (r.oid = a.attrelid) AND (d.refclassid = ('pg_class'::regclass)::oid) AND (d.refobjid = r.oid) AND (d.refobjsubid = a.attnum) AND (d.classid = ('pg_constraint'::regclass)::oid) AND (d.objid = c.oid) AND (c.connamespace = nc.oid) AND (c.contype = 'c'::"char") AND (r.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])) AND (NOT a.attisdropped))
        UNION ALL
         SELECT nr.nspname,
            r.relname,
            r.relowner,
            a.attname,
            nc.nspname,
            c.conname
           FROM pg_namespace nr,
            pg_class r,
            pg_attribute a,
            pg_namespace nc,
            pg_constraint c
          WHERE ((nr.oid = r.relnamespace) AND (r.oid = a.attrelid) AND (nc.oid = c.connamespace) AND (r.oid =
                CASE c.contype
                    WHEN 'f'::"char" THEN c.confrelid
                    ELSE c.conrelid
                END) AND (a.attnum = ANY (
                CASE c.contype
                    WHEN 'f'::"char" THEN c.confkey
                    ELSE c.conkey
                END)) AND (NOT a.attisdropped) AND (c.contype = ANY (ARRAY['p'::"char", 'u'::"char", 'f'::"char"])) AND (r.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])))) x(tblschema, tblname, tblowner, colname, cstrschema, cstrname)
  WHERE pg_has_role(x.tblowner, 'USAGE'::text);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "constraint_table_usage";
CREATE VIEW "constraint_table_usage" AS  SELECT (current_database())::information_schema.sql_identifier AS table_catalog,
    (nr.nspname)::information_schema.sql_identifier AS table_schema,
    (r.relname)::information_schema.sql_identifier AS table_name,
    (current_database())::information_schema.sql_identifier AS constraint_catalog,
    (nc.nspname)::information_schema.sql_identifier AS constraint_schema,
    (c.conname)::information_schema.sql_identifier AS constraint_name
   FROM pg_constraint c,
    pg_namespace nc,
    pg_class r,
    pg_namespace nr
  WHERE ((c.connamespace = nc.oid) AND (r.relnamespace = nr.oid) AND (((c.contype = 'f'::"char") AND (c.confrelid = r.oid)) OR ((c.contype = ANY (ARRAY['p'::"char", 'u'::"char"])) AND (c.conrelid = r.oid))) AND (r.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])) AND pg_has_role(r.relowner, 'USAGE'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "data_type_privileges";
CREATE VIEW "data_type_privileges" AS  SELECT (current_database())::information_schema.sql_identifier AS object_catalog,
    x.objschema AS object_schema,
    x.objname AS object_name,
    (x.objtype)::information_schema.character_data AS object_type,
    x.objdtdid AS dtd_identifier
   FROM ( SELECT attributes.udt_schema,
            attributes.udt_name,
            'USER-DEFINED TYPE'::text AS text,
            attributes.dtd_identifier
           FROM information_schema.attributes
        UNION ALL
         SELECT columns.table_schema,
            columns.table_name,
            'TABLE'::text AS text,
            columns.dtd_identifier
           FROM information_schema.columns
        UNION ALL
         SELECT domains.domain_schema,
            domains.domain_name,
            'DOMAIN'::text AS text,
            domains.dtd_identifier
           FROM information_schema.domains
        UNION ALL
         SELECT parameters.specific_schema,
            parameters.specific_name,
            'ROUTINE'::text AS text,
            parameters.dtd_identifier
           FROM information_schema.parameters
        UNION ALL
         SELECT routines.specific_schema,
            routines.specific_name,
            'ROUTINE'::text AS text,
            routines.dtd_identifier
           FROM information_schema.routines) x(objschema, objname, objtype, objdtdid);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "domains";
CREATE VIEW "domains" AS  SELECT (current_database())::information_schema.sql_identifier AS domain_catalog,
    (nt.nspname)::information_schema.sql_identifier AS domain_schema,
    (t.typname)::information_schema.sql_identifier AS domain_name,
    (
        CASE
            WHEN ((t.typelem <> (0)::oid) AND (t.typlen = '-1'::integer)) THEN 'ARRAY'::text
            WHEN (nbt.nspname = 'pg_catalog'::name) THEN format_type(t.typbasetype, NULL::integer)
            ELSE 'USER-DEFINED'::text
        END)::information_schema.character_data AS data_type,
    (information_schema._pg_char_max_length(t.typbasetype, t.typtypmod))::information_schema.cardinal_number AS character_maximum_length,
    (information_schema._pg_char_octet_length(t.typbasetype, t.typtypmod))::information_schema.cardinal_number AS character_octet_length,
    (NULL::name)::information_schema.sql_identifier AS character_set_catalog,
    (NULL::name)::information_schema.sql_identifier AS character_set_schema,
    (NULL::name)::information_schema.sql_identifier AS character_set_name,
    (
        CASE
            WHEN (nco.nspname IS NOT NULL) THEN current_database()
            ELSE NULL::name
        END)::information_schema.sql_identifier AS collation_catalog,
    (nco.nspname)::information_schema.sql_identifier AS collation_schema,
    (co.collname)::information_schema.sql_identifier AS collation_name,
    (information_schema._pg_numeric_precision(t.typbasetype, t.typtypmod))::information_schema.cardinal_number AS numeric_precision,
    (information_schema._pg_numeric_precision_radix(t.typbasetype, t.typtypmod))::information_schema.cardinal_number AS numeric_precision_radix,
    (information_schema._pg_numeric_scale(t.typbasetype, t.typtypmod))::information_schema.cardinal_number AS numeric_scale,
    (information_schema._pg_datetime_precision(t.typbasetype, t.typtypmod))::information_schema.cardinal_number AS datetime_precision,
    (information_schema._pg_interval_type(t.typbasetype, t.typtypmod))::information_schema.character_data AS interval_type,
    (NULL::integer)::information_schema.cardinal_number AS interval_precision,
    (t.typdefault)::information_schema.character_data AS domain_default,
    (current_database())::information_schema.sql_identifier AS udt_catalog,
    (nbt.nspname)::information_schema.sql_identifier AS udt_schema,
    (bt.typname)::information_schema.sql_identifier AS udt_name,
    (NULL::name)::information_schema.sql_identifier AS scope_catalog,
    (NULL::name)::information_schema.sql_identifier AS scope_schema,
    (NULL::name)::information_schema.sql_identifier AS scope_name,
    (NULL::integer)::information_schema.cardinal_number AS maximum_cardinality,
    (1)::information_schema.sql_identifier AS dtd_identifier
   FROM (((pg_type t
     JOIN pg_namespace nt ON ((t.typnamespace = nt.oid)))
     JOIN (pg_type bt
     JOIN pg_namespace nbt ON ((bt.typnamespace = nbt.oid))) ON (((t.typbasetype = bt.oid) AND (t.typtype = 'd'::"char"))))
     LEFT JOIN (pg_collation co
     JOIN pg_namespace nco ON ((co.collnamespace = nco.oid))) ON (((t.typcollation = co.oid) AND ((nco.nspname <> 'pg_catalog'::name) OR (co.collname <> 'default'::name)))))
  WHERE (pg_has_role(t.typowner, 'USAGE'::text) OR has_type_privilege(t.oid, 'USAGE'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "domain_constraints";
CREATE VIEW "domain_constraints" AS  SELECT (current_database())::information_schema.sql_identifier AS constraint_catalog,
    (rs.nspname)::information_schema.sql_identifier AS constraint_schema,
    (con.conname)::information_schema.sql_identifier AS constraint_name,
    (current_database())::information_schema.sql_identifier AS domain_catalog,
    (n.nspname)::information_schema.sql_identifier AS domain_schema,
    (t.typname)::information_schema.sql_identifier AS domain_name,
    (
        CASE
            WHEN con.condeferrable THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_deferrable,
    (
        CASE
            WHEN con.condeferred THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS initially_deferred
   FROM pg_namespace rs,
    pg_namespace n,
    pg_constraint con,
    pg_type t
  WHERE ((rs.oid = con.connamespace) AND (n.oid = t.typnamespace) AND (t.oid = con.contypid) AND (pg_has_role(t.typowner, 'USAGE'::text) OR has_type_privilege(t.oid, 'USAGE'::text)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "domain_udt_usage";
CREATE VIEW "domain_udt_usage" AS  SELECT (current_database())::information_schema.sql_identifier AS udt_catalog,
    (nbt.nspname)::information_schema.sql_identifier AS udt_schema,
    (bt.typname)::information_schema.sql_identifier AS udt_name,
    (current_database())::information_schema.sql_identifier AS domain_catalog,
    (nt.nspname)::information_schema.sql_identifier AS domain_schema,
    (t.typname)::information_schema.sql_identifier AS domain_name
   FROM pg_type t,
    pg_namespace nt,
    pg_type bt,
    pg_namespace nbt
  WHERE ((t.typnamespace = nt.oid) AND (t.typbasetype = bt.oid) AND (bt.typnamespace = nbt.oid) AND (t.typtype = 'd'::"char") AND pg_has_role(bt.typowner, 'USAGE'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "element_types";
CREATE VIEW "element_types" AS  SELECT (current_database())::information_schema.sql_identifier AS object_catalog,
    (n.nspname)::information_schema.sql_identifier AS object_schema,
    x.objname AS object_name,
    (x.objtype)::information_schema.character_data AS object_type,
    (x.objdtdid)::information_schema.sql_identifier AS collection_type_identifier,
    (
        CASE
            WHEN (nbt.nspname = 'pg_catalog'::name) THEN format_type(bt.oid, NULL::integer)
            ELSE 'USER-DEFINED'::text
        END)::information_schema.character_data AS data_type,
    (NULL::integer)::information_schema.cardinal_number AS character_maximum_length,
    (NULL::integer)::information_schema.cardinal_number AS character_octet_length,
    (NULL::name)::information_schema.sql_identifier AS character_set_catalog,
    (NULL::name)::information_schema.sql_identifier AS character_set_schema,
    (NULL::name)::information_schema.sql_identifier AS character_set_name,
    (
        CASE
            WHEN (nco.nspname IS NOT NULL) THEN current_database()
            ELSE NULL::name
        END)::information_schema.sql_identifier AS collation_catalog,
    (nco.nspname)::information_schema.sql_identifier AS collation_schema,
    (co.collname)::information_schema.sql_identifier AS collation_name,
    (NULL::integer)::information_schema.cardinal_number AS numeric_precision,
    (NULL::integer)::information_schema.cardinal_number AS numeric_precision_radix,
    (NULL::integer)::information_schema.cardinal_number AS numeric_scale,
    (NULL::integer)::information_schema.cardinal_number AS datetime_precision,
    (NULL::character varying)::information_schema.character_data AS interval_type,
    (NULL::integer)::information_schema.cardinal_number AS interval_precision,
    (NULL::character varying)::information_schema.character_data AS domain_default,
    (current_database())::information_schema.sql_identifier AS udt_catalog,
    (nbt.nspname)::information_schema.sql_identifier AS udt_schema,
    (bt.typname)::information_schema.sql_identifier AS udt_name,
    (NULL::name)::information_schema.sql_identifier AS scope_catalog,
    (NULL::name)::information_schema.sql_identifier AS scope_schema,
    (NULL::name)::information_schema.sql_identifier AS scope_name,
    (NULL::integer)::information_schema.cardinal_number AS maximum_cardinality,
    (('a'::text || (x.objdtdid)::text))::information_schema.sql_identifier AS dtd_identifier
   FROM pg_namespace n,
    pg_type at,
    pg_namespace nbt,
    pg_type bt,
    (( SELECT c.relnamespace,
            (c.relname)::information_schema.sql_identifier AS relname,
                CASE
                    WHEN (c.relkind = 'c'::"char") THEN 'USER-DEFINED TYPE'::text
                    ELSE 'TABLE'::text
                END AS "case",
            a.attnum,
            a.atttypid,
            a.attcollation
           FROM pg_class c,
            pg_attribute a
          WHERE ((c.oid = a.attrelid) AND (c.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'f'::"char", 'c'::"char", 'p'::"char"])) AND (a.attnum > 0) AND (NOT a.attisdropped))
        UNION ALL
         SELECT t.typnamespace,
            (t.typname)::information_schema.sql_identifier AS typname,
            'DOMAIN'::text AS text,
            1,
            t.typbasetype,
            t.typcollation
           FROM pg_type t
          WHERE (t.typtype = 'd'::"char")
        UNION ALL
         SELECT ss.pronamespace,
            (nameconcatoid(ss.proname, ss.oid))::information_schema.sql_identifier AS nameconcatoid,
            'ROUTINE'::text AS text,
            (ss.x).n AS n,
            (ss.x).x AS x,
            0
           FROM ( SELECT p.pronamespace,
                    p.proname,
                    p.oid,
                    information_schema._pg_expandarray(COALESCE(p.proallargtypes, (p.proargtypes)::oid[])) AS x
                   FROM pg_proc p) ss
        UNION ALL
         SELECT p.pronamespace,
            (nameconcatoid(p.proname, p.oid))::information_schema.sql_identifier AS nameconcatoid,
            'ROUTINE'::text AS text,
            0,
            p.prorettype,
            0
           FROM pg_proc p) x(objschema, objname, objtype, objdtdid, objtypeid, objcollation)
     LEFT JOIN (pg_collation co
     JOIN pg_namespace nco ON ((co.collnamespace = nco.oid))) ON (((x.objcollation = co.oid) AND ((nco.nspname <> 'pg_catalog'::name) OR (co.collname <> 'default'::name)))))
  WHERE ((n.oid = x.objschema) AND (at.oid = x.objtypeid) AND ((at.typelem <> (0)::oid) AND (at.typlen = '-1'::integer)) AND (at.typelem = bt.oid) AND (nbt.oid = bt.typnamespace) AND ((n.nspname, (x.objname)::name, x.objtype, ((x.objdtdid)::information_schema.sql_identifier)::name) IN ( SELECT data_type_privileges.object_schema,
            data_type_privileges.object_name,
            data_type_privileges.object_type,
            data_type_privileges.dtd_identifier
           FROM information_schema.data_type_privileges)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "enabled_roles";
CREATE VIEW "enabled_roles" AS  SELECT (a.rolname)::information_schema.sql_identifier AS role_name
   FROM pg_authid a
  WHERE pg_has_role(a.oid, 'USAGE'::text);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "foreign_data_wrappers";
CREATE VIEW "foreign_data_wrappers" AS  SELECT w.foreign_data_wrapper_catalog,
    w.foreign_data_wrapper_name,
    w.authorization_identifier,
    (NULL::character varying)::information_schema.character_data AS library_name,
    w.foreign_data_wrapper_language
   FROM information_schema._pg_foreign_data_wrappers w;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "foreign_data_wrapper_options";
CREATE VIEW "foreign_data_wrapper_options" AS  SELECT w.foreign_data_wrapper_catalog,
    w.foreign_data_wrapper_name,
    ((pg_options_to_table(w.fdwoptions)).option_name)::information_schema.sql_identifier AS option_name,
    ((pg_options_to_table(w.fdwoptions)).option_value)::information_schema.character_data AS option_value
   FROM information_schema._pg_foreign_data_wrappers w;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "foreign_servers";
CREATE VIEW "foreign_servers" AS  SELECT _pg_foreign_servers.foreign_server_catalog,
    _pg_foreign_servers.foreign_server_name,
    _pg_foreign_servers.foreign_data_wrapper_catalog,
    _pg_foreign_servers.foreign_data_wrapper_name,
    _pg_foreign_servers.foreign_server_type,
    _pg_foreign_servers.foreign_server_version,
    _pg_foreign_servers.authorization_identifier
   FROM information_schema._pg_foreign_servers;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "foreign_server_options";
CREATE VIEW "foreign_server_options" AS  SELECT s.foreign_server_catalog,
    s.foreign_server_name,
    ((pg_options_to_table(s.srvoptions)).option_name)::information_schema.sql_identifier AS option_name,
    ((pg_options_to_table(s.srvoptions)).option_value)::information_schema.character_data AS option_value
   FROM information_schema._pg_foreign_servers s;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "foreign_tables";
CREATE VIEW "foreign_tables" AS  SELECT _pg_foreign_tables.foreign_table_catalog,
    _pg_foreign_tables.foreign_table_schema,
    _pg_foreign_tables.foreign_table_name,
    _pg_foreign_tables.foreign_server_catalog,
    _pg_foreign_tables.foreign_server_name
   FROM information_schema._pg_foreign_tables;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "foreign_table_options";
CREATE VIEW "foreign_table_options" AS  SELECT t.foreign_table_catalog,
    t.foreign_table_schema,
    t.foreign_table_name,
    ((pg_options_to_table(t.ftoptions)).option_name)::information_schema.sql_identifier AS option_name,
    ((pg_options_to_table(t.ftoptions)).option_value)::information_schema.character_data AS option_value
   FROM information_schema._pg_foreign_tables t;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "information_schema_catalog_name";
CREATE VIEW "information_schema_catalog_name" AS  SELECT (current_database())::information_schema.sql_identifier AS catalog_name;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "key_column_usage";
CREATE VIEW "key_column_usage" AS  SELECT (current_database())::information_schema.sql_identifier AS constraint_catalog,
    (ss.nc_nspname)::information_schema.sql_identifier AS constraint_schema,
    (ss.conname)::information_schema.sql_identifier AS constraint_name,
    (current_database())::information_schema.sql_identifier AS table_catalog,
    (ss.nr_nspname)::information_schema.sql_identifier AS table_schema,
    (ss.relname)::information_schema.sql_identifier AS table_name,
    (a.attname)::information_schema.sql_identifier AS column_name,
    ((ss.x).n)::information_schema.cardinal_number AS ordinal_position,
    (
        CASE
            WHEN (ss.contype = 'f'::"char") THEN information_schema._pg_index_position(ss.conindid, ss.confkey[(ss.x).n])
            ELSE NULL::integer
        END)::information_schema.cardinal_number AS position_in_unique_constraint
   FROM pg_attribute a,
    ( SELECT r.oid AS roid,
            r.relname,
            r.relowner,
            nc.nspname AS nc_nspname,
            nr.nspname AS nr_nspname,
            c.oid AS coid,
            c.conname,
            c.contype,
            c.conindid,
            c.confkey,
            c.confrelid,
            information_schema._pg_expandarray(c.conkey) AS x
           FROM pg_namespace nr,
            pg_class r,
            pg_namespace nc,
            pg_constraint c
          WHERE ((nr.oid = r.relnamespace) AND (r.oid = c.conrelid) AND (nc.oid = c.connamespace) AND (c.contype = ANY (ARRAY['p'::"char", 'u'::"char", 'f'::"char"])) AND (r.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])) AND (NOT pg_is_other_temp_schema(nr.oid)))) ss
  WHERE ((ss.roid = a.attrelid) AND (a.attnum = (ss.x).x) AND (NOT a.attisdropped) AND (pg_has_role(ss.relowner, 'USAGE'::text) OR has_column_privilege(ss.roid, a.attnum, 'SELECT, INSERT, UPDATE, REFERENCES'::text)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "parameters";
CREATE VIEW "parameters" AS  SELECT (current_database())::information_schema.sql_identifier AS specific_catalog,
    (ss.n_nspname)::information_schema.sql_identifier AS specific_schema,
    (nameconcatoid(ss.proname, ss.p_oid))::information_schema.sql_identifier AS specific_name,
    ((ss.x).n)::information_schema.cardinal_number AS ordinal_position,
    (
        CASE
            WHEN (ss.proargmodes IS NULL) THEN 'IN'::text
            WHEN (ss.proargmodes[(ss.x).n] = 'i'::"char") THEN 'IN'::text
            WHEN (ss.proargmodes[(ss.x).n] = 'o'::"char") THEN 'OUT'::text
            WHEN (ss.proargmodes[(ss.x).n] = 'b'::"char") THEN 'INOUT'::text
            WHEN (ss.proargmodes[(ss.x).n] = 'v'::"char") THEN 'IN'::text
            WHEN (ss.proargmodes[(ss.x).n] = 't'::"char") THEN 'OUT'::text
            ELSE NULL::text
        END)::information_schema.character_data AS parameter_mode,
    ('NO'::character varying)::information_schema.yes_or_no AS is_result,
    ('NO'::character varying)::information_schema.yes_or_no AS as_locator,
    (NULLIF(ss.proargnames[(ss.x).n], ''::text))::information_schema.sql_identifier AS parameter_name,
    (
        CASE
            WHEN ((t.typelem <> (0)::oid) AND (t.typlen = '-1'::integer)) THEN 'ARRAY'::text
            WHEN (nt.nspname = 'pg_catalog'::name) THEN format_type(t.oid, NULL::integer)
            ELSE 'USER-DEFINED'::text
        END)::information_schema.character_data AS data_type,
    (NULL::integer)::information_schema.cardinal_number AS character_maximum_length,
    (NULL::integer)::information_schema.cardinal_number AS character_octet_length,
    (NULL::name)::information_schema.sql_identifier AS character_set_catalog,
    (NULL::name)::information_schema.sql_identifier AS character_set_schema,
    (NULL::name)::information_schema.sql_identifier AS character_set_name,
    (NULL::name)::information_schema.sql_identifier AS collation_catalog,
    (NULL::name)::information_schema.sql_identifier AS collation_schema,
    (NULL::name)::information_schema.sql_identifier AS collation_name,
    (NULL::integer)::information_schema.cardinal_number AS numeric_precision,
    (NULL::integer)::information_schema.cardinal_number AS numeric_precision_radix,
    (NULL::integer)::information_schema.cardinal_number AS numeric_scale,
    (NULL::integer)::information_schema.cardinal_number AS datetime_precision,
    (NULL::character varying)::information_schema.character_data AS interval_type,
    (NULL::integer)::information_schema.cardinal_number AS interval_precision,
    (current_database())::information_schema.sql_identifier AS udt_catalog,
    (nt.nspname)::information_schema.sql_identifier AS udt_schema,
    (t.typname)::information_schema.sql_identifier AS udt_name,
    (NULL::name)::information_schema.sql_identifier AS scope_catalog,
    (NULL::name)::information_schema.sql_identifier AS scope_schema,
    (NULL::name)::information_schema.sql_identifier AS scope_name,
    (NULL::integer)::information_schema.cardinal_number AS maximum_cardinality,
    ((ss.x).n)::information_schema.sql_identifier AS dtd_identifier,
    (
        CASE
            WHEN pg_has_role(ss.proowner, 'USAGE'::text) THEN pg_get_function_arg_default(ss.p_oid, (ss.x).n)
            ELSE NULL::text
        END)::information_schema.character_data AS parameter_default
   FROM pg_type t,
    pg_namespace nt,
    ( SELECT n.nspname AS n_nspname,
            p.proname,
            p.oid AS p_oid,
            p.proowner,
            p.proargnames,
            p.proargmodes,
            information_schema._pg_expandarray(COALESCE(p.proallargtypes, (p.proargtypes)::oid[])) AS x
           FROM pg_namespace n,
            pg_proc p
          WHERE ((n.oid = p.pronamespace) AND (pg_has_role(p.proowner, 'USAGE'::text) OR has_function_privilege(p.oid, 'EXECUTE'::text)))) ss
  WHERE ((t.oid = (ss.x).x) AND (t.typnamespace = nt.oid));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "referential_constraints";
CREATE VIEW "referential_constraints" AS  SELECT (current_database())::information_schema.sql_identifier AS constraint_catalog,
    (ncon.nspname)::information_schema.sql_identifier AS constraint_schema,
    (con.conname)::information_schema.sql_identifier AS constraint_name,
    (
        CASE
            WHEN (npkc.nspname IS NULL) THEN NULL::name
            ELSE current_database()
        END)::information_schema.sql_identifier AS unique_constraint_catalog,
    (npkc.nspname)::information_schema.sql_identifier AS unique_constraint_schema,
    (pkc.conname)::information_schema.sql_identifier AS unique_constraint_name,
    (
        CASE con.confmatchtype
            WHEN 'f'::"char" THEN 'FULL'::text
            WHEN 'p'::"char" THEN 'PARTIAL'::text
            WHEN 's'::"char" THEN 'NONE'::text
            ELSE NULL::text
        END)::information_schema.character_data AS match_option,
    (
        CASE con.confupdtype
            WHEN 'c'::"char" THEN 'CASCADE'::text
            WHEN 'n'::"char" THEN 'SET NULL'::text
            WHEN 'd'::"char" THEN 'SET DEFAULT'::text
            WHEN 'r'::"char" THEN 'RESTRICT'::text
            WHEN 'a'::"char" THEN 'NO ACTION'::text
            ELSE NULL::text
        END)::information_schema.character_data AS update_rule,
    (
        CASE con.confdeltype
            WHEN 'c'::"char" THEN 'CASCADE'::text
            WHEN 'n'::"char" THEN 'SET NULL'::text
            WHEN 'd'::"char" THEN 'SET DEFAULT'::text
            WHEN 'r'::"char" THEN 'RESTRICT'::text
            WHEN 'a'::"char" THEN 'NO ACTION'::text
            ELSE NULL::text
        END)::information_schema.character_data AS delete_rule
   FROM ((((((pg_namespace ncon
     JOIN pg_constraint con ON ((ncon.oid = con.connamespace)))
     JOIN pg_class c ON (((con.conrelid = c.oid) AND (con.contype = 'f'::"char"))))
     LEFT JOIN pg_depend d1 ON (((d1.objid = con.oid) AND (d1.classid = ('pg_constraint'::regclass)::oid) AND (d1.refclassid = ('pg_class'::regclass)::oid) AND (d1.refobjsubid = 0))))
     LEFT JOIN pg_depend d2 ON (((d2.refclassid = ('pg_constraint'::regclass)::oid) AND (d2.classid = ('pg_class'::regclass)::oid) AND (d2.objid = d1.refobjid) AND (d2.objsubid = 0) AND (d2.deptype = 'i'::"char"))))
     LEFT JOIN pg_constraint pkc ON (((pkc.oid = d2.refobjid) AND (pkc.contype = ANY (ARRAY['p'::"char", 'u'::"char"])) AND (pkc.conrelid = con.confrelid))))
     LEFT JOIN pg_namespace npkc ON ((pkc.connamespace = npkc.oid)))
  WHERE (pg_has_role(c.relowner, 'USAGE'::text) OR has_table_privilege(c.oid, 'INSERT, UPDATE, DELETE, TRUNCATE, REFERENCES, TRIGGER'::text) OR has_any_column_privilege(c.oid, 'INSERT, UPDATE, REFERENCES'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "role_column_grants";
CREATE VIEW "role_column_grants" AS  SELECT column_privileges.grantor,
    column_privileges.grantee,
    column_privileges.table_catalog,
    column_privileges.table_schema,
    column_privileges.table_name,
    column_privileges.column_name,
    column_privileges.privilege_type,
    column_privileges.is_grantable
   FROM information_schema.column_privileges
  WHERE (((column_privileges.grantor)::name IN ( SELECT enabled_roles.role_name
           FROM information_schema.enabled_roles)) OR ((column_privileges.grantee)::name IN ( SELECT enabled_roles.role_name
           FROM information_schema.enabled_roles)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "role_routine_grants";
CREATE VIEW "role_routine_grants" AS  SELECT routine_privileges.grantor,
    routine_privileges.grantee,
    routine_privileges.specific_catalog,
    routine_privileges.specific_schema,
    routine_privileges.specific_name,
    routine_privileges.routine_catalog,
    routine_privileges.routine_schema,
    routine_privileges.routine_name,
    routine_privileges.privilege_type,
    routine_privileges.is_grantable
   FROM information_schema.routine_privileges
  WHERE (((routine_privileges.grantor)::name IN ( SELECT enabled_roles.role_name
           FROM information_schema.enabled_roles)) OR ((routine_privileges.grantee)::name IN ( SELECT enabled_roles.role_name
           FROM information_schema.enabled_roles)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "role_table_grants";
CREATE VIEW "role_table_grants" AS  SELECT table_privileges.grantor,
    table_privileges.grantee,
    table_privileges.table_catalog,
    table_privileges.table_schema,
    table_privileges.table_name,
    table_privileges.privilege_type,
    table_privileges.is_grantable,
    table_privileges.with_hierarchy
   FROM information_schema.table_privileges
  WHERE (((table_privileges.grantor)::name IN ( SELECT enabled_roles.role_name
           FROM information_schema.enabled_roles)) OR ((table_privileges.grantee)::name IN ( SELECT enabled_roles.role_name
           FROM information_schema.enabled_roles)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "role_udt_grants";
CREATE VIEW "role_udt_grants" AS  SELECT udt_privileges.grantor,
    udt_privileges.grantee,
    udt_privileges.udt_catalog,
    udt_privileges.udt_schema,
    udt_privileges.udt_name,
    udt_privileges.privilege_type,
    udt_privileges.is_grantable
   FROM information_schema.udt_privileges
  WHERE (((udt_privileges.grantor)::name IN ( SELECT enabled_roles.role_name
           FROM information_schema.enabled_roles)) OR ((udt_privileges.grantee)::name IN ( SELECT enabled_roles.role_name
           FROM information_schema.enabled_roles)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "role_usage_grants";
CREATE VIEW "role_usage_grants" AS  SELECT usage_privileges.grantor,
    usage_privileges.grantee,
    usage_privileges.object_catalog,
    usage_privileges.object_schema,
    usage_privileges.object_name,
    usage_privileges.object_type,
    usage_privileges.privilege_type,
    usage_privileges.is_grantable
   FROM information_schema.usage_privileges
  WHERE (((usage_privileges.grantor)::name IN ( SELECT enabled_roles.role_name
           FROM information_schema.enabled_roles)) OR ((usage_privileges.grantee)::name IN ( SELECT enabled_roles.role_name
           FROM information_schema.enabled_roles)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "routines";
CREATE VIEW "routines" AS  SELECT (current_database())::information_schema.sql_identifier AS specific_catalog,
    (n.nspname)::information_schema.sql_identifier AS specific_schema,
    (nameconcatoid(p.proname, p.oid))::information_schema.sql_identifier AS specific_name,
    (current_database())::information_schema.sql_identifier AS routine_catalog,
    (n.nspname)::information_schema.sql_identifier AS routine_schema,
    (p.proname)::information_schema.sql_identifier AS routine_name,
    (
        CASE p.prokind
            WHEN 'f'::"char" THEN 'FUNCTION'::text
            WHEN 'p'::"char" THEN 'PROCEDURE'::text
            ELSE NULL::text
        END)::information_schema.character_data AS routine_type,
    (NULL::name)::information_schema.sql_identifier AS module_catalog,
    (NULL::name)::information_schema.sql_identifier AS module_schema,
    (NULL::name)::information_schema.sql_identifier AS module_name,
    (NULL::name)::information_schema.sql_identifier AS udt_catalog,
    (NULL::name)::information_schema.sql_identifier AS udt_schema,
    (NULL::name)::information_schema.sql_identifier AS udt_name,
    (
        CASE
            WHEN (p.prokind = 'p'::"char") THEN NULL::text
            WHEN ((t.typelem <> (0)::oid) AND (t.typlen = '-1'::integer)) THEN 'ARRAY'::text
            WHEN (nt.nspname = 'pg_catalog'::name) THEN format_type(t.oid, NULL::integer)
            ELSE 'USER-DEFINED'::text
        END)::information_schema.character_data AS data_type,
    (NULL::integer)::information_schema.cardinal_number AS character_maximum_length,
    (NULL::integer)::information_schema.cardinal_number AS character_octet_length,
    (NULL::name)::information_schema.sql_identifier AS character_set_catalog,
    (NULL::name)::information_schema.sql_identifier AS character_set_schema,
    (NULL::name)::information_schema.sql_identifier AS character_set_name,
    (NULL::name)::information_schema.sql_identifier AS collation_catalog,
    (NULL::name)::information_schema.sql_identifier AS collation_schema,
    (NULL::name)::information_schema.sql_identifier AS collation_name,
    (NULL::integer)::information_schema.cardinal_number AS numeric_precision,
    (NULL::integer)::information_schema.cardinal_number AS numeric_precision_radix,
    (NULL::integer)::information_schema.cardinal_number AS numeric_scale,
    (NULL::integer)::information_schema.cardinal_number AS datetime_precision,
    (NULL::character varying)::information_schema.character_data AS interval_type,
    (NULL::integer)::information_schema.cardinal_number AS interval_precision,
    (
        CASE
            WHEN (nt.nspname IS NOT NULL) THEN current_database()
            ELSE NULL::name
        END)::information_schema.sql_identifier AS type_udt_catalog,
    (nt.nspname)::information_schema.sql_identifier AS type_udt_schema,
    (t.typname)::information_schema.sql_identifier AS type_udt_name,
    (NULL::name)::information_schema.sql_identifier AS scope_catalog,
    (NULL::name)::information_schema.sql_identifier AS scope_schema,
    (NULL::name)::information_schema.sql_identifier AS scope_name,
    (NULL::integer)::information_schema.cardinal_number AS maximum_cardinality,
    (
        CASE
            WHEN (p.prokind <> 'p'::"char") THEN 0
            ELSE NULL::integer
        END)::information_schema.sql_identifier AS dtd_identifier,
    (
        CASE
            WHEN (l.lanname = 'sql'::name) THEN 'SQL'::text
            ELSE 'EXTERNAL'::text
        END)::information_schema.character_data AS routine_body,
    (
        CASE
            WHEN pg_has_role(p.proowner, 'USAGE'::text) THEN p.prosrc
            ELSE NULL::text
        END)::information_schema.character_data AS routine_definition,
    (
        CASE
            WHEN (l.lanname = 'c'::name) THEN p.prosrc
            ELSE NULL::text
        END)::information_schema.character_data AS external_name,
    (upper((l.lanname)::text))::information_schema.character_data AS external_language,
    ('GENERAL'::character varying)::information_schema.character_data AS parameter_style,
    (
        CASE
            WHEN (p.provolatile = 'i'::"char") THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_deterministic,
    ('MODIFIES'::character varying)::information_schema.character_data AS sql_data_access,
    (
        CASE
            WHEN (p.prokind <> 'p'::"char") THEN
            CASE
                WHEN p.proisstrict THEN 'YES'::text
                ELSE 'NO'::text
            END
            ELSE NULL::text
        END)::information_schema.yes_or_no AS is_null_call,
    (NULL::character varying)::information_schema.character_data AS sql_path,
    ('YES'::character varying)::information_schema.yes_or_no AS schema_level_routine,
    (0)::information_schema.cardinal_number AS max_dynamic_result_sets,
    (NULL::character varying)::information_schema.yes_or_no AS is_user_defined_cast,
    (NULL::character varying)::information_schema.yes_or_no AS is_implicitly_invocable,
    (
        CASE
            WHEN p.prosecdef THEN 'DEFINER'::text
            ELSE 'INVOKER'::text
        END)::information_schema.character_data AS security_type,
    (NULL::name)::information_schema.sql_identifier AS to_sql_specific_catalog,
    (NULL::name)::information_schema.sql_identifier AS to_sql_specific_schema,
    (NULL::name)::information_schema.sql_identifier AS to_sql_specific_name,
    ('NO'::character varying)::information_schema.yes_or_no AS as_locator,
    (NULL::timestamp with time zone)::information_schema.time_stamp AS created,
    (NULL::timestamp with time zone)::information_schema.time_stamp AS last_altered,
    (NULL::character varying)::information_schema.yes_or_no AS new_savepoint_level,
    ('NO'::character varying)::information_schema.yes_or_no AS is_udt_dependent,
    (NULL::character varying)::information_schema.character_data AS result_cast_from_data_type,
    (NULL::character varying)::information_schema.yes_or_no AS result_cast_as_locator,
    (NULL::integer)::information_schema.cardinal_number AS result_cast_char_max_length,
    (NULL::integer)::information_schema.cardinal_number AS result_cast_char_octet_length,
    (NULL::name)::information_schema.sql_identifier AS result_cast_char_set_catalog,
    (NULL::name)::information_schema.sql_identifier AS result_cast_char_set_schema,
    (NULL::name)::information_schema.sql_identifier AS result_cast_char_set_name,
    (NULL::name)::information_schema.sql_identifier AS result_cast_collation_catalog,
    (NULL::name)::information_schema.sql_identifier AS result_cast_collation_schema,
    (NULL::name)::information_schema.sql_identifier AS result_cast_collation_name,
    (NULL::integer)::information_schema.cardinal_number AS result_cast_numeric_precision,
    (NULL::integer)::information_schema.cardinal_number AS result_cast_numeric_precision_radix,
    (NULL::integer)::information_schema.cardinal_number AS result_cast_numeric_scale,
    (NULL::integer)::information_schema.cardinal_number AS result_cast_datetime_precision,
    (NULL::character varying)::information_schema.character_data AS result_cast_interval_type,
    (NULL::integer)::information_schema.cardinal_number AS result_cast_interval_precision,
    (NULL::name)::information_schema.sql_identifier AS result_cast_type_udt_catalog,
    (NULL::name)::information_schema.sql_identifier AS result_cast_type_udt_schema,
    (NULL::name)::information_schema.sql_identifier AS result_cast_type_udt_name,
    (NULL::name)::information_schema.sql_identifier AS result_cast_scope_catalog,
    (NULL::name)::information_schema.sql_identifier AS result_cast_scope_schema,
    (NULL::name)::information_schema.sql_identifier AS result_cast_scope_name,
    (NULL::integer)::information_schema.cardinal_number AS result_cast_maximum_cardinality,
    (NULL::name)::information_schema.sql_identifier AS result_cast_dtd_identifier
   FROM (((pg_namespace n
     JOIN pg_proc p ON ((n.oid = p.pronamespace)))
     JOIN pg_language l ON ((p.prolang = l.oid)))
     LEFT JOIN (pg_type t
     JOIN pg_namespace nt ON ((t.typnamespace = nt.oid))) ON (((p.prorettype = t.oid) AND (p.prokind <> 'p'::"char"))))
  WHERE (pg_has_role(p.proowner, 'USAGE'::text) OR has_function_privilege(p.oid, 'EXECUTE'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "routine_column_usage";
CREATE VIEW "routine_column_usage" AS  SELECT DISTINCT (current_database())::information_schema.sql_identifier AS specific_catalog,
    (np.nspname)::information_schema.sql_identifier AS specific_schema,
    (nameconcatoid(p.proname, p.oid))::information_schema.sql_identifier AS specific_name,
    (current_database())::information_schema.sql_identifier AS routine_catalog,
    (np.nspname)::information_schema.sql_identifier AS routine_schema,
    (p.proname)::information_schema.sql_identifier AS routine_name,
    (current_database())::information_schema.sql_identifier AS table_catalog,
    (nt.nspname)::information_schema.sql_identifier AS table_schema,
    (t.relname)::information_schema.sql_identifier AS table_name,
    (a.attname)::information_schema.sql_identifier AS column_name
   FROM pg_namespace np,
    pg_proc p,
    pg_depend d,
    pg_class t,
    pg_namespace nt,
    pg_attribute a
  WHERE ((np.oid = p.pronamespace) AND (p.oid = d.objid) AND (d.classid = ('pg_proc'::regclass)::oid) AND (d.refobjid = t.oid) AND (d.refclassid = ('pg_class'::regclass)::oid) AND (t.relnamespace = nt.oid) AND (t.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'f'::"char", 'p'::"char"])) AND (t.oid = a.attrelid) AND (d.refobjsubid = a.attnum) AND pg_has_role(t.relowner, 'USAGE'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "routine_privileges";
CREATE VIEW "routine_privileges" AS  SELECT (u_grantor.rolname)::information_schema.sql_identifier AS grantor,
    (grantee.rolname)::information_schema.sql_identifier AS grantee,
    (current_database())::information_schema.sql_identifier AS specific_catalog,
    (n.nspname)::information_schema.sql_identifier AS specific_schema,
    (nameconcatoid(p.proname, p.oid))::information_schema.sql_identifier AS specific_name,
    (current_database())::information_schema.sql_identifier AS routine_catalog,
    (n.nspname)::information_schema.sql_identifier AS routine_schema,
    (p.proname)::information_schema.sql_identifier AS routine_name,
    ('EXECUTE'::character varying)::information_schema.character_data AS privilege_type,
    (
        CASE
            WHEN (pg_has_role(grantee.oid, p.proowner, 'USAGE'::text) OR p.grantable) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_grantable
   FROM ( SELECT pg_proc.oid,
            pg_proc.proname,
            pg_proc.proowner,
            pg_proc.pronamespace,
            (aclexplode(COALESCE(pg_proc.proacl, acldefault('f'::"char", pg_proc.proowner)))).grantor AS grantor,
            (aclexplode(COALESCE(pg_proc.proacl, acldefault('f'::"char", pg_proc.proowner)))).grantee AS grantee,
            (aclexplode(COALESCE(pg_proc.proacl, acldefault('f'::"char", pg_proc.proowner)))).privilege_type AS privilege_type,
            (aclexplode(COALESCE(pg_proc.proacl, acldefault('f'::"char", pg_proc.proowner)))).is_grantable AS is_grantable
           FROM pg_proc) p(oid, proname, proowner, pronamespace, grantor, grantee, prtype, grantable),
    pg_namespace n,
    pg_authid u_grantor,
    ( SELECT pg_authid.oid,
            pg_authid.rolname
           FROM pg_authid
        UNION ALL
         SELECT (0)::oid AS oid,
            'PUBLIC'::name) grantee(oid, rolname)
  WHERE ((p.pronamespace = n.oid) AND (grantee.oid = p.grantee) AND (u_grantor.oid = p.grantor) AND (p.prtype = 'EXECUTE'::text) AND (pg_has_role(u_grantor.oid, 'USAGE'::text) OR pg_has_role(grantee.oid, 'USAGE'::text) OR (grantee.rolname = 'PUBLIC'::name)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "routine_routine_usage";
CREATE VIEW "routine_routine_usage" AS  SELECT DISTINCT (current_database())::information_schema.sql_identifier AS specific_catalog,
    (np.nspname)::information_schema.sql_identifier AS specific_schema,
    (nameconcatoid(p.proname, p.oid))::information_schema.sql_identifier AS specific_name,
    (current_database())::information_schema.sql_identifier AS routine_catalog,
    (np1.nspname)::information_schema.sql_identifier AS routine_schema,
    (nameconcatoid(p1.proname, p1.oid))::information_schema.sql_identifier AS routine_name
   FROM pg_namespace np,
    pg_proc p,
    pg_depend d,
    pg_proc p1,
    pg_namespace np1
  WHERE ((np.oid = p.pronamespace) AND (p.oid = d.objid) AND (d.classid = ('pg_proc'::regclass)::oid) AND (d.refobjid = p1.oid) AND (d.refclassid = ('pg_proc'::regclass)::oid) AND (p1.pronamespace = np1.oid) AND (p.prokind = ANY (ARRAY['f'::"char", 'p'::"char"])) AND (p1.prokind = ANY (ARRAY['f'::"char", 'p'::"char"])) AND pg_has_role(p1.proowner, 'USAGE'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "routine_sequence_usage";
CREATE VIEW "routine_sequence_usage" AS  SELECT DISTINCT (current_database())::information_schema.sql_identifier AS specific_catalog,
    (np.nspname)::information_schema.sql_identifier AS specific_schema,
    (nameconcatoid(p.proname, p.oid))::information_schema.sql_identifier AS specific_name,
    (current_database())::information_schema.sql_identifier AS routine_catalog,
    (np.nspname)::information_schema.sql_identifier AS routine_schema,
    (p.proname)::information_schema.sql_identifier AS routine_name,
    (current_database())::information_schema.sql_identifier AS sequence_catalog,
    (ns.nspname)::information_schema.sql_identifier AS sequence_schema,
    (s.relname)::information_schema.sql_identifier AS sequence_name
   FROM pg_namespace np,
    pg_proc p,
    pg_depend d,
    pg_class s,
    pg_namespace ns
  WHERE ((np.oid = p.pronamespace) AND (p.oid = d.objid) AND (d.classid = ('pg_proc'::regclass)::oid) AND (d.refobjid = s.oid) AND (d.refclassid = ('pg_class'::regclass)::oid) AND (s.relnamespace = ns.oid) AND (s.relkind = 'S'::"char") AND pg_has_role(s.relowner, 'USAGE'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "routine_table_usage";
CREATE VIEW "routine_table_usage" AS  SELECT DISTINCT (current_database())::information_schema.sql_identifier AS specific_catalog,
    (np.nspname)::information_schema.sql_identifier AS specific_schema,
    (nameconcatoid(p.proname, p.oid))::information_schema.sql_identifier AS specific_name,
    (current_database())::information_schema.sql_identifier AS routine_catalog,
    (np.nspname)::information_schema.sql_identifier AS routine_schema,
    (p.proname)::information_schema.sql_identifier AS routine_name,
    (current_database())::information_schema.sql_identifier AS table_catalog,
    (nt.nspname)::information_schema.sql_identifier AS table_schema,
    (t.relname)::information_schema.sql_identifier AS table_name
   FROM pg_namespace np,
    pg_proc p,
    pg_depend d,
    pg_class t,
    pg_namespace nt
  WHERE ((np.oid = p.pronamespace) AND (p.oid = d.objid) AND (d.classid = ('pg_proc'::regclass)::oid) AND (d.refobjid = t.oid) AND (d.refclassid = ('pg_class'::regclass)::oid) AND (t.relnamespace = nt.oid) AND (t.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'f'::"char", 'p'::"char"])) AND pg_has_role(t.relowner, 'USAGE'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "schemata";
CREATE VIEW "schemata" AS  SELECT (current_database())::information_schema.sql_identifier AS catalog_name,
    (n.nspname)::information_schema.sql_identifier AS schema_name,
    (u.rolname)::information_schema.sql_identifier AS schema_owner,
    (NULL::name)::information_schema.sql_identifier AS default_character_set_catalog,
    (NULL::name)::information_schema.sql_identifier AS default_character_set_schema,
    (NULL::name)::information_schema.sql_identifier AS default_character_set_name,
    (NULL::character varying)::information_schema.character_data AS sql_path
   FROM pg_namespace n,
    pg_authid u
  WHERE ((n.nspowner = u.oid) AND (pg_has_role(n.nspowner, 'USAGE'::text) OR has_schema_privilege(n.oid, 'CREATE, USAGE'::text)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "sequences";
CREATE VIEW "sequences" AS  SELECT (current_database())::information_schema.sql_identifier AS sequence_catalog,
    (nc.nspname)::information_schema.sql_identifier AS sequence_schema,
    (c.relname)::information_schema.sql_identifier AS sequence_name,
    (format_type(s.seqtypid, NULL::integer))::information_schema.character_data AS data_type,
    (information_schema._pg_numeric_precision(s.seqtypid, '-1'::integer))::information_schema.cardinal_number AS numeric_precision,
    (2)::information_schema.cardinal_number AS numeric_precision_radix,
    (0)::information_schema.cardinal_number AS numeric_scale,
    (s.seqstart)::information_schema.character_data AS start_value,
    (s.seqmin)::information_schema.character_data AS minimum_value,
    (s.seqmax)::information_schema.character_data AS maximum_value,
    (s.seqincrement)::information_schema.character_data AS increment,
    (
        CASE
            WHEN s.seqcycle THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS cycle_option
   FROM pg_namespace nc,
    pg_class c,
    pg_sequence s
  WHERE ((c.relnamespace = nc.oid) AND (c.relkind = 'S'::"char") AND (NOT (EXISTS ( SELECT 1
           FROM pg_depend
          WHERE ((pg_depend.classid = ('pg_class'::regclass)::oid) AND (pg_depend.objid = c.oid) AND (pg_depend.deptype = 'i'::"char"))))) AND (NOT pg_is_other_temp_schema(nc.oid)) AND (c.oid = s.seqrelid) AND (pg_has_role(c.relowner, 'USAGE'::text) OR has_sequence_privilege(c.oid, 'SELECT, UPDATE, USAGE'::text)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "tables";
CREATE VIEW "tables" AS  SELECT (current_database())::information_schema.sql_identifier AS table_catalog,
    (nc.nspname)::information_schema.sql_identifier AS table_schema,
    (c.relname)::information_schema.sql_identifier AS table_name,
    (
        CASE
            WHEN (nc.oid = pg_my_temp_schema()) THEN 'LOCAL TEMPORARY'::text
            WHEN (c.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])) THEN 'BASE TABLE'::text
            WHEN (c.relkind = 'v'::"char") THEN 'VIEW'::text
            WHEN (c.relkind = 'f'::"char") THEN 'FOREIGN'::text
            ELSE NULL::text
        END)::information_schema.character_data AS table_type,
    (NULL::name)::information_schema.sql_identifier AS self_referencing_column_name,
    (NULL::character varying)::information_schema.character_data AS reference_generation,
    (
        CASE
            WHEN (t.typname IS NOT NULL) THEN current_database()
            ELSE NULL::name
        END)::information_schema.sql_identifier AS user_defined_type_catalog,
    (nt.nspname)::information_schema.sql_identifier AS user_defined_type_schema,
    (t.typname)::information_schema.sql_identifier AS user_defined_type_name,
    (
        CASE
            WHEN ((c.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])) OR ((c.relkind = ANY (ARRAY['v'::"char", 'f'::"char"])) AND ((pg_relation_is_updatable((c.oid)::regclass, false) & 8) = 8))) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_insertable_into,
    (
        CASE
            WHEN (t.typname IS NOT NULL) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_typed,
    (NULL::character varying)::information_schema.character_data AS commit_action
   FROM ((pg_namespace nc
     JOIN pg_class c ON ((nc.oid = c.relnamespace)))
     LEFT JOIN (pg_type t
     JOIN pg_namespace nt ON ((t.typnamespace = nt.oid))) ON ((c.reloftype = t.oid)))
  WHERE ((c.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'f'::"char", 'p'::"char"])) AND (NOT pg_is_other_temp_schema(nc.oid)) AND (pg_has_role(c.relowner, 'USAGE'::text) OR has_table_privilege(c.oid, 'SELECT, INSERT, UPDATE, DELETE, TRUNCATE, REFERENCES, TRIGGER'::text) OR has_any_column_privilege(c.oid, 'SELECT, INSERT, UPDATE, REFERENCES'::text)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "table_constraints";
CREATE VIEW "table_constraints" AS  SELECT (current_database())::information_schema.sql_identifier AS constraint_catalog,
    (nc.nspname)::information_schema.sql_identifier AS constraint_schema,
    (c.conname)::information_schema.sql_identifier AS constraint_name,
    (current_database())::information_schema.sql_identifier AS table_catalog,
    (nr.nspname)::information_schema.sql_identifier AS table_schema,
    (r.relname)::information_schema.sql_identifier AS table_name,
    (
        CASE c.contype
            WHEN 'c'::"char" THEN 'CHECK'::text
            WHEN 'f'::"char" THEN 'FOREIGN KEY'::text
            WHEN 'p'::"char" THEN 'PRIMARY KEY'::text
            WHEN 'u'::"char" THEN 'UNIQUE'::text
            ELSE NULL::text
        END)::information_schema.character_data AS constraint_type,
    (
        CASE
            WHEN c.condeferrable THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_deferrable,
    (
        CASE
            WHEN c.condeferred THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS initially_deferred,
    ('YES'::character varying)::information_schema.yes_or_no AS enforced
   FROM pg_namespace nc,
    pg_namespace nr,
    pg_constraint c,
    pg_class r
  WHERE ((nc.oid = c.connamespace) AND (nr.oid = r.relnamespace) AND (c.conrelid = r.oid) AND (c.contype <> ALL (ARRAY['t'::"char", 'x'::"char"])) AND (r.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])) AND (NOT pg_is_other_temp_schema(nr.oid)) AND (pg_has_role(r.relowner, 'USAGE'::text) OR has_table_privilege(r.oid, 'INSERT, UPDATE, DELETE, TRUNCATE, REFERENCES, TRIGGER'::text) OR has_any_column_privilege(r.oid, 'INSERT, UPDATE, REFERENCES'::text)))
UNION ALL
 SELECT (current_database())::information_schema.sql_identifier AS constraint_catalog,
    (nr.nspname)::information_schema.sql_identifier AS constraint_schema,
    (((((((nr.oid)::text || '_'::text) || (r.oid)::text) || '_'::text) || (a.attnum)::text) || '_not_null'::text))::information_schema.sql_identifier AS constraint_name,
    (current_database())::information_schema.sql_identifier AS table_catalog,
    (nr.nspname)::information_schema.sql_identifier AS table_schema,
    (r.relname)::information_schema.sql_identifier AS table_name,
    ('CHECK'::character varying)::information_schema.character_data AS constraint_type,
    ('NO'::character varying)::information_schema.yes_or_no AS is_deferrable,
    ('NO'::character varying)::information_schema.yes_or_no AS initially_deferred,
    ('YES'::character varying)::information_schema.yes_or_no AS enforced
   FROM pg_namespace nr,
    pg_class r,
    pg_attribute a
  WHERE ((nr.oid = r.relnamespace) AND (r.oid = a.attrelid) AND a.attnotnull AND (a.attnum > 0) AND (NOT a.attisdropped) AND (r.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])) AND (NOT pg_is_other_temp_schema(nr.oid)) AND (pg_has_role(r.relowner, 'USAGE'::text) OR has_table_privilege(r.oid, 'INSERT, UPDATE, DELETE, TRUNCATE, REFERENCES, TRIGGER'::text) OR has_any_column_privilege(r.oid, 'INSERT, UPDATE, REFERENCES'::text)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "table_privileges";
CREATE VIEW "table_privileges" AS  SELECT (u_grantor.rolname)::information_schema.sql_identifier AS grantor,
    (grantee.rolname)::information_schema.sql_identifier AS grantee,
    (current_database())::information_schema.sql_identifier AS table_catalog,
    (nc.nspname)::information_schema.sql_identifier AS table_schema,
    (c.relname)::information_schema.sql_identifier AS table_name,
    (c.prtype)::information_schema.character_data AS privilege_type,
    (
        CASE
            WHEN (pg_has_role(grantee.oid, c.relowner, 'USAGE'::text) OR c.grantable) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_grantable,
    (
        CASE
            WHEN (c.prtype = 'SELECT'::text) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS with_hierarchy
   FROM ( SELECT pg_class.oid,
            pg_class.relname,
            pg_class.relnamespace,
            pg_class.relkind,
            pg_class.relowner,
            (aclexplode(COALESCE(pg_class.relacl, acldefault('r'::"char", pg_class.relowner)))).grantor AS grantor,
            (aclexplode(COALESCE(pg_class.relacl, acldefault('r'::"char", pg_class.relowner)))).grantee AS grantee,
            (aclexplode(COALESCE(pg_class.relacl, acldefault('r'::"char", pg_class.relowner)))).privilege_type AS privilege_type,
            (aclexplode(COALESCE(pg_class.relacl, acldefault('r'::"char", pg_class.relowner)))).is_grantable AS is_grantable
           FROM pg_class) c(oid, relname, relnamespace, relkind, relowner, grantor, grantee, prtype, grantable),
    pg_namespace nc,
    pg_authid u_grantor,
    ( SELECT pg_authid.oid,
            pg_authid.rolname
           FROM pg_authid
        UNION ALL
         SELECT (0)::oid AS oid,
            'PUBLIC'::name) grantee(oid, rolname)
  WHERE ((c.relnamespace = nc.oid) AND (c.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'f'::"char", 'p'::"char"])) AND (c.grantee = grantee.oid) AND (c.grantor = u_grantor.oid) AND (c.prtype = ANY (ARRAY['INSERT'::text, 'SELECT'::text, 'UPDATE'::text, 'DELETE'::text, 'TRUNCATE'::text, 'REFERENCES'::text, 'TRIGGER'::text])) AND (pg_has_role(u_grantor.oid, 'USAGE'::text) OR pg_has_role(grantee.oid, 'USAGE'::text) OR (grantee.rolname = 'PUBLIC'::name)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "transforms";
CREATE VIEW "transforms" AS  SELECT (current_database())::information_schema.sql_identifier AS udt_catalog,
    (nt.nspname)::information_schema.sql_identifier AS udt_schema,
    (t.typname)::information_schema.sql_identifier AS udt_name,
    (current_database())::information_schema.sql_identifier AS specific_catalog,
    (np.nspname)::information_schema.sql_identifier AS specific_schema,
    (nameconcatoid(p.proname, p.oid))::information_schema.sql_identifier AS specific_name,
    (l.lanname)::information_schema.sql_identifier AS group_name,
    ('FROM SQL'::character varying)::information_schema.character_data AS transform_type
   FROM (((((pg_type t
     JOIN pg_transform x ON ((t.oid = x.trftype)))
     JOIN pg_language l ON ((x.trflang = l.oid)))
     JOIN pg_proc p ON (((x.trffromsql)::oid = p.oid)))
     JOIN pg_namespace nt ON ((t.typnamespace = nt.oid)))
     JOIN pg_namespace np ON ((p.pronamespace = np.oid)))
UNION
 SELECT (current_database())::information_schema.sql_identifier AS udt_catalog,
    (nt.nspname)::information_schema.sql_identifier AS udt_schema,
    (t.typname)::information_schema.sql_identifier AS udt_name,
    (current_database())::information_schema.sql_identifier AS specific_catalog,
    (np.nspname)::information_schema.sql_identifier AS specific_schema,
    (nameconcatoid(p.proname, p.oid))::information_schema.sql_identifier AS specific_name,
    (l.lanname)::information_schema.sql_identifier AS group_name,
    ('TO SQL'::character varying)::information_schema.character_data AS transform_type
   FROM (((((pg_type t
     JOIN pg_transform x ON ((t.oid = x.trftype)))
     JOIN pg_language l ON ((x.trflang = l.oid)))
     JOIN pg_proc p ON (((x.trftosql)::oid = p.oid)))
     JOIN pg_namespace nt ON ((t.typnamespace = nt.oid)))
     JOIN pg_namespace np ON ((p.pronamespace = np.oid)))
  ORDER BY 1, 2, 3, 7, 8;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "triggered_update_columns";
CREATE VIEW "triggered_update_columns" AS  SELECT (current_database())::information_schema.sql_identifier AS trigger_catalog,
    (n.nspname)::information_schema.sql_identifier AS trigger_schema,
    (t.tgname)::information_schema.sql_identifier AS trigger_name,
    (current_database())::information_schema.sql_identifier AS event_object_catalog,
    (n.nspname)::information_schema.sql_identifier AS event_object_schema,
    (c.relname)::information_schema.sql_identifier AS event_object_table,
    (a.attname)::information_schema.sql_identifier AS event_object_column
   FROM pg_namespace n,
    pg_class c,
    pg_trigger t,
    ( SELECT ta0.tgoid,
            (ta0.tgat).x AS tgattnum,
            (ta0.tgat).n AS tgattpos
           FROM ( SELECT pg_trigger.oid AS tgoid,
                    information_schema._pg_expandarray(pg_trigger.tgattr) AS tgat
                   FROM pg_trigger) ta0) ta,
    pg_attribute a
  WHERE ((n.oid = c.relnamespace) AND (c.oid = t.tgrelid) AND (t.oid = ta.tgoid) AND ((a.attrelid = t.tgrelid) AND (a.attnum = ta.tgattnum)) AND (NOT t.tgisinternal) AND (NOT pg_is_other_temp_schema(n.oid)) AND (pg_has_role(c.relowner, 'USAGE'::text) OR has_column_privilege(c.oid, a.attnum, 'INSERT, UPDATE, REFERENCES'::text)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "triggers";
CREATE VIEW "triggers" AS  SELECT (current_database())::information_schema.sql_identifier AS trigger_catalog,
    (n.nspname)::information_schema.sql_identifier AS trigger_schema,
    (t.tgname)::information_schema.sql_identifier AS trigger_name,
    (em.text)::information_schema.character_data AS event_manipulation,
    (current_database())::information_schema.sql_identifier AS event_object_catalog,
    (n.nspname)::information_schema.sql_identifier AS event_object_schema,
    (c.relname)::information_schema.sql_identifier AS event_object_table,
    (rank() OVER (PARTITION BY (n.nspname)::information_schema.sql_identifier, (c.relname)::information_schema.sql_identifier, em.num, ((t.tgtype)::integer & 1), ((t.tgtype)::integer & 66) ORDER BY t.tgname))::information_schema.cardinal_number AS action_order,
    (
        CASE
            WHEN pg_has_role(c.relowner, 'USAGE'::text) THEN (regexp_match(pg_get_triggerdef(t.oid), '.{35,} WHEN \((.+)\) EXECUTE FUNCTION'::text))[1]
            ELSE NULL::text
        END)::information_schema.character_data AS action_condition,
    (SUBSTRING(pg_get_triggerdef(t.oid) FROM (POSITION(('EXECUTE FUNCTION'::text) IN (SUBSTRING(pg_get_triggerdef(t.oid) FROM 48))) + 47)))::information_schema.character_data AS action_statement,
    (
        CASE ((t.tgtype)::integer & 1)
            WHEN 1 THEN 'ROW'::text
            ELSE 'STATEMENT'::text
        END)::information_schema.character_data AS action_orientation,
    (
        CASE ((t.tgtype)::integer & 66)
            WHEN 2 THEN 'BEFORE'::text
            WHEN 64 THEN 'INSTEAD OF'::text
            ELSE 'AFTER'::text
        END)::information_schema.character_data AS action_timing,
    (t.tgoldtable)::information_schema.sql_identifier AS action_reference_old_table,
    (t.tgnewtable)::information_schema.sql_identifier AS action_reference_new_table,
    (NULL::name)::information_schema.sql_identifier AS action_reference_old_row,
    (NULL::name)::information_schema.sql_identifier AS action_reference_new_row,
    (NULL::timestamp with time zone)::information_schema.time_stamp AS created
   FROM pg_namespace n,
    pg_class c,
    pg_trigger t,
    ( VALUES (4,'INSERT'::text), (8,'DELETE'::text), (16,'UPDATE'::text)) em(num, text)
  WHERE ((n.oid = c.relnamespace) AND (c.oid = t.tgrelid) AND (((t.tgtype)::integer & em.num) <> 0) AND (NOT t.tgisinternal) AND (NOT pg_is_other_temp_schema(n.oid)) AND (pg_has_role(c.relowner, 'USAGE'::text) OR has_table_privilege(c.oid, 'INSERT, UPDATE, DELETE, TRUNCATE, REFERENCES, TRIGGER'::text) OR has_any_column_privilege(c.oid, 'INSERT, UPDATE, REFERENCES'::text)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "udt_privileges";
CREATE VIEW "udt_privileges" AS  SELECT (u_grantor.rolname)::information_schema.sql_identifier AS grantor,
    (grantee.rolname)::information_schema.sql_identifier AS grantee,
    (current_database())::information_schema.sql_identifier AS udt_catalog,
    (n.nspname)::information_schema.sql_identifier AS udt_schema,
    (t.typname)::information_schema.sql_identifier AS udt_name,
    ('TYPE USAGE'::character varying)::information_schema.character_data AS privilege_type,
    (
        CASE
            WHEN (pg_has_role(grantee.oid, t.typowner, 'USAGE'::text) OR t.grantable) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_grantable
   FROM ( SELECT pg_type.oid,
            pg_type.typname,
            pg_type.typnamespace,
            pg_type.typtype,
            pg_type.typowner,
            (aclexplode(COALESCE(pg_type.typacl, acldefault('T'::"char", pg_type.typowner)))).grantor AS grantor,
            (aclexplode(COALESCE(pg_type.typacl, acldefault('T'::"char", pg_type.typowner)))).grantee AS grantee,
            (aclexplode(COALESCE(pg_type.typacl, acldefault('T'::"char", pg_type.typowner)))).privilege_type AS privilege_type,
            (aclexplode(COALESCE(pg_type.typacl, acldefault('T'::"char", pg_type.typowner)))).is_grantable AS is_grantable
           FROM pg_type) t(oid, typname, typnamespace, typtype, typowner, grantor, grantee, prtype, grantable),
    pg_namespace n,
    pg_authid u_grantor,
    ( SELECT pg_authid.oid,
            pg_authid.rolname
           FROM pg_authid
        UNION ALL
         SELECT (0)::oid AS oid,
            'PUBLIC'::name) grantee(oid, rolname)
  WHERE ((t.typnamespace = n.oid) AND (t.typtype = 'c'::"char") AND (t.grantee = grantee.oid) AND (t.grantor = u_grantor.oid) AND (t.prtype = 'USAGE'::text) AND (pg_has_role(u_grantor.oid, 'USAGE'::text) OR pg_has_role(grantee.oid, 'USAGE'::text) OR (grantee.rolname = 'PUBLIC'::name)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "usage_privileges";
CREATE VIEW "usage_privileges" AS  SELECT (u.rolname)::information_schema.sql_identifier AS grantor,
    ('PUBLIC'::name)::information_schema.sql_identifier AS grantee,
    (current_database())::information_schema.sql_identifier AS object_catalog,
    (n.nspname)::information_schema.sql_identifier AS object_schema,
    (c.collname)::information_schema.sql_identifier AS object_name,
    ('COLLATION'::character varying)::information_schema.character_data AS object_type,
    ('USAGE'::character varying)::information_schema.character_data AS privilege_type,
    ('NO'::character varying)::information_schema.yes_or_no AS is_grantable
   FROM pg_authid u,
    pg_namespace n,
    pg_collation c
  WHERE ((u.oid = c.collowner) AND (c.collnamespace = n.oid) AND (c.collencoding = ANY (ARRAY['-1'::integer, ( SELECT pg_database.encoding
           FROM pg_database
          WHERE (pg_database.datname = current_database()))])))
UNION ALL
 SELECT (u_grantor.rolname)::information_schema.sql_identifier AS grantor,
    (grantee.rolname)::information_schema.sql_identifier AS grantee,
    (current_database())::information_schema.sql_identifier AS object_catalog,
    (n.nspname)::information_schema.sql_identifier AS object_schema,
    (t.typname)::information_schema.sql_identifier AS object_name,
    ('DOMAIN'::character varying)::information_schema.character_data AS object_type,
    ('USAGE'::character varying)::information_schema.character_data AS privilege_type,
    (
        CASE
            WHEN (pg_has_role(grantee.oid, t.typowner, 'USAGE'::text) OR t.grantable) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_grantable
   FROM ( SELECT pg_type.oid,
            pg_type.typname,
            pg_type.typnamespace,
            pg_type.typtype,
            pg_type.typowner,
            (aclexplode(COALESCE(pg_type.typacl, acldefault('T'::"char", pg_type.typowner)))).grantor AS grantor,
            (aclexplode(COALESCE(pg_type.typacl, acldefault('T'::"char", pg_type.typowner)))).grantee AS grantee,
            (aclexplode(COALESCE(pg_type.typacl, acldefault('T'::"char", pg_type.typowner)))).privilege_type AS privilege_type,
            (aclexplode(COALESCE(pg_type.typacl, acldefault('T'::"char", pg_type.typowner)))).is_grantable AS is_grantable
           FROM pg_type) t(oid, typname, typnamespace, typtype, typowner, grantor, grantee, prtype, grantable),
    pg_namespace n,
    pg_authid u_grantor,
    ( SELECT pg_authid.oid,
            pg_authid.rolname
           FROM pg_authid
        UNION ALL
         SELECT (0)::oid AS oid,
            'PUBLIC'::name) grantee(oid, rolname)
  WHERE ((t.typnamespace = n.oid) AND (t.typtype = 'd'::"char") AND (t.grantee = grantee.oid) AND (t.grantor = u_grantor.oid) AND (t.prtype = 'USAGE'::text) AND (pg_has_role(u_grantor.oid, 'USAGE'::text) OR pg_has_role(grantee.oid, 'USAGE'::text) OR (grantee.rolname = 'PUBLIC'::name)))
UNION ALL
 SELECT (u_grantor.rolname)::information_schema.sql_identifier AS grantor,
    (grantee.rolname)::information_schema.sql_identifier AS grantee,
    (current_database())::information_schema.sql_identifier AS object_catalog,
    (''::name)::information_schema.sql_identifier AS object_schema,
    (fdw.fdwname)::information_schema.sql_identifier AS object_name,
    ('FOREIGN DATA WRAPPER'::character varying)::information_schema.character_data AS object_type,
    ('USAGE'::character varying)::information_schema.character_data AS privilege_type,
    (
        CASE
            WHEN (pg_has_role(grantee.oid, fdw.fdwowner, 'USAGE'::text) OR fdw.grantable) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_grantable
   FROM ( SELECT pg_foreign_data_wrapper.fdwname,
            pg_foreign_data_wrapper.fdwowner,
            (aclexplode(COALESCE(pg_foreign_data_wrapper.fdwacl, acldefault('F'::"char", pg_foreign_data_wrapper.fdwowner)))).grantor AS grantor,
            (aclexplode(COALESCE(pg_foreign_data_wrapper.fdwacl, acldefault('F'::"char", pg_foreign_data_wrapper.fdwowner)))).grantee AS grantee,
            (aclexplode(COALESCE(pg_foreign_data_wrapper.fdwacl, acldefault('F'::"char", pg_foreign_data_wrapper.fdwowner)))).privilege_type AS privilege_type,
            (aclexplode(COALESCE(pg_foreign_data_wrapper.fdwacl, acldefault('F'::"char", pg_foreign_data_wrapper.fdwowner)))).is_grantable AS is_grantable
           FROM pg_foreign_data_wrapper) fdw(fdwname, fdwowner, grantor, grantee, prtype, grantable),
    pg_authid u_grantor,
    ( SELECT pg_authid.oid,
            pg_authid.rolname
           FROM pg_authid
        UNION ALL
         SELECT (0)::oid AS oid,
            'PUBLIC'::name) grantee(oid, rolname)
  WHERE ((u_grantor.oid = fdw.grantor) AND (grantee.oid = fdw.grantee) AND (fdw.prtype = 'USAGE'::text) AND (pg_has_role(u_grantor.oid, 'USAGE'::text) OR pg_has_role(grantee.oid, 'USAGE'::text) OR (grantee.rolname = 'PUBLIC'::name)))
UNION ALL
 SELECT (u_grantor.rolname)::information_schema.sql_identifier AS grantor,
    (grantee.rolname)::information_schema.sql_identifier AS grantee,
    (current_database())::information_schema.sql_identifier AS object_catalog,
    (''::name)::information_schema.sql_identifier AS object_schema,
    (srv.srvname)::information_schema.sql_identifier AS object_name,
    ('FOREIGN SERVER'::character varying)::information_schema.character_data AS object_type,
    ('USAGE'::character varying)::information_schema.character_data AS privilege_type,
    (
        CASE
            WHEN (pg_has_role(grantee.oid, srv.srvowner, 'USAGE'::text) OR srv.grantable) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_grantable
   FROM ( SELECT pg_foreign_server.srvname,
            pg_foreign_server.srvowner,
            (aclexplode(COALESCE(pg_foreign_server.srvacl, acldefault('S'::"char", pg_foreign_server.srvowner)))).grantor AS grantor,
            (aclexplode(COALESCE(pg_foreign_server.srvacl, acldefault('S'::"char", pg_foreign_server.srvowner)))).grantee AS grantee,
            (aclexplode(COALESCE(pg_foreign_server.srvacl, acldefault('S'::"char", pg_foreign_server.srvowner)))).privilege_type AS privilege_type,
            (aclexplode(COALESCE(pg_foreign_server.srvacl, acldefault('S'::"char", pg_foreign_server.srvowner)))).is_grantable AS is_grantable
           FROM pg_foreign_server) srv(srvname, srvowner, grantor, grantee, prtype, grantable),
    pg_authid u_grantor,
    ( SELECT pg_authid.oid,
            pg_authid.rolname
           FROM pg_authid
        UNION ALL
         SELECT (0)::oid AS oid,
            'PUBLIC'::name) grantee(oid, rolname)
  WHERE ((u_grantor.oid = srv.grantor) AND (grantee.oid = srv.grantee) AND (srv.prtype = 'USAGE'::text) AND (pg_has_role(u_grantor.oid, 'USAGE'::text) OR pg_has_role(grantee.oid, 'USAGE'::text) OR (grantee.rolname = 'PUBLIC'::name)))
UNION ALL
 SELECT (u_grantor.rolname)::information_schema.sql_identifier AS grantor,
    (grantee.rolname)::information_schema.sql_identifier AS grantee,
    (current_database())::information_schema.sql_identifier AS object_catalog,
    (n.nspname)::information_schema.sql_identifier AS object_schema,
    (c.relname)::information_schema.sql_identifier AS object_name,
    ('SEQUENCE'::character varying)::information_schema.character_data AS object_type,
    ('USAGE'::character varying)::information_schema.character_data AS privilege_type,
    (
        CASE
            WHEN (pg_has_role(grantee.oid, c.relowner, 'USAGE'::text) OR c.grantable) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_grantable
   FROM ( SELECT pg_class.oid,
            pg_class.relname,
            pg_class.relnamespace,
            pg_class.relkind,
            pg_class.relowner,
            (aclexplode(COALESCE(pg_class.relacl, acldefault('r'::"char", pg_class.relowner)))).grantor AS grantor,
            (aclexplode(COALESCE(pg_class.relacl, acldefault('r'::"char", pg_class.relowner)))).grantee AS grantee,
            (aclexplode(COALESCE(pg_class.relacl, acldefault('r'::"char", pg_class.relowner)))).privilege_type AS privilege_type,
            (aclexplode(COALESCE(pg_class.relacl, acldefault('r'::"char", pg_class.relowner)))).is_grantable AS is_grantable
           FROM pg_class) c(oid, relname, relnamespace, relkind, relowner, grantor, grantee, prtype, grantable),
    pg_namespace n,
    pg_authid u_grantor,
    ( SELECT pg_authid.oid,
            pg_authid.rolname
           FROM pg_authid
        UNION ALL
         SELECT (0)::oid AS oid,
            'PUBLIC'::name) grantee(oid, rolname)
  WHERE ((c.relnamespace = n.oid) AND (c.relkind = 'S'::"char") AND (c.grantee = grantee.oid) AND (c.grantor = u_grantor.oid) AND (c.prtype = 'USAGE'::text) AND (pg_has_role(u_grantor.oid, 'USAGE'::text) OR pg_has_role(grantee.oid, 'USAGE'::text) OR (grantee.rolname = 'PUBLIC'::name)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "user_defined_types";
CREATE VIEW "user_defined_types" AS  SELECT (current_database())::information_schema.sql_identifier AS user_defined_type_catalog,
    (n.nspname)::information_schema.sql_identifier AS user_defined_type_schema,
    (c.relname)::information_schema.sql_identifier AS user_defined_type_name,
    ('STRUCTURED'::character varying)::information_schema.character_data AS user_defined_type_category,
    ('YES'::character varying)::information_schema.yes_or_no AS is_instantiable,
    (NULL::character varying)::information_schema.yes_or_no AS is_final,
    (NULL::character varying)::information_schema.character_data AS ordering_form,
    (NULL::character varying)::information_schema.character_data AS ordering_category,
    (NULL::name)::information_schema.sql_identifier AS ordering_routine_catalog,
    (NULL::name)::information_schema.sql_identifier AS ordering_routine_schema,
    (NULL::name)::information_schema.sql_identifier AS ordering_routine_name,
    (NULL::character varying)::information_schema.character_data AS reference_type,
    (NULL::character varying)::information_schema.character_data AS data_type,
    (NULL::integer)::information_schema.cardinal_number AS character_maximum_length,
    (NULL::integer)::information_schema.cardinal_number AS character_octet_length,
    (NULL::name)::information_schema.sql_identifier AS character_set_catalog,
    (NULL::name)::information_schema.sql_identifier AS character_set_schema,
    (NULL::name)::information_schema.sql_identifier AS character_set_name,
    (NULL::name)::information_schema.sql_identifier AS collation_catalog,
    (NULL::name)::information_schema.sql_identifier AS collation_schema,
    (NULL::name)::information_schema.sql_identifier AS collation_name,
    (NULL::integer)::information_schema.cardinal_number AS numeric_precision,
    (NULL::integer)::information_schema.cardinal_number AS numeric_precision_radix,
    (NULL::integer)::information_schema.cardinal_number AS numeric_scale,
    (NULL::integer)::information_schema.cardinal_number AS datetime_precision,
    (NULL::character varying)::information_schema.character_data AS interval_type,
    (NULL::integer)::information_schema.cardinal_number AS interval_precision,
    (NULL::name)::information_schema.sql_identifier AS source_dtd_identifier,
    (NULL::name)::information_schema.sql_identifier AS ref_dtd_identifier
   FROM pg_namespace n,
    pg_class c,
    pg_type t
  WHERE ((n.oid = c.relnamespace) AND (t.typrelid = c.oid) AND (c.relkind = 'c'::"char") AND (pg_has_role(t.typowner, 'USAGE'::text) OR has_type_privilege(t.oid, 'USAGE'::text)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "user_mappings";
CREATE VIEW "user_mappings" AS  SELECT _pg_user_mappings.authorization_identifier,
    _pg_user_mappings.foreign_server_catalog,
    _pg_user_mappings.foreign_server_name
   FROM information_schema._pg_user_mappings;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "user_mapping_options";
CREATE VIEW "user_mapping_options" AS  SELECT um.authorization_identifier,
    um.foreign_server_catalog,
    um.foreign_server_name,
    (opts.option_name)::information_schema.sql_identifier AS option_name,
    (
        CASE
            WHEN (((um.umuser <> (0)::oid) AND ((um.authorization_identifier)::name = CURRENT_USER)) OR ((um.umuser = (0)::oid) AND pg_has_role((um.srvowner)::name, 'USAGE'::text)) OR ( SELECT pg_authid.rolsuper
               FROM pg_authid
              WHERE (pg_authid.rolname = CURRENT_USER))) THEN opts.option_value
            ELSE NULL::text
        END)::information_schema.character_data AS option_value
   FROM information_schema._pg_user_mappings um,
    LATERAL pg_options_to_table(um.umoptions) opts(option_name, option_value);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "views";
CREATE VIEW "views" AS  SELECT (current_database())::information_schema.sql_identifier AS table_catalog,
    (nc.nspname)::information_schema.sql_identifier AS table_schema,
    (c.relname)::information_schema.sql_identifier AS table_name,
    (
        CASE
            WHEN pg_has_role(c.relowner, 'USAGE'::text) THEN pg_get_viewdef(c.oid)
            ELSE NULL::text
        END)::information_schema.character_data AS view_definition,
    (
        CASE
            WHEN ('check_option=cascaded'::text = ANY (c.reloptions)) THEN 'CASCADED'::text
            WHEN ('check_option=local'::text = ANY (c.reloptions)) THEN 'LOCAL'::text
            ELSE 'NONE'::text
        END)::information_schema.character_data AS check_option,
    (
        CASE
            WHEN ((pg_relation_is_updatable((c.oid)::regclass, false) & 20) = 20) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_updatable,
    (
        CASE
            WHEN ((pg_relation_is_updatable((c.oid)::regclass, false) & 8) = 8) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_insertable_into,
    (
        CASE
            WHEN (EXISTS ( SELECT 1
               FROM pg_trigger
              WHERE ((pg_trigger.tgrelid = c.oid) AND (((pg_trigger.tgtype)::integer & 81) = 81)))) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_trigger_updatable,
    (
        CASE
            WHEN (EXISTS ( SELECT 1
               FROM pg_trigger
              WHERE ((pg_trigger.tgrelid = c.oid) AND (((pg_trigger.tgtype)::integer & 73) = 73)))) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_trigger_deletable,
    (
        CASE
            WHEN (EXISTS ( SELECT 1
               FROM pg_trigger
              WHERE ((pg_trigger.tgrelid = c.oid) AND (((pg_trigger.tgtype)::integer & 69) = 69)))) THEN 'YES'::text
            ELSE 'NO'::text
        END)::information_schema.yes_or_no AS is_trigger_insertable_into
   FROM pg_namespace nc,
    pg_class c
  WHERE ((c.relnamespace = nc.oid) AND (c.relkind = 'v'::"char") AND (NOT pg_is_other_temp_schema(nc.oid)) AND (pg_has_role(c.relowner, 'USAGE'::text) OR has_table_privilege(c.oid, 'SELECT, INSERT, UPDATE, DELETE, TRUNCATE, REFERENCES, TRIGGER'::text) OR has_any_column_privilege(c.oid, 'SELECT, INSERT, UPDATE, REFERENCES'::text)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "view_column_usage";
CREATE VIEW "view_column_usage" AS  SELECT DISTINCT (current_database())::information_schema.sql_identifier AS view_catalog,
    (nv.nspname)::information_schema.sql_identifier AS view_schema,
    (v.relname)::information_schema.sql_identifier AS view_name,
    (current_database())::information_schema.sql_identifier AS table_catalog,
    (nt.nspname)::information_schema.sql_identifier AS table_schema,
    (t.relname)::information_schema.sql_identifier AS table_name,
    (a.attname)::information_schema.sql_identifier AS column_name
   FROM pg_namespace nv,
    pg_class v,
    pg_depend dv,
    pg_depend dt,
    pg_class t,
    pg_namespace nt,
    pg_attribute a
  WHERE ((nv.oid = v.relnamespace) AND (v.relkind = 'v'::"char") AND (v.oid = dv.refobjid) AND (dv.refclassid = ('pg_class'::regclass)::oid) AND (dv.classid = ('pg_rewrite'::regclass)::oid) AND (dv.deptype = 'i'::"char") AND (dv.objid = dt.objid) AND (dv.refobjid <> dt.refobjid) AND (dt.classid = ('pg_rewrite'::regclass)::oid) AND (dt.refclassid = ('pg_class'::regclass)::oid) AND (dt.refobjid = t.oid) AND (t.relnamespace = nt.oid) AND (t.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'f'::"char", 'p'::"char"])) AND (t.oid = a.attrelid) AND (dt.refobjsubid = a.attnum) AND pg_has_role(t.relowner, 'USAGE'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "view_routine_usage";
CREATE VIEW "view_routine_usage" AS  SELECT DISTINCT (current_database())::information_schema.sql_identifier AS table_catalog,
    (nv.nspname)::information_schema.sql_identifier AS table_schema,
    (v.relname)::information_schema.sql_identifier AS table_name,
    (current_database())::information_schema.sql_identifier AS specific_catalog,
    (np.nspname)::information_schema.sql_identifier AS specific_schema,
    (nameconcatoid(p.proname, p.oid))::information_schema.sql_identifier AS specific_name
   FROM pg_namespace nv,
    pg_class v,
    pg_depend dv,
    pg_depend dp,
    pg_proc p,
    pg_namespace np
  WHERE ((nv.oid = v.relnamespace) AND (v.relkind = 'v'::"char") AND (v.oid = dv.refobjid) AND (dv.refclassid = ('pg_class'::regclass)::oid) AND (dv.classid = ('pg_rewrite'::regclass)::oid) AND (dv.deptype = 'i'::"char") AND (dv.objid = dp.objid) AND (dp.classid = ('pg_rewrite'::regclass)::oid) AND (dp.refclassid = ('pg_proc'::regclass)::oid) AND (dp.refobjid = p.oid) AND (p.pronamespace = np.oid) AND pg_has_role(p.proowner, 'USAGE'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "view_table_usage";
CREATE VIEW "view_table_usage" AS  SELECT DISTINCT (current_database())::information_schema.sql_identifier AS view_catalog,
    (nv.nspname)::information_schema.sql_identifier AS view_schema,
    (v.relname)::information_schema.sql_identifier AS view_name,
    (current_database())::information_schema.sql_identifier AS table_catalog,
    (nt.nspname)::information_schema.sql_identifier AS table_schema,
    (t.relname)::information_schema.sql_identifier AS table_name
   FROM pg_namespace nv,
    pg_class v,
    pg_depend dv,
    pg_depend dt,
    pg_class t,
    pg_namespace nt
  WHERE ((nv.oid = v.relnamespace) AND (v.relkind = 'v'::"char") AND (v.oid = dv.refobjid) AND (dv.refclassid = ('pg_class'::regclass)::oid) AND (dv.classid = ('pg_rewrite'::regclass)::oid) AND (dv.deptype = 'i'::"char") AND (dv.objid = dt.objid) AND (dv.refobjid <> dt.refobjid) AND (dt.classid = ('pg_rewrite'::regclass)::oid) AND (dt.refclassid = ('pg_class'::regclass)::oid) AND (dt.refobjid = t.oid) AND (t.relnamespace = nt.oid) AND (t.relkind = ANY (ARRAY['r'::"char", 'v'::"char", 'f'::"char", 'p'::"char"])) AND pg_has_role(t.relowner, 'USAGE'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "_pg_foreign_data_wrappers";
CREATE VIEW "_pg_foreign_data_wrappers" AS  SELECT w.oid,
    w.fdwowner,
    w.fdwoptions,
    (current_database())::information_schema.sql_identifier AS foreign_data_wrapper_catalog,
    (w.fdwname)::information_schema.sql_identifier AS foreign_data_wrapper_name,
    (u.rolname)::information_schema.sql_identifier AS authorization_identifier,
    ('c'::character varying)::information_schema.character_data AS foreign_data_wrapper_language
   FROM pg_foreign_data_wrapper w,
    pg_authid u
  WHERE ((u.oid = w.fdwowner) AND (pg_has_role(w.fdwowner, 'USAGE'::text) OR has_foreign_data_wrapper_privilege(w.oid, 'USAGE'::text)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "_pg_foreign_servers";
CREATE VIEW "_pg_foreign_servers" AS  SELECT s.oid,
    s.srvoptions,
    (current_database())::information_schema.sql_identifier AS foreign_server_catalog,
    (s.srvname)::information_schema.sql_identifier AS foreign_server_name,
    (current_database())::information_schema.sql_identifier AS foreign_data_wrapper_catalog,
    (w.fdwname)::information_schema.sql_identifier AS foreign_data_wrapper_name,
    (s.srvtype)::information_schema.character_data AS foreign_server_type,
    (s.srvversion)::information_schema.character_data AS foreign_server_version,
    (u.rolname)::information_schema.sql_identifier AS authorization_identifier
   FROM pg_foreign_server s,
    pg_foreign_data_wrapper w,
    pg_authid u
  WHERE ((w.oid = s.srvfdw) AND (u.oid = s.srvowner) AND (pg_has_role(s.srvowner, 'USAGE'::text) OR has_server_privilege(s.oid, 'USAGE'::text)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "_pg_foreign_tables";
CREATE VIEW "_pg_foreign_tables" AS  SELECT (current_database())::information_schema.sql_identifier AS foreign_table_catalog,
    (n.nspname)::information_schema.sql_identifier AS foreign_table_schema,
    (c.relname)::information_schema.sql_identifier AS foreign_table_name,
    t.ftoptions,
    (current_database())::information_schema.sql_identifier AS foreign_server_catalog,
    (s.srvname)::information_schema.sql_identifier AS foreign_server_name,
    (u.rolname)::information_schema.sql_identifier AS authorization_identifier
   FROM pg_foreign_table t,
    pg_foreign_server s,
    pg_foreign_data_wrapper w,
    pg_authid u,
    pg_namespace n,
    pg_class c
  WHERE ((w.oid = s.srvfdw) AND (u.oid = c.relowner) AND (pg_has_role(c.relowner, 'USAGE'::text) OR has_table_privilege(c.oid, 'SELECT, INSERT, UPDATE, DELETE, TRUNCATE, REFERENCES, TRIGGER'::text) OR has_any_column_privilege(c.oid, 'SELECT, INSERT, UPDATE, REFERENCES'::text)) AND (n.oid = c.relnamespace) AND (c.oid = t.ftrelid) AND (c.relkind = 'f'::"char") AND (s.oid = t.ftserver));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "_pg_foreign_table_columns";
CREATE VIEW "_pg_foreign_table_columns" AS  SELECT n.nspname,
    c.relname,
    a.attname,
    a.attfdwoptions
   FROM pg_foreign_table t,
    pg_authid u,
    pg_namespace n,
    pg_class c,
    pg_attribute a
  WHERE ((u.oid = c.relowner) AND (pg_has_role(c.relowner, 'USAGE'::text) OR has_column_privilege(c.oid, a.attnum, 'SELECT, INSERT, UPDATE, REFERENCES'::text)) AND (n.oid = c.relnamespace) AND (c.oid = t.ftrelid) AND (c.relkind = 'f'::"char") AND (a.attrelid = c.oid) AND (a.attnum > 0));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "_pg_user_mappings";
CREATE VIEW "_pg_user_mappings" AS  SELECT um.oid,
    um.umoptions,
    um.umuser,
    (COALESCE(u.rolname, 'PUBLIC'::name))::information_schema.sql_identifier AS authorization_identifier,
    s.foreign_server_catalog,
    s.foreign_server_name,
    s.authorization_identifier AS srvowner
   FROM (pg_user_mapping um
     LEFT JOIN pg_authid u ON ((u.oid = um.umuser))),
    information_schema._pg_foreign_servers s
  WHERE (s.oid = um.umserver);;

-- Copiando estrutura para função pg_catalog.abbrev
DELIMITER //
CREATE FUNCTION "abbrev"() RETURNS TEXT AS $$ inet_abbrev $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.abbrev
DELIMITER //
CREATE FUNCTION "abbrev"() RETURNS TEXT AS $$ cidr_abbrev $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.abs
DELIMITER //
CREATE FUNCTION "abs"() RETURNS BIGINT AS $$ int8abs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.abs
DELIMITER //
CREATE FUNCTION "abs"() RETURNS DOUBLE PRECISION AS $$ float8abs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.abs
DELIMITER //
CREATE FUNCTION "abs"() RETURNS REAL AS $$ float4abs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.abs
DELIMITER //
CREATE FUNCTION "abs"() RETURNS NUMERIC AS $$ numeric_abs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.abs
DELIMITER //
CREATE FUNCTION "abs"() RETURNS SMALLINT AS $$ int2abs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.abs
DELIMITER //
CREATE FUNCTION "abs"() RETURNS INTEGER AS $$ int4abs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.aclcontains
DELIMITER //
CREATE FUNCTION "aclcontains"() RETURNS BOOLEAN AS $$ aclcontains $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.acldefault
DELIMITER //
CREATE FUNCTION "acldefault"() RETURNS UNKNOWN AS $$ acldefault_sql $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.aclexplode
DELIMITER //
CREATE FUNCTION "aclexplode"(acl UNKNOWN, grantor , grantee , privilege_type , is_grantable ) RETURNS UNKNOWN AS $$ aclexplode $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.aclinsert
DELIMITER //
CREATE FUNCTION "aclinsert"() RETURNS UNKNOWN AS $$ aclinsert $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.aclitemeq
DELIMITER //
CREATE FUNCTION "aclitemeq"() RETURNS BOOLEAN AS $$ aclitem_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.aclitemin
DELIMITER //
CREATE FUNCTION "aclitemin"() RETURNS UNKNOWN AS $$ aclitemin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.aclitemout
DELIMITER //
CREATE FUNCTION "aclitemout"() RETURNS UNKNOWN AS $$ aclitemout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.aclremove
DELIMITER //
CREATE FUNCTION "aclremove"() RETURNS UNKNOWN AS $$ aclremove $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.acos
DELIMITER //
CREATE FUNCTION "acos"() RETURNS DOUBLE PRECISION AS $$ dacos $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.acosd
DELIMITER //
CREATE FUNCTION "acosd"() RETURNS DOUBLE PRECISION AS $$ dacosd $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.acosh
DELIMITER //
CREATE FUNCTION "acosh"() RETURNS DOUBLE PRECISION AS $$ dacosh $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.age
DELIMITER //
CREATE FUNCTION "age"() RETURNS INTERVAL AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.age
DELIMITER //
CREATE FUNCTION "age"() RETURNS INTERVAL AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.age
DELIMITER //
CREATE FUNCTION "age"() RETURNS INTERVAL AS $$ timestamp_age $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.age
DELIMITER //
CREATE FUNCTION "age"() RETURNS INTERVAL AS $$ timestamptz_age $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.age
DELIMITER //
CREATE FUNCTION "age"() RETURNS INTEGER AS $$ xid_age $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.amvalidate
DELIMITER //
CREATE FUNCTION "amvalidate"() RETURNS BOOLEAN AS $$ amvalidate $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anyarray_in
DELIMITER //
CREATE FUNCTION "anyarray_in"() RETURNS UNKNOWN AS $$ anyarray_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anyarray_out
DELIMITER //
CREATE FUNCTION "anyarray_out"() RETURNS UNKNOWN AS $$ anyarray_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anyarray_recv
DELIMITER //
CREATE FUNCTION "anyarray_recv"() RETURNS UNKNOWN AS $$ anyarray_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anyarray_send
DELIMITER //
CREATE FUNCTION "anyarray_send"() RETURNS BYTEA AS $$ anyarray_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anycompatiblearray_in
DELIMITER //
CREATE FUNCTION "anycompatiblearray_in"() RETURNS UNKNOWN AS $$ anycompatiblearray_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anycompatiblearray_out
DELIMITER //
CREATE FUNCTION "anycompatiblearray_out"() RETURNS UNKNOWN AS $$ anycompatiblearray_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anycompatiblearray_recv
DELIMITER //
CREATE FUNCTION "anycompatiblearray_recv"() RETURNS UNKNOWN AS $$ anycompatiblearray_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anycompatiblearray_send
DELIMITER //
CREATE FUNCTION "anycompatiblearray_send"() RETURNS BYTEA AS $$ anycompatiblearray_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anycompatiblemultirange_in
DELIMITER //
CREATE FUNCTION "anycompatiblemultirange_in"() RETURNS UNKNOWN AS $$ anycompatiblemultirange_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anycompatiblemultirange_out
DELIMITER //
CREATE FUNCTION "anycompatiblemultirange_out"() RETURNS UNKNOWN AS $$ anycompatiblemultirange_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anycompatiblenonarray_in
DELIMITER //
CREATE FUNCTION "anycompatiblenonarray_in"() RETURNS UNKNOWN AS $$ anycompatiblenonarray_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anycompatiblenonarray_out
DELIMITER //
CREATE FUNCTION "anycompatiblenonarray_out"() RETURNS UNKNOWN AS $$ anycompatiblenonarray_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anycompatiblerange_in
DELIMITER //
CREATE FUNCTION "anycompatiblerange_in"() RETURNS UNKNOWN AS $$ anycompatiblerange_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anycompatiblerange_out
DELIMITER //
CREATE FUNCTION "anycompatiblerange_out"() RETURNS UNKNOWN AS $$ anycompatiblerange_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anycompatible_in
DELIMITER //
CREATE FUNCTION "anycompatible_in"() RETURNS UNKNOWN AS $$ anycompatible_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anycompatible_out
DELIMITER //
CREATE FUNCTION "anycompatible_out"() RETURNS UNKNOWN AS $$ anycompatible_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anyelement_in
DELIMITER //
CREATE FUNCTION "anyelement_in"() RETURNS UNKNOWN AS $$ anyelement_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anyelement_out
DELIMITER //
CREATE FUNCTION "anyelement_out"() RETURNS UNKNOWN AS $$ anyelement_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anyenum_in
DELIMITER //
CREATE FUNCTION "anyenum_in"() RETURNS UNKNOWN AS $$ anyenum_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anyenum_out
DELIMITER //
CREATE FUNCTION "anyenum_out"() RETURNS UNKNOWN AS $$ anyenum_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anymultirange_in
DELIMITER //
CREATE FUNCTION "anymultirange_in"() RETURNS UNKNOWN AS $$ anymultirange_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anymultirange_out
DELIMITER //
CREATE FUNCTION "anymultirange_out"() RETURNS UNKNOWN AS $$ anymultirange_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anynonarray_in
DELIMITER //
CREATE FUNCTION "anynonarray_in"() RETURNS UNKNOWN AS $$ anynonarray_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anynonarray_out
DELIMITER //
CREATE FUNCTION "anynonarray_out"() RETURNS UNKNOWN AS $$ anynonarray_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anyrange_in
DELIMITER //
CREATE FUNCTION "anyrange_in"() RETURNS UNKNOWN AS $$ anyrange_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anyrange_out
DELIMITER //
CREATE FUNCTION "anyrange_out"() RETURNS UNKNOWN AS $$ anyrange_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.anytextcat
DELIMITER //
CREATE FUNCTION "anytextcat"() RETURNS TEXT AS $$ select $1::pg_catalog.text operator(pg_catalog.||) $2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.any_in
DELIMITER //
CREATE FUNCTION "any_in"() RETURNS UNKNOWN AS $$ any_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.any_out
DELIMITER //
CREATE FUNCTION "any_out"() RETURNS UNKNOWN AS $$ any_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.area
DELIMITER //
CREATE FUNCTION "area"() RETURNS DOUBLE PRECISION AS $$ path_area $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.area
DELIMITER //
CREATE FUNCTION "area"() RETURNS DOUBLE PRECISION AS $$ box_area $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.area
DELIMITER //
CREATE FUNCTION "area"() RETURNS DOUBLE PRECISION AS $$ circle_area $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.areajoinsel
DELIMITER //
CREATE FUNCTION "areajoinsel"() RETURNS DOUBLE PRECISION AS $$ areajoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.areasel
DELIMITER //
CREATE FUNCTION "areasel"() RETURNS DOUBLE PRECISION AS $$ areasel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.arraycontained
DELIMITER //
CREATE FUNCTION "arraycontained"() RETURNS BOOLEAN AS $$ arraycontained $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.arraycontains
DELIMITER //
CREATE FUNCTION "arraycontains"() RETURNS BOOLEAN AS $$ arraycontains $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.arraycontjoinsel
DELIMITER //
CREATE FUNCTION "arraycontjoinsel"() RETURNS DOUBLE PRECISION AS $$ arraycontjoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.arraycontsel
DELIMITER //
CREATE FUNCTION "arraycontsel"() RETURNS DOUBLE PRECISION AS $$ arraycontsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.arrayoverlap
DELIMITER //
CREATE FUNCTION "arrayoverlap"() RETURNS BOOLEAN AS $$ arrayoverlap $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_agg
DELIMITER //
CREATE FUNCTION "array_agg"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_agg
DELIMITER //
CREATE FUNCTION "array_agg"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_agg_array_finalfn
DELIMITER //
CREATE FUNCTION "array_agg_array_finalfn"() RETURNS UNKNOWN AS $$ array_agg_array_finalfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_agg_array_transfn
DELIMITER //
CREATE FUNCTION "array_agg_array_transfn"() RETURNS UNKNOWN AS $$ array_agg_array_transfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_agg_finalfn
DELIMITER //
CREATE FUNCTION "array_agg_finalfn"() RETURNS UNKNOWN AS $$ array_agg_finalfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_agg_transfn
DELIMITER //
CREATE FUNCTION "array_agg_transfn"() RETURNS UNKNOWN AS $$ array_agg_transfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_append
DELIMITER //
CREATE FUNCTION "array_append"() RETURNS UNKNOWN AS $$ array_append $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_cat
DELIMITER //
CREATE FUNCTION "array_cat"() RETURNS UNKNOWN AS $$ array_cat $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_dims
DELIMITER //
CREATE FUNCTION "array_dims"() RETURNS TEXT AS $$ array_dims $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_eq
DELIMITER //
CREATE FUNCTION "array_eq"() RETURNS BOOLEAN AS $$ array_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_fill
DELIMITER //
CREATE FUNCTION "array_fill"() RETURNS UNKNOWN AS $$ array_fill $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_fill
DELIMITER //
CREATE FUNCTION "array_fill"() RETURNS UNKNOWN AS $$ array_fill_with_lower_bounds $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_ge
DELIMITER //
CREATE FUNCTION "array_ge"() RETURNS BOOLEAN AS $$ array_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_gt
DELIMITER //
CREATE FUNCTION "array_gt"() RETURNS BOOLEAN AS $$ array_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_in
DELIMITER //
CREATE FUNCTION "array_in"() RETURNS UNKNOWN AS $$ array_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_larger
DELIMITER //
CREATE FUNCTION "array_larger"() RETURNS UNKNOWN AS $$ array_larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_le
DELIMITER //
CREATE FUNCTION "array_le"() RETURNS BOOLEAN AS $$ array_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_length
DELIMITER //
CREATE FUNCTION "array_length"() RETURNS INTEGER AS $$ array_length $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_lower
DELIMITER //
CREATE FUNCTION "array_lower"() RETURNS INTEGER AS $$ array_lower $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_lt
DELIMITER //
CREATE FUNCTION "array_lt"() RETURNS BOOLEAN AS $$ array_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_ndims
DELIMITER //
CREATE FUNCTION "array_ndims"() RETURNS INTEGER AS $$ array_ndims $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_ne
DELIMITER //
CREATE FUNCTION "array_ne"() RETURNS BOOLEAN AS $$ array_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_out
DELIMITER //
CREATE FUNCTION "array_out"() RETURNS UNKNOWN AS $$ array_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_position
DELIMITER //
CREATE FUNCTION "array_position"() RETURNS INTEGER AS $$ array_position $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_position
DELIMITER //
CREATE FUNCTION "array_position"() RETURNS INTEGER AS $$ array_position_start $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_positions
DELIMITER //
CREATE FUNCTION "array_positions"() RETURNS UNKNOWN AS $$ array_positions $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_prepend
DELIMITER //
CREATE FUNCTION "array_prepend"() RETURNS UNKNOWN AS $$ array_prepend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_recv
DELIMITER //
CREATE FUNCTION "array_recv"() RETURNS UNKNOWN AS $$ array_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_remove
DELIMITER //
CREATE FUNCTION "array_remove"() RETURNS UNKNOWN AS $$ array_remove $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_replace
DELIMITER //
CREATE FUNCTION "array_replace"() RETURNS UNKNOWN AS $$ array_replace $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_send
DELIMITER //
CREATE FUNCTION "array_send"() RETURNS BYTEA AS $$ array_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_smaller
DELIMITER //
CREATE FUNCTION "array_smaller"() RETURNS UNKNOWN AS $$ array_smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_subscript_handler
DELIMITER //
CREATE FUNCTION "array_subscript_handler"() RETURNS UNKNOWN AS $$ array_subscript_handler $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_to_json
DELIMITER //
CREATE FUNCTION "array_to_json"() RETURNS JSON AS $$ array_to_json $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_to_json
DELIMITER //
CREATE FUNCTION "array_to_json"() RETURNS JSON AS $$ array_to_json_pretty $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_to_string
DELIMITER //
CREATE FUNCTION "array_to_string"() RETURNS TEXT AS $$ array_to_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_to_string
DELIMITER //
CREATE FUNCTION "array_to_string"() RETURNS TEXT AS $$ array_to_text_null $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_to_tsvector
DELIMITER //
CREATE FUNCTION "array_to_tsvector"() RETURNS UNKNOWN AS $$ array_to_tsvector $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_typanalyze
DELIMITER //
CREATE FUNCTION "array_typanalyze"() RETURNS BOOLEAN AS $$ array_typanalyze $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_unnest_support
DELIMITER //
CREATE FUNCTION "array_unnest_support"() RETURNS UNKNOWN AS $$ array_unnest_support $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.array_upper
DELIMITER //
CREATE FUNCTION "array_upper"() RETURNS INTEGER AS $$ array_upper $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ascii
DELIMITER //
CREATE FUNCTION "ascii"() RETURNS INTEGER AS $$ ascii $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.asin
DELIMITER //
CREATE FUNCTION "asin"() RETURNS DOUBLE PRECISION AS $$ dasin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.asind
DELIMITER //
CREATE FUNCTION "asind"() RETURNS DOUBLE PRECISION AS $$ dasind $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.asinh
DELIMITER //
CREATE FUNCTION "asinh"() RETURNS DOUBLE PRECISION AS $$ dasinh $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.atan
DELIMITER //
CREATE FUNCTION "atan"() RETURNS DOUBLE PRECISION AS $$ datan $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.atan2
DELIMITER //
CREATE FUNCTION "atan2"() RETURNS DOUBLE PRECISION AS $$ datan2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.atan2d
DELIMITER //
CREATE FUNCTION "atan2d"() RETURNS DOUBLE PRECISION AS $$ datan2d $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.atand
DELIMITER //
CREATE FUNCTION "atand"() RETURNS DOUBLE PRECISION AS $$ datand $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.atanh
DELIMITER //
CREATE FUNCTION "atanh"() RETURNS DOUBLE PRECISION AS $$ datanh $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.avg
DELIMITER //
CREATE FUNCTION "avg"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.avg
DELIMITER //
CREATE FUNCTION "avg"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.avg
DELIMITER //
CREATE FUNCTION "avg"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.avg
DELIMITER //
CREATE FUNCTION "avg"() RETURNS INTERVAL AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.avg
DELIMITER //
CREATE FUNCTION "avg"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.avg
DELIMITER //
CREATE FUNCTION "avg"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.avg
DELIMITER //
CREATE FUNCTION "avg"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bernoulli
DELIMITER //
CREATE FUNCTION "bernoulli"() RETURNS UNKNOWN AS $$ tsm_bernoulli_handler $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.big5_to_euc_tw
DELIMITER //
CREATE FUNCTION "big5_to_euc_tw"() RETURNS INTEGER AS $$ big5_to_euc_tw $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.big5_to_mic
DELIMITER //
CREATE FUNCTION "big5_to_mic"() RETURNS INTEGER AS $$ big5_to_mic $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.big5_to_utf8
DELIMITER //
CREATE FUNCTION "big5_to_utf8"() RETURNS INTEGER AS $$ big5_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.binary_upgrade_create_empty_extension
DELIMITER //
CREATE FUNCTION "binary_upgrade_create_empty_extension"() RETURNS UNKNOWN AS $$ binary_upgrade_create_empty_extension $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.binary_upgrade_set_missing_value
DELIMITER //
CREATE FUNCTION "binary_upgrade_set_missing_value"() RETURNS UNKNOWN AS $$ binary_upgrade_set_missing_value $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.binary_upgrade_set_next_array_pg_type_oid
DELIMITER //
CREATE FUNCTION "binary_upgrade_set_next_array_pg_type_oid"() RETURNS UNKNOWN AS $$ binary_upgrade_set_next_array_pg_type_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.binary_upgrade_set_next_heap_pg_class_oid
DELIMITER //
CREATE FUNCTION "binary_upgrade_set_next_heap_pg_class_oid"() RETURNS UNKNOWN AS $$ binary_upgrade_set_next_heap_pg_class_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.binary_upgrade_set_next_index_pg_class_oid
DELIMITER //
CREATE FUNCTION "binary_upgrade_set_next_index_pg_class_oid"() RETURNS UNKNOWN AS $$ binary_upgrade_set_next_index_pg_class_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.binary_upgrade_set_next_multirange_array_pg_type_oid
DELIMITER //
CREATE FUNCTION "binary_upgrade_set_next_multirange_array_pg_type_oid"() RETURNS UNKNOWN AS $$ binary_upgrade_set_next_multirange_array_pg_type_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.binary_upgrade_set_next_multirange_pg_type_oid
DELIMITER //
CREATE FUNCTION "binary_upgrade_set_next_multirange_pg_type_oid"() RETURNS UNKNOWN AS $$ binary_upgrade_set_next_multirange_pg_type_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.binary_upgrade_set_next_pg_authid_oid
DELIMITER //
CREATE FUNCTION "binary_upgrade_set_next_pg_authid_oid"() RETURNS UNKNOWN AS $$ binary_upgrade_set_next_pg_authid_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.binary_upgrade_set_next_pg_enum_oid
DELIMITER //
CREATE FUNCTION "binary_upgrade_set_next_pg_enum_oid"() RETURNS UNKNOWN AS $$ binary_upgrade_set_next_pg_enum_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.binary_upgrade_set_next_pg_type_oid
DELIMITER //
CREATE FUNCTION "binary_upgrade_set_next_pg_type_oid"() RETURNS UNKNOWN AS $$ binary_upgrade_set_next_pg_type_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.binary_upgrade_set_next_toast_pg_class_oid
DELIMITER //
CREATE FUNCTION "binary_upgrade_set_next_toast_pg_class_oid"() RETURNS UNKNOWN AS $$ binary_upgrade_set_next_toast_pg_class_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.binary_upgrade_set_record_init_privs
DELIMITER //
CREATE FUNCTION "binary_upgrade_set_record_init_privs"() RETURNS UNKNOWN AS $$ binary_upgrade_set_record_init_privs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit
DELIMITER //
CREATE FUNCTION "bit"() RETURNS BIT AS $$ bitfromint8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit
DELIMITER //
CREATE FUNCTION "bit"() RETURNS BIT AS $$ bitfromint4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit
DELIMITER //
CREATE FUNCTION "bit"() RETURNS BIT AS $$ bit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bitand
DELIMITER //
CREATE FUNCTION "bitand"() RETURNS BIT AS $$ bit_and $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bitcat
DELIMITER //
CREATE FUNCTION "bitcat"() RETURNS BIT VARYING AS $$ bitcat $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bitcmp
DELIMITER //
CREATE FUNCTION "bitcmp"() RETURNS INTEGER AS $$ bitcmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.biteq
DELIMITER //
CREATE FUNCTION "biteq"() RETURNS BOOLEAN AS $$ biteq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bitge
DELIMITER //
CREATE FUNCTION "bitge"() RETURNS BOOLEAN AS $$ bitge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bitgt
DELIMITER //
CREATE FUNCTION "bitgt"() RETURNS BOOLEAN AS $$ bitgt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bitle
DELIMITER //
CREATE FUNCTION "bitle"() RETURNS BOOLEAN AS $$ bitle $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bitlt
DELIMITER //
CREATE FUNCTION "bitlt"() RETURNS BOOLEAN AS $$ bitlt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bitne
DELIMITER //
CREATE FUNCTION "bitne"() RETURNS BOOLEAN AS $$ bitne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bitnot
DELIMITER //
CREATE FUNCTION "bitnot"() RETURNS BIT AS $$ bitnot $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bitor
DELIMITER //
CREATE FUNCTION "bitor"() RETURNS BIT AS $$ bit_or $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bitshiftleft
DELIMITER //
CREATE FUNCTION "bitshiftleft"() RETURNS BIT AS $$ bitshiftleft $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bitshiftright
DELIMITER //
CREATE FUNCTION "bitshiftright"() RETURNS BIT AS $$ bitshiftright $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bittypmodin
DELIMITER //
CREATE FUNCTION "bittypmodin"() RETURNS INTEGER AS $$ bittypmodin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bittypmodout
DELIMITER //
CREATE FUNCTION "bittypmodout"() RETURNS UNKNOWN AS $$ bittypmodout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bitxor
DELIMITER //
CREATE FUNCTION "bitxor"() RETURNS BIT AS $$ bitxor $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_and
DELIMITER //
CREATE FUNCTION "bit_and"() RETURNS INTEGER AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_and
DELIMITER //
CREATE FUNCTION "bit_and"() RETURNS BIT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_and
DELIMITER //
CREATE FUNCTION "bit_and"() RETURNS BIGINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_and
DELIMITER //
CREATE FUNCTION "bit_and"() RETURNS SMALLINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_count
DELIMITER //
CREATE FUNCTION "bit_count"() RETURNS BIGINT AS $$ bit_bit_count $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_count
DELIMITER //
CREATE FUNCTION "bit_count"() RETURNS BIGINT AS $$ bytea_bit_count $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_in
DELIMITER //
CREATE FUNCTION "bit_in"() RETURNS BIT AS $$ bit_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_length
DELIMITER //
CREATE FUNCTION "bit_length"() RETURNS INTEGER AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_length
DELIMITER //
CREATE FUNCTION "bit_length"() RETURNS INTEGER AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_length
DELIMITER //
CREATE FUNCTION "bit_length"() RETURNS INTEGER AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_or
DELIMITER //
CREATE FUNCTION "bit_or"() RETURNS SMALLINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_or
DELIMITER //
CREATE FUNCTION "bit_or"() RETURNS BIGINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_or
DELIMITER //
CREATE FUNCTION "bit_or"() RETURNS BIT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_or
DELIMITER //
CREATE FUNCTION "bit_or"() RETURNS INTEGER AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_out
DELIMITER //
CREATE FUNCTION "bit_out"() RETURNS UNKNOWN AS $$ bit_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_recv
DELIMITER //
CREATE FUNCTION "bit_recv"() RETURNS BIT AS $$ bit_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_send
DELIMITER //
CREATE FUNCTION "bit_send"() RETURNS BYTEA AS $$ bit_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_xor
DELIMITER //
CREATE FUNCTION "bit_xor"() RETURNS SMALLINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_xor
DELIMITER //
CREATE FUNCTION "bit_xor"() RETURNS INTEGER AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_xor
DELIMITER //
CREATE FUNCTION "bit_xor"() RETURNS BIT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bit_xor
DELIMITER //
CREATE FUNCTION "bit_xor"() RETURNS BIGINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bool
DELIMITER //
CREATE FUNCTION "bool"() RETURNS BOOLEAN AS $$ int4_bool $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bool
DELIMITER //
CREATE FUNCTION "bool"() RETURNS BOOLEAN AS $$ jsonb_bool $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.booland_statefunc
DELIMITER //
CREATE FUNCTION "booland_statefunc"() RETURNS BOOLEAN AS $$ booland_statefunc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.booleq
DELIMITER //
CREATE FUNCTION "booleq"() RETURNS BOOLEAN AS $$ booleq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.boolge
DELIMITER //
CREATE FUNCTION "boolge"() RETURNS BOOLEAN AS $$ boolge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.boolgt
DELIMITER //
CREATE FUNCTION "boolgt"() RETURNS BOOLEAN AS $$ boolgt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.boolin
DELIMITER //
CREATE FUNCTION "boolin"() RETURNS BOOLEAN AS $$ boolin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.boolle
DELIMITER //
CREATE FUNCTION "boolle"() RETURNS BOOLEAN AS $$ boolle $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.boollt
DELIMITER //
CREATE FUNCTION "boollt"() RETURNS BOOLEAN AS $$ boollt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.boolne
DELIMITER //
CREATE FUNCTION "boolne"() RETURNS BOOLEAN AS $$ boolne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.boolor_statefunc
DELIMITER //
CREATE FUNCTION "boolor_statefunc"() RETURNS BOOLEAN AS $$ boolor_statefunc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.boolout
DELIMITER //
CREATE FUNCTION "boolout"() RETURNS UNKNOWN AS $$ boolout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.boolrecv
DELIMITER //
CREATE FUNCTION "boolrecv"() RETURNS BOOLEAN AS $$ boolrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.boolsend
DELIMITER //
CREATE FUNCTION "boolsend"() RETURNS BYTEA AS $$ boolsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bool_accum
DELIMITER //
CREATE FUNCTION "bool_accum"() RETURNS UNKNOWN AS $$ bool_accum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bool_accum_inv
DELIMITER //
CREATE FUNCTION "bool_accum_inv"() RETURNS UNKNOWN AS $$ bool_accum_inv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bool_alltrue
DELIMITER //
CREATE FUNCTION "bool_alltrue"() RETURNS BOOLEAN AS $$ bool_alltrue $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bool_and
DELIMITER //
CREATE FUNCTION "bool_and"() RETURNS BOOLEAN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bool_anytrue
DELIMITER //
CREATE FUNCTION "bool_anytrue"() RETURNS BOOLEAN AS $$ bool_anytrue $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bool_or
DELIMITER //
CREATE FUNCTION "bool_or"() RETURNS BOOLEAN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bound_box
DELIMITER //
CREATE FUNCTION "bound_box"() RETURNS BOX AS $$ boxes_bound_box $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box
DELIMITER //
CREATE FUNCTION "box"() RETURNS BOX AS $$ poly_box $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box
DELIMITER //
CREATE FUNCTION "box"() RETURNS BOX AS $$ points_box $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box
DELIMITER //
CREATE FUNCTION "box"() RETURNS BOX AS $$ circle_box $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box
DELIMITER //
CREATE FUNCTION "box"() RETURNS BOX AS $$ point_box $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_above
DELIMITER //
CREATE FUNCTION "box_above"() RETURNS BOOLEAN AS $$ box_above $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_above_eq
DELIMITER //
CREATE FUNCTION "box_above_eq"() RETURNS BOOLEAN AS $$ box_above_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_add
DELIMITER //
CREATE FUNCTION "box_add"() RETURNS BOX AS $$ box_add $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_below
DELIMITER //
CREATE FUNCTION "box_below"() RETURNS BOOLEAN AS $$ box_below $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_below_eq
DELIMITER //
CREATE FUNCTION "box_below_eq"() RETURNS BOOLEAN AS $$ box_below_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_center
DELIMITER //
CREATE FUNCTION "box_center"() RETURNS POINT AS $$ box_center $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_contain
DELIMITER //
CREATE FUNCTION "box_contain"() RETURNS BOOLEAN AS $$ box_contain $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_contained
DELIMITER //
CREATE FUNCTION "box_contained"() RETURNS BOOLEAN AS $$ box_contained $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_contain_pt
DELIMITER //
CREATE FUNCTION "box_contain_pt"() RETURNS BOOLEAN AS $$ box_contain_pt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_distance
DELIMITER //
CREATE FUNCTION "box_distance"() RETURNS DOUBLE PRECISION AS $$ box_distance $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_div
DELIMITER //
CREATE FUNCTION "box_div"() RETURNS BOX AS $$ box_div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_eq
DELIMITER //
CREATE FUNCTION "box_eq"() RETURNS BOOLEAN AS $$ box_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_ge
DELIMITER //
CREATE FUNCTION "box_ge"() RETURNS BOOLEAN AS $$ box_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_gt
DELIMITER //
CREATE FUNCTION "box_gt"() RETURNS BOOLEAN AS $$ box_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_in
DELIMITER //
CREATE FUNCTION "box_in"() RETURNS BOX AS $$ box_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_intersect
DELIMITER //
CREATE FUNCTION "box_intersect"() RETURNS BOX AS $$ box_intersect $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_le
DELIMITER //
CREATE FUNCTION "box_le"() RETURNS BOOLEAN AS $$ box_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_left
DELIMITER //
CREATE FUNCTION "box_left"() RETURNS BOOLEAN AS $$ box_left $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_lt
DELIMITER //
CREATE FUNCTION "box_lt"() RETURNS BOOLEAN AS $$ box_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_mul
DELIMITER //
CREATE FUNCTION "box_mul"() RETURNS BOX AS $$ box_mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_out
DELIMITER //
CREATE FUNCTION "box_out"() RETURNS UNKNOWN AS $$ box_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_overabove
DELIMITER //
CREATE FUNCTION "box_overabove"() RETURNS BOOLEAN AS $$ box_overabove $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_overbelow
DELIMITER //
CREATE FUNCTION "box_overbelow"() RETURNS BOOLEAN AS $$ box_overbelow $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_overlap
DELIMITER //
CREATE FUNCTION "box_overlap"() RETURNS BOOLEAN AS $$ box_overlap $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_overleft
DELIMITER //
CREATE FUNCTION "box_overleft"() RETURNS BOOLEAN AS $$ box_overleft $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_overright
DELIMITER //
CREATE FUNCTION "box_overright"() RETURNS BOOLEAN AS $$ box_overright $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_recv
DELIMITER //
CREATE FUNCTION "box_recv"() RETURNS BOX AS $$ box_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_right
DELIMITER //
CREATE FUNCTION "box_right"() RETURNS BOOLEAN AS $$ box_right $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_same
DELIMITER //
CREATE FUNCTION "box_same"() RETURNS BOOLEAN AS $$ box_same $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_send
DELIMITER //
CREATE FUNCTION "box_send"() RETURNS BYTEA AS $$ box_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.box_sub
DELIMITER //
CREATE FUNCTION "box_sub"() RETURNS BOX AS $$ box_sub $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpchar
DELIMITER //
CREATE FUNCTION "bpchar"() RETURNS CHAR AS $$ char_bpchar $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpchar
DELIMITER //
CREATE FUNCTION "bpchar"() RETURNS CHAR AS $$ name_bpchar $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpchar
DELIMITER //
CREATE FUNCTION "bpchar"() RETURNS CHAR AS $$ bpchar $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpcharcmp
DELIMITER //
CREATE FUNCTION "bpcharcmp"() RETURNS INTEGER AS $$ bpcharcmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpchareq
DELIMITER //
CREATE FUNCTION "bpchareq"() RETURNS BOOLEAN AS $$ bpchareq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpcharge
DELIMITER //
CREATE FUNCTION "bpcharge"() RETURNS BOOLEAN AS $$ bpcharge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpchargt
DELIMITER //
CREATE FUNCTION "bpchargt"() RETURNS BOOLEAN AS $$ bpchargt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpchariclike
DELIMITER //
CREATE FUNCTION "bpchariclike"() RETURNS BOOLEAN AS $$ texticlike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpcharicnlike
DELIMITER //
CREATE FUNCTION "bpcharicnlike"() RETURNS BOOLEAN AS $$ texticnlike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpcharicregexeq
DELIMITER //
CREATE FUNCTION "bpcharicregexeq"() RETURNS BOOLEAN AS $$ texticregexeq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpcharicregexne
DELIMITER //
CREATE FUNCTION "bpcharicregexne"() RETURNS BOOLEAN AS $$ texticregexne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpcharin
DELIMITER //
CREATE FUNCTION "bpcharin"() RETURNS CHAR AS $$ bpcharin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpcharle
DELIMITER //
CREATE FUNCTION "bpcharle"() RETURNS BOOLEAN AS $$ bpcharle $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpcharlike
DELIMITER //
CREATE FUNCTION "bpcharlike"() RETURNS BOOLEAN AS $$ textlike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpcharlt
DELIMITER //
CREATE FUNCTION "bpcharlt"() RETURNS BOOLEAN AS $$ bpcharlt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpcharne
DELIMITER //
CREATE FUNCTION "bpcharne"() RETURNS BOOLEAN AS $$ bpcharne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpcharnlike
DELIMITER //
CREATE FUNCTION "bpcharnlike"() RETURNS BOOLEAN AS $$ textnlike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpcharout
DELIMITER //
CREATE FUNCTION "bpcharout"() RETURNS UNKNOWN AS $$ bpcharout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpcharrecv
DELIMITER //
CREATE FUNCTION "bpcharrecv"() RETURNS CHAR AS $$ bpcharrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpcharregexeq
DELIMITER //
CREATE FUNCTION "bpcharregexeq"() RETURNS BOOLEAN AS $$ textregexeq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpcharregexne
DELIMITER //
CREATE FUNCTION "bpcharregexne"() RETURNS BOOLEAN AS $$ textregexne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpcharsend
DELIMITER //
CREATE FUNCTION "bpcharsend"() RETURNS BYTEA AS $$ bpcharsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpchartypmodin
DELIMITER //
CREATE FUNCTION "bpchartypmodin"() RETURNS INTEGER AS $$ bpchartypmodin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpchartypmodout
DELIMITER //
CREATE FUNCTION "bpchartypmodout"() RETURNS UNKNOWN AS $$ bpchartypmodout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpchar_larger
DELIMITER //
CREATE FUNCTION "bpchar_larger"() RETURNS CHAR AS $$ bpchar_larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpchar_pattern_ge
DELIMITER //
CREATE FUNCTION "bpchar_pattern_ge"() RETURNS BOOLEAN AS $$ bpchar_pattern_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpchar_pattern_gt
DELIMITER //
CREATE FUNCTION "bpchar_pattern_gt"() RETURNS BOOLEAN AS $$ bpchar_pattern_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpchar_pattern_le
DELIMITER //
CREATE FUNCTION "bpchar_pattern_le"() RETURNS BOOLEAN AS $$ bpchar_pattern_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpchar_pattern_lt
DELIMITER //
CREATE FUNCTION "bpchar_pattern_lt"() RETURNS BOOLEAN AS $$ bpchar_pattern_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpchar_smaller
DELIMITER //
CREATE FUNCTION "bpchar_smaller"() RETURNS CHAR AS $$ bpchar_smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bpchar_sortsupport
DELIMITER //
CREATE FUNCTION "bpchar_sortsupport"() RETURNS UNKNOWN AS $$ bpchar_sortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brinhandler
DELIMITER //
CREATE FUNCTION "brinhandler"() RETURNS UNKNOWN AS $$ brinhandler $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_bloom_add_value
DELIMITER //
CREATE FUNCTION "brin_bloom_add_value"() RETURNS BOOLEAN AS $$ brin_bloom_add_value $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_bloom_consistent
DELIMITER //
CREATE FUNCTION "brin_bloom_consistent"() RETURNS BOOLEAN AS $$ brin_bloom_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_bloom_opcinfo
DELIMITER //
CREATE FUNCTION "brin_bloom_opcinfo"() RETURNS UNKNOWN AS $$ brin_bloom_opcinfo $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_bloom_options
DELIMITER //
CREATE FUNCTION "brin_bloom_options"() RETURNS UNKNOWN AS $$ brin_bloom_options $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_bloom_summary_in
DELIMITER //
CREATE FUNCTION "brin_bloom_summary_in"() RETURNS UNKNOWN AS $$ brin_bloom_summary_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_bloom_summary_out
DELIMITER //
CREATE FUNCTION "brin_bloom_summary_out"() RETURNS UNKNOWN AS $$ brin_bloom_summary_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_bloom_summary_recv
DELIMITER //
CREATE FUNCTION "brin_bloom_summary_recv"() RETURNS UNKNOWN AS $$ brin_bloom_summary_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_bloom_summary_send
DELIMITER //
CREATE FUNCTION "brin_bloom_summary_send"() RETURNS BYTEA AS $$ brin_bloom_summary_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_bloom_union
DELIMITER //
CREATE FUNCTION "brin_bloom_union"() RETURNS BOOLEAN AS $$ brin_bloom_union $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_desummarize_range
DELIMITER //
CREATE FUNCTION "brin_desummarize_range"() RETURNS UNKNOWN AS $$ brin_desummarize_range $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_inclusion_add_value
DELIMITER //
CREATE FUNCTION "brin_inclusion_add_value"() RETURNS BOOLEAN AS $$ brin_inclusion_add_value $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_inclusion_consistent
DELIMITER //
CREATE FUNCTION "brin_inclusion_consistent"() RETURNS BOOLEAN AS $$ brin_inclusion_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_inclusion_opcinfo
DELIMITER //
CREATE FUNCTION "brin_inclusion_opcinfo"() RETURNS UNKNOWN AS $$ brin_inclusion_opcinfo $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_inclusion_union
DELIMITER //
CREATE FUNCTION "brin_inclusion_union"() RETURNS BOOLEAN AS $$ brin_inclusion_union $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_add_value
DELIMITER //
CREATE FUNCTION "brin_minmax_add_value"() RETURNS BOOLEAN AS $$ brin_minmax_add_value $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_consistent
DELIMITER //
CREATE FUNCTION "brin_minmax_consistent"() RETURNS BOOLEAN AS $$ brin_minmax_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_add_value
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_add_value"() RETURNS BOOLEAN AS $$ brin_minmax_multi_add_value $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_consistent
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_consistent"() RETURNS BOOLEAN AS $$ brin_minmax_multi_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_date
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_date"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_float4
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_float4"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_float4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_float8
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_float8"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_float8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_inet
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_inet"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_inet $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_int2
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_int2"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_int2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_int4
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_int4"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_int8
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_int8"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_interval
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_interval"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_macaddr
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_macaddr"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_macaddr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_macaddr8
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_macaddr8"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_macaddr8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_numeric
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_numeric"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_numeric $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_pg_lsn
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_pg_lsn"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_pg_lsn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_tid
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_tid"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_tid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_time
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_time"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_timestamp
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_timestamp"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_timetz
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_timetz"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_timetz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_distance_uuid
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_distance_uuid"() RETURNS DOUBLE PRECISION AS $$ brin_minmax_multi_distance_uuid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_opcinfo
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_opcinfo"() RETURNS UNKNOWN AS $$ brin_minmax_multi_opcinfo $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_options
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_options"() RETURNS UNKNOWN AS $$ brin_minmax_multi_options $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_summary_in
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_summary_in"() RETURNS UNKNOWN AS $$ brin_minmax_multi_summary_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_summary_out
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_summary_out"() RETURNS UNKNOWN AS $$ brin_minmax_multi_summary_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_summary_recv
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_summary_recv"() RETURNS UNKNOWN AS $$ brin_minmax_multi_summary_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_summary_send
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_summary_send"() RETURNS BYTEA AS $$ brin_minmax_multi_summary_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_multi_union
DELIMITER //
CREATE FUNCTION "brin_minmax_multi_union"() RETURNS BOOLEAN AS $$ brin_minmax_multi_union $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_opcinfo
DELIMITER //
CREATE FUNCTION "brin_minmax_opcinfo"() RETURNS UNKNOWN AS $$ brin_minmax_opcinfo $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_minmax_union
DELIMITER //
CREATE FUNCTION "brin_minmax_union"() RETURNS BOOLEAN AS $$ brin_minmax_union $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_summarize_new_values
DELIMITER //
CREATE FUNCTION "brin_summarize_new_values"() RETURNS INTEGER AS $$ brin_summarize_new_values $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.brin_summarize_range
DELIMITER //
CREATE FUNCTION "brin_summarize_range"() RETURNS INTEGER AS $$ brin_summarize_range $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.broadcast
DELIMITER //
CREATE FUNCTION "broadcast"() RETURNS INET AS $$ network_broadcast $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btarraycmp
DELIMITER //
CREATE FUNCTION "btarraycmp"() RETURNS INTEGER AS $$ btarraycmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btboolcmp
DELIMITER //
CREATE FUNCTION "btboolcmp"() RETURNS INTEGER AS $$ btboolcmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btbpchar_pattern_cmp
DELIMITER //
CREATE FUNCTION "btbpchar_pattern_cmp"() RETURNS INTEGER AS $$ btbpchar_pattern_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btbpchar_pattern_sortsupport
DELIMITER //
CREATE FUNCTION "btbpchar_pattern_sortsupport"() RETURNS UNKNOWN AS $$ btbpchar_pattern_sortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btcharcmp
DELIMITER //
CREATE FUNCTION "btcharcmp"() RETURNS INTEGER AS $$ btcharcmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btequalimage
DELIMITER //
CREATE FUNCTION "btequalimage"() RETURNS BOOLEAN AS $$ btequalimage $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btfloat48cmp
DELIMITER //
CREATE FUNCTION "btfloat48cmp"() RETURNS INTEGER AS $$ btfloat48cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btfloat4cmp
DELIMITER //
CREATE FUNCTION "btfloat4cmp"() RETURNS INTEGER AS $$ btfloat4cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btfloat4sortsupport
DELIMITER //
CREATE FUNCTION "btfloat4sortsupport"() RETURNS UNKNOWN AS $$ btfloat4sortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btfloat84cmp
DELIMITER //
CREATE FUNCTION "btfloat84cmp"() RETURNS INTEGER AS $$ btfloat84cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btfloat8cmp
DELIMITER //
CREATE FUNCTION "btfloat8cmp"() RETURNS INTEGER AS $$ btfloat8cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btfloat8sortsupport
DELIMITER //
CREATE FUNCTION "btfloat8sortsupport"() RETURNS UNKNOWN AS $$ btfloat8sortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bthandler
DELIMITER //
CREATE FUNCTION "bthandler"() RETURNS UNKNOWN AS $$ bthandler $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btint24cmp
DELIMITER //
CREATE FUNCTION "btint24cmp"() RETURNS INTEGER AS $$ btint24cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btint28cmp
DELIMITER //
CREATE FUNCTION "btint28cmp"() RETURNS INTEGER AS $$ btint28cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btint2cmp
DELIMITER //
CREATE FUNCTION "btint2cmp"() RETURNS INTEGER AS $$ btint2cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btint2sortsupport
DELIMITER //
CREATE FUNCTION "btint2sortsupport"() RETURNS UNKNOWN AS $$ btint2sortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btint42cmp
DELIMITER //
CREATE FUNCTION "btint42cmp"() RETURNS INTEGER AS $$ btint42cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btint48cmp
DELIMITER //
CREATE FUNCTION "btint48cmp"() RETURNS INTEGER AS $$ btint48cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btint4cmp
DELIMITER //
CREATE FUNCTION "btint4cmp"() RETURNS INTEGER AS $$ btint4cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btint4sortsupport
DELIMITER //
CREATE FUNCTION "btint4sortsupport"() RETURNS UNKNOWN AS $$ btint4sortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btint82cmp
DELIMITER //
CREATE FUNCTION "btint82cmp"() RETURNS INTEGER AS $$ btint82cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btint84cmp
DELIMITER //
CREATE FUNCTION "btint84cmp"() RETURNS INTEGER AS $$ btint84cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btint8cmp
DELIMITER //
CREATE FUNCTION "btint8cmp"() RETURNS INTEGER AS $$ btint8cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btint8sortsupport
DELIMITER //
CREATE FUNCTION "btint8sortsupport"() RETURNS UNKNOWN AS $$ btint8sortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btnamecmp
DELIMITER //
CREATE FUNCTION "btnamecmp"() RETURNS INTEGER AS $$ btnamecmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btnamesortsupport
DELIMITER //
CREATE FUNCTION "btnamesortsupport"() RETURNS UNKNOWN AS $$ btnamesortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btnametextcmp
DELIMITER //
CREATE FUNCTION "btnametextcmp"() RETURNS INTEGER AS $$ btnametextcmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btoidcmp
DELIMITER //
CREATE FUNCTION "btoidcmp"() RETURNS INTEGER AS $$ btoidcmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btoidsortsupport
DELIMITER //
CREATE FUNCTION "btoidsortsupport"() RETURNS UNKNOWN AS $$ btoidsortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btoidvectorcmp
DELIMITER //
CREATE FUNCTION "btoidvectorcmp"() RETURNS INTEGER AS $$ btoidvectorcmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btrecordcmp
DELIMITER //
CREATE FUNCTION "btrecordcmp"() RETURNS INTEGER AS $$ btrecordcmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btrecordimagecmp
DELIMITER //
CREATE FUNCTION "btrecordimagecmp"() RETURNS INTEGER AS $$ btrecordimagecmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btrim
DELIMITER //
CREATE FUNCTION "btrim"() RETURNS TEXT AS $$ btrim $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btrim
DELIMITER //
CREATE FUNCTION "btrim"() RETURNS TEXT AS $$ btrim1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btrim
DELIMITER //
CREATE FUNCTION "btrim"() RETURNS BYTEA AS $$ byteatrim $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bttextcmp
DELIMITER //
CREATE FUNCTION "bttextcmp"() RETURNS INTEGER AS $$ bttextcmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bttextnamecmp
DELIMITER //
CREATE FUNCTION "bttextnamecmp"() RETURNS INTEGER AS $$ bttextnamecmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bttextsortsupport
DELIMITER //
CREATE FUNCTION "bttextsortsupport"() RETURNS UNKNOWN AS $$ bttextsortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bttext_pattern_cmp
DELIMITER //
CREATE FUNCTION "bttext_pattern_cmp"() RETURNS INTEGER AS $$ bttext_pattern_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bttext_pattern_sortsupport
DELIMITER //
CREATE FUNCTION "bttext_pattern_sortsupport"() RETURNS UNKNOWN AS $$ bttext_pattern_sortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bttidcmp
DELIMITER //
CREATE FUNCTION "bttidcmp"() RETURNS INTEGER AS $$ bttidcmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.btvarstrequalimage
DELIMITER //
CREATE FUNCTION "btvarstrequalimage"() RETURNS BOOLEAN AS $$ btvarstrequalimage $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.byteacat
DELIMITER //
CREATE FUNCTION "byteacat"() RETURNS BYTEA AS $$ byteacat $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.byteacmp
DELIMITER //
CREATE FUNCTION "byteacmp"() RETURNS INTEGER AS $$ byteacmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.byteaeq
DELIMITER //
CREATE FUNCTION "byteaeq"() RETURNS BOOLEAN AS $$ byteaeq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.byteage
DELIMITER //
CREATE FUNCTION "byteage"() RETURNS BOOLEAN AS $$ byteage $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.byteagt
DELIMITER //
CREATE FUNCTION "byteagt"() RETURNS BOOLEAN AS $$ byteagt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.byteain
DELIMITER //
CREATE FUNCTION "byteain"() RETURNS BYTEA AS $$ byteain $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.byteale
DELIMITER //
CREATE FUNCTION "byteale"() RETURNS BOOLEAN AS $$ byteale $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bytealike
DELIMITER //
CREATE FUNCTION "bytealike"() RETURNS BOOLEAN AS $$ bytealike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bytealt
DELIMITER //
CREATE FUNCTION "bytealt"() RETURNS BOOLEAN AS $$ bytealt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.byteane
DELIMITER //
CREATE FUNCTION "byteane"() RETURNS BOOLEAN AS $$ byteane $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.byteanlike
DELIMITER //
CREATE FUNCTION "byteanlike"() RETURNS BOOLEAN AS $$ byteanlike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.byteaout
DELIMITER //
CREATE FUNCTION "byteaout"() RETURNS UNKNOWN AS $$ byteaout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bytearecv
DELIMITER //
CREATE FUNCTION "bytearecv"() RETURNS BYTEA AS $$ bytearecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.byteasend
DELIMITER //
CREATE FUNCTION "byteasend"() RETURNS BYTEA AS $$ byteasend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bytea_sortsupport
DELIMITER //
CREATE FUNCTION "bytea_sortsupport"() RETURNS UNKNOWN AS $$ bytea_sortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bytea_string_agg_finalfn
DELIMITER //
CREATE FUNCTION "bytea_string_agg_finalfn"() RETURNS BYTEA AS $$ bytea_string_agg_finalfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.bytea_string_agg_transfn
DELIMITER //
CREATE FUNCTION "bytea_string_agg_transfn"() RETURNS UNKNOWN AS $$ bytea_string_agg_transfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cardinality
DELIMITER //
CREATE FUNCTION "cardinality"() RETURNS INTEGER AS $$ array_cardinality $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cashlarger
DELIMITER //
CREATE FUNCTION "cashlarger"() RETURNS MONEY AS $$ cashlarger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cashsmaller
DELIMITER //
CREATE FUNCTION "cashsmaller"() RETURNS MONEY AS $$ cashsmaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_cmp
DELIMITER //
CREATE FUNCTION "cash_cmp"() RETURNS INTEGER AS $$ cash_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_div_cash
DELIMITER //
CREATE FUNCTION "cash_div_cash"() RETURNS DOUBLE PRECISION AS $$ cash_div_cash $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_div_flt4
DELIMITER //
CREATE FUNCTION "cash_div_flt4"() RETURNS MONEY AS $$ cash_div_flt4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_div_flt8
DELIMITER //
CREATE FUNCTION "cash_div_flt8"() RETURNS MONEY AS $$ cash_div_flt8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_div_int2
DELIMITER //
CREATE FUNCTION "cash_div_int2"() RETURNS MONEY AS $$ cash_div_int2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_div_int4
DELIMITER //
CREATE FUNCTION "cash_div_int4"() RETURNS MONEY AS $$ cash_div_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_div_int8
DELIMITER //
CREATE FUNCTION "cash_div_int8"() RETURNS MONEY AS $$ cash_div_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_eq
DELIMITER //
CREATE FUNCTION "cash_eq"() RETURNS BOOLEAN AS $$ cash_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_ge
DELIMITER //
CREATE FUNCTION "cash_ge"() RETURNS BOOLEAN AS $$ cash_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_gt
DELIMITER //
CREATE FUNCTION "cash_gt"() RETURNS BOOLEAN AS $$ cash_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_in
DELIMITER //
CREATE FUNCTION "cash_in"() RETURNS MONEY AS $$ cash_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_le
DELIMITER //
CREATE FUNCTION "cash_le"() RETURNS BOOLEAN AS $$ cash_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_lt
DELIMITER //
CREATE FUNCTION "cash_lt"() RETURNS BOOLEAN AS $$ cash_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_mi
DELIMITER //
CREATE FUNCTION "cash_mi"() RETURNS MONEY AS $$ cash_mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_mul_flt4
DELIMITER //
CREATE FUNCTION "cash_mul_flt4"() RETURNS MONEY AS $$ cash_mul_flt4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_mul_flt8
DELIMITER //
CREATE FUNCTION "cash_mul_flt8"() RETURNS MONEY AS $$ cash_mul_flt8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_mul_int2
DELIMITER //
CREATE FUNCTION "cash_mul_int2"() RETURNS MONEY AS $$ cash_mul_int2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_mul_int4
DELIMITER //
CREATE FUNCTION "cash_mul_int4"() RETURNS MONEY AS $$ cash_mul_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_mul_int8
DELIMITER //
CREATE FUNCTION "cash_mul_int8"() RETURNS MONEY AS $$ cash_mul_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_ne
DELIMITER //
CREATE FUNCTION "cash_ne"() RETURNS BOOLEAN AS $$ cash_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_out
DELIMITER //
CREATE FUNCTION "cash_out"() RETURNS UNKNOWN AS $$ cash_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_pl
DELIMITER //
CREATE FUNCTION "cash_pl"() RETURNS MONEY AS $$ cash_pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_recv
DELIMITER //
CREATE FUNCTION "cash_recv"() RETURNS MONEY AS $$ cash_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_send
DELIMITER //
CREATE FUNCTION "cash_send"() RETURNS BYTEA AS $$ cash_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cash_words
DELIMITER //
CREATE FUNCTION "cash_words"() RETURNS TEXT AS $$ cash_words $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cbrt
DELIMITER //
CREATE FUNCTION "cbrt"() RETURNS DOUBLE PRECISION AS $$ dcbrt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ceil
DELIMITER //
CREATE FUNCTION "ceil"() RETURNS NUMERIC AS $$ numeric_ceil $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ceil
DELIMITER //
CREATE FUNCTION "ceil"() RETURNS DOUBLE PRECISION AS $$ dceil $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ceiling
DELIMITER //
CREATE FUNCTION "ceiling"() RETURNS NUMERIC AS $$ numeric_ceil $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ceiling
DELIMITER //
CREATE FUNCTION "ceiling"() RETURNS DOUBLE PRECISION AS $$ dceil $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.center
DELIMITER //
CREATE FUNCTION "center"() RETURNS POINT AS $$ box_center $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.center
DELIMITER //
CREATE FUNCTION "center"() RETURNS POINT AS $$ circle_center $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.char
DELIMITER //
CREATE FUNCTION "char"() RETURNS CHAR AS $$ i4tochar $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.char
DELIMITER //
CREATE FUNCTION "char"() RETURNS CHAR AS $$ text_char $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.character_length
DELIMITER //
CREATE FUNCTION "character_length"() RETURNS INTEGER AS $$ bpcharlen $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.character_length
DELIMITER //
CREATE FUNCTION "character_length"() RETURNS INTEGER AS $$ textlen $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.chareq
DELIMITER //
CREATE FUNCTION "chareq"() RETURNS BOOLEAN AS $$ chareq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.charge
DELIMITER //
CREATE FUNCTION "charge"() RETURNS BOOLEAN AS $$ charge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.chargt
DELIMITER //
CREATE FUNCTION "chargt"() RETURNS BOOLEAN AS $$ chargt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.charin
DELIMITER //
CREATE FUNCTION "charin"() RETURNS CHAR AS $$ charin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.charle
DELIMITER //
CREATE FUNCTION "charle"() RETURNS BOOLEAN AS $$ charle $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.charlt
DELIMITER //
CREATE FUNCTION "charlt"() RETURNS BOOLEAN AS $$ charlt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.charne
DELIMITER //
CREATE FUNCTION "charne"() RETURNS BOOLEAN AS $$ charne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.charout
DELIMITER //
CREATE FUNCTION "charout"() RETURNS UNKNOWN AS $$ charout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.charrecv
DELIMITER //
CREATE FUNCTION "charrecv"() RETURNS CHAR AS $$ charrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.charsend
DELIMITER //
CREATE FUNCTION "charsend"() RETURNS BYTEA AS $$ charsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.char_length
DELIMITER //
CREATE FUNCTION "char_length"() RETURNS INTEGER AS $$ textlen $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.char_length
DELIMITER //
CREATE FUNCTION "char_length"() RETURNS INTEGER AS $$ bpcharlen $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.chr
DELIMITER //
CREATE FUNCTION "chr"() RETURNS TEXT AS $$ chr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cideq
DELIMITER //
CREATE FUNCTION "cideq"() RETURNS BOOLEAN AS $$ cideq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cidin
DELIMITER //
CREATE FUNCTION "cidin"() RETURNS UNKNOWN AS $$ cidin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cidout
DELIMITER //
CREATE FUNCTION "cidout"() RETURNS UNKNOWN AS $$ cidout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cidr
DELIMITER //
CREATE FUNCTION "cidr"() RETURNS CIDR AS $$ inet_to_cidr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cidrecv
DELIMITER //
CREATE FUNCTION "cidrecv"() RETURNS UNKNOWN AS $$ cidrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cidr_in
DELIMITER //
CREATE FUNCTION "cidr_in"() RETURNS CIDR AS $$ cidr_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cidr_out
DELIMITER //
CREATE FUNCTION "cidr_out"() RETURNS UNKNOWN AS $$ cidr_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cidr_recv
DELIMITER //
CREATE FUNCTION "cidr_recv"() RETURNS CIDR AS $$ cidr_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cidr_send
DELIMITER //
CREATE FUNCTION "cidr_send"() RETURNS BYTEA AS $$ cidr_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cidsend
DELIMITER //
CREATE FUNCTION "cidsend"() RETURNS BYTEA AS $$ cidsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle
DELIMITER //
CREATE FUNCTION "circle"() RETURNS CIRCLE AS $$ box_circle $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle
DELIMITER //
CREATE FUNCTION "circle"() RETURNS CIRCLE AS $$ poly_circle $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle
DELIMITER //
CREATE FUNCTION "circle"() RETURNS CIRCLE AS $$ cr_circle $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_above
DELIMITER //
CREATE FUNCTION "circle_above"() RETURNS BOOLEAN AS $$ circle_above $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_add_pt
DELIMITER //
CREATE FUNCTION "circle_add_pt"() RETURNS CIRCLE AS $$ circle_add_pt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_below
DELIMITER //
CREATE FUNCTION "circle_below"() RETURNS BOOLEAN AS $$ circle_below $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_center
DELIMITER //
CREATE FUNCTION "circle_center"() RETURNS POINT AS $$ circle_center $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_contain
DELIMITER //
CREATE FUNCTION "circle_contain"() RETURNS BOOLEAN AS $$ circle_contain $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_contained
DELIMITER //
CREATE FUNCTION "circle_contained"() RETURNS BOOLEAN AS $$ circle_contained $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_contain_pt
DELIMITER //
CREATE FUNCTION "circle_contain_pt"() RETURNS BOOLEAN AS $$ circle_contain_pt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_distance
DELIMITER //
CREATE FUNCTION "circle_distance"() RETURNS DOUBLE PRECISION AS $$ circle_distance $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_div_pt
DELIMITER //
CREATE FUNCTION "circle_div_pt"() RETURNS CIRCLE AS $$ circle_div_pt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_eq
DELIMITER //
CREATE FUNCTION "circle_eq"() RETURNS BOOLEAN AS $$ circle_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_ge
DELIMITER //
CREATE FUNCTION "circle_ge"() RETURNS BOOLEAN AS $$ circle_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_gt
DELIMITER //
CREATE FUNCTION "circle_gt"() RETURNS BOOLEAN AS $$ circle_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_in
DELIMITER //
CREATE FUNCTION "circle_in"() RETURNS CIRCLE AS $$ circle_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_le
DELIMITER //
CREATE FUNCTION "circle_le"() RETURNS BOOLEAN AS $$ circle_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_left
DELIMITER //
CREATE FUNCTION "circle_left"() RETURNS BOOLEAN AS $$ circle_left $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_lt
DELIMITER //
CREATE FUNCTION "circle_lt"() RETURNS BOOLEAN AS $$ circle_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_mul_pt
DELIMITER //
CREATE FUNCTION "circle_mul_pt"() RETURNS CIRCLE AS $$ circle_mul_pt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_ne
DELIMITER //
CREATE FUNCTION "circle_ne"() RETURNS BOOLEAN AS $$ circle_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_out
DELIMITER //
CREATE FUNCTION "circle_out"() RETURNS UNKNOWN AS $$ circle_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_overabove
DELIMITER //
CREATE FUNCTION "circle_overabove"() RETURNS BOOLEAN AS $$ circle_overabove $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_overbelow
DELIMITER //
CREATE FUNCTION "circle_overbelow"() RETURNS BOOLEAN AS $$ circle_overbelow $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_overlap
DELIMITER //
CREATE FUNCTION "circle_overlap"() RETURNS BOOLEAN AS $$ circle_overlap $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_overleft
DELIMITER //
CREATE FUNCTION "circle_overleft"() RETURNS BOOLEAN AS $$ circle_overleft $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_overright
DELIMITER //
CREATE FUNCTION "circle_overright"() RETURNS BOOLEAN AS $$ circle_overright $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_recv
DELIMITER //
CREATE FUNCTION "circle_recv"() RETURNS CIRCLE AS $$ circle_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_right
DELIMITER //
CREATE FUNCTION "circle_right"() RETURNS BOOLEAN AS $$ circle_right $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_same
DELIMITER //
CREATE FUNCTION "circle_same"() RETURNS BOOLEAN AS $$ circle_same $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_send
DELIMITER //
CREATE FUNCTION "circle_send"() RETURNS BYTEA AS $$ circle_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.circle_sub_pt
DELIMITER //
CREATE FUNCTION "circle_sub_pt"() RETURNS CIRCLE AS $$ circle_sub_pt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.clock_timestamp
DELIMITER //
CREATE FUNCTION "clock_timestamp"() RETURNS TIMESTAMPTZ AS $$ clock_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.close_lb
DELIMITER //
CREATE FUNCTION "close_lb"() RETURNS POINT AS $$ close_lb $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.close_ls
DELIMITER //
CREATE FUNCTION "close_ls"() RETURNS POINT AS $$ close_ls $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.close_lseg
DELIMITER //
CREATE FUNCTION "close_lseg"() RETURNS POINT AS $$ close_lseg $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.close_pb
DELIMITER //
CREATE FUNCTION "close_pb"() RETURNS POINT AS $$ close_pb $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.close_pl
DELIMITER //
CREATE FUNCTION "close_pl"() RETURNS POINT AS $$ close_pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.close_ps
DELIMITER //
CREATE FUNCTION "close_ps"() RETURNS POINT AS $$ close_ps $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.close_sb
DELIMITER //
CREATE FUNCTION "close_sb"() RETURNS POINT AS $$ close_sb $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.close_sl
DELIMITER //
CREATE FUNCTION "close_sl"() RETURNS POINT AS $$ close_sl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.col_description
DELIMITER //
CREATE FUNCTION "col_description"() RETURNS TEXT AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.concat
DELIMITER //
CREATE FUNCTION "concat"() RETURNS TEXT AS $$ text_concat $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.concat_ws
DELIMITER //
CREATE FUNCTION "concat_ws"() RETURNS TEXT AS $$ text_concat_ws $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.contjoinsel
DELIMITER //
CREATE FUNCTION "contjoinsel"() RETURNS DOUBLE PRECISION AS $$ contjoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.contsel
DELIMITER //
CREATE FUNCTION "contsel"() RETURNS DOUBLE PRECISION AS $$ contsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.convert
DELIMITER //
CREATE FUNCTION "convert"() RETURNS BYTEA AS $$ pg_convert $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.convert_from
DELIMITER //
CREATE FUNCTION "convert_from"() RETURNS TEXT AS $$ pg_convert_from $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.convert_to
DELIMITER //
CREATE FUNCTION "convert_to"() RETURNS BYTEA AS $$ pg_convert_to $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.corr
DELIMITER //
CREATE FUNCTION "corr"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cos
DELIMITER //
CREATE FUNCTION "cos"() RETURNS DOUBLE PRECISION AS $$ dcos $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cosd
DELIMITER //
CREATE FUNCTION "cosd"() RETURNS DOUBLE PRECISION AS $$ dcosd $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cosh
DELIMITER //
CREATE FUNCTION "cosh"() RETURNS DOUBLE PRECISION AS $$ dcosh $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cot
DELIMITER //
CREATE FUNCTION "cot"() RETURNS DOUBLE PRECISION AS $$ dcot $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cotd
DELIMITER //
CREATE FUNCTION "cotd"() RETURNS DOUBLE PRECISION AS $$ dcotd $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.count
DELIMITER //
CREATE FUNCTION "count"() RETURNS BIGINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.count
DELIMITER //
CREATE FUNCTION "count"() RETURNS BIGINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.covar_pop
DELIMITER //
CREATE FUNCTION "covar_pop"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.covar_samp
DELIMITER //
CREATE FUNCTION "covar_samp"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cstring_in
DELIMITER //
CREATE FUNCTION "cstring_in"() RETURNS UNKNOWN AS $$ cstring_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cstring_out
DELIMITER //
CREATE FUNCTION "cstring_out"() RETURNS UNKNOWN AS $$ cstring_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cstring_recv
DELIMITER //
CREATE FUNCTION "cstring_recv"() RETURNS UNKNOWN AS $$ cstring_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cstring_send
DELIMITER //
CREATE FUNCTION "cstring_send"() RETURNS BYTEA AS $$ cstring_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cume_dist
DELIMITER //
CREATE FUNCTION "cume_dist"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cume_dist
DELIMITER //
CREATE FUNCTION "cume_dist"() RETURNS DOUBLE PRECISION AS $$ window_cume_dist $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cume_dist_final
DELIMITER //
CREATE FUNCTION "cume_dist_final"() RETURNS DOUBLE PRECISION AS $$ hypothetical_cume_dist_final $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.current_database
DELIMITER //
CREATE FUNCTION "current_database"() RETURNS VARCHAR AS $$ current_database $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.current_query
DELIMITER //
CREATE FUNCTION "current_query"() RETURNS TEXT AS $$ current_query $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.current_schema
DELIMITER //
CREATE FUNCTION "current_schema"() RETURNS VARCHAR AS $$ current_schema $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.current_schemas
DELIMITER //
CREATE FUNCTION "current_schemas"() RETURNS UNKNOWN AS $$ current_schemas $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.current_setting
DELIMITER //
CREATE FUNCTION "current_setting"() RETURNS TEXT AS $$ show_config_by_name_missing_ok $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.current_setting
DELIMITER //
CREATE FUNCTION "current_setting"() RETURNS TEXT AS $$ show_config_by_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.current_user
DELIMITER //
CREATE FUNCTION "current_user"() RETURNS VARCHAR AS $$ current_user $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.currtid2
DELIMITER //
CREATE FUNCTION "currtid2"() RETURNS UNKNOWN AS $$ currtid_byrelname $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.currval
DELIMITER //
CREATE FUNCTION "currval"() RETURNS BIGINT AS $$ currval_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cursor_to_xml
DELIMITER //
CREATE FUNCTION "cursor_to_xml"(cursor UNKNOWN, count INTEGER, nulls BOOLEAN, tableforest BOOLEAN, targetns TEXT) RETURNS UNKNOWN AS $$ cursor_to_xml $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.cursor_to_xmlschema
DELIMITER //
CREATE FUNCTION "cursor_to_xmlschema"(cursor UNKNOWN, nulls BOOLEAN, tableforest BOOLEAN, targetns TEXT) RETURNS UNKNOWN AS $$ cursor_to_xmlschema $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.database_to_xml
DELIMITER //
CREATE FUNCTION "database_to_xml"(nulls BOOLEAN, tableforest BOOLEAN, targetns TEXT) RETURNS UNKNOWN AS $$ database_to_xml $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.database_to_xmlschema
DELIMITER //
CREATE FUNCTION "database_to_xmlschema"(nulls BOOLEAN, tableforest BOOLEAN, targetns TEXT) RETURNS UNKNOWN AS $$ database_to_xmlschema $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.database_to_xml_and_xmlschema
DELIMITER //
CREATE FUNCTION "database_to_xml_and_xmlschema"(nulls BOOLEAN, tableforest BOOLEAN, targetns TEXT) RETURNS UNKNOWN AS $$ database_to_xml_and_xmlschema $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date
DELIMITER //
CREATE FUNCTION "date"() RETURNS DATE AS $$ timestamp_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date
DELIMITER //
CREATE FUNCTION "date"() RETURNS DATE AS $$ timestamptz_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.datemultirange
DELIMITER //
CREATE FUNCTION "datemultirange"() RETURNS UNKNOWN AS $$ multirange_constructor1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.datemultirange
DELIMITER //
CREATE FUNCTION "datemultirange"() RETURNS UNKNOWN AS $$ multirange_constructor2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.datemultirange
DELIMITER //
CREATE FUNCTION "datemultirange"() RETURNS UNKNOWN AS $$ multirange_constructor0 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.daterange
DELIMITER //
CREATE FUNCTION "daterange"() RETURNS UNKNOWN AS $$ range_constructor3 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.daterange
DELIMITER //
CREATE FUNCTION "daterange"() RETURNS UNKNOWN AS $$ range_constructor2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.daterange_canonical
DELIMITER //
CREATE FUNCTION "daterange_canonical"() RETURNS UNKNOWN AS $$ daterange_canonical $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.daterange_subdiff
DELIMITER //
CREATE FUNCTION "daterange_subdiff"() RETURNS DOUBLE PRECISION AS $$ daterange_subdiff $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.datetimetz_pl
DELIMITER //
CREATE FUNCTION "datetimetz_pl"() RETURNS TIMESTAMPTZ AS $$ datetimetz_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.datetime_pl
DELIMITER //
CREATE FUNCTION "datetime_pl"() RETURNS TIMESTAMP AS $$ datetime_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_bin
DELIMITER //
CREATE FUNCTION "date_bin"() RETURNS TIMESTAMP AS $$ timestamp_bin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_bin
DELIMITER //
CREATE FUNCTION "date_bin"() RETURNS TIMESTAMPTZ AS $$ timestamptz_bin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_cmp
DELIMITER //
CREATE FUNCTION "date_cmp"() RETURNS INTEGER AS $$ date_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_cmp_timestamp
DELIMITER //
CREATE FUNCTION "date_cmp_timestamp"() RETURNS INTEGER AS $$ date_cmp_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_cmp_timestamptz
DELIMITER //
CREATE FUNCTION "date_cmp_timestamptz"() RETURNS INTEGER AS $$ date_cmp_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_eq
DELIMITER //
CREATE FUNCTION "date_eq"() RETURNS BOOLEAN AS $$ date_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_eq_timestamp
DELIMITER //
CREATE FUNCTION "date_eq_timestamp"() RETURNS BOOLEAN AS $$ date_eq_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_eq_timestamptz
DELIMITER //
CREATE FUNCTION "date_eq_timestamptz"() RETURNS BOOLEAN AS $$ date_eq_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_ge
DELIMITER //
CREATE FUNCTION "date_ge"() RETURNS BOOLEAN AS $$ date_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_ge_timestamp
DELIMITER //
CREATE FUNCTION "date_ge_timestamp"() RETURNS BOOLEAN AS $$ date_ge_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_ge_timestamptz
DELIMITER //
CREATE FUNCTION "date_ge_timestamptz"() RETURNS BOOLEAN AS $$ date_ge_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_gt
DELIMITER //
CREATE FUNCTION "date_gt"() RETURNS BOOLEAN AS $$ date_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_gt_timestamp
DELIMITER //
CREATE FUNCTION "date_gt_timestamp"() RETURNS BOOLEAN AS $$ date_gt_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_gt_timestamptz
DELIMITER //
CREATE FUNCTION "date_gt_timestamptz"() RETURNS BOOLEAN AS $$ date_gt_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_in
DELIMITER //
CREATE FUNCTION "date_in"() RETURNS DATE AS $$ date_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_larger
DELIMITER //
CREATE FUNCTION "date_larger"() RETURNS DATE AS $$ date_larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_le
DELIMITER //
CREATE FUNCTION "date_le"() RETURNS BOOLEAN AS $$ date_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_le_timestamp
DELIMITER //
CREATE FUNCTION "date_le_timestamp"() RETURNS BOOLEAN AS $$ date_le_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_le_timestamptz
DELIMITER //
CREATE FUNCTION "date_le_timestamptz"() RETURNS BOOLEAN AS $$ date_le_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_lt
DELIMITER //
CREATE FUNCTION "date_lt"() RETURNS BOOLEAN AS $$ date_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_lt_timestamp
DELIMITER //
CREATE FUNCTION "date_lt_timestamp"() RETURNS BOOLEAN AS $$ date_lt_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_lt_timestamptz
DELIMITER //
CREATE FUNCTION "date_lt_timestamptz"() RETURNS BOOLEAN AS $$ date_lt_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_mi
DELIMITER //
CREATE FUNCTION "date_mi"() RETURNS INTEGER AS $$ date_mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_mii
DELIMITER //
CREATE FUNCTION "date_mii"() RETURNS DATE AS $$ date_mii $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_mi_interval
DELIMITER //
CREATE FUNCTION "date_mi_interval"() RETURNS TIMESTAMP AS $$ date_mi_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_ne
DELIMITER //
CREATE FUNCTION "date_ne"() RETURNS BOOLEAN AS $$ date_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_ne_timestamp
DELIMITER //
CREATE FUNCTION "date_ne_timestamp"() RETURNS BOOLEAN AS $$ date_ne_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_ne_timestamptz
DELIMITER //
CREATE FUNCTION "date_ne_timestamptz"() RETURNS BOOLEAN AS $$ date_ne_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_out
DELIMITER //
CREATE FUNCTION "date_out"() RETURNS UNKNOWN AS $$ date_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_part
DELIMITER //
CREATE FUNCTION "date_part"() RETURNS DOUBLE PRECISION AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_part
DELIMITER //
CREATE FUNCTION "date_part"() RETURNS DOUBLE PRECISION AS $$ interval_part $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_part
DELIMITER //
CREATE FUNCTION "date_part"() RETURNS DOUBLE PRECISION AS $$ time_part $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_part
DELIMITER //
CREATE FUNCTION "date_part"() RETURNS DOUBLE PRECISION AS $$ timestamptz_part $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_part
DELIMITER //
CREATE FUNCTION "date_part"() RETURNS DOUBLE PRECISION AS $$ timetz_part $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_part
DELIMITER //
CREATE FUNCTION "date_part"() RETURNS DOUBLE PRECISION AS $$ timestamp_part $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_pli
DELIMITER //
CREATE FUNCTION "date_pli"() RETURNS DATE AS $$ date_pli $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_pl_interval
DELIMITER //
CREATE FUNCTION "date_pl_interval"() RETURNS TIMESTAMP AS $$ date_pl_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_recv
DELIMITER //
CREATE FUNCTION "date_recv"() RETURNS DATE AS $$ date_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_send
DELIMITER //
CREATE FUNCTION "date_send"() RETURNS BYTEA AS $$ date_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_smaller
DELIMITER //
CREATE FUNCTION "date_smaller"() RETURNS DATE AS $$ date_smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_sortsupport
DELIMITER //
CREATE FUNCTION "date_sortsupport"() RETURNS UNKNOWN AS $$ date_sortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_trunc
DELIMITER //
CREATE FUNCTION "date_trunc"() RETURNS TIMESTAMP AS $$ timestamp_trunc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_trunc
DELIMITER //
CREATE FUNCTION "date_trunc"() RETURNS TIMESTAMPTZ AS $$ timestamptz_trunc_zone $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_trunc
DELIMITER //
CREATE FUNCTION "date_trunc"() RETURNS INTERVAL AS $$ interval_trunc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.date_trunc
DELIMITER //
CREATE FUNCTION "date_trunc"() RETURNS TIMESTAMPTZ AS $$ timestamptz_trunc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dcbrt
DELIMITER //
CREATE FUNCTION "dcbrt"() RETURNS DOUBLE PRECISION AS $$ dcbrt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.decode
DELIMITER //
CREATE FUNCTION "decode"() RETURNS BYTEA AS $$ binary_decode $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.degrees
DELIMITER //
CREATE FUNCTION "degrees"() RETURNS DOUBLE PRECISION AS $$ degrees $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dense_rank
DELIMITER //
CREATE FUNCTION "dense_rank"() RETURNS BIGINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dense_rank
DELIMITER //
CREATE FUNCTION "dense_rank"() RETURNS BIGINT AS $$ window_dense_rank $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dense_rank_final
DELIMITER //
CREATE FUNCTION "dense_rank_final"() RETURNS BIGINT AS $$ hypothetical_dense_rank_final $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dexp
DELIMITER //
CREATE FUNCTION "dexp"() RETURNS DOUBLE PRECISION AS $$ dexp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.diagonal
DELIMITER //
CREATE FUNCTION "diagonal"() RETURNS LSEG AS $$ box_diagonal $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.diameter
DELIMITER //
CREATE FUNCTION "diameter"() RETURNS DOUBLE PRECISION AS $$ circle_diameter $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dispell_init
DELIMITER //
CREATE FUNCTION "dispell_init"() RETURNS UNKNOWN AS $$ dispell_init $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dispell_lexize
DELIMITER //
CREATE FUNCTION "dispell_lexize"() RETURNS UNKNOWN AS $$ dispell_lexize $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_bl
DELIMITER //
CREATE FUNCTION "dist_bl"() RETURNS DOUBLE PRECISION AS $$ dist_bl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_bp
DELIMITER //
CREATE FUNCTION "dist_bp"() RETURNS DOUBLE PRECISION AS $$ dist_bp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_bs
DELIMITER //
CREATE FUNCTION "dist_bs"() RETURNS DOUBLE PRECISION AS $$ dist_bs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_cpoint
DELIMITER //
CREATE FUNCTION "dist_cpoint"() RETURNS DOUBLE PRECISION AS $$ dist_cpoint $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_cpoly
DELIMITER //
CREATE FUNCTION "dist_cpoly"() RETURNS DOUBLE PRECISION AS $$ dist_cpoly $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_lb
DELIMITER //
CREATE FUNCTION "dist_lb"() RETURNS DOUBLE PRECISION AS $$ dist_lb $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_lp
DELIMITER //
CREATE FUNCTION "dist_lp"() RETURNS DOUBLE PRECISION AS $$ dist_lp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_ls
DELIMITER //
CREATE FUNCTION "dist_ls"() RETURNS DOUBLE PRECISION AS $$ dist_ls $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_pathp
DELIMITER //
CREATE FUNCTION "dist_pathp"() RETURNS DOUBLE PRECISION AS $$ dist_pathp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_pb
DELIMITER //
CREATE FUNCTION "dist_pb"() RETURNS DOUBLE PRECISION AS $$ dist_pb $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_pc
DELIMITER //
CREATE FUNCTION "dist_pc"() RETURNS DOUBLE PRECISION AS $$ dist_pc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_pl
DELIMITER //
CREATE FUNCTION "dist_pl"() RETURNS DOUBLE PRECISION AS $$ dist_pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_polyc
DELIMITER //
CREATE FUNCTION "dist_polyc"() RETURNS DOUBLE PRECISION AS $$ dist_polyc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_polyp
DELIMITER //
CREATE FUNCTION "dist_polyp"() RETURNS DOUBLE PRECISION AS $$ dist_polyp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_ppath
DELIMITER //
CREATE FUNCTION "dist_ppath"() RETURNS DOUBLE PRECISION AS $$ dist_ppath $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_ppoly
DELIMITER //
CREATE FUNCTION "dist_ppoly"() RETURNS DOUBLE PRECISION AS $$ dist_ppoly $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_ps
DELIMITER //
CREATE FUNCTION "dist_ps"() RETURNS DOUBLE PRECISION AS $$ dist_ps $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_sb
DELIMITER //
CREATE FUNCTION "dist_sb"() RETURNS DOUBLE PRECISION AS $$ dist_sb $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_sl
DELIMITER //
CREATE FUNCTION "dist_sl"() RETURNS DOUBLE PRECISION AS $$ dist_sl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dist_sp
DELIMITER //
CREATE FUNCTION "dist_sp"() RETURNS DOUBLE PRECISION AS $$ dist_sp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.div
DELIMITER //
CREATE FUNCTION "div"() RETURNS NUMERIC AS $$ numeric_div_trunc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dlog1
DELIMITER //
CREATE FUNCTION "dlog1"() RETURNS DOUBLE PRECISION AS $$ dlog1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dlog10
DELIMITER //
CREATE FUNCTION "dlog10"() RETURNS DOUBLE PRECISION AS $$ dlog10 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.domain_in
DELIMITER //
CREATE FUNCTION "domain_in"() RETURNS UNKNOWN AS $$ domain_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.domain_recv
DELIMITER //
CREATE FUNCTION "domain_recv"() RETURNS UNKNOWN AS $$ domain_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dpow
DELIMITER //
CREATE FUNCTION "dpow"() RETURNS DOUBLE PRECISION AS $$ dpow $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dround
DELIMITER //
CREATE FUNCTION "dround"() RETURNS DOUBLE PRECISION AS $$ dround $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dsimple_init
DELIMITER //
CREATE FUNCTION "dsimple_init"() RETURNS UNKNOWN AS $$ dsimple_init $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dsimple_lexize
DELIMITER //
CREATE FUNCTION "dsimple_lexize"() RETURNS UNKNOWN AS $$ dsimple_lexize $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dsnowball_init
DELIMITER //
CREATE FUNCTION "dsnowball_init"() RETURNS UNKNOWN AS $$ dsnowball_init $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dsnowball_lexize
DELIMITER //
CREATE FUNCTION "dsnowball_lexize"() RETURNS UNKNOWN AS $$ dsnowball_lexize $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dsqrt
DELIMITER //
CREATE FUNCTION "dsqrt"() RETURNS DOUBLE PRECISION AS $$ dsqrt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dsynonym_init
DELIMITER //
CREATE FUNCTION "dsynonym_init"() RETURNS UNKNOWN AS $$ dsynonym_init $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dsynonym_lexize
DELIMITER //
CREATE FUNCTION "dsynonym_lexize"() RETURNS UNKNOWN AS $$ dsynonym_lexize $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.dtrunc
DELIMITER //
CREATE FUNCTION "dtrunc"() RETURNS DOUBLE PRECISION AS $$ dtrunc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.elem_contained_by_multirange
DELIMITER //
CREATE FUNCTION "elem_contained_by_multirange"() RETURNS BOOLEAN AS $$ elem_contained_by_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.elem_contained_by_range
DELIMITER //
CREATE FUNCTION "elem_contained_by_range"() RETURNS BOOLEAN AS $$ elem_contained_by_range $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.encode
DELIMITER //
CREATE FUNCTION "encode"() RETURNS TEXT AS $$ binary_encode $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_cmp
DELIMITER //
CREATE FUNCTION "enum_cmp"() RETURNS INTEGER AS $$ enum_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_eq
DELIMITER //
CREATE FUNCTION "enum_eq"() RETURNS BOOLEAN AS $$ enum_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_first
DELIMITER //
CREATE FUNCTION "enum_first"() RETURNS UNKNOWN AS $$ enum_first $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_ge
DELIMITER //
CREATE FUNCTION "enum_ge"() RETURNS BOOLEAN AS $$ enum_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_gt
DELIMITER //
CREATE FUNCTION "enum_gt"() RETURNS BOOLEAN AS $$ enum_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_in
DELIMITER //
CREATE FUNCTION "enum_in"() RETURNS UNKNOWN AS $$ enum_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_larger
DELIMITER //
CREATE FUNCTION "enum_larger"() RETURNS UNKNOWN AS $$ enum_larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_last
DELIMITER //
CREATE FUNCTION "enum_last"() RETURNS UNKNOWN AS $$ enum_last $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_le
DELIMITER //
CREATE FUNCTION "enum_le"() RETURNS BOOLEAN AS $$ enum_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_lt
DELIMITER //
CREATE FUNCTION "enum_lt"() RETURNS BOOLEAN AS $$ enum_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_ne
DELIMITER //
CREATE FUNCTION "enum_ne"() RETURNS BOOLEAN AS $$ enum_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_out
DELIMITER //
CREATE FUNCTION "enum_out"() RETURNS UNKNOWN AS $$ enum_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_range
DELIMITER //
CREATE FUNCTION "enum_range"() RETURNS UNKNOWN AS $$ enum_range_bounds $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_range
DELIMITER //
CREATE FUNCTION "enum_range"() RETURNS UNKNOWN AS $$ enum_range_all $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_recv
DELIMITER //
CREATE FUNCTION "enum_recv"() RETURNS UNKNOWN AS $$ enum_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_send
DELIMITER //
CREATE FUNCTION "enum_send"() RETURNS BYTEA AS $$ enum_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.enum_smaller
DELIMITER //
CREATE FUNCTION "enum_smaller"() RETURNS UNKNOWN AS $$ enum_smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.eqjoinsel
DELIMITER //
CREATE FUNCTION "eqjoinsel"() RETURNS DOUBLE PRECISION AS $$ eqjoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.eqsel
DELIMITER //
CREATE FUNCTION "eqsel"() RETURNS DOUBLE PRECISION AS $$ eqsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.euc_cn_to_mic
DELIMITER //
CREATE FUNCTION "euc_cn_to_mic"() RETURNS INTEGER AS $$ euc_cn_to_mic $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.euc_cn_to_utf8
DELIMITER //
CREATE FUNCTION "euc_cn_to_utf8"() RETURNS INTEGER AS $$ euc_cn_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.euc_jis_2004_to_shift_jis_2004
DELIMITER //
CREATE FUNCTION "euc_jis_2004_to_shift_jis_2004"() RETURNS INTEGER AS $$ euc_jis_2004_to_shift_jis_2004 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.euc_jis_2004_to_utf8
DELIMITER //
CREATE FUNCTION "euc_jis_2004_to_utf8"() RETURNS INTEGER AS $$ euc_jis_2004_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.euc_jp_to_mic
DELIMITER //
CREATE FUNCTION "euc_jp_to_mic"() RETURNS INTEGER AS $$ euc_jp_to_mic $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.euc_jp_to_sjis
DELIMITER //
CREATE FUNCTION "euc_jp_to_sjis"() RETURNS INTEGER AS $$ euc_jp_to_sjis $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.euc_jp_to_utf8
DELIMITER //
CREATE FUNCTION "euc_jp_to_utf8"() RETURNS INTEGER AS $$ euc_jp_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.euc_kr_to_mic
DELIMITER //
CREATE FUNCTION "euc_kr_to_mic"() RETURNS INTEGER AS $$ euc_kr_to_mic $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.euc_kr_to_utf8
DELIMITER //
CREATE FUNCTION "euc_kr_to_utf8"() RETURNS INTEGER AS $$ euc_kr_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.euc_tw_to_big5
DELIMITER //
CREATE FUNCTION "euc_tw_to_big5"() RETURNS INTEGER AS $$ euc_tw_to_big5 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.euc_tw_to_mic
DELIMITER //
CREATE FUNCTION "euc_tw_to_mic"() RETURNS INTEGER AS $$ euc_tw_to_mic $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.euc_tw_to_utf8
DELIMITER //
CREATE FUNCTION "euc_tw_to_utf8"() RETURNS INTEGER AS $$ euc_tw_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.event_trigger_in
DELIMITER //
CREATE FUNCTION "event_trigger_in"() RETURNS UNKNOWN AS $$ event_trigger_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.event_trigger_out
DELIMITER //
CREATE FUNCTION "event_trigger_out"() RETURNS UNKNOWN AS $$ event_trigger_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.every
DELIMITER //
CREATE FUNCTION "every"() RETURNS BOOLEAN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.exp
DELIMITER //
CREATE FUNCTION "exp"() RETURNS DOUBLE PRECISION AS $$ dexp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.exp
DELIMITER //
CREATE FUNCTION "exp"() RETURNS NUMERIC AS $$ numeric_exp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.extract
DELIMITER //
CREATE FUNCTION "extract"() RETURNS NUMERIC AS $$ extract_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.extract
DELIMITER //
CREATE FUNCTION "extract"() RETURNS NUMERIC AS $$ extract_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.extract
DELIMITER //
CREATE FUNCTION "extract"() RETURNS NUMERIC AS $$ extract_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.extract
DELIMITER //
CREATE FUNCTION "extract"() RETURNS NUMERIC AS $$ extract_timetz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.extract
DELIMITER //
CREATE FUNCTION "extract"() RETURNS NUMERIC AS $$ extract_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.extract
DELIMITER //
CREATE FUNCTION "extract"() RETURNS NUMERIC AS $$ extract_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.factorial
DELIMITER //
CREATE FUNCTION "factorial"() RETURNS NUMERIC AS $$ numeric_fac $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.family
DELIMITER //
CREATE FUNCTION "family"() RETURNS INTEGER AS $$ network_family $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.fdw_handler_in
DELIMITER //
CREATE FUNCTION "fdw_handler_in"() RETURNS UNKNOWN AS $$ fdw_handler_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.fdw_handler_out
DELIMITER //
CREATE FUNCTION "fdw_handler_out"() RETURNS UNKNOWN AS $$ fdw_handler_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.first_value
DELIMITER //
CREATE FUNCTION "first_value"() RETURNS UNKNOWN AS $$ window_first_value $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4
DELIMITER //
CREATE FUNCTION "float4"() RETURNS REAL AS $$ dtof $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4
DELIMITER //
CREATE FUNCTION "float4"() RETURNS REAL AS $$ i4tof $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4
DELIMITER //
CREATE FUNCTION "float4"() RETURNS REAL AS $$ i2tof $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4
DELIMITER //
CREATE FUNCTION "float4"() RETURNS REAL AS $$ jsonb_float4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4
DELIMITER //
CREATE FUNCTION "float4"() RETURNS REAL AS $$ numeric_float4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4
DELIMITER //
CREATE FUNCTION "float4"() RETURNS REAL AS $$ i8tof $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float48div
DELIMITER //
CREATE FUNCTION "float48div"() RETURNS DOUBLE PRECISION AS $$ float48div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float48eq
DELIMITER //
CREATE FUNCTION "float48eq"() RETURNS BOOLEAN AS $$ float48eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float48ge
DELIMITER //
CREATE FUNCTION "float48ge"() RETURNS BOOLEAN AS $$ float48ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float48gt
DELIMITER //
CREATE FUNCTION "float48gt"() RETURNS BOOLEAN AS $$ float48gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float48le
DELIMITER //
CREATE FUNCTION "float48le"() RETURNS BOOLEAN AS $$ float48le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float48lt
DELIMITER //
CREATE FUNCTION "float48lt"() RETURNS BOOLEAN AS $$ float48lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float48mi
DELIMITER //
CREATE FUNCTION "float48mi"() RETURNS DOUBLE PRECISION AS $$ float48mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float48mul
DELIMITER //
CREATE FUNCTION "float48mul"() RETURNS DOUBLE PRECISION AS $$ float48mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float48ne
DELIMITER //
CREATE FUNCTION "float48ne"() RETURNS BOOLEAN AS $$ float48ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float48pl
DELIMITER //
CREATE FUNCTION "float48pl"() RETURNS DOUBLE PRECISION AS $$ float48pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4abs
DELIMITER //
CREATE FUNCTION "float4abs"() RETURNS REAL AS $$ float4abs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4div
DELIMITER //
CREATE FUNCTION "float4div"() RETURNS REAL AS $$ float4div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4eq
DELIMITER //
CREATE FUNCTION "float4eq"() RETURNS BOOLEAN AS $$ float4eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4ge
DELIMITER //
CREATE FUNCTION "float4ge"() RETURNS BOOLEAN AS $$ float4ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4gt
DELIMITER //
CREATE FUNCTION "float4gt"() RETURNS BOOLEAN AS $$ float4gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4in
DELIMITER //
CREATE FUNCTION "float4in"() RETURNS REAL AS $$ float4in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4larger
DELIMITER //
CREATE FUNCTION "float4larger"() RETURNS REAL AS $$ float4larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4le
DELIMITER //
CREATE FUNCTION "float4le"() RETURNS BOOLEAN AS $$ float4le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4lt
DELIMITER //
CREATE FUNCTION "float4lt"() RETURNS BOOLEAN AS $$ float4lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4mi
DELIMITER //
CREATE FUNCTION "float4mi"() RETURNS REAL AS $$ float4mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4mul
DELIMITER //
CREATE FUNCTION "float4mul"() RETURNS REAL AS $$ float4mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4ne
DELIMITER //
CREATE FUNCTION "float4ne"() RETURNS BOOLEAN AS $$ float4ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4out
DELIMITER //
CREATE FUNCTION "float4out"() RETURNS UNKNOWN AS $$ float4out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4pl
DELIMITER //
CREATE FUNCTION "float4pl"() RETURNS REAL AS $$ float4pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4recv
DELIMITER //
CREATE FUNCTION "float4recv"() RETURNS REAL AS $$ float4recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4send
DELIMITER //
CREATE FUNCTION "float4send"() RETURNS BYTEA AS $$ float4send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4smaller
DELIMITER //
CREATE FUNCTION "float4smaller"() RETURNS REAL AS $$ float4smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4um
DELIMITER //
CREATE FUNCTION "float4um"() RETURNS REAL AS $$ float4um $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4up
DELIMITER //
CREATE FUNCTION "float4up"() RETURNS REAL AS $$ float4up $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float4_accum
DELIMITER //
CREATE FUNCTION "float4_accum"() RETURNS UNKNOWN AS $$ float4_accum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8
DELIMITER //
CREATE FUNCTION "float8"() RETURNS DOUBLE PRECISION AS $$ numeric_float8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8
DELIMITER //
CREATE FUNCTION "float8"() RETURNS DOUBLE PRECISION AS $$ i8tod $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8
DELIMITER //
CREATE FUNCTION "float8"() RETURNS DOUBLE PRECISION AS $$ i4tod $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8
DELIMITER //
CREATE FUNCTION "float8"() RETURNS DOUBLE PRECISION AS $$ ftod $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8
DELIMITER //
CREATE FUNCTION "float8"() RETURNS DOUBLE PRECISION AS $$ jsonb_float8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8
DELIMITER //
CREATE FUNCTION "float8"() RETURNS DOUBLE PRECISION AS $$ i2tod $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float84div
DELIMITER //
CREATE FUNCTION "float84div"() RETURNS DOUBLE PRECISION AS $$ float84div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float84eq
DELIMITER //
CREATE FUNCTION "float84eq"() RETURNS BOOLEAN AS $$ float84eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float84ge
DELIMITER //
CREATE FUNCTION "float84ge"() RETURNS BOOLEAN AS $$ float84ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float84gt
DELIMITER //
CREATE FUNCTION "float84gt"() RETURNS BOOLEAN AS $$ float84gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float84le
DELIMITER //
CREATE FUNCTION "float84le"() RETURNS BOOLEAN AS $$ float84le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float84lt
DELIMITER //
CREATE FUNCTION "float84lt"() RETURNS BOOLEAN AS $$ float84lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float84mi
DELIMITER //
CREATE FUNCTION "float84mi"() RETURNS DOUBLE PRECISION AS $$ float84mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float84mul
DELIMITER //
CREATE FUNCTION "float84mul"() RETURNS DOUBLE PRECISION AS $$ float84mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float84ne
DELIMITER //
CREATE FUNCTION "float84ne"() RETURNS BOOLEAN AS $$ float84ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float84pl
DELIMITER //
CREATE FUNCTION "float84pl"() RETURNS DOUBLE PRECISION AS $$ float84pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8abs
DELIMITER //
CREATE FUNCTION "float8abs"() RETURNS DOUBLE PRECISION AS $$ float8abs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8div
DELIMITER //
CREATE FUNCTION "float8div"() RETURNS DOUBLE PRECISION AS $$ float8div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8eq
DELIMITER //
CREATE FUNCTION "float8eq"() RETURNS BOOLEAN AS $$ float8eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8ge
DELIMITER //
CREATE FUNCTION "float8ge"() RETURNS BOOLEAN AS $$ float8ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8gt
DELIMITER //
CREATE FUNCTION "float8gt"() RETURNS BOOLEAN AS $$ float8gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8in
DELIMITER //
CREATE FUNCTION "float8in"() RETURNS DOUBLE PRECISION AS $$ float8in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8larger
DELIMITER //
CREATE FUNCTION "float8larger"() RETURNS DOUBLE PRECISION AS $$ float8larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8le
DELIMITER //
CREATE FUNCTION "float8le"() RETURNS BOOLEAN AS $$ float8le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8lt
DELIMITER //
CREATE FUNCTION "float8lt"() RETURNS BOOLEAN AS $$ float8lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8mi
DELIMITER //
CREATE FUNCTION "float8mi"() RETURNS DOUBLE PRECISION AS $$ float8mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8mul
DELIMITER //
CREATE FUNCTION "float8mul"() RETURNS DOUBLE PRECISION AS $$ float8mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8ne
DELIMITER //
CREATE FUNCTION "float8ne"() RETURNS BOOLEAN AS $$ float8ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8out
DELIMITER //
CREATE FUNCTION "float8out"() RETURNS UNKNOWN AS $$ float8out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8pl
DELIMITER //
CREATE FUNCTION "float8pl"() RETURNS DOUBLE PRECISION AS $$ float8pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8recv
DELIMITER //
CREATE FUNCTION "float8recv"() RETURNS DOUBLE PRECISION AS $$ float8recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8send
DELIMITER //
CREATE FUNCTION "float8send"() RETURNS BYTEA AS $$ float8send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8smaller
DELIMITER //
CREATE FUNCTION "float8smaller"() RETURNS DOUBLE PRECISION AS $$ float8smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8um
DELIMITER //
CREATE FUNCTION "float8um"() RETURNS DOUBLE PRECISION AS $$ float8um $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8up
DELIMITER //
CREATE FUNCTION "float8up"() RETURNS DOUBLE PRECISION AS $$ float8up $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_accum
DELIMITER //
CREATE FUNCTION "float8_accum"() RETURNS UNKNOWN AS $$ float8_accum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_avg
DELIMITER //
CREATE FUNCTION "float8_avg"() RETURNS DOUBLE PRECISION AS $$ float8_avg $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_combine
DELIMITER //
CREATE FUNCTION "float8_combine"() RETURNS UNKNOWN AS $$ float8_combine $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_corr
DELIMITER //
CREATE FUNCTION "float8_corr"() RETURNS DOUBLE PRECISION AS $$ float8_corr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_covar_pop
DELIMITER //
CREATE FUNCTION "float8_covar_pop"() RETURNS DOUBLE PRECISION AS $$ float8_covar_pop $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_covar_samp
DELIMITER //
CREATE FUNCTION "float8_covar_samp"() RETURNS DOUBLE PRECISION AS $$ float8_covar_samp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_regr_accum
DELIMITER //
CREATE FUNCTION "float8_regr_accum"() RETURNS UNKNOWN AS $$ float8_regr_accum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_regr_avgx
DELIMITER //
CREATE FUNCTION "float8_regr_avgx"() RETURNS DOUBLE PRECISION AS $$ float8_regr_avgx $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_regr_avgy
DELIMITER //
CREATE FUNCTION "float8_regr_avgy"() RETURNS DOUBLE PRECISION AS $$ float8_regr_avgy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_regr_combine
DELIMITER //
CREATE FUNCTION "float8_regr_combine"() RETURNS UNKNOWN AS $$ float8_regr_combine $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_regr_intercept
DELIMITER //
CREATE FUNCTION "float8_regr_intercept"() RETURNS DOUBLE PRECISION AS $$ float8_regr_intercept $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_regr_r2
DELIMITER //
CREATE FUNCTION "float8_regr_r2"() RETURNS DOUBLE PRECISION AS $$ float8_regr_r2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_regr_slope
DELIMITER //
CREATE FUNCTION "float8_regr_slope"() RETURNS DOUBLE PRECISION AS $$ float8_regr_slope $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_regr_sxx
DELIMITER //
CREATE FUNCTION "float8_regr_sxx"() RETURNS DOUBLE PRECISION AS $$ float8_regr_sxx $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_regr_sxy
DELIMITER //
CREATE FUNCTION "float8_regr_sxy"() RETURNS DOUBLE PRECISION AS $$ float8_regr_sxy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_regr_syy
DELIMITER //
CREATE FUNCTION "float8_regr_syy"() RETURNS DOUBLE PRECISION AS $$ float8_regr_syy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_stddev_pop
DELIMITER //
CREATE FUNCTION "float8_stddev_pop"() RETURNS DOUBLE PRECISION AS $$ float8_stddev_pop $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_stddev_samp
DELIMITER //
CREATE FUNCTION "float8_stddev_samp"() RETURNS DOUBLE PRECISION AS $$ float8_stddev_samp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_var_pop
DELIMITER //
CREATE FUNCTION "float8_var_pop"() RETURNS DOUBLE PRECISION AS $$ float8_var_pop $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.float8_var_samp
DELIMITER //
CREATE FUNCTION "float8_var_samp"() RETURNS DOUBLE PRECISION AS $$ float8_var_samp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.floor
DELIMITER //
CREATE FUNCTION "floor"() RETURNS NUMERIC AS $$ numeric_floor $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.floor
DELIMITER //
CREATE FUNCTION "floor"() RETURNS DOUBLE PRECISION AS $$ dfloor $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.flt4_mul_cash
DELIMITER //
CREATE FUNCTION "flt4_mul_cash"() RETURNS MONEY AS $$ flt4_mul_cash $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.flt8_mul_cash
DELIMITER //
CREATE FUNCTION "flt8_mul_cash"() RETURNS MONEY AS $$ flt8_mul_cash $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.fmgr_c_validator
DELIMITER //
CREATE FUNCTION "fmgr_c_validator"() RETURNS UNKNOWN AS $$ fmgr_c_validator $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.fmgr_internal_validator
DELIMITER //
CREATE FUNCTION "fmgr_internal_validator"() RETURNS UNKNOWN AS $$ fmgr_internal_validator $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.fmgr_sql_validator
DELIMITER //
CREATE FUNCTION "fmgr_sql_validator"() RETURNS UNKNOWN AS $$ fmgr_sql_validator $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.format
DELIMITER //
CREATE FUNCTION "format"() RETURNS TEXT AS $$ text_format $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.format
DELIMITER //
CREATE FUNCTION "format"() RETURNS TEXT AS $$ text_format_nv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.format_type
DELIMITER //
CREATE FUNCTION "format_type"() RETURNS TEXT AS $$ format_type $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gb18030_to_utf8
DELIMITER //
CREATE FUNCTION "gb18030_to_utf8"() RETURNS INTEGER AS $$ gb18030_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gbk_to_utf8
DELIMITER //
CREATE FUNCTION "gbk_to_utf8"() RETURNS INTEGER AS $$ gbk_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gcd
DELIMITER //
CREATE FUNCTION "gcd"() RETURNS INTEGER AS $$ int4gcd $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gcd
DELIMITER //
CREATE FUNCTION "gcd"() RETURNS BIGINT AS $$ int8gcd $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gcd
DELIMITER //
CREATE FUNCTION "gcd"() RETURNS NUMERIC AS $$ numeric_gcd $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.generate_series
DELIMITER //
CREATE FUNCTION "generate_series"() RETURNS BIGINT AS $$ generate_series_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.generate_series
DELIMITER //
CREATE FUNCTION "generate_series"() RETURNS NUMERIC AS $$ generate_series_step_numeric $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.generate_series
DELIMITER //
CREATE FUNCTION "generate_series"() RETURNS INTEGER AS $$ generate_series_step_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.generate_series
DELIMITER //
CREATE FUNCTION "generate_series"() RETURNS BIGINT AS $$ generate_series_step_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.generate_series
DELIMITER //
CREATE FUNCTION "generate_series"() RETURNS INTEGER AS $$ generate_series_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.generate_series
DELIMITER //
CREATE FUNCTION "generate_series"() RETURNS TIMESTAMPTZ AS $$ generate_series_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.generate_series
DELIMITER //
CREATE FUNCTION "generate_series"() RETURNS TIMESTAMP AS $$ generate_series_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.generate_series
DELIMITER //
CREATE FUNCTION "generate_series"() RETURNS NUMERIC AS $$ generate_series_numeric $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.generate_series_int4_support
DELIMITER //
CREATE FUNCTION "generate_series_int4_support"() RETURNS UNKNOWN AS $$ generate_series_int4_support $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.generate_series_int8_support
DELIMITER //
CREATE FUNCTION "generate_series_int8_support"() RETURNS UNKNOWN AS $$ generate_series_int8_support $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.generate_subscripts
DELIMITER //
CREATE FUNCTION "generate_subscripts"() RETURNS INTEGER AS $$ generate_subscripts_nodir $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.generate_subscripts
DELIMITER //
CREATE FUNCTION "generate_subscripts"() RETURNS INTEGER AS $$ generate_subscripts $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gen_random_uuid
DELIMITER //
CREATE FUNCTION "gen_random_uuid"() RETURNS UUID AS $$ gen_random_uuid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.getdatabaseencoding
DELIMITER //
CREATE FUNCTION "getdatabaseencoding"() RETURNS VARCHAR AS $$ getdatabaseencoding $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.getpgusername
DELIMITER //
CREATE FUNCTION "getpgusername"() RETURNS VARCHAR AS $$ current_user $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.get_bit
DELIMITER //
CREATE FUNCTION "get_bit"() RETURNS INTEGER AS $$ bitgetbit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.get_bit
DELIMITER //
CREATE FUNCTION "get_bit"() RETURNS INTEGER AS $$ byteaGetBit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.get_byte
DELIMITER //
CREATE FUNCTION "get_byte"() RETURNS INTEGER AS $$ byteaGetByte $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.get_current_ts_config
DELIMITER //
CREATE FUNCTION "get_current_ts_config"() RETURNS UNKNOWN AS $$ get_current_ts_config $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ginarrayconsistent
DELIMITER //
CREATE FUNCTION "ginarrayconsistent"() RETURNS BOOLEAN AS $$ ginarrayconsistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ginarrayextract
DELIMITER //
CREATE FUNCTION "ginarrayextract"() RETURNS UNKNOWN AS $$ ginarrayextract_2args $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ginarrayextract
DELIMITER //
CREATE FUNCTION "ginarrayextract"() RETURNS UNKNOWN AS $$ ginarrayextract $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ginarraytriconsistent
DELIMITER //
CREATE FUNCTION "ginarraytriconsistent"() RETURNS CHAR AS $$ ginarraytriconsistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ginhandler
DELIMITER //
CREATE FUNCTION "ginhandler"() RETURNS UNKNOWN AS $$ ginhandler $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ginqueryarrayextract
DELIMITER //
CREATE FUNCTION "ginqueryarrayextract"() RETURNS UNKNOWN AS $$ ginqueryarrayextract $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_clean_pending_list
DELIMITER //
CREATE FUNCTION "gin_clean_pending_list"() RETURNS BIGINT AS $$ gin_clean_pending_list $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_cmp_prefix
DELIMITER //
CREATE FUNCTION "gin_cmp_prefix"() RETURNS INTEGER AS $$ gin_cmp_prefix $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_cmp_tslexeme
DELIMITER //
CREATE FUNCTION "gin_cmp_tslexeme"() RETURNS INTEGER AS $$ gin_cmp_tslexeme $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_compare_jsonb
DELIMITER //
CREATE FUNCTION "gin_compare_jsonb"() RETURNS INTEGER AS $$ gin_compare_jsonb $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_consistent_jsonb
DELIMITER //
CREATE FUNCTION "gin_consistent_jsonb"() RETURNS BOOLEAN AS $$ gin_consistent_jsonb $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_consistent_jsonb_path
DELIMITER //
CREATE FUNCTION "gin_consistent_jsonb_path"() RETURNS BOOLEAN AS $$ gin_consistent_jsonb_path $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_extract_jsonb
DELIMITER //
CREATE FUNCTION "gin_extract_jsonb"() RETURNS UNKNOWN AS $$ gin_extract_jsonb $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_extract_jsonb_path
DELIMITER //
CREATE FUNCTION "gin_extract_jsonb_path"() RETURNS UNKNOWN AS $$ gin_extract_jsonb_path $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_extract_jsonb_query
DELIMITER //
CREATE FUNCTION "gin_extract_jsonb_query"() RETURNS UNKNOWN AS $$ gin_extract_jsonb_query $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_extract_jsonb_query_path
DELIMITER //
CREATE FUNCTION "gin_extract_jsonb_query_path"() RETURNS UNKNOWN AS $$ gin_extract_jsonb_query_path $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_extract_tsquery
DELIMITER //
CREATE FUNCTION "gin_extract_tsquery"() RETURNS UNKNOWN AS $$ gin_extract_tsquery $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_extract_tsquery
DELIMITER //
CREATE FUNCTION "gin_extract_tsquery"() RETURNS UNKNOWN AS $$ gin_extract_tsquery_5args $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_extract_tsquery
DELIMITER //
CREATE FUNCTION "gin_extract_tsquery"() RETURNS UNKNOWN AS $$ gin_extract_tsquery_oldsig $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_extract_tsvector
DELIMITER //
CREATE FUNCTION "gin_extract_tsvector"() RETURNS UNKNOWN AS $$ gin_extract_tsvector $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_extract_tsvector
DELIMITER //
CREATE FUNCTION "gin_extract_tsvector"() RETURNS UNKNOWN AS $$ gin_extract_tsvector_2args $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_triconsistent_jsonb
DELIMITER //
CREATE FUNCTION "gin_triconsistent_jsonb"() RETURNS CHAR AS $$ gin_triconsistent_jsonb $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_triconsistent_jsonb_path
DELIMITER //
CREATE FUNCTION "gin_triconsistent_jsonb_path"() RETURNS CHAR AS $$ gin_triconsistent_jsonb_path $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_tsquery_consistent
DELIMITER //
CREATE FUNCTION "gin_tsquery_consistent"() RETURNS BOOLEAN AS $$ gin_tsquery_consistent_oldsig $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_tsquery_consistent
DELIMITER //
CREATE FUNCTION "gin_tsquery_consistent"() RETURNS BOOLEAN AS $$ gin_tsquery_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_tsquery_consistent
DELIMITER //
CREATE FUNCTION "gin_tsquery_consistent"() RETURNS BOOLEAN AS $$ gin_tsquery_consistent_6args $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gin_tsquery_triconsistent
DELIMITER //
CREATE FUNCTION "gin_tsquery_triconsistent"() RETURNS CHAR AS $$ gin_tsquery_triconsistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gisthandler
DELIMITER //
CREATE FUNCTION "gisthandler"() RETURNS UNKNOWN AS $$ gisthandler $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_box_consistent
DELIMITER //
CREATE FUNCTION "gist_box_consistent"() RETURNS BOOLEAN AS $$ gist_box_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_box_distance
DELIMITER //
CREATE FUNCTION "gist_box_distance"() RETURNS DOUBLE PRECISION AS $$ gist_box_distance $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_box_penalty
DELIMITER //
CREATE FUNCTION "gist_box_penalty"() RETURNS UNKNOWN AS $$ gist_box_penalty $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_box_picksplit
DELIMITER //
CREATE FUNCTION "gist_box_picksplit"() RETURNS UNKNOWN AS $$ gist_box_picksplit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_box_same
DELIMITER //
CREATE FUNCTION "gist_box_same"() RETURNS UNKNOWN AS $$ gist_box_same $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_box_union
DELIMITER //
CREATE FUNCTION "gist_box_union"() RETURNS BOX AS $$ gist_box_union $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_circle_compress
DELIMITER //
CREATE FUNCTION "gist_circle_compress"() RETURNS UNKNOWN AS $$ gist_circle_compress $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_circle_consistent
DELIMITER //
CREATE FUNCTION "gist_circle_consistent"() RETURNS BOOLEAN AS $$ gist_circle_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_circle_distance
DELIMITER //
CREATE FUNCTION "gist_circle_distance"() RETURNS DOUBLE PRECISION AS $$ gist_circle_distance $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_point_compress
DELIMITER //
CREATE FUNCTION "gist_point_compress"() RETURNS UNKNOWN AS $$ gist_point_compress $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_point_consistent
DELIMITER //
CREATE FUNCTION "gist_point_consistent"() RETURNS BOOLEAN AS $$ gist_point_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_point_distance
DELIMITER //
CREATE FUNCTION "gist_point_distance"() RETURNS DOUBLE PRECISION AS $$ gist_point_distance $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_point_fetch
DELIMITER //
CREATE FUNCTION "gist_point_fetch"() RETURNS UNKNOWN AS $$ gist_point_fetch $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_point_sortsupport
DELIMITER //
CREATE FUNCTION "gist_point_sortsupport"() RETURNS UNKNOWN AS $$ gist_point_sortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_poly_compress
DELIMITER //
CREATE FUNCTION "gist_poly_compress"() RETURNS UNKNOWN AS $$ gist_poly_compress $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_poly_consistent
DELIMITER //
CREATE FUNCTION "gist_poly_consistent"() RETURNS BOOLEAN AS $$ gist_poly_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gist_poly_distance
DELIMITER //
CREATE FUNCTION "gist_poly_distance"() RETURNS DOUBLE PRECISION AS $$ gist_poly_distance $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsquery_compress
DELIMITER //
CREATE FUNCTION "gtsquery_compress"() RETURNS UNKNOWN AS $$ gtsquery_compress $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsquery_consistent
DELIMITER //
CREATE FUNCTION "gtsquery_consistent"() RETURNS BOOLEAN AS $$ gtsquery_consistent_oldsig $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsquery_consistent
DELIMITER //
CREATE FUNCTION "gtsquery_consistent"() RETURNS BOOLEAN AS $$ gtsquery_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsquery_penalty
DELIMITER //
CREATE FUNCTION "gtsquery_penalty"() RETURNS UNKNOWN AS $$ gtsquery_penalty $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsquery_picksplit
DELIMITER //
CREATE FUNCTION "gtsquery_picksplit"() RETURNS UNKNOWN AS $$ gtsquery_picksplit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsquery_same
DELIMITER //
CREATE FUNCTION "gtsquery_same"() RETURNS UNKNOWN AS $$ gtsquery_same $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsquery_union
DELIMITER //
CREATE FUNCTION "gtsquery_union"() RETURNS BIGINT AS $$ gtsquery_union $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsvectorin
DELIMITER //
CREATE FUNCTION "gtsvectorin"() RETURNS UNKNOWN AS $$ gtsvectorin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsvectorout
DELIMITER //
CREATE FUNCTION "gtsvectorout"() RETURNS UNKNOWN AS $$ gtsvectorout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsvector_compress
DELIMITER //
CREATE FUNCTION "gtsvector_compress"() RETURNS UNKNOWN AS $$ gtsvector_compress $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsvector_consistent
DELIMITER //
CREATE FUNCTION "gtsvector_consistent"() RETURNS BOOLEAN AS $$ gtsvector_consistent_oldsig $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsvector_consistent
DELIMITER //
CREATE FUNCTION "gtsvector_consistent"() RETURNS BOOLEAN AS $$ gtsvector_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsvector_decompress
DELIMITER //
CREATE FUNCTION "gtsvector_decompress"() RETURNS UNKNOWN AS $$ gtsvector_decompress $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsvector_options
DELIMITER //
CREATE FUNCTION "gtsvector_options"() RETURNS UNKNOWN AS $$ gtsvector_options $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsvector_penalty
DELIMITER //
CREATE FUNCTION "gtsvector_penalty"() RETURNS UNKNOWN AS $$ gtsvector_penalty $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsvector_picksplit
DELIMITER //
CREATE FUNCTION "gtsvector_picksplit"() RETURNS UNKNOWN AS $$ gtsvector_picksplit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsvector_same
DELIMITER //
CREATE FUNCTION "gtsvector_same"() RETURNS UNKNOWN AS $$ gtsvector_same $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.gtsvector_union
DELIMITER //
CREATE FUNCTION "gtsvector_union"() RETURNS UNKNOWN AS $$ gtsvector_union $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashbpchar
DELIMITER //
CREATE FUNCTION "hashbpchar"() RETURNS INTEGER AS $$ hashbpchar $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashbpcharextended
DELIMITER //
CREATE FUNCTION "hashbpcharextended"() RETURNS BIGINT AS $$ hashbpcharextended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashchar
DELIMITER //
CREATE FUNCTION "hashchar"() RETURNS INTEGER AS $$ hashchar $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashcharextended
DELIMITER //
CREATE FUNCTION "hashcharextended"() RETURNS BIGINT AS $$ hashcharextended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashenum
DELIMITER //
CREATE FUNCTION "hashenum"() RETURNS INTEGER AS $$ hashenum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashenumextended
DELIMITER //
CREATE FUNCTION "hashenumextended"() RETURNS BIGINT AS $$ hashenumextended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashfloat4
DELIMITER //
CREATE FUNCTION "hashfloat4"() RETURNS INTEGER AS $$ hashfloat4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashfloat4extended
DELIMITER //
CREATE FUNCTION "hashfloat4extended"() RETURNS BIGINT AS $$ hashfloat4extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashfloat8
DELIMITER //
CREATE FUNCTION "hashfloat8"() RETURNS INTEGER AS $$ hashfloat8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashfloat8extended
DELIMITER //
CREATE FUNCTION "hashfloat8extended"() RETURNS BIGINT AS $$ hashfloat8extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashhandler
DELIMITER //
CREATE FUNCTION "hashhandler"() RETURNS UNKNOWN AS $$ hashhandler $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashinet
DELIMITER //
CREATE FUNCTION "hashinet"() RETURNS INTEGER AS $$ hashinet $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashinetextended
DELIMITER //
CREATE FUNCTION "hashinetextended"() RETURNS BIGINT AS $$ hashinetextended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashint2
DELIMITER //
CREATE FUNCTION "hashint2"() RETURNS INTEGER AS $$ hashint2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashint2extended
DELIMITER //
CREATE FUNCTION "hashint2extended"() RETURNS BIGINT AS $$ hashint2extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashint4
DELIMITER //
CREATE FUNCTION "hashint4"() RETURNS INTEGER AS $$ hashint4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashint4extended
DELIMITER //
CREATE FUNCTION "hashint4extended"() RETURNS BIGINT AS $$ hashint4extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashint8
DELIMITER //
CREATE FUNCTION "hashint8"() RETURNS INTEGER AS $$ hashint8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashint8extended
DELIMITER //
CREATE FUNCTION "hashint8extended"() RETURNS BIGINT AS $$ hashint8extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashmacaddr
DELIMITER //
CREATE FUNCTION "hashmacaddr"() RETURNS INTEGER AS $$ hashmacaddr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashmacaddr8
DELIMITER //
CREATE FUNCTION "hashmacaddr8"() RETURNS INTEGER AS $$ hashmacaddr8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashmacaddr8extended
DELIMITER //
CREATE FUNCTION "hashmacaddr8extended"() RETURNS BIGINT AS $$ hashmacaddr8extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashmacaddrextended
DELIMITER //
CREATE FUNCTION "hashmacaddrextended"() RETURNS BIGINT AS $$ hashmacaddrextended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashname
DELIMITER //
CREATE FUNCTION "hashname"() RETURNS INTEGER AS $$ hashname $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashnameextended
DELIMITER //
CREATE FUNCTION "hashnameextended"() RETURNS BIGINT AS $$ hashnameextended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashoid
DELIMITER //
CREATE FUNCTION "hashoid"() RETURNS INTEGER AS $$ hashoid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashoidextended
DELIMITER //
CREATE FUNCTION "hashoidextended"() RETURNS BIGINT AS $$ hashoidextended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashoidvector
DELIMITER //
CREATE FUNCTION "hashoidvector"() RETURNS INTEGER AS $$ hashoidvector $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashoidvectorextended
DELIMITER //
CREATE FUNCTION "hashoidvectorextended"() RETURNS BIGINT AS $$ hashoidvectorextended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashtext
DELIMITER //
CREATE FUNCTION "hashtext"() RETURNS INTEGER AS $$ hashtext $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashtextextended
DELIMITER //
CREATE FUNCTION "hashtextextended"() RETURNS BIGINT AS $$ hashtextextended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashtid
DELIMITER //
CREATE FUNCTION "hashtid"() RETURNS INTEGER AS $$ hashtid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashtidextended
DELIMITER //
CREATE FUNCTION "hashtidextended"() RETURNS BIGINT AS $$ hashtidextended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashvarlena
DELIMITER //
CREATE FUNCTION "hashvarlena"() RETURNS INTEGER AS $$ hashvarlena $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hashvarlenaextended
DELIMITER //
CREATE FUNCTION "hashvarlenaextended"() RETURNS BIGINT AS $$ hashvarlenaextended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hash_aclitem
DELIMITER //
CREATE FUNCTION "hash_aclitem"() RETURNS INTEGER AS $$ hash_aclitem $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hash_aclitem_extended
DELIMITER //
CREATE FUNCTION "hash_aclitem_extended"() RETURNS BIGINT AS $$ hash_aclitem_extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hash_array
DELIMITER //
CREATE FUNCTION "hash_array"() RETURNS INTEGER AS $$ hash_array $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hash_array_extended
DELIMITER //
CREATE FUNCTION "hash_array_extended"() RETURNS BIGINT AS $$ hash_array_extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hash_multirange
DELIMITER //
CREATE FUNCTION "hash_multirange"() RETURNS INTEGER AS $$ hash_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hash_multirange_extended
DELIMITER //
CREATE FUNCTION "hash_multirange_extended"() RETURNS BIGINT AS $$ hash_multirange_extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hash_numeric
DELIMITER //
CREATE FUNCTION "hash_numeric"() RETURNS INTEGER AS $$ hash_numeric $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hash_numeric_extended
DELIMITER //
CREATE FUNCTION "hash_numeric_extended"() RETURNS BIGINT AS $$ hash_numeric_extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hash_range
DELIMITER //
CREATE FUNCTION "hash_range"() RETURNS INTEGER AS $$ hash_range $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hash_range_extended
DELIMITER //
CREATE FUNCTION "hash_range_extended"() RETURNS BIGINT AS $$ hash_range_extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hash_record
DELIMITER //
CREATE FUNCTION "hash_record"() RETURNS INTEGER AS $$ hash_record $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hash_record_extended
DELIMITER //
CREATE FUNCTION "hash_record_extended"() RETURNS BIGINT AS $$ hash_record_extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_any_column_privilege
DELIMITER //
CREATE FUNCTION "has_any_column_privilege"() RETURNS BOOLEAN AS $$ has_any_column_privilege_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_any_column_privilege
DELIMITER //
CREATE FUNCTION "has_any_column_privilege"() RETURNS BOOLEAN AS $$ has_any_column_privilege_name_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_any_column_privilege
DELIMITER //
CREATE FUNCTION "has_any_column_privilege"() RETURNS BOOLEAN AS $$ has_any_column_privilege_name_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_any_column_privilege
DELIMITER //
CREATE FUNCTION "has_any_column_privilege"() RETURNS BOOLEAN AS $$ has_any_column_privilege_id_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_any_column_privilege
DELIMITER //
CREATE FUNCTION "has_any_column_privilege"() RETURNS BOOLEAN AS $$ has_any_column_privilege_id_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_any_column_privilege
DELIMITER //
CREATE FUNCTION "has_any_column_privilege"() RETURNS BOOLEAN AS $$ has_any_column_privilege_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_column_privilege
DELIMITER //
CREATE FUNCTION "has_column_privilege"() RETURNS BOOLEAN AS $$ has_column_privilege_name_attnum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_column_privilege
DELIMITER //
CREATE FUNCTION "has_column_privilege"() RETURNS BOOLEAN AS $$ has_column_privilege_id_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_column_privilege
DELIMITER //
CREATE FUNCTION "has_column_privilege"() RETURNS BOOLEAN AS $$ has_column_privilege_id_attnum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_column_privilege
DELIMITER //
CREATE FUNCTION "has_column_privilege"() RETURNS BOOLEAN AS $$ has_column_privilege_name_id_attnum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_column_privilege
DELIMITER //
CREATE FUNCTION "has_column_privilege"() RETURNS BOOLEAN AS $$ has_column_privilege_name_id_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_column_privilege
DELIMITER //
CREATE FUNCTION "has_column_privilege"() RETURNS BOOLEAN AS $$ has_column_privilege_name_name_attnum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_column_privilege
DELIMITER //
CREATE FUNCTION "has_column_privilege"() RETURNS BOOLEAN AS $$ has_column_privilege_name_name_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_column_privilege
DELIMITER //
CREATE FUNCTION "has_column_privilege"() RETURNS BOOLEAN AS $$ has_column_privilege_id_name_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_column_privilege
DELIMITER //
CREATE FUNCTION "has_column_privilege"() RETURNS BOOLEAN AS $$ has_column_privilege_name_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_column_privilege
DELIMITER //
CREATE FUNCTION "has_column_privilege"() RETURNS BOOLEAN AS $$ has_column_privilege_id_id_attnum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_column_privilege
DELIMITER //
CREATE FUNCTION "has_column_privilege"() RETURNS BOOLEAN AS $$ has_column_privilege_id_id_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_column_privilege
DELIMITER //
CREATE FUNCTION "has_column_privilege"() RETURNS BOOLEAN AS $$ has_column_privilege_id_name_attnum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_database_privilege
DELIMITER //
CREATE FUNCTION "has_database_privilege"() RETURNS BOOLEAN AS $$ has_database_privilege_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_database_privilege
DELIMITER //
CREATE FUNCTION "has_database_privilege"() RETURNS BOOLEAN AS $$ has_database_privilege_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_database_privilege
DELIMITER //
CREATE FUNCTION "has_database_privilege"() RETURNS BOOLEAN AS $$ has_database_privilege_id_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_database_privilege
DELIMITER //
CREATE FUNCTION "has_database_privilege"() RETURNS BOOLEAN AS $$ has_database_privilege_name_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_database_privilege
DELIMITER //
CREATE FUNCTION "has_database_privilege"() RETURNS BOOLEAN AS $$ has_database_privilege_id_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_database_privilege
DELIMITER //
CREATE FUNCTION "has_database_privilege"() RETURNS BOOLEAN AS $$ has_database_privilege_name_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_foreign_data_wrapper_privilege
DELIMITER //
CREATE FUNCTION "has_foreign_data_wrapper_privilege"() RETURNS BOOLEAN AS $$ has_foreign_data_wrapper_privilege_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_foreign_data_wrapper_privilege
DELIMITER //
CREATE FUNCTION "has_foreign_data_wrapper_privilege"() RETURNS BOOLEAN AS $$ has_foreign_data_wrapper_privilege_id_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_foreign_data_wrapper_privilege
DELIMITER //
CREATE FUNCTION "has_foreign_data_wrapper_privilege"() RETURNS BOOLEAN AS $$ has_foreign_data_wrapper_privilege_name_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_foreign_data_wrapper_privilege
DELIMITER //
CREATE FUNCTION "has_foreign_data_wrapper_privilege"() RETURNS BOOLEAN AS $$ has_foreign_data_wrapper_privilege_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_foreign_data_wrapper_privilege
DELIMITER //
CREATE FUNCTION "has_foreign_data_wrapper_privilege"() RETURNS BOOLEAN AS $$ has_foreign_data_wrapper_privilege_name_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_foreign_data_wrapper_privilege
DELIMITER //
CREATE FUNCTION "has_foreign_data_wrapper_privilege"() RETURNS BOOLEAN AS $$ has_foreign_data_wrapper_privilege_id_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_function_privilege
DELIMITER //
CREATE FUNCTION "has_function_privilege"() RETURNS BOOLEAN AS $$ has_function_privilege_name_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_function_privilege
DELIMITER //
CREATE FUNCTION "has_function_privilege"() RETURNS BOOLEAN AS $$ has_function_privilege_id_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_function_privilege
DELIMITER //
CREATE FUNCTION "has_function_privilege"() RETURNS BOOLEAN AS $$ has_function_privilege_name_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_function_privilege
DELIMITER //
CREATE FUNCTION "has_function_privilege"() RETURNS BOOLEAN AS $$ has_function_privilege_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_function_privilege
DELIMITER //
CREATE FUNCTION "has_function_privilege"() RETURNS BOOLEAN AS $$ has_function_privilege_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_function_privilege
DELIMITER //
CREATE FUNCTION "has_function_privilege"() RETURNS BOOLEAN AS $$ has_function_privilege_id_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_language_privilege
DELIMITER //
CREATE FUNCTION "has_language_privilege"() RETURNS BOOLEAN AS $$ has_language_privilege_id_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_language_privilege
DELIMITER //
CREATE FUNCTION "has_language_privilege"() RETURNS BOOLEAN AS $$ has_language_privilege_name_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_language_privilege
DELIMITER //
CREATE FUNCTION "has_language_privilege"() RETURNS BOOLEAN AS $$ has_language_privilege_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_language_privilege
DELIMITER //
CREATE FUNCTION "has_language_privilege"() RETURNS BOOLEAN AS $$ has_language_privilege_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_language_privilege
DELIMITER //
CREATE FUNCTION "has_language_privilege"() RETURNS BOOLEAN AS $$ has_language_privilege_id_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_language_privilege
DELIMITER //
CREATE FUNCTION "has_language_privilege"() RETURNS BOOLEAN AS $$ has_language_privilege_name_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_schema_privilege
DELIMITER //
CREATE FUNCTION "has_schema_privilege"() RETURNS BOOLEAN AS $$ has_schema_privilege_id_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_schema_privilege
DELIMITER //
CREATE FUNCTION "has_schema_privilege"() RETURNS BOOLEAN AS $$ has_schema_privilege_name_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_schema_privilege
DELIMITER //
CREATE FUNCTION "has_schema_privilege"() RETURNS BOOLEAN AS $$ has_schema_privilege_name_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_schema_privilege
DELIMITER //
CREATE FUNCTION "has_schema_privilege"() RETURNS BOOLEAN AS $$ has_schema_privilege_id_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_schema_privilege
DELIMITER //
CREATE FUNCTION "has_schema_privilege"() RETURNS BOOLEAN AS $$ has_schema_privilege_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_schema_privilege
DELIMITER //
CREATE FUNCTION "has_schema_privilege"() RETURNS BOOLEAN AS $$ has_schema_privilege_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_sequence_privilege
DELIMITER //
CREATE FUNCTION "has_sequence_privilege"() RETURNS BOOLEAN AS $$ has_sequence_privilege_id_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_sequence_privilege
DELIMITER //
CREATE FUNCTION "has_sequence_privilege"() RETURNS BOOLEAN AS $$ has_sequence_privilege_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_sequence_privilege
DELIMITER //
CREATE FUNCTION "has_sequence_privilege"() RETURNS BOOLEAN AS $$ has_sequence_privilege_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_sequence_privilege
DELIMITER //
CREATE FUNCTION "has_sequence_privilege"() RETURNS BOOLEAN AS $$ has_sequence_privilege_name_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_sequence_privilege
DELIMITER //
CREATE FUNCTION "has_sequence_privilege"() RETURNS BOOLEAN AS $$ has_sequence_privilege_name_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_sequence_privilege
DELIMITER //
CREATE FUNCTION "has_sequence_privilege"() RETURNS BOOLEAN AS $$ has_sequence_privilege_id_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_server_privilege
DELIMITER //
CREATE FUNCTION "has_server_privilege"() RETURNS BOOLEAN AS $$ has_server_privilege_name_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_server_privilege
DELIMITER //
CREATE FUNCTION "has_server_privilege"() RETURNS BOOLEAN AS $$ has_server_privilege_id_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_server_privilege
DELIMITER //
CREATE FUNCTION "has_server_privilege"() RETURNS BOOLEAN AS $$ has_server_privilege_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_server_privilege
DELIMITER //
CREATE FUNCTION "has_server_privilege"() RETURNS BOOLEAN AS $$ has_server_privilege_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_server_privilege
DELIMITER //
CREATE FUNCTION "has_server_privilege"() RETURNS BOOLEAN AS $$ has_server_privilege_id_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_server_privilege
DELIMITER //
CREATE FUNCTION "has_server_privilege"() RETURNS BOOLEAN AS $$ has_server_privilege_name_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_tablespace_privilege
DELIMITER //
CREATE FUNCTION "has_tablespace_privilege"() RETURNS BOOLEAN AS $$ has_tablespace_privilege_id_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_tablespace_privilege
DELIMITER //
CREATE FUNCTION "has_tablespace_privilege"() RETURNS BOOLEAN AS $$ has_tablespace_privilege_name_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_tablespace_privilege
DELIMITER //
CREATE FUNCTION "has_tablespace_privilege"() RETURNS BOOLEAN AS $$ has_tablespace_privilege_name_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_tablespace_privilege
DELIMITER //
CREATE FUNCTION "has_tablespace_privilege"() RETURNS BOOLEAN AS $$ has_tablespace_privilege_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_tablespace_privilege
DELIMITER //
CREATE FUNCTION "has_tablespace_privilege"() RETURNS BOOLEAN AS $$ has_tablespace_privilege_id_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_tablespace_privilege
DELIMITER //
CREATE FUNCTION "has_tablespace_privilege"() RETURNS BOOLEAN AS $$ has_tablespace_privilege_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_table_privilege
DELIMITER //
CREATE FUNCTION "has_table_privilege"() RETURNS BOOLEAN AS $$ has_table_privilege_id_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_table_privilege
DELIMITER //
CREATE FUNCTION "has_table_privilege"() RETURNS BOOLEAN AS $$ has_table_privilege_name_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_table_privilege
DELIMITER //
CREATE FUNCTION "has_table_privilege"() RETURNS BOOLEAN AS $$ has_table_privilege_name_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_table_privilege
DELIMITER //
CREATE FUNCTION "has_table_privilege"() RETURNS BOOLEAN AS $$ has_table_privilege_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_table_privilege
DELIMITER //
CREATE FUNCTION "has_table_privilege"() RETURNS BOOLEAN AS $$ has_table_privilege_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_table_privilege
DELIMITER //
CREATE FUNCTION "has_table_privilege"() RETURNS BOOLEAN AS $$ has_table_privilege_id_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_type_privilege
DELIMITER //
CREATE FUNCTION "has_type_privilege"() RETURNS BOOLEAN AS $$ has_type_privilege_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_type_privilege
DELIMITER //
CREATE FUNCTION "has_type_privilege"() RETURNS BOOLEAN AS $$ has_type_privilege_id_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_type_privilege
DELIMITER //
CREATE FUNCTION "has_type_privilege"() RETURNS BOOLEAN AS $$ has_type_privilege_name_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_type_privilege
DELIMITER //
CREATE FUNCTION "has_type_privilege"() RETURNS BOOLEAN AS $$ has_type_privilege_name_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_type_privilege
DELIMITER //
CREATE FUNCTION "has_type_privilege"() RETURNS BOOLEAN AS $$ has_type_privilege_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.has_type_privilege
DELIMITER //
CREATE FUNCTION "has_type_privilege"() RETURNS BOOLEAN AS $$ has_type_privilege_id_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.heap_tableam_handler
DELIMITER //
CREATE FUNCTION "heap_tableam_handler"() RETURNS UNKNOWN AS $$ heap_tableam_handler $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.height
DELIMITER //
CREATE FUNCTION "height"() RETURNS DOUBLE PRECISION AS $$ box_height $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.host
DELIMITER //
CREATE FUNCTION "host"() RETURNS TEXT AS $$ network_host $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.hostmask
DELIMITER //
CREATE FUNCTION "hostmask"() RETURNS INET AS $$ network_hostmask $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.iclikejoinsel
DELIMITER //
CREATE FUNCTION "iclikejoinsel"() RETURNS DOUBLE PRECISION AS $$ iclikejoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.iclikesel
DELIMITER //
CREATE FUNCTION "iclikesel"() RETURNS DOUBLE PRECISION AS $$ iclikesel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.icnlikejoinsel
DELIMITER //
CREATE FUNCTION "icnlikejoinsel"() RETURNS DOUBLE PRECISION AS $$ icnlikejoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.icnlikesel
DELIMITER //
CREATE FUNCTION "icnlikesel"() RETURNS DOUBLE PRECISION AS $$ icnlikesel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.icregexeqjoinsel
DELIMITER //
CREATE FUNCTION "icregexeqjoinsel"() RETURNS DOUBLE PRECISION AS $$ icregexeqjoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.icregexeqsel
DELIMITER //
CREATE FUNCTION "icregexeqsel"() RETURNS DOUBLE PRECISION AS $$ icregexeqsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.icregexnejoinsel
DELIMITER //
CREATE FUNCTION "icregexnejoinsel"() RETURNS DOUBLE PRECISION AS $$ icregexnejoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.icregexnesel
DELIMITER //
CREATE FUNCTION "icregexnesel"() RETURNS DOUBLE PRECISION AS $$ icregexnesel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.index_am_handler_in
DELIMITER //
CREATE FUNCTION "index_am_handler_in"() RETURNS UNKNOWN AS $$ index_am_handler_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.index_am_handler_out
DELIMITER //
CREATE FUNCTION "index_am_handler_out"() RETURNS UNKNOWN AS $$ index_am_handler_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inetand
DELIMITER //
CREATE FUNCTION "inetand"() RETURNS INET AS $$ inetand $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inetmi
DELIMITER //
CREATE FUNCTION "inetmi"() RETURNS BIGINT AS $$ inetmi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inetmi_int8
DELIMITER //
CREATE FUNCTION "inetmi_int8"() RETURNS INET AS $$ inetmi_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inetnot
DELIMITER //
CREATE FUNCTION "inetnot"() RETURNS INET AS $$ inetnot $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inetor
DELIMITER //
CREATE FUNCTION "inetor"() RETURNS INET AS $$ inetor $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inetpl
DELIMITER //
CREATE FUNCTION "inetpl"() RETURNS INET AS $$ inetpl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_client_addr
DELIMITER //
CREATE FUNCTION "inet_client_addr"() RETURNS INET AS $$ inet_client_addr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_client_port
DELIMITER //
CREATE FUNCTION "inet_client_port"() RETURNS INTEGER AS $$ inet_client_port $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_gist_compress
DELIMITER //
CREATE FUNCTION "inet_gist_compress"() RETURNS UNKNOWN AS $$ inet_gist_compress $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_gist_consistent
DELIMITER //
CREATE FUNCTION "inet_gist_consistent"() RETURNS BOOLEAN AS $$ inet_gist_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_gist_fetch
DELIMITER //
CREATE FUNCTION "inet_gist_fetch"() RETURNS UNKNOWN AS $$ inet_gist_fetch $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_gist_penalty
DELIMITER //
CREATE FUNCTION "inet_gist_penalty"() RETURNS UNKNOWN AS $$ inet_gist_penalty $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_gist_picksplit
DELIMITER //
CREATE FUNCTION "inet_gist_picksplit"() RETURNS UNKNOWN AS $$ inet_gist_picksplit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_gist_same
DELIMITER //
CREATE FUNCTION "inet_gist_same"() RETURNS UNKNOWN AS $$ inet_gist_same $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_gist_union
DELIMITER //
CREATE FUNCTION "inet_gist_union"() RETURNS INET AS $$ inet_gist_union $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_in
DELIMITER //
CREATE FUNCTION "inet_in"() RETURNS INET AS $$ inet_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_merge
DELIMITER //
CREATE FUNCTION "inet_merge"() RETURNS CIDR AS $$ inet_merge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_out
DELIMITER //
CREATE FUNCTION "inet_out"() RETURNS UNKNOWN AS $$ inet_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_recv
DELIMITER //
CREATE FUNCTION "inet_recv"() RETURNS INET AS $$ inet_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_same_family
DELIMITER //
CREATE FUNCTION "inet_same_family"() RETURNS BOOLEAN AS $$ inet_same_family $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_send
DELIMITER //
CREATE FUNCTION "inet_send"() RETURNS BYTEA AS $$ inet_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_server_addr
DELIMITER //
CREATE FUNCTION "inet_server_addr"() RETURNS INET AS $$ inet_server_addr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_server_port
DELIMITER //
CREATE FUNCTION "inet_server_port"() RETURNS INTEGER AS $$ inet_server_port $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_spg_choose
DELIMITER //
CREATE FUNCTION "inet_spg_choose"() RETURNS UNKNOWN AS $$ inet_spg_choose $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_spg_config
DELIMITER //
CREATE FUNCTION "inet_spg_config"() RETURNS UNKNOWN AS $$ inet_spg_config $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_spg_inner_consistent
DELIMITER //
CREATE FUNCTION "inet_spg_inner_consistent"() RETURNS UNKNOWN AS $$ inet_spg_inner_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_spg_leaf_consistent
DELIMITER //
CREATE FUNCTION "inet_spg_leaf_consistent"() RETURNS BOOLEAN AS $$ inet_spg_leaf_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inet_spg_picksplit
DELIMITER //
CREATE FUNCTION "inet_spg_picksplit"() RETURNS UNKNOWN AS $$ inet_spg_picksplit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.initcap
DELIMITER //
CREATE FUNCTION "initcap"() RETURNS TEXT AS $$ initcap $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2
DELIMITER //
CREATE FUNCTION "int2"() RETURNS SMALLINT AS $$ dtoi2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2
DELIMITER //
CREATE FUNCTION "int2"() RETURNS SMALLINT AS $$ ftoi2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2
DELIMITER //
CREATE FUNCTION "int2"() RETURNS SMALLINT AS $$ numeric_int2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2
DELIMITER //
CREATE FUNCTION "int2"() RETURNS SMALLINT AS $$ i4toi2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2
DELIMITER //
CREATE FUNCTION "int2"() RETURNS SMALLINT AS $$ int82 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2
DELIMITER //
CREATE FUNCTION "int2"() RETURNS SMALLINT AS $$ jsonb_int2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int24div
DELIMITER //
CREATE FUNCTION "int24div"() RETURNS INTEGER AS $$ int24div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int24eq
DELIMITER //
CREATE FUNCTION "int24eq"() RETURNS BOOLEAN AS $$ int24eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int24ge
DELIMITER //
CREATE FUNCTION "int24ge"() RETURNS BOOLEAN AS $$ int24ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int24gt
DELIMITER //
CREATE FUNCTION "int24gt"() RETURNS BOOLEAN AS $$ int24gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int24le
DELIMITER //
CREATE FUNCTION "int24le"() RETURNS BOOLEAN AS $$ int24le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int24lt
DELIMITER //
CREATE FUNCTION "int24lt"() RETURNS BOOLEAN AS $$ int24lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int24mi
DELIMITER //
CREATE FUNCTION "int24mi"() RETURNS INTEGER AS $$ int24mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int24mul
DELIMITER //
CREATE FUNCTION "int24mul"() RETURNS INTEGER AS $$ int24mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int24ne
DELIMITER //
CREATE FUNCTION "int24ne"() RETURNS BOOLEAN AS $$ int24ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int24pl
DELIMITER //
CREATE FUNCTION "int24pl"() RETURNS INTEGER AS $$ int24pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int28div
DELIMITER //
CREATE FUNCTION "int28div"() RETURNS BIGINT AS $$ int28div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int28eq
DELIMITER //
CREATE FUNCTION "int28eq"() RETURNS BOOLEAN AS $$ int28eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int28ge
DELIMITER //
CREATE FUNCTION "int28ge"() RETURNS BOOLEAN AS $$ int28ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int28gt
DELIMITER //
CREATE FUNCTION "int28gt"() RETURNS BOOLEAN AS $$ int28gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int28le
DELIMITER //
CREATE FUNCTION "int28le"() RETURNS BOOLEAN AS $$ int28le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int28lt
DELIMITER //
CREATE FUNCTION "int28lt"() RETURNS BOOLEAN AS $$ int28lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int28mi
DELIMITER //
CREATE FUNCTION "int28mi"() RETURNS BIGINT AS $$ int28mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int28mul
DELIMITER //
CREATE FUNCTION "int28mul"() RETURNS BIGINT AS $$ int28mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int28ne
DELIMITER //
CREATE FUNCTION "int28ne"() RETURNS BOOLEAN AS $$ int28ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int28pl
DELIMITER //
CREATE FUNCTION "int28pl"() RETURNS BIGINT AS $$ int28pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2abs
DELIMITER //
CREATE FUNCTION "int2abs"() RETURNS SMALLINT AS $$ int2abs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2and
DELIMITER //
CREATE FUNCTION "int2and"() RETURNS SMALLINT AS $$ int2and $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2div
DELIMITER //
CREATE FUNCTION "int2div"() RETURNS SMALLINT AS $$ int2div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2eq
DELIMITER //
CREATE FUNCTION "int2eq"() RETURNS BOOLEAN AS $$ int2eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2ge
DELIMITER //
CREATE FUNCTION "int2ge"() RETURNS BOOLEAN AS $$ int2ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2gt
DELIMITER //
CREATE FUNCTION "int2gt"() RETURNS BOOLEAN AS $$ int2gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2in
DELIMITER //
CREATE FUNCTION "int2in"() RETURNS SMALLINT AS $$ int2in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2int4_sum
DELIMITER //
CREATE FUNCTION "int2int4_sum"() RETURNS BIGINT AS $$ int2int4_sum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2larger
DELIMITER //
CREATE FUNCTION "int2larger"() RETURNS SMALLINT AS $$ int2larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2le
DELIMITER //
CREATE FUNCTION "int2le"() RETURNS BOOLEAN AS $$ int2le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2lt
DELIMITER //
CREATE FUNCTION "int2lt"() RETURNS BOOLEAN AS $$ int2lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2mi
DELIMITER //
CREATE FUNCTION "int2mi"() RETURNS SMALLINT AS $$ int2mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2mod
DELIMITER //
CREATE FUNCTION "int2mod"() RETURNS SMALLINT AS $$ int2mod $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2mul
DELIMITER //
CREATE FUNCTION "int2mul"() RETURNS SMALLINT AS $$ int2mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2ne
DELIMITER //
CREATE FUNCTION "int2ne"() RETURNS BOOLEAN AS $$ int2ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2not
DELIMITER //
CREATE FUNCTION "int2not"() RETURNS SMALLINT AS $$ int2not $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2or
DELIMITER //
CREATE FUNCTION "int2or"() RETURNS SMALLINT AS $$ int2or $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2out
DELIMITER //
CREATE FUNCTION "int2out"() RETURNS UNKNOWN AS $$ int2out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2pl
DELIMITER //
CREATE FUNCTION "int2pl"() RETURNS SMALLINT AS $$ int2pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2recv
DELIMITER //
CREATE FUNCTION "int2recv"() RETURNS SMALLINT AS $$ int2recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2send
DELIMITER //
CREATE FUNCTION "int2send"() RETURNS BYTEA AS $$ int2send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2shl
DELIMITER //
CREATE FUNCTION "int2shl"() RETURNS SMALLINT AS $$ int2shl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2shr
DELIMITER //
CREATE FUNCTION "int2shr"() RETURNS SMALLINT AS $$ int2shr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2smaller
DELIMITER //
CREATE FUNCTION "int2smaller"() RETURNS SMALLINT AS $$ int2smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2um
DELIMITER //
CREATE FUNCTION "int2um"() RETURNS SMALLINT AS $$ int2um $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2up
DELIMITER //
CREATE FUNCTION "int2up"() RETURNS SMALLINT AS $$ int2up $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2vectorin
DELIMITER //
CREATE FUNCTION "int2vectorin"() RETURNS TEXT AS $$ int2vectorin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2vectorout
DELIMITER //
CREATE FUNCTION "int2vectorout"() RETURNS UNKNOWN AS $$ int2vectorout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2vectorrecv
DELIMITER //
CREATE FUNCTION "int2vectorrecv"() RETURNS TEXT AS $$ int2vectorrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2vectorsend
DELIMITER //
CREATE FUNCTION "int2vectorsend"() RETURNS BYTEA AS $$ int2vectorsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2xor
DELIMITER //
CREATE FUNCTION "int2xor"() RETURNS SMALLINT AS $$ int2xor $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2_accum
DELIMITER //
CREATE FUNCTION "int2_accum"() RETURNS UNKNOWN AS $$ int2_accum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2_accum_inv
DELIMITER //
CREATE FUNCTION "int2_accum_inv"() RETURNS UNKNOWN AS $$ int2_accum_inv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2_avg_accum
DELIMITER //
CREATE FUNCTION "int2_avg_accum"() RETURNS UNKNOWN AS $$ int2_avg_accum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2_avg_accum_inv
DELIMITER //
CREATE FUNCTION "int2_avg_accum_inv"() RETURNS UNKNOWN AS $$ int2_avg_accum_inv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2_mul_cash
DELIMITER //
CREATE FUNCTION "int2_mul_cash"() RETURNS MONEY AS $$ int2_mul_cash $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int2_sum
DELIMITER //
CREATE FUNCTION "int2_sum"() RETURNS BIGINT AS $$ int2_sum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4
DELIMITER //
CREATE FUNCTION "int4"() RETURNS INTEGER AS $$ chartoi4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4
DELIMITER //
CREATE FUNCTION "int4"() RETURNS INTEGER AS $$ i2toi4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4
DELIMITER //
CREATE FUNCTION "int4"() RETURNS INTEGER AS $$ dtoi4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4
DELIMITER //
CREATE FUNCTION "int4"() RETURNS INTEGER AS $$ bool_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4
DELIMITER //
CREATE FUNCTION "int4"() RETURNS INTEGER AS $$ numeric_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4
DELIMITER //
CREATE FUNCTION "int4"() RETURNS INTEGER AS $$ bittoint4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4
DELIMITER //
CREATE FUNCTION "int4"() RETURNS INTEGER AS $$ int84 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4
DELIMITER //
CREATE FUNCTION "int4"() RETURNS INTEGER AS $$ ftoi4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4
DELIMITER //
CREATE FUNCTION "int4"() RETURNS INTEGER AS $$ jsonb_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int42div
DELIMITER //
CREATE FUNCTION "int42div"() RETURNS INTEGER AS $$ int42div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int42eq
DELIMITER //
CREATE FUNCTION "int42eq"() RETURNS BOOLEAN AS $$ int42eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int42ge
DELIMITER //
CREATE FUNCTION "int42ge"() RETURNS BOOLEAN AS $$ int42ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int42gt
DELIMITER //
CREATE FUNCTION "int42gt"() RETURNS BOOLEAN AS $$ int42gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int42le
DELIMITER //
CREATE FUNCTION "int42le"() RETURNS BOOLEAN AS $$ int42le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int42lt
DELIMITER //
CREATE FUNCTION "int42lt"() RETURNS BOOLEAN AS $$ int42lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int42mi
DELIMITER //
CREATE FUNCTION "int42mi"() RETURNS INTEGER AS $$ int42mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int42mul
DELIMITER //
CREATE FUNCTION "int42mul"() RETURNS INTEGER AS $$ int42mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int42ne
DELIMITER //
CREATE FUNCTION "int42ne"() RETURNS BOOLEAN AS $$ int42ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int42pl
DELIMITER //
CREATE FUNCTION "int42pl"() RETURNS INTEGER AS $$ int42pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int48div
DELIMITER //
CREATE FUNCTION "int48div"() RETURNS BIGINT AS $$ int48div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int48eq
DELIMITER //
CREATE FUNCTION "int48eq"() RETURNS BOOLEAN AS $$ int48eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int48ge
DELIMITER //
CREATE FUNCTION "int48ge"() RETURNS BOOLEAN AS $$ int48ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int48gt
DELIMITER //
CREATE FUNCTION "int48gt"() RETURNS BOOLEAN AS $$ int48gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int48le
DELIMITER //
CREATE FUNCTION "int48le"() RETURNS BOOLEAN AS $$ int48le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int48lt
DELIMITER //
CREATE FUNCTION "int48lt"() RETURNS BOOLEAN AS $$ int48lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int48mi
DELIMITER //
CREATE FUNCTION "int48mi"() RETURNS BIGINT AS $$ int48mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int48mul
DELIMITER //
CREATE FUNCTION "int48mul"() RETURNS BIGINT AS $$ int48mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int48ne
DELIMITER //
CREATE FUNCTION "int48ne"() RETURNS BOOLEAN AS $$ int48ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int48pl
DELIMITER //
CREATE FUNCTION "int48pl"() RETURNS BIGINT AS $$ int48pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4abs
DELIMITER //
CREATE FUNCTION "int4abs"() RETURNS INTEGER AS $$ int4abs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4and
DELIMITER //
CREATE FUNCTION "int4and"() RETURNS INTEGER AS $$ int4and $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4div
DELIMITER //
CREATE FUNCTION "int4div"() RETURNS INTEGER AS $$ int4div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4eq
DELIMITER //
CREATE FUNCTION "int4eq"() RETURNS BOOLEAN AS $$ int4eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4ge
DELIMITER //
CREATE FUNCTION "int4ge"() RETURNS BOOLEAN AS $$ int4ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4gt
DELIMITER //
CREATE FUNCTION "int4gt"() RETURNS BOOLEAN AS $$ int4gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4in
DELIMITER //
CREATE FUNCTION "int4in"() RETURNS INTEGER AS $$ int4in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4inc
DELIMITER //
CREATE FUNCTION "int4inc"() RETURNS INTEGER AS $$ int4inc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4larger
DELIMITER //
CREATE FUNCTION "int4larger"() RETURNS INTEGER AS $$ int4larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4le
DELIMITER //
CREATE FUNCTION "int4le"() RETURNS BOOLEAN AS $$ int4le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4lt
DELIMITER //
CREATE FUNCTION "int4lt"() RETURNS BOOLEAN AS $$ int4lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4mi
DELIMITER //
CREATE FUNCTION "int4mi"() RETURNS INTEGER AS $$ int4mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4mod
DELIMITER //
CREATE FUNCTION "int4mod"() RETURNS INTEGER AS $$ int4mod $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4mul
DELIMITER //
CREATE FUNCTION "int4mul"() RETURNS INTEGER AS $$ int4mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4multirange
DELIMITER //
CREATE FUNCTION "int4multirange"() RETURNS UNKNOWN AS $$ multirange_constructor0 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4multirange
DELIMITER //
CREATE FUNCTION "int4multirange"() RETURNS UNKNOWN AS $$ multirange_constructor1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4multirange
DELIMITER //
CREATE FUNCTION "int4multirange"() RETURNS UNKNOWN AS $$ multirange_constructor2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4ne
DELIMITER //
CREATE FUNCTION "int4ne"() RETURNS BOOLEAN AS $$ int4ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4not
DELIMITER //
CREATE FUNCTION "int4not"() RETURNS INTEGER AS $$ int4not $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4or
DELIMITER //
CREATE FUNCTION "int4or"() RETURNS INTEGER AS $$ int4or $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4out
DELIMITER //
CREATE FUNCTION "int4out"() RETURNS UNKNOWN AS $$ int4out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4pl
DELIMITER //
CREATE FUNCTION "int4pl"() RETURNS INTEGER AS $$ int4pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4range
DELIMITER //
CREATE FUNCTION "int4range"() RETURNS UNKNOWN AS $$ range_constructor2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4range
DELIMITER //
CREATE FUNCTION "int4range"() RETURNS UNKNOWN AS $$ range_constructor3 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4range_canonical
DELIMITER //
CREATE FUNCTION "int4range_canonical"() RETURNS UNKNOWN AS $$ int4range_canonical $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4range_subdiff
DELIMITER //
CREATE FUNCTION "int4range_subdiff"() RETURNS DOUBLE PRECISION AS $$ int4range_subdiff $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4recv
DELIMITER //
CREATE FUNCTION "int4recv"() RETURNS INTEGER AS $$ int4recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4send
DELIMITER //
CREATE FUNCTION "int4send"() RETURNS BYTEA AS $$ int4send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4shl
DELIMITER //
CREATE FUNCTION "int4shl"() RETURNS INTEGER AS $$ int4shl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4shr
DELIMITER //
CREATE FUNCTION "int4shr"() RETURNS INTEGER AS $$ int4shr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4smaller
DELIMITER //
CREATE FUNCTION "int4smaller"() RETURNS INTEGER AS $$ int4smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4um
DELIMITER //
CREATE FUNCTION "int4um"() RETURNS INTEGER AS $$ int4um $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4up
DELIMITER //
CREATE FUNCTION "int4up"() RETURNS INTEGER AS $$ int4up $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4xor
DELIMITER //
CREATE FUNCTION "int4xor"() RETURNS INTEGER AS $$ int4xor $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4_accum
DELIMITER //
CREATE FUNCTION "int4_accum"() RETURNS UNKNOWN AS $$ int4_accum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4_accum_inv
DELIMITER //
CREATE FUNCTION "int4_accum_inv"() RETURNS UNKNOWN AS $$ int4_accum_inv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4_avg_accum
DELIMITER //
CREATE FUNCTION "int4_avg_accum"() RETURNS UNKNOWN AS $$ int4_avg_accum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4_avg_accum_inv
DELIMITER //
CREATE FUNCTION "int4_avg_accum_inv"() RETURNS UNKNOWN AS $$ int4_avg_accum_inv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4_avg_combine
DELIMITER //
CREATE FUNCTION "int4_avg_combine"() RETURNS UNKNOWN AS $$ int4_avg_combine $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4_mul_cash
DELIMITER //
CREATE FUNCTION "int4_mul_cash"() RETURNS MONEY AS $$ int4_mul_cash $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int4_sum
DELIMITER //
CREATE FUNCTION "int4_sum"() RETURNS BIGINT AS $$ int4_sum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8
DELIMITER //
CREATE FUNCTION "int8"() RETURNS BIGINT AS $$ jsonb_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8
DELIMITER //
CREATE FUNCTION "int8"() RETURNS BIGINT AS $$ int28 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8
DELIMITER //
CREATE FUNCTION "int8"() RETURNS BIGINT AS $$ ftoi8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8
DELIMITER //
CREATE FUNCTION "int8"() RETURNS BIGINT AS $$ numeric_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8
DELIMITER //
CREATE FUNCTION "int8"() RETURNS BIGINT AS $$ dtoi8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8
DELIMITER //
CREATE FUNCTION "int8"() RETURNS BIGINT AS $$ int48 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8
DELIMITER //
CREATE FUNCTION "int8"() RETURNS BIGINT AS $$ oidtoi8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8
DELIMITER //
CREATE FUNCTION "int8"() RETURNS BIGINT AS $$ bittoint8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int82div
DELIMITER //
CREATE FUNCTION "int82div"() RETURNS BIGINT AS $$ int82div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int82eq
DELIMITER //
CREATE FUNCTION "int82eq"() RETURNS BOOLEAN AS $$ int82eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int82ge
DELIMITER //
CREATE FUNCTION "int82ge"() RETURNS BOOLEAN AS $$ int82ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int82gt
DELIMITER //
CREATE FUNCTION "int82gt"() RETURNS BOOLEAN AS $$ int82gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int82le
DELIMITER //
CREATE FUNCTION "int82le"() RETURNS BOOLEAN AS $$ int82le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int82lt
DELIMITER //
CREATE FUNCTION "int82lt"() RETURNS BOOLEAN AS $$ int82lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int82mi
DELIMITER //
CREATE FUNCTION "int82mi"() RETURNS BIGINT AS $$ int82mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int82mul
DELIMITER //
CREATE FUNCTION "int82mul"() RETURNS BIGINT AS $$ int82mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int82ne
DELIMITER //
CREATE FUNCTION "int82ne"() RETURNS BOOLEAN AS $$ int82ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int82pl
DELIMITER //
CREATE FUNCTION "int82pl"() RETURNS BIGINT AS $$ int82pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int84div
DELIMITER //
CREATE FUNCTION "int84div"() RETURNS BIGINT AS $$ int84div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int84eq
DELIMITER //
CREATE FUNCTION "int84eq"() RETURNS BOOLEAN AS $$ int84eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int84ge
DELIMITER //
CREATE FUNCTION "int84ge"() RETURNS BOOLEAN AS $$ int84ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int84gt
DELIMITER //
CREATE FUNCTION "int84gt"() RETURNS BOOLEAN AS $$ int84gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int84le
DELIMITER //
CREATE FUNCTION "int84le"() RETURNS BOOLEAN AS $$ int84le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int84lt
DELIMITER //
CREATE FUNCTION "int84lt"() RETURNS BOOLEAN AS $$ int84lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int84mi
DELIMITER //
CREATE FUNCTION "int84mi"() RETURNS BIGINT AS $$ int84mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int84mul
DELIMITER //
CREATE FUNCTION "int84mul"() RETURNS BIGINT AS $$ int84mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int84ne
DELIMITER //
CREATE FUNCTION "int84ne"() RETURNS BOOLEAN AS $$ int84ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int84pl
DELIMITER //
CREATE FUNCTION "int84pl"() RETURNS BIGINT AS $$ int84pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8abs
DELIMITER //
CREATE FUNCTION "int8abs"() RETURNS BIGINT AS $$ int8abs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8and
DELIMITER //
CREATE FUNCTION "int8and"() RETURNS BIGINT AS $$ int8and $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8dec
DELIMITER //
CREATE FUNCTION "int8dec"() RETURNS BIGINT AS $$ int8dec $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8dec_any
DELIMITER //
CREATE FUNCTION "int8dec_any"() RETURNS BIGINT AS $$ int8dec_any $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8div
DELIMITER //
CREATE FUNCTION "int8div"() RETURNS BIGINT AS $$ int8div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8eq
DELIMITER //
CREATE FUNCTION "int8eq"() RETURNS BOOLEAN AS $$ int8eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8ge
DELIMITER //
CREATE FUNCTION "int8ge"() RETURNS BOOLEAN AS $$ int8ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8gt
DELIMITER //
CREATE FUNCTION "int8gt"() RETURNS BOOLEAN AS $$ int8gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8in
DELIMITER //
CREATE FUNCTION "int8in"() RETURNS BIGINT AS $$ int8in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8inc
DELIMITER //
CREATE FUNCTION "int8inc"() RETURNS BIGINT AS $$ int8inc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8inc_any
DELIMITER //
CREATE FUNCTION "int8inc_any"() RETURNS BIGINT AS $$ int8inc_any $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8inc_float8_float8
DELIMITER //
CREATE FUNCTION "int8inc_float8_float8"() RETURNS BIGINT AS $$ int8inc_float8_float8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8larger
DELIMITER //
CREATE FUNCTION "int8larger"() RETURNS BIGINT AS $$ int8larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8le
DELIMITER //
CREATE FUNCTION "int8le"() RETURNS BOOLEAN AS $$ int8le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8lt
DELIMITER //
CREATE FUNCTION "int8lt"() RETURNS BOOLEAN AS $$ int8lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8mi
DELIMITER //
CREATE FUNCTION "int8mi"() RETURNS BIGINT AS $$ int8mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8mod
DELIMITER //
CREATE FUNCTION "int8mod"() RETURNS BIGINT AS $$ int8mod $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8mul
DELIMITER //
CREATE FUNCTION "int8mul"() RETURNS BIGINT AS $$ int8mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8multirange
DELIMITER //
CREATE FUNCTION "int8multirange"() RETURNS UNKNOWN AS $$ multirange_constructor2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8multirange
DELIMITER //
CREATE FUNCTION "int8multirange"() RETURNS UNKNOWN AS $$ multirange_constructor1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8multirange
DELIMITER //
CREATE FUNCTION "int8multirange"() RETURNS UNKNOWN AS $$ multirange_constructor0 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8ne
DELIMITER //
CREATE FUNCTION "int8ne"() RETURNS BOOLEAN AS $$ int8ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8not
DELIMITER //
CREATE FUNCTION "int8not"() RETURNS BIGINT AS $$ int8not $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8or
DELIMITER //
CREATE FUNCTION "int8or"() RETURNS BIGINT AS $$ int8or $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8out
DELIMITER //
CREATE FUNCTION "int8out"() RETURNS UNKNOWN AS $$ int8out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8pl
DELIMITER //
CREATE FUNCTION "int8pl"() RETURNS BIGINT AS $$ int8pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8pl_inet
DELIMITER //
CREATE FUNCTION "int8pl_inet"() RETURNS INET AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8range
DELIMITER //
CREATE FUNCTION "int8range"() RETURNS UNKNOWN AS $$ range_constructor3 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8range
DELIMITER //
CREATE FUNCTION "int8range"() RETURNS UNKNOWN AS $$ range_constructor2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8range_canonical
DELIMITER //
CREATE FUNCTION "int8range_canonical"() RETURNS UNKNOWN AS $$ int8range_canonical $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8range_subdiff
DELIMITER //
CREATE FUNCTION "int8range_subdiff"() RETURNS DOUBLE PRECISION AS $$ int8range_subdiff $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8recv
DELIMITER //
CREATE FUNCTION "int8recv"() RETURNS BIGINT AS $$ int8recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8send
DELIMITER //
CREATE FUNCTION "int8send"() RETURNS BYTEA AS $$ int8send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8shl
DELIMITER //
CREATE FUNCTION "int8shl"() RETURNS BIGINT AS $$ int8shl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8shr
DELIMITER //
CREATE FUNCTION "int8shr"() RETURNS BIGINT AS $$ int8shr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8smaller
DELIMITER //
CREATE FUNCTION "int8smaller"() RETURNS BIGINT AS $$ int8smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8um
DELIMITER //
CREATE FUNCTION "int8um"() RETURNS BIGINT AS $$ int8um $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8up
DELIMITER //
CREATE FUNCTION "int8up"() RETURNS BIGINT AS $$ int8up $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8xor
DELIMITER //
CREATE FUNCTION "int8xor"() RETURNS BIGINT AS $$ int8xor $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8_accum
DELIMITER //
CREATE FUNCTION "int8_accum"() RETURNS UNKNOWN AS $$ int8_accum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8_accum_inv
DELIMITER //
CREATE FUNCTION "int8_accum_inv"() RETURNS UNKNOWN AS $$ int8_accum_inv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8_avg
DELIMITER //
CREATE FUNCTION "int8_avg"() RETURNS NUMERIC AS $$ int8_avg $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8_avg_accum
DELIMITER //
CREATE FUNCTION "int8_avg_accum"() RETURNS UNKNOWN AS $$ int8_avg_accum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8_avg_accum_inv
DELIMITER //
CREATE FUNCTION "int8_avg_accum_inv"() RETURNS UNKNOWN AS $$ int8_avg_accum_inv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8_avg_combine
DELIMITER //
CREATE FUNCTION "int8_avg_combine"() RETURNS UNKNOWN AS $$ int8_avg_combine $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8_avg_deserialize
DELIMITER //
CREATE FUNCTION "int8_avg_deserialize"() RETURNS UNKNOWN AS $$ int8_avg_deserialize $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8_avg_serialize
DELIMITER //
CREATE FUNCTION "int8_avg_serialize"() RETURNS BYTEA AS $$ int8_avg_serialize $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8_mul_cash
DELIMITER //
CREATE FUNCTION "int8_mul_cash"() RETURNS MONEY AS $$ int8_mul_cash $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.int8_sum
DELIMITER //
CREATE FUNCTION "int8_sum"() RETURNS NUMERIC AS $$ int8_sum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.integer_pl_date
DELIMITER //
CREATE FUNCTION "integer_pl_date"() RETURNS DATE AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.internal_in
DELIMITER //
CREATE FUNCTION "internal_in"() RETURNS UNKNOWN AS $$ internal_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.internal_out
DELIMITER //
CREATE FUNCTION "internal_out"() RETURNS UNKNOWN AS $$ internal_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval
DELIMITER //
CREATE FUNCTION "interval"() RETURNS INTERVAL AS $$ interval_scale $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval
DELIMITER //
CREATE FUNCTION "interval"() RETURNS INTERVAL AS $$ time_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.intervaltypmodin
DELIMITER //
CREATE FUNCTION "intervaltypmodin"() RETURNS INTEGER AS $$ intervaltypmodin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.intervaltypmodout
DELIMITER //
CREATE FUNCTION "intervaltypmodout"() RETURNS UNKNOWN AS $$ intervaltypmodout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_accum
DELIMITER //
CREATE FUNCTION "interval_accum"() RETURNS TEXT AS $$ interval_accum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_accum_inv
DELIMITER //
CREATE FUNCTION "interval_accum_inv"() RETURNS TEXT AS $$ interval_accum_inv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_avg
DELIMITER //
CREATE FUNCTION "interval_avg"() RETURNS INTERVAL AS $$ interval_avg $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_cmp
DELIMITER //
CREATE FUNCTION "interval_cmp"() RETURNS INTEGER AS $$ interval_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_combine
DELIMITER //
CREATE FUNCTION "interval_combine"() RETURNS TEXT AS $$ interval_combine $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_div
DELIMITER //
CREATE FUNCTION "interval_div"() RETURNS INTERVAL AS $$ interval_div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_eq
DELIMITER //
CREATE FUNCTION "interval_eq"() RETURNS BOOLEAN AS $$ interval_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_ge
DELIMITER //
CREATE FUNCTION "interval_ge"() RETURNS BOOLEAN AS $$ interval_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_gt
DELIMITER //
CREATE FUNCTION "interval_gt"() RETURNS BOOLEAN AS $$ interval_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_hash
DELIMITER //
CREATE FUNCTION "interval_hash"() RETURNS INTEGER AS $$ interval_hash $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_hash_extended
DELIMITER //
CREATE FUNCTION "interval_hash_extended"() RETURNS BIGINT AS $$ interval_hash_extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_in
DELIMITER //
CREATE FUNCTION "interval_in"() RETURNS INTERVAL AS $$ interval_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_larger
DELIMITER //
CREATE FUNCTION "interval_larger"() RETURNS INTERVAL AS $$ interval_larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_le
DELIMITER //
CREATE FUNCTION "interval_le"() RETURNS BOOLEAN AS $$ interval_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_lt
DELIMITER //
CREATE FUNCTION "interval_lt"() RETURNS BOOLEAN AS $$ interval_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_mi
DELIMITER //
CREATE FUNCTION "interval_mi"() RETURNS INTERVAL AS $$ interval_mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_mul
DELIMITER //
CREATE FUNCTION "interval_mul"() RETURNS INTERVAL AS $$ interval_mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_ne
DELIMITER //
CREATE FUNCTION "interval_ne"() RETURNS BOOLEAN AS $$ interval_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_out
DELIMITER //
CREATE FUNCTION "interval_out"() RETURNS UNKNOWN AS $$ interval_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_pl
DELIMITER //
CREATE FUNCTION "interval_pl"() RETURNS INTERVAL AS $$ interval_pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_pl_date
DELIMITER //
CREATE FUNCTION "interval_pl_date"() RETURNS TIMESTAMP AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_pl_time
DELIMITER //
CREATE FUNCTION "interval_pl_time"() RETURNS TIME AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_pl_timestamp
DELIMITER //
CREATE FUNCTION "interval_pl_timestamp"() RETURNS TIMESTAMP AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_pl_timestamptz
DELIMITER //
CREATE FUNCTION "interval_pl_timestamptz"() RETURNS TIMESTAMPTZ AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_pl_timetz
DELIMITER //
CREATE FUNCTION "interval_pl_timetz"() RETURNS UNKNOWN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_recv
DELIMITER //
CREATE FUNCTION "interval_recv"() RETURNS INTERVAL AS $$ interval_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_send
DELIMITER //
CREATE FUNCTION "interval_send"() RETURNS BYTEA AS $$ interval_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_smaller
DELIMITER //
CREATE FUNCTION "interval_smaller"() RETURNS INTERVAL AS $$ interval_smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_support
DELIMITER //
CREATE FUNCTION "interval_support"() RETURNS UNKNOWN AS $$ interval_support $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.interval_um
DELIMITER //
CREATE FUNCTION "interval_um"() RETURNS INTERVAL AS $$ interval_um $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inter_lb
DELIMITER //
CREATE FUNCTION "inter_lb"() RETURNS BOOLEAN AS $$ inter_lb $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inter_sb
DELIMITER //
CREATE FUNCTION "inter_sb"() RETURNS BOOLEAN AS $$ inter_sb $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.inter_sl
DELIMITER //
CREATE FUNCTION "inter_sl"() RETURNS BOOLEAN AS $$ inter_sl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.in_range
DELIMITER //
CREATE FUNCTION "in_range"() RETURNS BOOLEAN AS $$ in_range_int4_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.in_range
DELIMITER //
CREATE FUNCTION "in_range"() RETURNS BOOLEAN AS $$ in_range_int4_int2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.in_range
DELIMITER //
CREATE FUNCTION "in_range"() RETURNS BOOLEAN AS $$ in_range_int2_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.in_range
DELIMITER //
CREATE FUNCTION "in_range"() RETURNS BOOLEAN AS $$ in_range_int2_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.in_range
DELIMITER //
CREATE FUNCTION "in_range"() RETURNS BOOLEAN AS $$ in_range_timetz_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.in_range
DELIMITER //
CREATE FUNCTION "in_range"() RETURNS BOOLEAN AS $$ in_range_int8_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.in_range
DELIMITER //
CREATE FUNCTION "in_range"() RETURNS BOOLEAN AS $$ in_range_interval_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.in_range
DELIMITER //
CREATE FUNCTION "in_range"() RETURNS BOOLEAN AS $$ in_range_int4_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.in_range
DELIMITER //
CREATE FUNCTION "in_range"() RETURNS BOOLEAN AS $$ in_range_time_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.in_range
DELIMITER //
CREATE FUNCTION "in_range"() RETURNS BOOLEAN AS $$ in_range_int2_int2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.in_range
DELIMITER //
CREATE FUNCTION "in_range"() RETURNS BOOLEAN AS $$ in_range_timestamp_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.in_range
DELIMITER //
CREATE FUNCTION "in_range"() RETURNS BOOLEAN AS $$ in_range_date_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.in_range
DELIMITER //
CREATE FUNCTION "in_range"() RETURNS BOOLEAN AS $$ in_range_numeric_numeric $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.in_range
DELIMITER //
CREATE FUNCTION "in_range"() RETURNS BOOLEAN AS $$ in_range_float8_float8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.in_range
DELIMITER //
CREATE FUNCTION "in_range"() RETURNS BOOLEAN AS $$ in_range_float4_float8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.in_range
DELIMITER //
CREATE FUNCTION "in_range"() RETURNS BOOLEAN AS $$ in_range_timestamptz_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.isclosed
DELIMITER //
CREATE FUNCTION "isclosed"() RETURNS BOOLEAN AS $$ path_isclosed $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.isempty
DELIMITER //
CREATE FUNCTION "isempty"() RETURNS BOOLEAN AS $$ range_empty $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.isempty
DELIMITER //
CREATE FUNCTION "isempty"() RETURNS BOOLEAN AS $$ multirange_empty $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.isfinite
DELIMITER //
CREATE FUNCTION "isfinite"() RETURNS BOOLEAN AS $$ date_finite $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.isfinite
DELIMITER //
CREATE FUNCTION "isfinite"() RETURNS BOOLEAN AS $$ timestamp_finite $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.isfinite
DELIMITER //
CREATE FUNCTION "isfinite"() RETURNS BOOLEAN AS $$ interval_finite $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.isfinite
DELIMITER //
CREATE FUNCTION "isfinite"() RETURNS BOOLEAN AS $$ timestamp_finite $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ishorizontal
DELIMITER //
CREATE FUNCTION "ishorizontal"() RETURNS BOOLEAN AS $$ lseg_horizontal $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ishorizontal
DELIMITER //
CREATE FUNCTION "ishorizontal"() RETURNS BOOLEAN AS $$ line_horizontal $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ishorizontal
DELIMITER //
CREATE FUNCTION "ishorizontal"() RETURNS BOOLEAN AS $$ point_horiz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.iso8859_1_to_utf8
DELIMITER //
CREATE FUNCTION "iso8859_1_to_utf8"() RETURNS INTEGER AS $$ iso8859_1_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.iso8859_to_utf8
DELIMITER //
CREATE FUNCTION "iso8859_to_utf8"() RETURNS INTEGER AS $$ iso8859_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.isopen
DELIMITER //
CREATE FUNCTION "isopen"() RETURNS BOOLEAN AS $$ path_isopen $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.iso_to_koi8r
DELIMITER //
CREATE FUNCTION "iso_to_koi8r"() RETURNS INTEGER AS $$ iso_to_koi8r $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.iso_to_mic
DELIMITER //
CREATE FUNCTION "iso_to_mic"() RETURNS INTEGER AS $$ iso_to_mic $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.iso_to_win1251
DELIMITER //
CREATE FUNCTION "iso_to_win1251"() RETURNS INTEGER AS $$ iso_to_win1251 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.iso_to_win866
DELIMITER //
CREATE FUNCTION "iso_to_win866"() RETURNS INTEGER AS $$ iso_to_win866 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.isparallel
DELIMITER //
CREATE FUNCTION "isparallel"() RETURNS BOOLEAN AS $$ line_parallel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.isparallel
DELIMITER //
CREATE FUNCTION "isparallel"() RETURNS BOOLEAN AS $$ lseg_parallel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.isperp
DELIMITER //
CREATE FUNCTION "isperp"() RETURNS BOOLEAN AS $$ lseg_perp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.isperp
DELIMITER //
CREATE FUNCTION "isperp"() RETURNS BOOLEAN AS $$ line_perp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.isvertical
DELIMITER //
CREATE FUNCTION "isvertical"() RETURNS BOOLEAN AS $$ line_vertical $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.isvertical
DELIMITER //
CREATE FUNCTION "isvertical"() RETURNS BOOLEAN AS $$ point_vert $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.isvertical
DELIMITER //
CREATE FUNCTION "isvertical"() RETURNS BOOLEAN AS $$ lseg_vertical $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.is_normalized
DELIMITER //
CREATE FUNCTION "is_normalized"() RETURNS BOOLEAN AS $$ unicode_is_normalized $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.johab_to_utf8
DELIMITER //
CREATE FUNCTION "johab_to_utf8"() RETURNS INTEGER AS $$ johab_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_agg
DELIMITER //
CREATE FUNCTION "jsonb_agg"() RETURNS JSONB AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_agg_finalfn
DELIMITER //
CREATE FUNCTION "jsonb_agg_finalfn"() RETURNS JSONB AS $$ jsonb_agg_finalfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_agg_transfn
DELIMITER //
CREATE FUNCTION "jsonb_agg_transfn"() RETURNS UNKNOWN AS $$ jsonb_agg_transfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_array_element
DELIMITER //
CREATE FUNCTION "jsonb_array_element"(from_json JSONB, element_index INTEGER) RETURNS JSONB AS $$ jsonb_array_element $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_array_elements
DELIMITER //
CREATE FUNCTION "jsonb_array_elements"(from_json JSONB, value ) RETURNS JSONB AS $$ jsonb_array_elements $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_array_elements_text
DELIMITER //
CREATE FUNCTION "jsonb_array_elements_text"(from_json JSONB, value ) RETURNS TEXT AS $$ jsonb_array_elements_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_array_element_text
DELIMITER //
CREATE FUNCTION "jsonb_array_element_text"(from_json JSONB, element_index INTEGER) RETURNS TEXT AS $$ jsonb_array_element_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_array_length
DELIMITER //
CREATE FUNCTION "jsonb_array_length"() RETURNS INTEGER AS $$ jsonb_array_length $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_build_array
DELIMITER //
CREATE FUNCTION "jsonb_build_array"() RETURNS JSONB AS $$ jsonb_build_array $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_build_array
DELIMITER //
CREATE FUNCTION "jsonb_build_array"() RETURNS JSONB AS $$ jsonb_build_array_noargs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_build_object
DELIMITER //
CREATE FUNCTION "jsonb_build_object"() RETURNS JSONB AS $$ jsonb_build_object_noargs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_build_object
DELIMITER //
CREATE FUNCTION "jsonb_build_object"() RETURNS JSONB AS $$ jsonb_build_object $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_cmp
DELIMITER //
CREATE FUNCTION "jsonb_cmp"() RETURNS INTEGER AS $$ jsonb_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_concat
DELIMITER //
CREATE FUNCTION "jsonb_concat"() RETURNS JSONB AS $$ jsonb_concat $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_contained
DELIMITER //
CREATE FUNCTION "jsonb_contained"() RETURNS BOOLEAN AS $$ jsonb_contained $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_contains
DELIMITER //
CREATE FUNCTION "jsonb_contains"() RETURNS BOOLEAN AS $$ jsonb_contains $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_delete
DELIMITER //
CREATE FUNCTION "jsonb_delete"(from_json JSONB, path_elems UNKNOWN) RETURNS JSONB AS $$ jsonb_delete_array $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_delete
DELIMITER //
CREATE FUNCTION "jsonb_delete"() RETURNS JSONB AS $$ jsonb_delete_idx $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_delete
DELIMITER //
CREATE FUNCTION "jsonb_delete"() RETURNS JSONB AS $$ jsonb_delete $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_delete_path
DELIMITER //
CREATE FUNCTION "jsonb_delete_path"() RETURNS JSONB AS $$ jsonb_delete_path $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_each
DELIMITER //
CREATE FUNCTION "jsonb_each"(from_json JSONB, key , value ) RETURNS UNKNOWN AS $$ jsonb_each $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_each_text
DELIMITER //
CREATE FUNCTION "jsonb_each_text"(from_json JSONB, key , value ) RETURNS UNKNOWN AS $$ jsonb_each_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_eq
DELIMITER //
CREATE FUNCTION "jsonb_eq"() RETURNS BOOLEAN AS $$ jsonb_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_exists
DELIMITER //
CREATE FUNCTION "jsonb_exists"() RETURNS BOOLEAN AS $$ jsonb_exists $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_exists_all
DELIMITER //
CREATE FUNCTION "jsonb_exists_all"() RETURNS BOOLEAN AS $$ jsonb_exists_all $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_exists_any
DELIMITER //
CREATE FUNCTION "jsonb_exists_any"() RETURNS BOOLEAN AS $$ jsonb_exists_any $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_extract_path
DELIMITER //
CREATE FUNCTION "jsonb_extract_path"(from_json JSONB, path_elems UNKNOWN) RETURNS JSONB AS $$ jsonb_extract_path $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_extract_path_text
DELIMITER //
CREATE FUNCTION "jsonb_extract_path_text"(from_json JSONB, path_elems UNKNOWN) RETURNS TEXT AS $$ jsonb_extract_path_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_ge
DELIMITER //
CREATE FUNCTION "jsonb_ge"() RETURNS BOOLEAN AS $$ jsonb_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_gt
DELIMITER //
CREATE FUNCTION "jsonb_gt"() RETURNS BOOLEAN AS $$ jsonb_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_hash
DELIMITER //
CREATE FUNCTION "jsonb_hash"() RETURNS INTEGER AS $$ jsonb_hash $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_hash_extended
DELIMITER //
CREATE FUNCTION "jsonb_hash_extended"() RETURNS BIGINT AS $$ jsonb_hash_extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_in
DELIMITER //
CREATE FUNCTION "jsonb_in"() RETURNS JSONB AS $$ jsonb_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_insert
DELIMITER //
CREATE FUNCTION "jsonb_insert"(jsonb_in JSONB, path UNKNOWN, replacement JSONB, insert_after BOOLEAN) RETURNS JSONB AS $$ jsonb_insert $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_le
DELIMITER //
CREATE FUNCTION "jsonb_le"() RETURNS BOOLEAN AS $$ jsonb_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_lt
DELIMITER //
CREATE FUNCTION "jsonb_lt"() RETURNS BOOLEAN AS $$ jsonb_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_ne
DELIMITER //
CREATE FUNCTION "jsonb_ne"() RETURNS BOOLEAN AS $$ jsonb_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_object
DELIMITER //
CREATE FUNCTION "jsonb_object"() RETURNS JSONB AS $$ jsonb_object_two_arg $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_object
DELIMITER //
CREATE FUNCTION "jsonb_object"() RETURNS JSONB AS $$ jsonb_object $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_object_agg
DELIMITER //
CREATE FUNCTION "jsonb_object_agg"() RETURNS JSONB AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_object_agg_finalfn
DELIMITER //
CREATE FUNCTION "jsonb_object_agg_finalfn"() RETURNS JSONB AS $$ jsonb_object_agg_finalfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_object_agg_transfn
DELIMITER //
CREATE FUNCTION "jsonb_object_agg_transfn"() RETURNS UNKNOWN AS $$ jsonb_object_agg_transfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_object_field
DELIMITER //
CREATE FUNCTION "jsonb_object_field"(from_json JSONB, field_name TEXT) RETURNS JSONB AS $$ jsonb_object_field $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_object_field_text
DELIMITER //
CREATE FUNCTION "jsonb_object_field_text"(from_json JSONB, field_name TEXT) RETURNS TEXT AS $$ jsonb_object_field_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_object_keys
DELIMITER //
CREATE FUNCTION "jsonb_object_keys"() RETURNS TEXT AS $$ jsonb_object_keys $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_out
DELIMITER //
CREATE FUNCTION "jsonb_out"() RETURNS UNKNOWN AS $$ jsonb_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_path_exists
DELIMITER //
CREATE FUNCTION "jsonb_path_exists"(target JSONB, path UNKNOWN, vars JSONB, silent BOOLEAN) RETURNS BOOLEAN AS $$ jsonb_path_exists $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_path_exists_opr
DELIMITER //
CREATE FUNCTION "jsonb_path_exists_opr"() RETURNS BOOLEAN AS $$ jsonb_path_exists_opr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_path_exists_tz
DELIMITER //
CREATE FUNCTION "jsonb_path_exists_tz"(target JSONB, path UNKNOWN, vars JSONB, silent BOOLEAN) RETURNS BOOLEAN AS $$ jsonb_path_exists_tz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_path_match
DELIMITER //
CREATE FUNCTION "jsonb_path_match"(target JSONB, path UNKNOWN, vars JSONB, silent BOOLEAN) RETURNS BOOLEAN AS $$ jsonb_path_match $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_path_match_opr
DELIMITER //
CREATE FUNCTION "jsonb_path_match_opr"() RETURNS BOOLEAN AS $$ jsonb_path_match_opr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_path_match_tz
DELIMITER //
CREATE FUNCTION "jsonb_path_match_tz"(target JSONB, path UNKNOWN, vars JSONB, silent BOOLEAN) RETURNS BOOLEAN AS $$ jsonb_path_match_tz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_path_query
DELIMITER //
CREATE FUNCTION "jsonb_path_query"(target JSONB, path UNKNOWN, vars JSONB, silent BOOLEAN) RETURNS JSONB AS $$ jsonb_path_query $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_path_query_array
DELIMITER //
CREATE FUNCTION "jsonb_path_query_array"(target JSONB, path UNKNOWN, vars JSONB, silent BOOLEAN) RETURNS JSONB AS $$ jsonb_path_query_array $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_path_query_array_tz
DELIMITER //
CREATE FUNCTION "jsonb_path_query_array_tz"(target JSONB, path UNKNOWN, vars JSONB, silent BOOLEAN) RETURNS JSONB AS $$ jsonb_path_query_array_tz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_path_query_first
DELIMITER //
CREATE FUNCTION "jsonb_path_query_first"(target JSONB, path UNKNOWN, vars JSONB, silent BOOLEAN) RETURNS JSONB AS $$ jsonb_path_query_first $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_path_query_first_tz
DELIMITER //
CREATE FUNCTION "jsonb_path_query_first_tz"(target JSONB, path UNKNOWN, vars JSONB, silent BOOLEAN) RETURNS JSONB AS $$ jsonb_path_query_first_tz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_path_query_tz
DELIMITER //
CREATE FUNCTION "jsonb_path_query_tz"(target JSONB, path UNKNOWN, vars JSONB, silent BOOLEAN) RETURNS JSONB AS $$ jsonb_path_query_tz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_populate_record
DELIMITER //
CREATE FUNCTION "jsonb_populate_record"() RETURNS UNKNOWN AS $$ jsonb_populate_record $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_populate_recordset
DELIMITER //
CREATE FUNCTION "jsonb_populate_recordset"() RETURNS UNKNOWN AS $$ jsonb_populate_recordset $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_pretty
DELIMITER //
CREATE FUNCTION "jsonb_pretty"() RETURNS TEXT AS $$ jsonb_pretty $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_recv
DELIMITER //
CREATE FUNCTION "jsonb_recv"() RETURNS JSONB AS $$ jsonb_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_send
DELIMITER //
CREATE FUNCTION "jsonb_send"() RETURNS BYTEA AS $$ jsonb_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_set
DELIMITER //
CREATE FUNCTION "jsonb_set"(jsonb_in JSONB, path UNKNOWN, replacement JSONB, create_if_missing BOOLEAN) RETURNS JSONB AS $$ jsonb_set $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_set_lax
DELIMITER //
CREATE FUNCTION "jsonb_set_lax"(jsonb_in JSONB, path UNKNOWN, replacement JSONB, create_if_missing BOOLEAN, null_value_treatment TEXT) RETURNS JSONB AS $$ jsonb_set_lax $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_strip_nulls
DELIMITER //
CREATE FUNCTION "jsonb_strip_nulls"() RETURNS JSONB AS $$ jsonb_strip_nulls $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_subscript_handler
DELIMITER //
CREATE FUNCTION "jsonb_subscript_handler"() RETURNS UNKNOWN AS $$ jsonb_subscript_handler $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_to_record
DELIMITER //
CREATE FUNCTION "jsonb_to_record"() RETURNS UNKNOWN AS $$ jsonb_to_record $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_to_recordset
DELIMITER //
CREATE FUNCTION "jsonb_to_recordset"() RETURNS UNKNOWN AS $$ jsonb_to_recordset $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_to_tsvector
DELIMITER //
CREATE FUNCTION "jsonb_to_tsvector"() RETURNS UNKNOWN AS $$ jsonb_to_tsvector $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_to_tsvector
DELIMITER //
CREATE FUNCTION "jsonb_to_tsvector"() RETURNS UNKNOWN AS $$ jsonb_to_tsvector_byid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonb_typeof
DELIMITER //
CREATE FUNCTION "jsonb_typeof"() RETURNS TEXT AS $$ jsonb_typeof $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonpath_in
DELIMITER //
CREATE FUNCTION "jsonpath_in"() RETURNS UNKNOWN AS $$ jsonpath_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonpath_out
DELIMITER //
CREATE FUNCTION "jsonpath_out"() RETURNS UNKNOWN AS $$ jsonpath_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonpath_recv
DELIMITER //
CREATE FUNCTION "jsonpath_recv"() RETURNS UNKNOWN AS $$ jsonpath_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.jsonpath_send
DELIMITER //
CREATE FUNCTION "jsonpath_send"() RETURNS BYTEA AS $$ jsonpath_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_agg
DELIMITER //
CREATE FUNCTION "json_agg"() RETURNS JSON AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_agg_finalfn
DELIMITER //
CREATE FUNCTION "json_agg_finalfn"() RETURNS JSON AS $$ json_agg_finalfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_agg_transfn
DELIMITER //
CREATE FUNCTION "json_agg_transfn"() RETURNS UNKNOWN AS $$ json_agg_transfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_array_element
DELIMITER //
CREATE FUNCTION "json_array_element"(from_json JSON, element_index INTEGER) RETURNS JSON AS $$ json_array_element $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_array_elements
DELIMITER //
CREATE FUNCTION "json_array_elements"(from_json JSON, value ) RETURNS JSON AS $$ json_array_elements $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_array_elements_text
DELIMITER //
CREATE FUNCTION "json_array_elements_text"(from_json JSON, value ) RETURNS TEXT AS $$ json_array_elements_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_array_element_text
DELIMITER //
CREATE FUNCTION "json_array_element_text"(from_json JSON, element_index INTEGER) RETURNS TEXT AS $$ json_array_element_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_array_length
DELIMITER //
CREATE FUNCTION "json_array_length"() RETURNS INTEGER AS $$ json_array_length $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_build_array
DELIMITER //
CREATE FUNCTION "json_build_array"() RETURNS JSON AS $$ json_build_array $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_build_array
DELIMITER //
CREATE FUNCTION "json_build_array"() RETURNS JSON AS $$ json_build_array_noargs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_build_object
DELIMITER //
CREATE FUNCTION "json_build_object"() RETURNS JSON AS $$ json_build_object $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_build_object
DELIMITER //
CREATE FUNCTION "json_build_object"() RETURNS JSON AS $$ json_build_object_noargs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_each
DELIMITER //
CREATE FUNCTION "json_each"(from_json JSON, key , value ) RETURNS UNKNOWN AS $$ json_each $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_each_text
DELIMITER //
CREATE FUNCTION "json_each_text"(from_json JSON, key , value ) RETURNS UNKNOWN AS $$ json_each_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_extract_path
DELIMITER //
CREATE FUNCTION "json_extract_path"(from_json JSON, path_elems UNKNOWN) RETURNS JSON AS $$ json_extract_path $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_extract_path_text
DELIMITER //
CREATE FUNCTION "json_extract_path_text"(from_json JSON, path_elems UNKNOWN) RETURNS TEXT AS $$ json_extract_path_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_in
DELIMITER //
CREATE FUNCTION "json_in"() RETURNS JSON AS $$ json_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_object
DELIMITER //
CREATE FUNCTION "json_object"() RETURNS JSON AS $$ json_object $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_object
DELIMITER //
CREATE FUNCTION "json_object"() RETURNS JSON AS $$ json_object_two_arg $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_object_agg
DELIMITER //
CREATE FUNCTION "json_object_agg"() RETURNS JSON AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_object_agg_finalfn
DELIMITER //
CREATE FUNCTION "json_object_agg_finalfn"() RETURNS JSON AS $$ json_object_agg_finalfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_object_agg_transfn
DELIMITER //
CREATE FUNCTION "json_object_agg_transfn"() RETURNS UNKNOWN AS $$ json_object_agg_transfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_object_field
DELIMITER //
CREATE FUNCTION "json_object_field"(from_json JSON, field_name TEXT) RETURNS JSON AS $$ json_object_field $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_object_field_text
DELIMITER //
CREATE FUNCTION "json_object_field_text"(from_json JSON, field_name TEXT) RETURNS TEXT AS $$ json_object_field_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_object_keys
DELIMITER //
CREATE FUNCTION "json_object_keys"() RETURNS TEXT AS $$ json_object_keys $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_out
DELIMITER //
CREATE FUNCTION "json_out"() RETURNS UNKNOWN AS $$ json_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_populate_record
DELIMITER //
CREATE FUNCTION "json_populate_record"(base UNKNOWN, from_json JSON, use_json_as_text BOOLEAN) RETURNS UNKNOWN AS $$ json_populate_record $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_populate_recordset
DELIMITER //
CREATE FUNCTION "json_populate_recordset"(base UNKNOWN, from_json JSON, use_json_as_text BOOLEAN) RETURNS UNKNOWN AS $$ json_populate_recordset $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_recv
DELIMITER //
CREATE FUNCTION "json_recv"() RETURNS JSON AS $$ json_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_send
DELIMITER //
CREATE FUNCTION "json_send"() RETURNS BYTEA AS $$ json_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_strip_nulls
DELIMITER //
CREATE FUNCTION "json_strip_nulls"() RETURNS JSON AS $$ json_strip_nulls $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_to_record
DELIMITER //
CREATE FUNCTION "json_to_record"() RETURNS UNKNOWN AS $$ json_to_record $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_to_recordset
DELIMITER //
CREATE FUNCTION "json_to_recordset"() RETURNS UNKNOWN AS $$ json_to_recordset $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_to_tsvector
DELIMITER //
CREATE FUNCTION "json_to_tsvector"() RETURNS UNKNOWN AS $$ json_to_tsvector $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_to_tsvector
DELIMITER //
CREATE FUNCTION "json_to_tsvector"() RETURNS UNKNOWN AS $$ json_to_tsvector_byid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.json_typeof
DELIMITER //
CREATE FUNCTION "json_typeof"() RETURNS TEXT AS $$ json_typeof $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.justify_days
DELIMITER //
CREATE FUNCTION "justify_days"() RETURNS INTERVAL AS $$ interval_justify_days $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.justify_hours
DELIMITER //
CREATE FUNCTION "justify_hours"() RETURNS INTERVAL AS $$ interval_justify_hours $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.justify_interval
DELIMITER //
CREATE FUNCTION "justify_interval"() RETURNS INTERVAL AS $$ interval_justify_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.koi8r_to_iso
DELIMITER //
CREATE FUNCTION "koi8r_to_iso"() RETURNS INTEGER AS $$ koi8r_to_iso $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.koi8r_to_mic
DELIMITER //
CREATE FUNCTION "koi8r_to_mic"() RETURNS INTEGER AS $$ koi8r_to_mic $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.koi8r_to_utf8
DELIMITER //
CREATE FUNCTION "koi8r_to_utf8"() RETURNS INTEGER AS $$ koi8r_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.koi8r_to_win1251
DELIMITER //
CREATE FUNCTION "koi8r_to_win1251"() RETURNS INTEGER AS $$ koi8r_to_win1251 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.koi8r_to_win866
DELIMITER //
CREATE FUNCTION "koi8r_to_win866"() RETURNS INTEGER AS $$ koi8r_to_win866 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.koi8u_to_utf8
DELIMITER //
CREATE FUNCTION "koi8u_to_utf8"() RETURNS INTEGER AS $$ koi8u_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lag
DELIMITER //
CREATE FUNCTION "lag"() RETURNS UNKNOWN AS $$ window_lag_with_offset_and_default $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lag
DELIMITER //
CREATE FUNCTION "lag"() RETURNS UNKNOWN AS $$ window_lag_with_offset $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lag
DELIMITER //
CREATE FUNCTION "lag"() RETURNS UNKNOWN AS $$ window_lag $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.language_handler_in
DELIMITER //
CREATE FUNCTION "language_handler_in"() RETURNS UNKNOWN AS $$ language_handler_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.language_handler_out
DELIMITER //
CREATE FUNCTION "language_handler_out"() RETURNS UNKNOWN AS $$ language_handler_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lastval
DELIMITER //
CREATE FUNCTION "lastval"() RETURNS BIGINT AS $$ lastval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.last_value
DELIMITER //
CREATE FUNCTION "last_value"() RETURNS UNKNOWN AS $$ window_last_value $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.latin1_to_mic
DELIMITER //
CREATE FUNCTION "latin1_to_mic"() RETURNS INTEGER AS $$ latin1_to_mic $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.latin2_to_mic
DELIMITER //
CREATE FUNCTION "latin2_to_mic"() RETURNS INTEGER AS $$ latin2_to_mic $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.latin2_to_win1250
DELIMITER //
CREATE FUNCTION "latin2_to_win1250"() RETURNS INTEGER AS $$ latin2_to_win1250 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.latin3_to_mic
DELIMITER //
CREATE FUNCTION "latin3_to_mic"() RETURNS INTEGER AS $$ latin3_to_mic $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.latin4_to_mic
DELIMITER //
CREATE FUNCTION "latin4_to_mic"() RETURNS INTEGER AS $$ latin4_to_mic $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lcm
DELIMITER //
CREATE FUNCTION "lcm"() RETURNS NUMERIC AS $$ numeric_lcm $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lcm
DELIMITER //
CREATE FUNCTION "lcm"() RETURNS INTEGER AS $$ int4lcm $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lcm
DELIMITER //
CREATE FUNCTION "lcm"() RETURNS BIGINT AS $$ int8lcm $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lead
DELIMITER //
CREATE FUNCTION "lead"() RETURNS UNKNOWN AS $$ window_lead_with_offset_and_default $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lead
DELIMITER //
CREATE FUNCTION "lead"() RETURNS UNKNOWN AS $$ window_lead_with_offset $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lead
DELIMITER //
CREATE FUNCTION "lead"() RETURNS UNKNOWN AS $$ window_lead $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.left
DELIMITER //
CREATE FUNCTION "left"() RETURNS TEXT AS $$ text_left $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.length
DELIMITER //
CREATE FUNCTION "length"() RETURNS INTEGER AS $$ bitlength $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.length
DELIMITER //
CREATE FUNCTION "length"() RETURNS DOUBLE PRECISION AS $$ lseg_length $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.length
DELIMITER //
CREATE FUNCTION "length"() RETURNS INTEGER AS $$ tsvector_length $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.length
DELIMITER //
CREATE FUNCTION "length"() RETURNS INTEGER AS $$ bpcharlen $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.length
DELIMITER //
CREATE FUNCTION "length"() RETURNS INTEGER AS $$ textlen $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.length
DELIMITER //
CREATE FUNCTION "length"() RETURNS INTEGER AS $$ length_in_encoding $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.length
DELIMITER //
CREATE FUNCTION "length"() RETURNS DOUBLE PRECISION AS $$ path_length $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.length
DELIMITER //
CREATE FUNCTION "length"() RETURNS INTEGER AS $$ byteaoctetlen $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.like
DELIMITER //
CREATE FUNCTION "like"() RETURNS BOOLEAN AS $$ namelike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.like
DELIMITER //
CREATE FUNCTION "like"() RETURNS BOOLEAN AS $$ bytealike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.like
DELIMITER //
CREATE FUNCTION "like"() RETURNS BOOLEAN AS $$ textlike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.likejoinsel
DELIMITER //
CREATE FUNCTION "likejoinsel"() RETURNS DOUBLE PRECISION AS $$ likejoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.likesel
DELIMITER //
CREATE FUNCTION "likesel"() RETURNS DOUBLE PRECISION AS $$ likesel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.like_escape
DELIMITER //
CREATE FUNCTION "like_escape"() RETURNS TEXT AS $$ like_escape $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.like_escape
DELIMITER //
CREATE FUNCTION "like_escape"() RETURNS BYTEA AS $$ like_escape_bytea $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.line
DELIMITER //
CREATE FUNCTION "line"() RETURNS LINE AS $$ line_construct_pp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.line_distance
DELIMITER //
CREATE FUNCTION "line_distance"() RETURNS DOUBLE PRECISION AS $$ line_distance $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.line_eq
DELIMITER //
CREATE FUNCTION "line_eq"() RETURNS BOOLEAN AS $$ line_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.line_horizontal
DELIMITER //
CREATE FUNCTION "line_horizontal"() RETURNS BOOLEAN AS $$ line_horizontal $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.line_in
DELIMITER //
CREATE FUNCTION "line_in"() RETURNS LINE AS $$ line_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.line_interpt
DELIMITER //
CREATE FUNCTION "line_interpt"() RETURNS POINT AS $$ line_interpt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.line_intersect
DELIMITER //
CREATE FUNCTION "line_intersect"() RETURNS BOOLEAN AS $$ line_intersect $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.line_out
DELIMITER //
CREATE FUNCTION "line_out"() RETURNS UNKNOWN AS $$ line_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.line_parallel
DELIMITER //
CREATE FUNCTION "line_parallel"() RETURNS BOOLEAN AS $$ line_parallel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.line_perp
DELIMITER //
CREATE FUNCTION "line_perp"() RETURNS BOOLEAN AS $$ line_perp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.line_recv
DELIMITER //
CREATE FUNCTION "line_recv"() RETURNS LINE AS $$ line_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.line_send
DELIMITER //
CREATE FUNCTION "line_send"() RETURNS BYTEA AS $$ line_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.line_vertical
DELIMITER //
CREATE FUNCTION "line_vertical"() RETURNS BOOLEAN AS $$ line_vertical $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ln
DELIMITER //
CREATE FUNCTION "ln"() RETURNS NUMERIC AS $$ numeric_ln $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ln
DELIMITER //
CREATE FUNCTION "ln"() RETURNS DOUBLE PRECISION AS $$ dlog1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.log
DELIMITER //
CREATE FUNCTION "log"() RETURNS NUMERIC AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.log
DELIMITER //
CREATE FUNCTION "log"() RETURNS DOUBLE PRECISION AS $$ dlog10 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.log
DELIMITER //
CREATE FUNCTION "log"() RETURNS NUMERIC AS $$ numeric_log $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.log10
DELIMITER //
CREATE FUNCTION "log10"() RETURNS NUMERIC AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.log10
DELIMITER //
CREATE FUNCTION "log10"() RETURNS DOUBLE PRECISION AS $$ dlog10 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.loread
DELIMITER //
CREATE FUNCTION "loread"() RETURNS BYTEA AS $$ be_loread $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lower
DELIMITER //
CREATE FUNCTION "lower"() RETURNS TEXT AS $$ lower $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lower
DELIMITER //
CREATE FUNCTION "lower"() RETURNS UNKNOWN AS $$ multirange_lower $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lower
DELIMITER //
CREATE FUNCTION "lower"() RETURNS UNKNOWN AS $$ range_lower $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lower_inc
DELIMITER //
CREATE FUNCTION "lower_inc"() RETURNS BOOLEAN AS $$ multirange_lower_inc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lower_inc
DELIMITER //
CREATE FUNCTION "lower_inc"() RETURNS BOOLEAN AS $$ range_lower_inc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lower_inf
DELIMITER //
CREATE FUNCTION "lower_inf"() RETURNS BOOLEAN AS $$ range_lower_inf $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lower_inf
DELIMITER //
CREATE FUNCTION "lower_inf"() RETURNS BOOLEAN AS $$ multirange_lower_inf $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lowrite
DELIMITER //
CREATE FUNCTION "lowrite"() RETURNS INTEGER AS $$ be_lowrite $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_close
DELIMITER //
CREATE FUNCTION "lo_close"() RETURNS INTEGER AS $$ be_lo_close $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_creat
DELIMITER //
CREATE FUNCTION "lo_creat"() RETURNS INTEGER AS $$ be_lo_creat $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_create
DELIMITER //
CREATE FUNCTION "lo_create"() RETURNS INTEGER AS $$ be_lo_create $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_export
DELIMITER //
CREATE FUNCTION "lo_export"() RETURNS INTEGER AS $$ be_lo_export $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_from_bytea
DELIMITER //
CREATE FUNCTION "lo_from_bytea"() RETURNS INTEGER AS $$ be_lo_from_bytea $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_get
DELIMITER //
CREATE FUNCTION "lo_get"() RETURNS BYTEA AS $$ be_lo_get $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_get
DELIMITER //
CREATE FUNCTION "lo_get"() RETURNS BYTEA AS $$ be_lo_get_fragment $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_import
DELIMITER //
CREATE FUNCTION "lo_import"() RETURNS INTEGER AS $$ be_lo_import_with_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_import
DELIMITER //
CREATE FUNCTION "lo_import"() RETURNS INTEGER AS $$ be_lo_import $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_lseek
DELIMITER //
CREATE FUNCTION "lo_lseek"() RETURNS INTEGER AS $$ be_lo_lseek $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_lseek64
DELIMITER //
CREATE FUNCTION "lo_lseek64"() RETURNS BIGINT AS $$ be_lo_lseek64 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_open
DELIMITER //
CREATE FUNCTION "lo_open"() RETURNS INTEGER AS $$ be_lo_open $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_put
DELIMITER //
CREATE FUNCTION "lo_put"() RETURNS UNKNOWN AS $$ be_lo_put $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_tell
DELIMITER //
CREATE FUNCTION "lo_tell"() RETURNS INTEGER AS $$ be_lo_tell $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_tell64
DELIMITER //
CREATE FUNCTION "lo_tell64"() RETURNS BIGINT AS $$ be_lo_tell64 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_truncate
DELIMITER //
CREATE FUNCTION "lo_truncate"() RETURNS INTEGER AS $$ be_lo_truncate $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_truncate64
DELIMITER //
CREATE FUNCTION "lo_truncate64"() RETURNS INTEGER AS $$ be_lo_truncate64 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lo_unlink
DELIMITER //
CREATE FUNCTION "lo_unlink"() RETURNS INTEGER AS $$ be_lo_unlink $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lpad
DELIMITER //
CREATE FUNCTION "lpad"() RETURNS TEXT AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lpad
DELIMITER //
CREATE FUNCTION "lpad"() RETURNS TEXT AS $$ lpad $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg
DELIMITER //
CREATE FUNCTION "lseg"() RETURNS LSEG AS $$ lseg_construct $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg
DELIMITER //
CREATE FUNCTION "lseg"() RETURNS LSEG AS $$ box_diagonal $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_center
DELIMITER //
CREATE FUNCTION "lseg_center"() RETURNS POINT AS $$ lseg_center $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_distance
DELIMITER //
CREATE FUNCTION "lseg_distance"() RETURNS DOUBLE PRECISION AS $$ lseg_distance $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_eq
DELIMITER //
CREATE FUNCTION "lseg_eq"() RETURNS BOOLEAN AS $$ lseg_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_ge
DELIMITER //
CREATE FUNCTION "lseg_ge"() RETURNS BOOLEAN AS $$ lseg_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_gt
DELIMITER //
CREATE FUNCTION "lseg_gt"() RETURNS BOOLEAN AS $$ lseg_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_horizontal
DELIMITER //
CREATE FUNCTION "lseg_horizontal"() RETURNS BOOLEAN AS $$ lseg_horizontal $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_in
DELIMITER //
CREATE FUNCTION "lseg_in"() RETURNS LSEG AS $$ lseg_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_interpt
DELIMITER //
CREATE FUNCTION "lseg_interpt"() RETURNS POINT AS $$ lseg_interpt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_intersect
DELIMITER //
CREATE FUNCTION "lseg_intersect"() RETURNS BOOLEAN AS $$ lseg_intersect $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_le
DELIMITER //
CREATE FUNCTION "lseg_le"() RETURNS BOOLEAN AS $$ lseg_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_length
DELIMITER //
CREATE FUNCTION "lseg_length"() RETURNS DOUBLE PRECISION AS $$ lseg_length $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_lt
DELIMITER //
CREATE FUNCTION "lseg_lt"() RETURNS BOOLEAN AS $$ lseg_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_ne
DELIMITER //
CREATE FUNCTION "lseg_ne"() RETURNS BOOLEAN AS $$ lseg_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_out
DELIMITER //
CREATE FUNCTION "lseg_out"() RETURNS UNKNOWN AS $$ lseg_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_parallel
DELIMITER //
CREATE FUNCTION "lseg_parallel"() RETURNS BOOLEAN AS $$ lseg_parallel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_perp
DELIMITER //
CREATE FUNCTION "lseg_perp"() RETURNS BOOLEAN AS $$ lseg_perp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_recv
DELIMITER //
CREATE FUNCTION "lseg_recv"() RETURNS LSEG AS $$ lseg_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_send
DELIMITER //
CREATE FUNCTION "lseg_send"() RETURNS BYTEA AS $$ lseg_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.lseg_vertical
DELIMITER //
CREATE FUNCTION "lseg_vertical"() RETURNS BOOLEAN AS $$ lseg_vertical $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ltrim
DELIMITER //
CREATE FUNCTION "ltrim"() RETURNS TEXT AS $$ ltrim1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ltrim
DELIMITER //
CREATE FUNCTION "ltrim"() RETURNS BYTEA AS $$ bytealtrim $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ltrim
DELIMITER //
CREATE FUNCTION "ltrim"() RETURNS TEXT AS $$ ltrim $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr
DELIMITER //
CREATE FUNCTION "macaddr"() RETURNS MACADDR AS $$ macaddr8tomacaddr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr8
DELIMITER //
CREATE FUNCTION "macaddr8"() RETURNS UNKNOWN AS $$ macaddrtomacaddr8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr8_and
DELIMITER //
CREATE FUNCTION "macaddr8_and"() RETURNS UNKNOWN AS $$ macaddr8_and $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr8_cmp
DELIMITER //
CREATE FUNCTION "macaddr8_cmp"() RETURNS INTEGER AS $$ macaddr8_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr8_eq
DELIMITER //
CREATE FUNCTION "macaddr8_eq"() RETURNS BOOLEAN AS $$ macaddr8_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr8_ge
DELIMITER //
CREATE FUNCTION "macaddr8_ge"() RETURNS BOOLEAN AS $$ macaddr8_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr8_gt
DELIMITER //
CREATE FUNCTION "macaddr8_gt"() RETURNS BOOLEAN AS $$ macaddr8_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr8_in
DELIMITER //
CREATE FUNCTION "macaddr8_in"() RETURNS UNKNOWN AS $$ macaddr8_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr8_le
DELIMITER //
CREATE FUNCTION "macaddr8_le"() RETURNS BOOLEAN AS $$ macaddr8_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr8_lt
DELIMITER //
CREATE FUNCTION "macaddr8_lt"() RETURNS BOOLEAN AS $$ macaddr8_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr8_ne
DELIMITER //
CREATE FUNCTION "macaddr8_ne"() RETURNS BOOLEAN AS $$ macaddr8_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr8_not
DELIMITER //
CREATE FUNCTION "macaddr8_not"() RETURNS UNKNOWN AS $$ macaddr8_not $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr8_or
DELIMITER //
CREATE FUNCTION "macaddr8_or"() RETURNS UNKNOWN AS $$ macaddr8_or $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr8_out
DELIMITER //
CREATE FUNCTION "macaddr8_out"() RETURNS UNKNOWN AS $$ macaddr8_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr8_recv
DELIMITER //
CREATE FUNCTION "macaddr8_recv"() RETURNS UNKNOWN AS $$ macaddr8_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr8_send
DELIMITER //
CREATE FUNCTION "macaddr8_send"() RETURNS BYTEA AS $$ macaddr8_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr8_set7bit
DELIMITER //
CREATE FUNCTION "macaddr8_set7bit"() RETURNS UNKNOWN AS $$ macaddr8_set7bit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr_and
DELIMITER //
CREATE FUNCTION "macaddr_and"() RETURNS MACADDR AS $$ macaddr_and $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr_cmp
DELIMITER //
CREATE FUNCTION "macaddr_cmp"() RETURNS INTEGER AS $$ macaddr_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr_eq
DELIMITER //
CREATE FUNCTION "macaddr_eq"() RETURNS BOOLEAN AS $$ macaddr_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr_ge
DELIMITER //
CREATE FUNCTION "macaddr_ge"() RETURNS BOOLEAN AS $$ macaddr_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr_gt
DELIMITER //
CREATE FUNCTION "macaddr_gt"() RETURNS BOOLEAN AS $$ macaddr_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr_in
DELIMITER //
CREATE FUNCTION "macaddr_in"() RETURNS MACADDR AS $$ macaddr_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr_le
DELIMITER //
CREATE FUNCTION "macaddr_le"() RETURNS BOOLEAN AS $$ macaddr_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr_lt
DELIMITER //
CREATE FUNCTION "macaddr_lt"() RETURNS BOOLEAN AS $$ macaddr_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr_ne
DELIMITER //
CREATE FUNCTION "macaddr_ne"() RETURNS BOOLEAN AS $$ macaddr_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr_not
DELIMITER //
CREATE FUNCTION "macaddr_not"() RETURNS MACADDR AS $$ macaddr_not $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr_or
DELIMITER //
CREATE FUNCTION "macaddr_or"() RETURNS MACADDR AS $$ macaddr_or $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr_out
DELIMITER //
CREATE FUNCTION "macaddr_out"() RETURNS UNKNOWN AS $$ macaddr_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr_recv
DELIMITER //
CREATE FUNCTION "macaddr_recv"() RETURNS MACADDR AS $$ macaddr_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr_send
DELIMITER //
CREATE FUNCTION "macaddr_send"() RETURNS BYTEA AS $$ macaddr_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.macaddr_sortsupport
DELIMITER //
CREATE FUNCTION "macaddr_sortsupport"() RETURNS UNKNOWN AS $$ macaddr_sortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.makeaclitem
DELIMITER //
CREATE FUNCTION "makeaclitem"() RETURNS UNKNOWN AS $$ makeaclitem $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.make_date
DELIMITER //
CREATE FUNCTION "make_date"(year INTEGER, month INTEGER, day INTEGER) RETURNS DATE AS $$ make_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.make_interval
DELIMITER //
CREATE FUNCTION "make_interval"(years INTEGER, months INTEGER, weeks INTEGER, days INTEGER, hours INTEGER, mins INTEGER, secs DOUBLE PRECISION) RETURNS INTERVAL AS $$ make_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.make_time
DELIMITER //
CREATE FUNCTION "make_time"(hour INTEGER, min INTEGER, sec DOUBLE PRECISION) RETURNS TIME AS $$ make_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.make_timestamp
DELIMITER //
CREATE FUNCTION "make_timestamp"(year INTEGER, month INTEGER, mday INTEGER, hour INTEGER, min INTEGER, sec DOUBLE PRECISION) RETURNS TIMESTAMP AS $$ make_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.make_timestamptz
DELIMITER //
CREATE FUNCTION "make_timestamptz"(year INTEGER, month INTEGER, mday INTEGER, hour INTEGER, min INTEGER, sec DOUBLE PRECISION, timezone TEXT) RETURNS TIMESTAMPTZ AS $$ make_timestamptz_at_timezone $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.make_timestamptz
DELIMITER //
CREATE FUNCTION "make_timestamptz"(year INTEGER, month INTEGER, mday INTEGER, hour INTEGER, min INTEGER, sec DOUBLE PRECISION) RETURNS TIMESTAMPTZ AS $$ make_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.masklen
DELIMITER //
CREATE FUNCTION "masklen"() RETURNS INTEGER AS $$ network_masklen $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.matchingjoinsel
DELIMITER //
CREATE FUNCTION "matchingjoinsel"() RETURNS DOUBLE PRECISION AS $$ matchingjoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.matchingsel
DELIMITER //
CREATE FUNCTION "matchingsel"() RETURNS DOUBLE PRECISION AS $$ matchingsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS TIME AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS BIGINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS INTEGER AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS REAL AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS DATE AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS INTEGER AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS SMALLINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS CHAR AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS INET AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS TIMESTAMPTZ AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS TIMESTAMP AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS MONEY AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS TEXT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.max
DELIMITER //
CREATE FUNCTION "max"() RETURNS INTERVAL AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.md5
DELIMITER //
CREATE FUNCTION "md5"() RETURNS TEXT AS $$ md5_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.md5
DELIMITER //
CREATE FUNCTION "md5"() RETURNS TEXT AS $$ md5_bytea $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mic_to_big5
DELIMITER //
CREATE FUNCTION "mic_to_big5"() RETURNS INTEGER AS $$ mic_to_big5 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mic_to_euc_cn
DELIMITER //
CREATE FUNCTION "mic_to_euc_cn"() RETURNS INTEGER AS $$ mic_to_euc_cn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mic_to_euc_jp
DELIMITER //
CREATE FUNCTION "mic_to_euc_jp"() RETURNS INTEGER AS $$ mic_to_euc_jp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mic_to_euc_kr
DELIMITER //
CREATE FUNCTION "mic_to_euc_kr"() RETURNS INTEGER AS $$ mic_to_euc_kr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mic_to_euc_tw
DELIMITER //
CREATE FUNCTION "mic_to_euc_tw"() RETURNS INTEGER AS $$ mic_to_euc_tw $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mic_to_iso
DELIMITER //
CREATE FUNCTION "mic_to_iso"() RETURNS INTEGER AS $$ mic_to_iso $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mic_to_koi8r
DELIMITER //
CREATE FUNCTION "mic_to_koi8r"() RETURNS INTEGER AS $$ mic_to_koi8r $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mic_to_latin1
DELIMITER //
CREATE FUNCTION "mic_to_latin1"() RETURNS INTEGER AS $$ mic_to_latin1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mic_to_latin2
DELIMITER //
CREATE FUNCTION "mic_to_latin2"() RETURNS INTEGER AS $$ mic_to_latin2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mic_to_latin3
DELIMITER //
CREATE FUNCTION "mic_to_latin3"() RETURNS INTEGER AS $$ mic_to_latin3 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mic_to_latin4
DELIMITER //
CREATE FUNCTION "mic_to_latin4"() RETURNS INTEGER AS $$ mic_to_latin4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mic_to_sjis
DELIMITER //
CREATE FUNCTION "mic_to_sjis"() RETURNS INTEGER AS $$ mic_to_sjis $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mic_to_win1250
DELIMITER //
CREATE FUNCTION "mic_to_win1250"() RETURNS INTEGER AS $$ mic_to_win1250 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mic_to_win1251
DELIMITER //
CREATE FUNCTION "mic_to_win1251"() RETURNS INTEGER AS $$ mic_to_win1251 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mic_to_win866
DELIMITER //
CREATE FUNCTION "mic_to_win866"() RETURNS INTEGER AS $$ mic_to_win866 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS REAL AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS DATE AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS INTEGER AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS BIGINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS INTEGER AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS SMALLINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS CHAR AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS TIMESTAMPTZ AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS TEXT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS INTERVAL AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS TIME AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS INET AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS TIMESTAMP AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS MONEY AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min
DELIMITER //
CREATE FUNCTION "min"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.min_scale
DELIMITER //
CREATE FUNCTION "min_scale"() RETURNS INTEGER AS $$ numeric_min_scale $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mod
DELIMITER //
CREATE FUNCTION "mod"() RETURNS BIGINT AS $$ int8mod $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mod
DELIMITER //
CREATE FUNCTION "mod"() RETURNS INTEGER AS $$ int4mod $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mod
DELIMITER //
CREATE FUNCTION "mod"() RETURNS SMALLINT AS $$ int2mod $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mod
DELIMITER //
CREATE FUNCTION "mod"() RETURNS NUMERIC AS $$ numeric_mod $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mode
DELIMITER //
CREATE FUNCTION "mode"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mode_final
DELIMITER //
CREATE FUNCTION "mode_final"() RETURNS UNKNOWN AS $$ mode_final $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.money
DELIMITER //
CREATE FUNCTION "money"() RETURNS MONEY AS $$ numeric_cash $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.money
DELIMITER //
CREATE FUNCTION "money"() RETURNS MONEY AS $$ int8_cash $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.money
DELIMITER //
CREATE FUNCTION "money"() RETURNS MONEY AS $$ int4_cash $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange
DELIMITER //
CREATE FUNCTION "multirange"() RETURNS UNKNOWN AS $$ multirange_constructor1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirangesel
DELIMITER //
CREATE FUNCTION "multirangesel"() RETURNS DOUBLE PRECISION AS $$ multirangesel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_adjacent_multirange
DELIMITER //
CREATE FUNCTION "multirange_adjacent_multirange"() RETURNS BOOLEAN AS $$ multirange_adjacent_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_adjacent_range
DELIMITER //
CREATE FUNCTION "multirange_adjacent_range"() RETURNS BOOLEAN AS $$ multirange_adjacent_range $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_after_multirange
DELIMITER //
CREATE FUNCTION "multirange_after_multirange"() RETURNS BOOLEAN AS $$ multirange_after_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_after_range
DELIMITER //
CREATE FUNCTION "multirange_after_range"() RETURNS BOOLEAN AS $$ multirange_after_range $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_before_multirange
DELIMITER //
CREATE FUNCTION "multirange_before_multirange"() RETURNS BOOLEAN AS $$ multirange_before_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_before_range
DELIMITER //
CREATE FUNCTION "multirange_before_range"() RETURNS BOOLEAN AS $$ multirange_before_range $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_cmp
DELIMITER //
CREATE FUNCTION "multirange_cmp"() RETURNS INTEGER AS $$ multirange_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_contained_by_multirange
DELIMITER //
CREATE FUNCTION "multirange_contained_by_multirange"() RETURNS BOOLEAN AS $$ multirange_contained_by_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_contained_by_range
DELIMITER //
CREATE FUNCTION "multirange_contained_by_range"() RETURNS BOOLEAN AS $$ multirange_contained_by_range $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_contains_elem
DELIMITER //
CREATE FUNCTION "multirange_contains_elem"() RETURNS BOOLEAN AS $$ multirange_contains_elem $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_contains_multirange
DELIMITER //
CREATE FUNCTION "multirange_contains_multirange"() RETURNS BOOLEAN AS $$ multirange_contains_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_contains_range
DELIMITER //
CREATE FUNCTION "multirange_contains_range"() RETURNS BOOLEAN AS $$ multirange_contains_range $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_eq
DELIMITER //
CREATE FUNCTION "multirange_eq"() RETURNS BOOLEAN AS $$ multirange_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_ge
DELIMITER //
CREATE FUNCTION "multirange_ge"() RETURNS BOOLEAN AS $$ multirange_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_gist_compress
DELIMITER //
CREATE FUNCTION "multirange_gist_compress"() RETURNS UNKNOWN AS $$ multirange_gist_compress $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_gist_consistent
DELIMITER //
CREATE FUNCTION "multirange_gist_consistent"() RETURNS BOOLEAN AS $$ multirange_gist_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_gt
DELIMITER //
CREATE FUNCTION "multirange_gt"() RETURNS BOOLEAN AS $$ multirange_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_in
DELIMITER //
CREATE FUNCTION "multirange_in"() RETURNS UNKNOWN AS $$ multirange_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_intersect
DELIMITER //
CREATE FUNCTION "multirange_intersect"() RETURNS UNKNOWN AS $$ multirange_intersect $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_intersect_agg_transfn
DELIMITER //
CREATE FUNCTION "multirange_intersect_agg_transfn"() RETURNS UNKNOWN AS $$ multirange_intersect_agg_transfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_le
DELIMITER //
CREATE FUNCTION "multirange_le"() RETURNS BOOLEAN AS $$ multirange_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_lt
DELIMITER //
CREATE FUNCTION "multirange_lt"() RETURNS BOOLEAN AS $$ multirange_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_minus
DELIMITER //
CREATE FUNCTION "multirange_minus"() RETURNS UNKNOWN AS $$ multirange_minus $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_ne
DELIMITER //
CREATE FUNCTION "multirange_ne"() RETURNS BOOLEAN AS $$ multirange_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_out
DELIMITER //
CREATE FUNCTION "multirange_out"() RETURNS UNKNOWN AS $$ multirange_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_overlaps_multirange
DELIMITER //
CREATE FUNCTION "multirange_overlaps_multirange"() RETURNS BOOLEAN AS $$ multirange_overlaps_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_overlaps_range
DELIMITER //
CREATE FUNCTION "multirange_overlaps_range"() RETURNS BOOLEAN AS $$ multirange_overlaps_range $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_overleft_multirange
DELIMITER //
CREATE FUNCTION "multirange_overleft_multirange"() RETURNS BOOLEAN AS $$ multirange_overleft_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_overleft_range
DELIMITER //
CREATE FUNCTION "multirange_overleft_range"() RETURNS BOOLEAN AS $$ multirange_overleft_range $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_overright_multirange
DELIMITER //
CREATE FUNCTION "multirange_overright_multirange"() RETURNS BOOLEAN AS $$ multirange_overright_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_overright_range
DELIMITER //
CREATE FUNCTION "multirange_overright_range"() RETURNS BOOLEAN AS $$ multirange_overright_range $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_recv
DELIMITER //
CREATE FUNCTION "multirange_recv"() RETURNS UNKNOWN AS $$ multirange_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_send
DELIMITER //
CREATE FUNCTION "multirange_send"() RETURNS BYTEA AS $$ multirange_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_typanalyze
DELIMITER //
CREATE FUNCTION "multirange_typanalyze"() RETURNS BOOLEAN AS $$ multirange_typanalyze $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.multirange_union
DELIMITER //
CREATE FUNCTION "multirange_union"() RETURNS UNKNOWN AS $$ multirange_union $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mul_d_interval
DELIMITER //
CREATE FUNCTION "mul_d_interval"() RETURNS INTERVAL AS $$ mul_d_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.mxid_age
DELIMITER //
CREATE FUNCTION "mxid_age"() RETURNS INTEGER AS $$ mxid_age $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.name
DELIMITER //
CREATE FUNCTION "name"() RETURNS VARCHAR AS $$ text_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.name
DELIMITER //
CREATE FUNCTION "name"() RETURNS VARCHAR AS $$ text_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.name
DELIMITER //
CREATE FUNCTION "name"() RETURNS VARCHAR AS $$ bpchar_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nameconcatoid
DELIMITER //
CREATE FUNCTION "nameconcatoid"() RETURNS VARCHAR AS $$ nameconcatoid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nameeq
DELIMITER //
CREATE FUNCTION "nameeq"() RETURNS BOOLEAN AS $$ nameeq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nameeqtext
DELIMITER //
CREATE FUNCTION "nameeqtext"() RETURNS BOOLEAN AS $$ nameeqtext $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.namege
DELIMITER //
CREATE FUNCTION "namege"() RETURNS BOOLEAN AS $$ namege $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.namegetext
DELIMITER //
CREATE FUNCTION "namegetext"() RETURNS BOOLEAN AS $$ namegetext $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.namegt
DELIMITER //
CREATE FUNCTION "namegt"() RETURNS BOOLEAN AS $$ namegt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.namegttext
DELIMITER //
CREATE FUNCTION "namegttext"() RETURNS BOOLEAN AS $$ namegttext $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nameiclike
DELIMITER //
CREATE FUNCTION "nameiclike"() RETURNS BOOLEAN AS $$ nameiclike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nameicnlike
DELIMITER //
CREATE FUNCTION "nameicnlike"() RETURNS BOOLEAN AS $$ nameicnlike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nameicregexeq
DELIMITER //
CREATE FUNCTION "nameicregexeq"() RETURNS BOOLEAN AS $$ nameicregexeq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nameicregexne
DELIMITER //
CREATE FUNCTION "nameicregexne"() RETURNS BOOLEAN AS $$ nameicregexne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.namein
DELIMITER //
CREATE FUNCTION "namein"() RETURNS VARCHAR AS $$ namein $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.namele
DELIMITER //
CREATE FUNCTION "namele"() RETURNS BOOLEAN AS $$ namele $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nameletext
DELIMITER //
CREATE FUNCTION "nameletext"() RETURNS BOOLEAN AS $$ nameletext $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.namelike
DELIMITER //
CREATE FUNCTION "namelike"() RETURNS BOOLEAN AS $$ namelike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.namelt
DELIMITER //
CREATE FUNCTION "namelt"() RETURNS BOOLEAN AS $$ namelt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.namelttext
DELIMITER //
CREATE FUNCTION "namelttext"() RETURNS BOOLEAN AS $$ namelttext $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.namene
DELIMITER //
CREATE FUNCTION "namene"() RETURNS BOOLEAN AS $$ namene $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.namenetext
DELIMITER //
CREATE FUNCTION "namenetext"() RETURNS BOOLEAN AS $$ namenetext $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.namenlike
DELIMITER //
CREATE FUNCTION "namenlike"() RETURNS BOOLEAN AS $$ namenlike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nameout
DELIMITER //
CREATE FUNCTION "nameout"() RETURNS UNKNOWN AS $$ nameout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.namerecv
DELIMITER //
CREATE FUNCTION "namerecv"() RETURNS VARCHAR AS $$ namerecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nameregexeq
DELIMITER //
CREATE FUNCTION "nameregexeq"() RETURNS BOOLEAN AS $$ nameregexeq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nameregexne
DELIMITER //
CREATE FUNCTION "nameregexne"() RETURNS BOOLEAN AS $$ nameregexne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.namesend
DELIMITER //
CREATE FUNCTION "namesend"() RETURNS BYTEA AS $$ namesend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.neqjoinsel
DELIMITER //
CREATE FUNCTION "neqjoinsel"() RETURNS DOUBLE PRECISION AS $$ neqjoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.neqsel
DELIMITER //
CREATE FUNCTION "neqsel"() RETURNS DOUBLE PRECISION AS $$ neqsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.netmask
DELIMITER //
CREATE FUNCTION "netmask"() RETURNS INET AS $$ network_netmask $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network
DELIMITER //
CREATE FUNCTION "network"() RETURNS CIDR AS $$ network_network $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.networkjoinsel
DELIMITER //
CREATE FUNCTION "networkjoinsel"() RETURNS DOUBLE PRECISION AS $$ networkjoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.networksel
DELIMITER //
CREATE FUNCTION "networksel"() RETURNS DOUBLE PRECISION AS $$ networksel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network_cmp
DELIMITER //
CREATE FUNCTION "network_cmp"() RETURNS INTEGER AS $$ network_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network_eq
DELIMITER //
CREATE FUNCTION "network_eq"() RETURNS BOOLEAN AS $$ network_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network_ge
DELIMITER //
CREATE FUNCTION "network_ge"() RETURNS BOOLEAN AS $$ network_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network_gt
DELIMITER //
CREATE FUNCTION "network_gt"() RETURNS BOOLEAN AS $$ network_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network_larger
DELIMITER //
CREATE FUNCTION "network_larger"() RETURNS INET AS $$ network_larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network_le
DELIMITER //
CREATE FUNCTION "network_le"() RETURNS BOOLEAN AS $$ network_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network_lt
DELIMITER //
CREATE FUNCTION "network_lt"() RETURNS BOOLEAN AS $$ network_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network_ne
DELIMITER //
CREATE FUNCTION "network_ne"() RETURNS BOOLEAN AS $$ network_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network_overlap
DELIMITER //
CREATE FUNCTION "network_overlap"() RETURNS BOOLEAN AS $$ network_overlap $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network_smaller
DELIMITER //
CREATE FUNCTION "network_smaller"() RETURNS INET AS $$ network_smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network_sortsupport
DELIMITER //
CREATE FUNCTION "network_sortsupport"() RETURNS UNKNOWN AS $$ network_sortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network_sub
DELIMITER //
CREATE FUNCTION "network_sub"() RETURNS BOOLEAN AS $$ network_sub $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network_subeq
DELIMITER //
CREATE FUNCTION "network_subeq"() RETURNS BOOLEAN AS $$ network_subeq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network_subset_support
DELIMITER //
CREATE FUNCTION "network_subset_support"() RETURNS UNKNOWN AS $$ network_subset_support $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network_sup
DELIMITER //
CREATE FUNCTION "network_sup"() RETURNS BOOLEAN AS $$ network_sup $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.network_supeq
DELIMITER //
CREATE FUNCTION "network_supeq"() RETURNS BOOLEAN AS $$ network_supeq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nextval
DELIMITER //
CREATE FUNCTION "nextval"() RETURNS BIGINT AS $$ nextval_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nlikejoinsel
DELIMITER //
CREATE FUNCTION "nlikejoinsel"() RETURNS DOUBLE PRECISION AS $$ nlikejoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nlikesel
DELIMITER //
CREATE FUNCTION "nlikesel"() RETURNS DOUBLE PRECISION AS $$ nlikesel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.normalize
DELIMITER //
CREATE FUNCTION "normalize"() RETURNS TEXT AS $$ unicode_normalize_func $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.notlike
DELIMITER //
CREATE FUNCTION "notlike"() RETURNS BOOLEAN AS $$ byteanlike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.notlike
DELIMITER //
CREATE FUNCTION "notlike"() RETURNS BOOLEAN AS $$ textnlike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.notlike
DELIMITER //
CREATE FUNCTION "notlike"() RETURNS BOOLEAN AS $$ namenlike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.now
DELIMITER //
CREATE FUNCTION "now"() RETURNS TIMESTAMPTZ AS $$ now $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.npoints
DELIMITER //
CREATE FUNCTION "npoints"() RETURNS INTEGER AS $$ path_npoints $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.npoints
DELIMITER //
CREATE FUNCTION "npoints"() RETURNS INTEGER AS $$ poly_npoints $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nth_value
DELIMITER //
CREATE FUNCTION "nth_value"() RETURNS UNKNOWN AS $$ window_nth_value $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ntile
DELIMITER //
CREATE FUNCTION "ntile"() RETURNS INTEGER AS $$ window_ntile $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric
DELIMITER //
CREATE FUNCTION "numeric"() RETURNS NUMERIC AS $$ int8_numeric $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric
DELIMITER //
CREATE FUNCTION "numeric"() RETURNS NUMERIC AS $$ int2_numeric $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric
DELIMITER //
CREATE FUNCTION "numeric"() RETURNS NUMERIC AS $$ jsonb_numeric $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric
DELIMITER //
CREATE FUNCTION "numeric"() RETURNS NUMERIC AS $$ cash_numeric $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric
DELIMITER //
CREATE FUNCTION "numeric"() RETURNS NUMERIC AS $$ numeric $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric
DELIMITER //
CREATE FUNCTION "numeric"() RETURNS NUMERIC AS $$ int4_numeric $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric
DELIMITER //
CREATE FUNCTION "numeric"() RETURNS NUMERIC AS $$ float4_numeric $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric
DELIMITER //
CREATE FUNCTION "numeric"() RETURNS NUMERIC AS $$ float8_numeric $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numerictypmodin
DELIMITER //
CREATE FUNCTION "numerictypmodin"() RETURNS INTEGER AS $$ numerictypmodin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numerictypmodout
DELIMITER //
CREATE FUNCTION "numerictypmodout"() RETURNS UNKNOWN AS $$ numerictypmodout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_abs
DELIMITER //
CREATE FUNCTION "numeric_abs"() RETURNS NUMERIC AS $$ numeric_abs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_accum
DELIMITER //
CREATE FUNCTION "numeric_accum"() RETURNS UNKNOWN AS $$ numeric_accum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_accum_inv
DELIMITER //
CREATE FUNCTION "numeric_accum_inv"() RETURNS UNKNOWN AS $$ numeric_accum_inv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_add
DELIMITER //
CREATE FUNCTION "numeric_add"() RETURNS NUMERIC AS $$ numeric_add $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_avg
DELIMITER //
CREATE FUNCTION "numeric_avg"() RETURNS NUMERIC AS $$ numeric_avg $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_avg_accum
DELIMITER //
CREATE FUNCTION "numeric_avg_accum"() RETURNS UNKNOWN AS $$ numeric_avg_accum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_avg_combine
DELIMITER //
CREATE FUNCTION "numeric_avg_combine"() RETURNS UNKNOWN AS $$ numeric_avg_combine $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_avg_deserialize
DELIMITER //
CREATE FUNCTION "numeric_avg_deserialize"() RETURNS UNKNOWN AS $$ numeric_avg_deserialize $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_avg_serialize
DELIMITER //
CREATE FUNCTION "numeric_avg_serialize"() RETURNS BYTEA AS $$ numeric_avg_serialize $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_cmp
DELIMITER //
CREATE FUNCTION "numeric_cmp"() RETURNS INTEGER AS $$ numeric_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_combine
DELIMITER //
CREATE FUNCTION "numeric_combine"() RETURNS UNKNOWN AS $$ numeric_combine $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_deserialize
DELIMITER //
CREATE FUNCTION "numeric_deserialize"() RETURNS UNKNOWN AS $$ numeric_deserialize $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_div
DELIMITER //
CREATE FUNCTION "numeric_div"() RETURNS NUMERIC AS $$ numeric_div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_div_trunc
DELIMITER //
CREATE FUNCTION "numeric_div_trunc"() RETURNS NUMERIC AS $$ numeric_div_trunc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_eq
DELIMITER //
CREATE FUNCTION "numeric_eq"() RETURNS BOOLEAN AS $$ numeric_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_exp
DELIMITER //
CREATE FUNCTION "numeric_exp"() RETURNS NUMERIC AS $$ numeric_exp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_ge
DELIMITER //
CREATE FUNCTION "numeric_ge"() RETURNS BOOLEAN AS $$ numeric_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_gt
DELIMITER //
CREATE FUNCTION "numeric_gt"() RETURNS BOOLEAN AS $$ numeric_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_in
DELIMITER //
CREATE FUNCTION "numeric_in"() RETURNS NUMERIC AS $$ numeric_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_inc
DELIMITER //
CREATE FUNCTION "numeric_inc"() RETURNS NUMERIC AS $$ numeric_inc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_larger
DELIMITER //
CREATE FUNCTION "numeric_larger"() RETURNS NUMERIC AS $$ numeric_larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_le
DELIMITER //
CREATE FUNCTION "numeric_le"() RETURNS BOOLEAN AS $$ numeric_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_ln
DELIMITER //
CREATE FUNCTION "numeric_ln"() RETURNS NUMERIC AS $$ numeric_ln $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_log
DELIMITER //
CREATE FUNCTION "numeric_log"() RETURNS NUMERIC AS $$ numeric_log $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_lt
DELIMITER //
CREATE FUNCTION "numeric_lt"() RETURNS BOOLEAN AS $$ numeric_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_mod
DELIMITER //
CREATE FUNCTION "numeric_mod"() RETURNS NUMERIC AS $$ numeric_mod $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_mul
DELIMITER //
CREATE FUNCTION "numeric_mul"() RETURNS NUMERIC AS $$ numeric_mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_ne
DELIMITER //
CREATE FUNCTION "numeric_ne"() RETURNS BOOLEAN AS $$ numeric_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_out
DELIMITER //
CREATE FUNCTION "numeric_out"() RETURNS UNKNOWN AS $$ numeric_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_pl_pg_lsn
DELIMITER //
CREATE FUNCTION "numeric_pl_pg_lsn"() RETURNS UNKNOWN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_poly_avg
DELIMITER //
CREATE FUNCTION "numeric_poly_avg"() RETURNS NUMERIC AS $$ numeric_poly_avg $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_poly_combine
DELIMITER //
CREATE FUNCTION "numeric_poly_combine"() RETURNS UNKNOWN AS $$ numeric_poly_combine $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_poly_deserialize
DELIMITER //
CREATE FUNCTION "numeric_poly_deserialize"() RETURNS UNKNOWN AS $$ numeric_poly_deserialize $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_poly_serialize
DELIMITER //
CREATE FUNCTION "numeric_poly_serialize"() RETURNS BYTEA AS $$ numeric_poly_serialize $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_poly_stddev_pop
DELIMITER //
CREATE FUNCTION "numeric_poly_stddev_pop"() RETURNS NUMERIC AS $$ numeric_poly_stddev_pop $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_poly_stddev_samp
DELIMITER //
CREATE FUNCTION "numeric_poly_stddev_samp"() RETURNS NUMERIC AS $$ numeric_poly_stddev_samp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_poly_sum
DELIMITER //
CREATE FUNCTION "numeric_poly_sum"() RETURNS NUMERIC AS $$ numeric_poly_sum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_poly_var_pop
DELIMITER //
CREATE FUNCTION "numeric_poly_var_pop"() RETURNS NUMERIC AS $$ numeric_poly_var_pop $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_poly_var_samp
DELIMITER //
CREATE FUNCTION "numeric_poly_var_samp"() RETURNS NUMERIC AS $$ numeric_poly_var_samp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_power
DELIMITER //
CREATE FUNCTION "numeric_power"() RETURNS NUMERIC AS $$ numeric_power $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_recv
DELIMITER //
CREATE FUNCTION "numeric_recv"() RETURNS NUMERIC AS $$ numeric_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_send
DELIMITER //
CREATE FUNCTION "numeric_send"() RETURNS BYTEA AS $$ numeric_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_serialize
DELIMITER //
CREATE FUNCTION "numeric_serialize"() RETURNS BYTEA AS $$ numeric_serialize $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_smaller
DELIMITER //
CREATE FUNCTION "numeric_smaller"() RETURNS NUMERIC AS $$ numeric_smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_sortsupport
DELIMITER //
CREATE FUNCTION "numeric_sortsupport"() RETURNS UNKNOWN AS $$ numeric_sortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_sqrt
DELIMITER //
CREATE FUNCTION "numeric_sqrt"() RETURNS NUMERIC AS $$ numeric_sqrt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_stddev_pop
DELIMITER //
CREATE FUNCTION "numeric_stddev_pop"() RETURNS NUMERIC AS $$ numeric_stddev_pop $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_stddev_samp
DELIMITER //
CREATE FUNCTION "numeric_stddev_samp"() RETURNS NUMERIC AS $$ numeric_stddev_samp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_sub
DELIMITER //
CREATE FUNCTION "numeric_sub"() RETURNS NUMERIC AS $$ numeric_sub $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_sum
DELIMITER //
CREATE FUNCTION "numeric_sum"() RETURNS NUMERIC AS $$ numeric_sum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_support
DELIMITER //
CREATE FUNCTION "numeric_support"() RETURNS UNKNOWN AS $$ numeric_support $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_uminus
DELIMITER //
CREATE FUNCTION "numeric_uminus"() RETURNS NUMERIC AS $$ numeric_uminus $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_uplus
DELIMITER //
CREATE FUNCTION "numeric_uplus"() RETURNS NUMERIC AS $$ numeric_uplus $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_var_pop
DELIMITER //
CREATE FUNCTION "numeric_var_pop"() RETURNS NUMERIC AS $$ numeric_var_pop $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numeric_var_samp
DELIMITER //
CREATE FUNCTION "numeric_var_samp"() RETURNS NUMERIC AS $$ numeric_var_samp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nummultirange
DELIMITER //
CREATE FUNCTION "nummultirange"() RETURNS UNKNOWN AS $$ multirange_constructor0 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nummultirange
DELIMITER //
CREATE FUNCTION "nummultirange"() RETURNS UNKNOWN AS $$ multirange_constructor1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.nummultirange
DELIMITER //
CREATE FUNCTION "nummultirange"() RETURNS UNKNOWN AS $$ multirange_constructor2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numnode
DELIMITER //
CREATE FUNCTION "numnode"() RETURNS INTEGER AS $$ tsquery_numnode $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numrange
DELIMITER //
CREATE FUNCTION "numrange"() RETURNS UNKNOWN AS $$ range_constructor3 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numrange
DELIMITER //
CREATE FUNCTION "numrange"() RETURNS UNKNOWN AS $$ range_constructor2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.numrange_subdiff
DELIMITER //
CREATE FUNCTION "numrange_subdiff"() RETURNS DOUBLE PRECISION AS $$ numrange_subdiff $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.num_nonnulls
DELIMITER //
CREATE FUNCTION "num_nonnulls"() RETURNS INTEGER AS $$ pg_num_nonnulls $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.num_nulls
DELIMITER //
CREATE FUNCTION "num_nulls"() RETURNS INTEGER AS $$ pg_num_nulls $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.obj_description
DELIMITER //
CREATE FUNCTION "obj_description"() RETURNS TEXT AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.obj_description
DELIMITER //
CREATE FUNCTION "obj_description"() RETURNS TEXT AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.octet_length
DELIMITER //
CREATE FUNCTION "octet_length"() RETURNS INTEGER AS $$ byteaoctetlen $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.octet_length
DELIMITER //
CREATE FUNCTION "octet_length"() RETURNS INTEGER AS $$ bpcharoctetlen $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.octet_length
DELIMITER //
CREATE FUNCTION "octet_length"() RETURNS INTEGER AS $$ textoctetlen $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.octet_length
DELIMITER //
CREATE FUNCTION "octet_length"() RETURNS INTEGER AS $$ bitoctetlength $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oid
DELIMITER //
CREATE FUNCTION "oid"() RETURNS INTEGER AS $$ i8tooid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oideq
DELIMITER //
CREATE FUNCTION "oideq"() RETURNS BOOLEAN AS $$ oideq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidge
DELIMITER //
CREATE FUNCTION "oidge"() RETURNS BOOLEAN AS $$ oidge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidgt
DELIMITER //
CREATE FUNCTION "oidgt"() RETURNS BOOLEAN AS $$ oidgt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidin
DELIMITER //
CREATE FUNCTION "oidin"() RETURNS INTEGER AS $$ oidin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidlarger
DELIMITER //
CREATE FUNCTION "oidlarger"() RETURNS INTEGER AS $$ oidlarger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidle
DELIMITER //
CREATE FUNCTION "oidle"() RETURNS BOOLEAN AS $$ oidle $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidlt
DELIMITER //
CREATE FUNCTION "oidlt"() RETURNS BOOLEAN AS $$ oidlt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidne
DELIMITER //
CREATE FUNCTION "oidne"() RETURNS BOOLEAN AS $$ oidne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidout
DELIMITER //
CREATE FUNCTION "oidout"() RETURNS UNKNOWN AS $$ oidout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidrecv
DELIMITER //
CREATE FUNCTION "oidrecv"() RETURNS INTEGER AS $$ oidrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidsend
DELIMITER //
CREATE FUNCTION "oidsend"() RETURNS BYTEA AS $$ oidsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidsmaller
DELIMITER //
CREATE FUNCTION "oidsmaller"() RETURNS INTEGER AS $$ oidsmaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidvectoreq
DELIMITER //
CREATE FUNCTION "oidvectoreq"() RETURNS BOOLEAN AS $$ oidvectoreq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidvectorge
DELIMITER //
CREATE FUNCTION "oidvectorge"() RETURNS BOOLEAN AS $$ oidvectorge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidvectorgt
DELIMITER //
CREATE FUNCTION "oidvectorgt"() RETURNS BOOLEAN AS $$ oidvectorgt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidvectorin
DELIMITER //
CREATE FUNCTION "oidvectorin"() RETURNS TEXT AS $$ oidvectorin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidvectorle
DELIMITER //
CREATE FUNCTION "oidvectorle"() RETURNS BOOLEAN AS $$ oidvectorle $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidvectorlt
DELIMITER //
CREATE FUNCTION "oidvectorlt"() RETURNS BOOLEAN AS $$ oidvectorlt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidvectorne
DELIMITER //
CREATE FUNCTION "oidvectorne"() RETURNS BOOLEAN AS $$ oidvectorne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidvectorout
DELIMITER //
CREATE FUNCTION "oidvectorout"() RETURNS UNKNOWN AS $$ oidvectorout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidvectorrecv
DELIMITER //
CREATE FUNCTION "oidvectorrecv"() RETURNS TEXT AS $$ oidvectorrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidvectorsend
DELIMITER //
CREATE FUNCTION "oidvectorsend"() RETURNS BYTEA AS $$ oidvectorsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.oidvectortypes
DELIMITER //
CREATE FUNCTION "oidvectortypes"() RETURNS TEXT AS $$ oidvectortypes $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.on_pb
DELIMITER //
CREATE FUNCTION "on_pb"() RETURNS BOOLEAN AS $$ on_pb $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.on_pl
DELIMITER //
CREATE FUNCTION "on_pl"() RETURNS BOOLEAN AS $$ on_pl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.on_ppath
DELIMITER //
CREATE FUNCTION "on_ppath"() RETURNS BOOLEAN AS $$ on_ppath $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.on_ps
DELIMITER //
CREATE FUNCTION "on_ps"() RETURNS BOOLEAN AS $$ on_ps $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.on_sb
DELIMITER //
CREATE FUNCTION "on_sb"() RETURNS BOOLEAN AS $$ on_sb $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.on_sl
DELIMITER //
CREATE FUNCTION "on_sl"() RETURNS BOOLEAN AS $$ on_sl $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ordered_set_transition
DELIMITER //
CREATE FUNCTION "ordered_set_transition"() RETURNS UNKNOWN AS $$ ordered_set_transition $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ordered_set_transition_multi
DELIMITER //
CREATE FUNCTION "ordered_set_transition_multi"() RETURNS UNKNOWN AS $$ ordered_set_transition_multi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlaps
DELIMITER //
CREATE FUNCTION "overlaps"() RETURNS BOOLEAN AS $$ overlaps_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlaps
DELIMITER //
CREATE FUNCTION "overlaps"() RETURNS BOOLEAN AS $$ overlaps_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlaps
DELIMITER //
CREATE FUNCTION "overlaps"() RETURNS BOOLEAN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlaps
DELIMITER //
CREATE FUNCTION "overlaps"() RETURNS BOOLEAN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlaps
DELIMITER //
CREATE FUNCTION "overlaps"() RETURNS BOOLEAN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlaps
DELIMITER //
CREATE FUNCTION "overlaps"() RETURNS BOOLEAN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlaps
DELIMITER //
CREATE FUNCTION "overlaps"() RETURNS BOOLEAN AS $$ overlaps_timetz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlaps
DELIMITER //
CREATE FUNCTION "overlaps"() RETURNS BOOLEAN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlaps
DELIMITER //
CREATE FUNCTION "overlaps"() RETURNS BOOLEAN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlaps
DELIMITER //
CREATE FUNCTION "overlaps"() RETURNS BOOLEAN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlaps
DELIMITER //
CREATE FUNCTION "overlaps"() RETURNS BOOLEAN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlaps
DELIMITER //
CREATE FUNCTION "overlaps"() RETURNS BOOLEAN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlaps
DELIMITER //
CREATE FUNCTION "overlaps"() RETURNS BOOLEAN AS $$ overlaps_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlay
DELIMITER //
CREATE FUNCTION "overlay"() RETURNS TEXT AS $$ textoverlay $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlay
DELIMITER //
CREATE FUNCTION "overlay"() RETURNS BIT AS $$ bitoverlay $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlay
DELIMITER //
CREATE FUNCTION "overlay"() RETURNS BIT AS $$ bitoverlay_no_len $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlay
DELIMITER //
CREATE FUNCTION "overlay"() RETURNS BYTEA AS $$ byteaoverlay $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlay
DELIMITER //
CREATE FUNCTION "overlay"() RETURNS BYTEA AS $$ byteaoverlay_no_len $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.overlay
DELIMITER //
CREATE FUNCTION "overlay"() RETURNS TEXT AS $$ textoverlay_no_len $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.parse_ident
DELIMITER //
CREATE FUNCTION "parse_ident"(str TEXT, strict BOOLEAN) RETURNS UNKNOWN AS $$ parse_ident $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path
DELIMITER //
CREATE FUNCTION "path"() RETURNS PATH AS $$ poly_path $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_add
DELIMITER //
CREATE FUNCTION "path_add"() RETURNS PATH AS $$ path_add $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_add_pt
DELIMITER //
CREATE FUNCTION "path_add_pt"() RETURNS PATH AS $$ path_add_pt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_center
DELIMITER //
CREATE FUNCTION "path_center"() RETURNS POINT AS $$ path_center $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_contain_pt
DELIMITER //
CREATE FUNCTION "path_contain_pt"() RETURNS BOOLEAN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_distance
DELIMITER //
CREATE FUNCTION "path_distance"() RETURNS DOUBLE PRECISION AS $$ path_distance $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_div_pt
DELIMITER //
CREATE FUNCTION "path_div_pt"() RETURNS PATH AS $$ path_div_pt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_in
DELIMITER //
CREATE FUNCTION "path_in"() RETURNS PATH AS $$ path_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_inter
DELIMITER //
CREATE FUNCTION "path_inter"() RETURNS BOOLEAN AS $$ path_inter $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_length
DELIMITER //
CREATE FUNCTION "path_length"() RETURNS DOUBLE PRECISION AS $$ path_length $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_mul_pt
DELIMITER //
CREATE FUNCTION "path_mul_pt"() RETURNS PATH AS $$ path_mul_pt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_npoints
DELIMITER //
CREATE FUNCTION "path_npoints"() RETURNS INTEGER AS $$ path_npoints $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_n_eq
DELIMITER //
CREATE FUNCTION "path_n_eq"() RETURNS BOOLEAN AS $$ path_n_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_n_ge
DELIMITER //
CREATE FUNCTION "path_n_ge"() RETURNS BOOLEAN AS $$ path_n_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_n_gt
DELIMITER //
CREATE FUNCTION "path_n_gt"() RETURNS BOOLEAN AS $$ path_n_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_n_le
DELIMITER //
CREATE FUNCTION "path_n_le"() RETURNS BOOLEAN AS $$ path_n_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_n_lt
DELIMITER //
CREATE FUNCTION "path_n_lt"() RETURNS BOOLEAN AS $$ path_n_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_out
DELIMITER //
CREATE FUNCTION "path_out"() RETURNS UNKNOWN AS $$ path_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_recv
DELIMITER //
CREATE FUNCTION "path_recv"() RETURNS PATH AS $$ path_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_send
DELIMITER //
CREATE FUNCTION "path_send"() RETURNS BYTEA AS $$ path_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.path_sub_pt
DELIMITER //
CREATE FUNCTION "path_sub_pt"() RETURNS PATH AS $$ path_sub_pt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pclose
DELIMITER //
CREATE FUNCTION "pclose"() RETURNS PATH AS $$ path_close $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.percentile_cont
DELIMITER //
CREATE FUNCTION "percentile_cont"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.percentile_cont
DELIMITER //
CREATE FUNCTION "percentile_cont"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.percentile_cont
DELIMITER //
CREATE FUNCTION "percentile_cont"() RETURNS INTERVAL AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.percentile_cont
DELIMITER //
CREATE FUNCTION "percentile_cont"() RETURNS TEXT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.percentile_cont_float8_final
DELIMITER //
CREATE FUNCTION "percentile_cont_float8_final"() RETURNS DOUBLE PRECISION AS $$ percentile_cont_float8_final $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.percentile_cont_float8_multi_final
DELIMITER //
CREATE FUNCTION "percentile_cont_float8_multi_final"() RETURNS UNKNOWN AS $$ percentile_cont_float8_multi_final $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.percentile_cont_interval_final
DELIMITER //
CREATE FUNCTION "percentile_cont_interval_final"() RETURNS INTERVAL AS $$ percentile_cont_interval_final $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.percentile_cont_interval_multi_final
DELIMITER //
CREATE FUNCTION "percentile_cont_interval_multi_final"() RETURNS TEXT AS $$ percentile_cont_interval_multi_final $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.percentile_disc
DELIMITER //
CREATE FUNCTION "percentile_disc"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.percentile_disc
DELIMITER //
CREATE FUNCTION "percentile_disc"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.percentile_disc_final
DELIMITER //
CREATE FUNCTION "percentile_disc_final"() RETURNS UNKNOWN AS $$ percentile_disc_final $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.percentile_disc_multi_final
DELIMITER //
CREATE FUNCTION "percentile_disc_multi_final"() RETURNS UNKNOWN AS $$ percentile_disc_multi_final $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.percent_rank
DELIMITER //
CREATE FUNCTION "percent_rank"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.percent_rank
DELIMITER //
CREATE FUNCTION "percent_rank"() RETURNS DOUBLE PRECISION AS $$ window_percent_rank $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.percent_rank_final
DELIMITER //
CREATE FUNCTION "percent_rank_final"() RETURNS DOUBLE PRECISION AS $$ hypothetical_percent_rank_final $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_advisory_lock
DELIMITER //
CREATE FUNCTION "pg_advisory_lock"() RETURNS UNKNOWN AS $$ pg_advisory_lock_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_advisory_lock
DELIMITER //
CREATE FUNCTION "pg_advisory_lock"() RETURNS UNKNOWN AS $$ pg_advisory_lock_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_advisory_lock_shared
DELIMITER //
CREATE FUNCTION "pg_advisory_lock_shared"() RETURNS UNKNOWN AS $$ pg_advisory_lock_shared_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_advisory_lock_shared
DELIMITER //
CREATE FUNCTION "pg_advisory_lock_shared"() RETURNS UNKNOWN AS $$ pg_advisory_lock_shared_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_advisory_unlock
DELIMITER //
CREATE FUNCTION "pg_advisory_unlock"() RETURNS BOOLEAN AS $$ pg_advisory_unlock_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_advisory_unlock
DELIMITER //
CREATE FUNCTION "pg_advisory_unlock"() RETURNS BOOLEAN AS $$ pg_advisory_unlock_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_advisory_unlock_all
DELIMITER //
CREATE FUNCTION "pg_advisory_unlock_all"() RETURNS UNKNOWN AS $$ pg_advisory_unlock_all $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_advisory_unlock_shared
DELIMITER //
CREATE FUNCTION "pg_advisory_unlock_shared"() RETURNS BOOLEAN AS $$ pg_advisory_unlock_shared_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_advisory_unlock_shared
DELIMITER //
CREATE FUNCTION "pg_advisory_unlock_shared"() RETURNS BOOLEAN AS $$ pg_advisory_unlock_shared_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_advisory_xact_lock
DELIMITER //
CREATE FUNCTION "pg_advisory_xact_lock"() RETURNS UNKNOWN AS $$ pg_advisory_xact_lock_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_advisory_xact_lock
DELIMITER //
CREATE FUNCTION "pg_advisory_xact_lock"() RETURNS UNKNOWN AS $$ pg_advisory_xact_lock_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_advisory_xact_lock_shared
DELIMITER //
CREATE FUNCTION "pg_advisory_xact_lock_shared"() RETURNS UNKNOWN AS $$ pg_advisory_xact_lock_shared_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_advisory_xact_lock_shared
DELIMITER //
CREATE FUNCTION "pg_advisory_xact_lock_shared"() RETURNS UNKNOWN AS $$ pg_advisory_xact_lock_shared_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_available_extensions
DELIMITER //
CREATE FUNCTION "pg_available_extensions"(name , default_version , comment ) RETURNS UNKNOWN AS $$ pg_available_extensions $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_available_extension_versions
DELIMITER //
CREATE FUNCTION "pg_available_extension_versions"(name , version , superuser , trusted , relocatable , schema , requires , comment ) RETURNS UNKNOWN AS $$ pg_available_extension_versions $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_backend_pid
DELIMITER //
CREATE FUNCTION "pg_backend_pid"() RETURNS INTEGER AS $$ pg_backend_pid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_backup_start_time
DELIMITER //
CREATE FUNCTION "pg_backup_start_time"() RETURNS TIMESTAMPTZ AS $$ pg_backup_start_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_blocking_pids
DELIMITER //
CREATE FUNCTION "pg_blocking_pids"() RETURNS UNKNOWN AS $$ pg_blocking_pids $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_cancel_backend
DELIMITER //
CREATE FUNCTION "pg_cancel_backend"() RETURNS BOOLEAN AS $$ pg_cancel_backend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_char_to_encoding
DELIMITER //
CREATE FUNCTION "pg_char_to_encoding"() RETURNS INTEGER AS $$ PG_char_to_encoding $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_client_encoding
DELIMITER //
CREATE FUNCTION "pg_client_encoding"() RETURNS VARCHAR AS $$ pg_client_encoding $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_collation_actual_version
DELIMITER //
CREATE FUNCTION "pg_collation_actual_version"() RETURNS TEXT AS $$ pg_collation_actual_version $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_collation_for
DELIMITER //
CREATE FUNCTION "pg_collation_for"() RETURNS TEXT AS $$ pg_collation_for $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_collation_is_visible
DELIMITER //
CREATE FUNCTION "pg_collation_is_visible"() RETURNS BOOLEAN AS $$ pg_collation_is_visible $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_column_compression
DELIMITER //
CREATE FUNCTION "pg_column_compression"() RETURNS TEXT AS $$ pg_column_compression $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_column_is_updatable
DELIMITER //
CREATE FUNCTION "pg_column_is_updatable"() RETURNS BOOLEAN AS $$ pg_column_is_updatable $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_column_size
DELIMITER //
CREATE FUNCTION "pg_column_size"() RETURNS INTEGER AS $$ pg_column_size $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_config
DELIMITER //
CREATE FUNCTION "pg_config"(name , setting ) RETURNS UNKNOWN AS $$ pg_config $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_conf_load_time
DELIMITER //
CREATE FUNCTION "pg_conf_load_time"() RETURNS TIMESTAMPTZ AS $$ pg_conf_load_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_control_checkpoint
DELIMITER //
CREATE FUNCTION "pg_control_checkpoint"(checkpoint_lsn , redo_lsn , redo_wal_file , timeline_id , prev_timeline_id , full_page_writes , next_xid , next_oid , next_multixact_id , next_multi_offset , oldest_xid , oldest_xid_dbid , oldest_active_xid , oldest_multi_xid , oldest_multi_dbid , oldest_commit_ts_xid , newest_commit_ts_xid , checkpoint_time ) RETURNS UNKNOWN AS $$ pg_control_checkpoint $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_control_init
DELIMITER //
CREATE FUNCTION "pg_control_init"(max_data_alignment , database_block_size , blocks_per_segment , wal_block_size , bytes_per_wal_segment , max_identifier_length , max_index_columns , max_toast_chunk_size , large_object_chunk_size , float8_pass_by_value , data_page_checksum_version ) RETURNS UNKNOWN AS $$ pg_control_init $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_control_recovery
DELIMITER //
CREATE FUNCTION "pg_control_recovery"(min_recovery_end_lsn , min_recovery_end_timeline , backup_start_lsn , backup_end_lsn , end_of_backup_record_required ) RETURNS UNKNOWN AS $$ pg_control_recovery $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_control_system
DELIMITER //
CREATE FUNCTION "pg_control_system"(pg_control_version , catalog_version_no , system_identifier , pg_control_last_modified ) RETURNS UNKNOWN AS $$ pg_control_system $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_conversion_is_visible
DELIMITER //
CREATE FUNCTION "pg_conversion_is_visible"() RETURNS BOOLEAN AS $$ pg_conversion_is_visible $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_copy_logical_replication_slot
DELIMITER //
CREATE FUNCTION "pg_copy_logical_replication_slot"(src_slot_name VARCHAR, dst_slot_name VARCHAR, temporary BOOLEAN, plugin VARCHAR, slot_name , lsn ) RETURNS UNKNOWN AS $$ pg_copy_logical_replication_slot_a $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_copy_logical_replication_slot
DELIMITER //
CREATE FUNCTION "pg_copy_logical_replication_slot"(src_slot_name VARCHAR, dst_slot_name VARCHAR, slot_name , lsn ) RETURNS UNKNOWN AS $$ pg_copy_logical_replication_slot_c $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_copy_logical_replication_slot
DELIMITER //
CREATE FUNCTION "pg_copy_logical_replication_slot"(src_slot_name VARCHAR, dst_slot_name VARCHAR, temporary BOOLEAN, slot_name , lsn ) RETURNS UNKNOWN AS $$ pg_copy_logical_replication_slot_b $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_copy_physical_replication_slot
DELIMITER //
CREATE FUNCTION "pg_copy_physical_replication_slot"(src_slot_name VARCHAR, dst_slot_name VARCHAR, temporary BOOLEAN, slot_name , lsn ) RETURNS UNKNOWN AS $$ pg_copy_physical_replication_slot_a $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_copy_physical_replication_slot
DELIMITER //
CREATE FUNCTION "pg_copy_physical_replication_slot"(src_slot_name VARCHAR, dst_slot_name VARCHAR, slot_name , lsn ) RETURNS UNKNOWN AS $$ pg_copy_physical_replication_slot_b $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_create_logical_replication_slot
DELIMITER //
CREATE FUNCTION "pg_create_logical_replication_slot"(slot_name VARCHAR, plugin VARCHAR, temporary BOOLEAN, twophase BOOLEAN, slot_name , lsn ) RETURNS UNKNOWN AS $$ pg_create_logical_replication_slot $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_create_physical_replication_slot
DELIMITER //
CREATE FUNCTION "pg_create_physical_replication_slot"(slot_name VARCHAR, immediately_reserve BOOLEAN, temporary BOOLEAN, slot_name , lsn ) RETURNS UNKNOWN AS $$ pg_create_physical_replication_slot $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_create_restore_point
DELIMITER //
CREATE FUNCTION "pg_create_restore_point"() RETURNS UNKNOWN AS $$ pg_create_restore_point $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_current_logfile
DELIMITER //
CREATE FUNCTION "pg_current_logfile"() RETURNS TEXT AS $$ pg_current_logfile $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_current_logfile
DELIMITER //
CREATE FUNCTION "pg_current_logfile"() RETURNS TEXT AS $$ pg_current_logfile_1arg $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_current_snapshot
DELIMITER //
CREATE FUNCTION "pg_current_snapshot"() RETURNS UNKNOWN AS $$ pg_current_snapshot $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_current_wal_flush_lsn
DELIMITER //
CREATE FUNCTION "pg_current_wal_flush_lsn"() RETURNS UNKNOWN AS $$ pg_current_wal_flush_lsn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_current_wal_insert_lsn
DELIMITER //
CREATE FUNCTION "pg_current_wal_insert_lsn"() RETURNS UNKNOWN AS $$ pg_current_wal_insert_lsn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_current_wal_lsn
DELIMITER //
CREATE FUNCTION "pg_current_wal_lsn"() RETURNS UNKNOWN AS $$ pg_current_wal_lsn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_current_xact_id
DELIMITER //
CREATE FUNCTION "pg_current_xact_id"() RETURNS UNKNOWN AS $$ pg_current_xact_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_current_xact_id_if_assigned
DELIMITER //
CREATE FUNCTION "pg_current_xact_id_if_assigned"() RETURNS UNKNOWN AS $$ pg_current_xact_id_if_assigned $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_cursor
DELIMITER //
CREATE FUNCTION "pg_cursor"(name , statement , is_holdable , is_binary , is_scrollable , creation_time ) RETURNS UNKNOWN AS $$ pg_cursor $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_database_size
DELIMITER //
CREATE FUNCTION "pg_database_size"() RETURNS BIGINT AS $$ pg_database_size_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_database_size
DELIMITER //
CREATE FUNCTION "pg_database_size"() RETURNS BIGINT AS $$ pg_database_size_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ddl_command_in
DELIMITER //
CREATE FUNCTION "pg_ddl_command_in"() RETURNS UNKNOWN AS $$ pg_ddl_command_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ddl_command_out
DELIMITER //
CREATE FUNCTION "pg_ddl_command_out"() RETURNS UNKNOWN AS $$ pg_ddl_command_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ddl_command_recv
DELIMITER //
CREATE FUNCTION "pg_ddl_command_recv"() RETURNS UNKNOWN AS $$ pg_ddl_command_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ddl_command_send
DELIMITER //
CREATE FUNCTION "pg_ddl_command_send"() RETURNS BYTEA AS $$ pg_ddl_command_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_dependencies_in
DELIMITER //
CREATE FUNCTION "pg_dependencies_in"() RETURNS UNKNOWN AS $$ pg_dependencies_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_dependencies_out
DELIMITER //
CREATE FUNCTION "pg_dependencies_out"() RETURNS UNKNOWN AS $$ pg_dependencies_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_dependencies_recv
DELIMITER //
CREATE FUNCTION "pg_dependencies_recv"() RETURNS UNKNOWN AS $$ pg_dependencies_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_dependencies_send
DELIMITER //
CREATE FUNCTION "pg_dependencies_send"() RETURNS BYTEA AS $$ pg_dependencies_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_describe_object
DELIMITER //
CREATE FUNCTION "pg_describe_object"() RETURNS TEXT AS $$ pg_describe_object $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_drop_replication_slot
DELIMITER //
CREATE FUNCTION "pg_drop_replication_slot"() RETURNS UNKNOWN AS $$ pg_drop_replication_slot $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_encoding_max_length
DELIMITER //
CREATE FUNCTION "pg_encoding_max_length"() RETURNS INTEGER AS $$ pg_encoding_max_length_sql $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_encoding_to_char
DELIMITER //
CREATE FUNCTION "pg_encoding_to_char"() RETURNS VARCHAR AS $$ PG_encoding_to_char $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_event_trigger_ddl_commands
DELIMITER //
CREATE FUNCTION "pg_event_trigger_ddl_commands"(classid , objid , objsubid , command_tag , object_type , schema_name , object_identity , in_extension , command ) RETURNS UNKNOWN AS $$ pg_event_trigger_ddl_commands $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_event_trigger_dropped_objects
DELIMITER //
CREATE FUNCTION "pg_event_trigger_dropped_objects"(classid , objid , objsubid , original , normal , is_temporary , object_type , schema_name , object_name , object_identity , address_names , address_args ) RETURNS UNKNOWN AS $$ pg_event_trigger_dropped_objects $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_event_trigger_table_rewrite_oid
DELIMITER //
CREATE FUNCTION "pg_event_trigger_table_rewrite_oid"(oid ) RETURNS INTEGER AS $$ pg_event_trigger_table_rewrite_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_event_trigger_table_rewrite_reason
DELIMITER //
CREATE FUNCTION "pg_event_trigger_table_rewrite_reason"() RETURNS INTEGER AS $$ pg_event_trigger_table_rewrite_reason $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_export_snapshot
DELIMITER //
CREATE FUNCTION "pg_export_snapshot"() RETURNS TEXT AS $$ pg_export_snapshot $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_extension_config_dump
DELIMITER //
CREATE FUNCTION "pg_extension_config_dump"() RETURNS UNKNOWN AS $$ pg_extension_config_dump $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_extension_update_paths
DELIMITER //
CREATE FUNCTION "pg_extension_update_paths"(name VARCHAR, source , target , path ) RETURNS UNKNOWN AS $$ pg_extension_update_paths $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_filenode_relation
DELIMITER //
CREATE FUNCTION "pg_filenode_relation"() RETURNS REGCLASS AS $$ pg_filenode_relation $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_function_is_visible
DELIMITER //
CREATE FUNCTION "pg_function_is_visible"() RETURNS BOOLEAN AS $$ pg_function_is_visible $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_backend_memory_contexts
DELIMITER //
CREATE FUNCTION "pg_get_backend_memory_contexts"(name , ident , parent , level , total_bytes , total_nblocks , free_bytes , free_chunks , used_bytes ) RETURNS UNKNOWN AS $$ pg_get_backend_memory_contexts $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_catalog_foreign_keys
DELIMITER //
CREATE FUNCTION "pg_get_catalog_foreign_keys"(fktable , fkcols , pktable , pkcols , is_array , is_opt ) RETURNS UNKNOWN AS $$ pg_get_catalog_foreign_keys $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_constraintdef
DELIMITER //
CREATE FUNCTION "pg_get_constraintdef"() RETURNS TEXT AS $$ pg_get_constraintdef $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_constraintdef
DELIMITER //
CREATE FUNCTION "pg_get_constraintdef"() RETURNS TEXT AS $$ pg_get_constraintdef_ext $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_expr
DELIMITER //
CREATE FUNCTION "pg_get_expr"() RETURNS TEXT AS $$ pg_get_expr_ext $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_expr
DELIMITER //
CREATE FUNCTION "pg_get_expr"() RETURNS TEXT AS $$ pg_get_expr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_functiondef
DELIMITER //
CREATE FUNCTION "pg_get_functiondef"() RETURNS TEXT AS $$ pg_get_functiondef $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_function_arguments
DELIMITER //
CREATE FUNCTION "pg_get_function_arguments"() RETURNS TEXT AS $$ pg_get_function_arguments $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_function_arg_default
DELIMITER //
CREATE FUNCTION "pg_get_function_arg_default"() RETURNS TEXT AS $$ pg_get_function_arg_default $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_function_identity_arguments
DELIMITER //
CREATE FUNCTION "pg_get_function_identity_arguments"() RETURNS TEXT AS $$ pg_get_function_identity_arguments $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_function_result
DELIMITER //
CREATE FUNCTION "pg_get_function_result"() RETURNS TEXT AS $$ pg_get_function_result $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_function_sqlbody
DELIMITER //
CREATE FUNCTION "pg_get_function_sqlbody"() RETURNS TEXT AS $$ pg_get_function_sqlbody $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_indexdef
DELIMITER //
CREATE FUNCTION "pg_get_indexdef"() RETURNS TEXT AS $$ pg_get_indexdef_ext $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_indexdef
DELIMITER //
CREATE FUNCTION "pg_get_indexdef"() RETURNS TEXT AS $$ pg_get_indexdef $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_keywords
DELIMITER //
CREATE FUNCTION "pg_get_keywords"(word , catcode , barelabel , catdesc , baredesc ) RETURNS UNKNOWN AS $$ pg_get_keywords $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_multixact_members
DELIMITER //
CREATE FUNCTION "pg_get_multixact_members"(multixid INTEGER, xid , mode ) RETURNS UNKNOWN AS $$ pg_get_multixact_members $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_object_address
DELIMITER //
CREATE FUNCTION "pg_get_object_address"(type TEXT, object_names UNKNOWN, object_args UNKNOWN, classid , objid , objsubid ) RETURNS UNKNOWN AS $$ pg_get_object_address $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_partition_constraintdef
DELIMITER //
CREATE FUNCTION "pg_get_partition_constraintdef"() RETURNS TEXT AS $$ pg_get_partition_constraintdef $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_partkeydef
DELIMITER //
CREATE FUNCTION "pg_get_partkeydef"() RETURNS TEXT AS $$ pg_get_partkeydef $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_publication_tables
DELIMITER //
CREATE FUNCTION "pg_get_publication_tables"(pubname TEXT, relid ) RETURNS INTEGER AS $$ pg_get_publication_tables $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_replication_slots
DELIMITER //
CREATE FUNCTION "pg_get_replication_slots"(slot_name , plugin , slot_type , datoid , temporary , active , active_pid , xmin , catalog_xmin , restart_lsn , confirmed_flush_lsn , wal_status , safe_wal_size , two_phase ) RETURNS UNKNOWN AS $$ pg_get_replication_slots $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_replica_identity_index
DELIMITER //
CREATE FUNCTION "pg_get_replica_identity_index"() RETURNS REGCLASS AS $$ pg_get_replica_identity_index $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_ruledef
DELIMITER //
CREATE FUNCTION "pg_get_ruledef"() RETURNS TEXT AS $$ pg_get_ruledef_ext $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_ruledef
DELIMITER //
CREATE FUNCTION "pg_get_ruledef"() RETURNS TEXT AS $$ pg_get_ruledef $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_serial_sequence
DELIMITER //
CREATE FUNCTION "pg_get_serial_sequence"() RETURNS TEXT AS $$ pg_get_serial_sequence $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_shmem_allocations
DELIMITER //
CREATE FUNCTION "pg_get_shmem_allocations"(name , off , size , allocated_size ) RETURNS UNKNOWN AS $$ pg_get_shmem_allocations $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_statisticsobjdef
DELIMITER //
CREATE FUNCTION "pg_get_statisticsobjdef"() RETURNS TEXT AS $$ pg_get_statisticsobjdef $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_statisticsobjdef_columns
DELIMITER //
CREATE FUNCTION "pg_get_statisticsobjdef_columns"() RETURNS TEXT AS $$ pg_get_statisticsobjdef_columns $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_statisticsobjdef_expressions
DELIMITER //
CREATE FUNCTION "pg_get_statisticsobjdef_expressions"() RETURNS UNKNOWN AS $$ pg_get_statisticsobjdef_expressions $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_triggerdef
DELIMITER //
CREATE FUNCTION "pg_get_triggerdef"() RETURNS TEXT AS $$ pg_get_triggerdef_ext $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_triggerdef
DELIMITER //
CREATE FUNCTION "pg_get_triggerdef"() RETURNS TEXT AS $$ pg_get_triggerdef $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_userbyid
DELIMITER //
CREATE FUNCTION "pg_get_userbyid"() RETURNS VARCHAR AS $$ pg_get_userbyid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_viewdef
DELIMITER //
CREATE FUNCTION "pg_get_viewdef"() RETURNS TEXT AS $$ pg_get_viewdef_name_ext $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_viewdef
DELIMITER //
CREATE FUNCTION "pg_get_viewdef"() RETURNS TEXT AS $$ pg_get_viewdef_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_viewdef
DELIMITER //
CREATE FUNCTION "pg_get_viewdef"() RETURNS TEXT AS $$ pg_get_viewdef $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_viewdef
DELIMITER //
CREATE FUNCTION "pg_get_viewdef"() RETURNS TEXT AS $$ pg_get_viewdef_wrap $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_viewdef
DELIMITER //
CREATE FUNCTION "pg_get_viewdef"() RETURNS TEXT AS $$ pg_get_viewdef_ext $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_get_wal_replay_pause_state
DELIMITER //
CREATE FUNCTION "pg_get_wal_replay_pause_state"() RETURNS TEXT AS $$ pg_get_wal_replay_pause_state $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_has_role
DELIMITER //
CREATE FUNCTION "pg_has_role"() RETURNS BOOLEAN AS $$ pg_has_role_id_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_has_role
DELIMITER //
CREATE FUNCTION "pg_has_role"() RETURNS BOOLEAN AS $$ pg_has_role_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_has_role
DELIMITER //
CREATE FUNCTION "pg_has_role"() RETURNS BOOLEAN AS $$ pg_has_role_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_has_role
DELIMITER //
CREATE FUNCTION "pg_has_role"() RETURNS BOOLEAN AS $$ pg_has_role_name_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_has_role
DELIMITER //
CREATE FUNCTION "pg_has_role"() RETURNS BOOLEAN AS $$ pg_has_role_name_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_has_role
DELIMITER //
CREATE FUNCTION "pg_has_role"() RETURNS BOOLEAN AS $$ pg_has_role_id_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_hba_file_rules
DELIMITER //
CREATE FUNCTION "pg_hba_file_rules"(line_number , type , database , user_name , address , netmask , auth_method , options , error ) RETURNS UNKNOWN AS $$ pg_hba_file_rules $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_identify_object
DELIMITER //
CREATE FUNCTION "pg_identify_object"(classid INTEGER, objid INTEGER, objsubid INTEGER, type , schema , name , identity ) RETURNS UNKNOWN AS $$ pg_identify_object $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_identify_object_as_address
DELIMITER //
CREATE FUNCTION "pg_identify_object_as_address"(classid INTEGER, objid INTEGER, objsubid INTEGER, type , object_names , object_args ) RETURNS UNKNOWN AS $$ pg_identify_object_as_address $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_import_system_collations
DELIMITER //
CREATE FUNCTION "pg_import_system_collations"() RETURNS INTEGER AS $$ pg_import_system_collations $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_indexam_has_property
DELIMITER //
CREATE FUNCTION "pg_indexam_has_property"() RETURNS BOOLEAN AS $$ pg_indexam_has_property $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_indexam_progress_phasename
DELIMITER //
CREATE FUNCTION "pg_indexam_progress_phasename"() RETURNS TEXT AS $$ pg_indexam_progress_phasename $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_indexes_size
DELIMITER //
CREATE FUNCTION "pg_indexes_size"() RETURNS BIGINT AS $$ pg_indexes_size $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_index_column_has_property
DELIMITER //
CREATE FUNCTION "pg_index_column_has_property"() RETURNS BOOLEAN AS $$ pg_index_column_has_property $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_index_has_property
DELIMITER //
CREATE FUNCTION "pg_index_has_property"() RETURNS BOOLEAN AS $$ pg_index_has_property $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_isolation_test_session_is_blocked
DELIMITER //
CREATE FUNCTION "pg_isolation_test_session_is_blocked"() RETURNS BOOLEAN AS $$ pg_isolation_test_session_is_blocked $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_is_in_backup
DELIMITER //
CREATE FUNCTION "pg_is_in_backup"() RETURNS BOOLEAN AS $$ pg_is_in_backup $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_is_in_recovery
DELIMITER //
CREATE FUNCTION "pg_is_in_recovery"() RETURNS BOOLEAN AS $$ pg_is_in_recovery $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_is_other_temp_schema
DELIMITER //
CREATE FUNCTION "pg_is_other_temp_schema"() RETURNS BOOLEAN AS $$ pg_is_other_temp_schema $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_is_wal_replay_paused
DELIMITER //
CREATE FUNCTION "pg_is_wal_replay_paused"() RETURNS BOOLEAN AS $$ pg_is_wal_replay_paused $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_jit_available
DELIMITER //
CREATE FUNCTION "pg_jit_available"() RETURNS BOOLEAN AS $$ pg_jit_available $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_last_committed_xact
DELIMITER //
CREATE FUNCTION "pg_last_committed_xact"(xid , timestamp , roident ) RETURNS UNKNOWN AS $$ pg_last_committed_xact $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_last_wal_receive_lsn
DELIMITER //
CREATE FUNCTION "pg_last_wal_receive_lsn"() RETURNS UNKNOWN AS $$ pg_last_wal_receive_lsn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_last_wal_replay_lsn
DELIMITER //
CREATE FUNCTION "pg_last_wal_replay_lsn"() RETURNS UNKNOWN AS $$ pg_last_wal_replay_lsn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_last_xact_replay_timestamp
DELIMITER //
CREATE FUNCTION "pg_last_xact_replay_timestamp"() RETURNS TIMESTAMPTZ AS $$ pg_last_xact_replay_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_listening_channels
DELIMITER //
CREATE FUNCTION "pg_listening_channels"() RETURNS TEXT AS $$ pg_listening_channels $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lock_status
DELIMITER //
CREATE FUNCTION "pg_lock_status"(locktype , database , relation , page , tuple , virtualxid , transactionid , classid , objid , objsubid , virtualtransaction , pid , mode , granted , fastpath , waitstart ) RETURNS UNKNOWN AS $$ pg_lock_status $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_logical_emit_message
DELIMITER //
CREATE FUNCTION "pg_logical_emit_message"() RETURNS UNKNOWN AS $$ pg_logical_emit_message_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_logical_emit_message
DELIMITER //
CREATE FUNCTION "pg_logical_emit_message"() RETURNS UNKNOWN AS $$ pg_logical_emit_message_bytea $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_logical_slot_get_binary_changes
DELIMITER //
CREATE FUNCTION "pg_logical_slot_get_binary_changes"(slot_name VARCHAR, upto_lsn UNKNOWN, upto_nchanges INTEGER, options UNKNOWN, lsn , xid , data ) RETURNS UNKNOWN AS $$ pg_logical_slot_get_binary_changes $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_logical_slot_get_changes
DELIMITER //
CREATE FUNCTION "pg_logical_slot_get_changes"(slot_name VARCHAR, upto_lsn UNKNOWN, upto_nchanges INTEGER, options UNKNOWN, lsn , xid , data ) RETURNS UNKNOWN AS $$ pg_logical_slot_get_changes $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_logical_slot_peek_binary_changes
DELIMITER //
CREATE FUNCTION "pg_logical_slot_peek_binary_changes"(slot_name VARCHAR, upto_lsn UNKNOWN, upto_nchanges INTEGER, options UNKNOWN, lsn , xid , data ) RETURNS UNKNOWN AS $$ pg_logical_slot_peek_binary_changes $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_logical_slot_peek_changes
DELIMITER //
CREATE FUNCTION "pg_logical_slot_peek_changes"(slot_name VARCHAR, upto_lsn UNKNOWN, upto_nchanges INTEGER, options UNKNOWN, lsn , xid , data ) RETURNS UNKNOWN AS $$ pg_logical_slot_peek_changes $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_log_backend_memory_contexts
DELIMITER //
CREATE FUNCTION "pg_log_backend_memory_contexts"() RETURNS BOOLEAN AS $$ pg_log_backend_memory_contexts $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn
DELIMITER //
CREATE FUNCTION "pg_lsn"() RETURNS UNKNOWN AS $$ numeric_pg_lsn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_cmp
DELIMITER //
CREATE FUNCTION "pg_lsn_cmp"() RETURNS INTEGER AS $$ pg_lsn_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_eq
DELIMITER //
CREATE FUNCTION "pg_lsn_eq"() RETURNS BOOLEAN AS $$ pg_lsn_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_ge
DELIMITER //
CREATE FUNCTION "pg_lsn_ge"() RETURNS BOOLEAN AS $$ pg_lsn_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_gt
DELIMITER //
CREATE FUNCTION "pg_lsn_gt"() RETURNS BOOLEAN AS $$ pg_lsn_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_hash
DELIMITER //
CREATE FUNCTION "pg_lsn_hash"() RETURNS INTEGER AS $$ pg_lsn_hash $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_hash_extended
DELIMITER //
CREATE FUNCTION "pg_lsn_hash_extended"() RETURNS BIGINT AS $$ pg_lsn_hash_extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_in
DELIMITER //
CREATE FUNCTION "pg_lsn_in"() RETURNS UNKNOWN AS $$ pg_lsn_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_larger
DELIMITER //
CREATE FUNCTION "pg_lsn_larger"() RETURNS UNKNOWN AS $$ pg_lsn_larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_le
DELIMITER //
CREATE FUNCTION "pg_lsn_le"() RETURNS BOOLEAN AS $$ pg_lsn_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_lt
DELIMITER //
CREATE FUNCTION "pg_lsn_lt"() RETURNS BOOLEAN AS $$ pg_lsn_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_mi
DELIMITER //
CREATE FUNCTION "pg_lsn_mi"() RETURNS NUMERIC AS $$ pg_lsn_mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_mii
DELIMITER //
CREATE FUNCTION "pg_lsn_mii"() RETURNS UNKNOWN AS $$ pg_lsn_mii $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_ne
DELIMITER //
CREATE FUNCTION "pg_lsn_ne"() RETURNS BOOLEAN AS $$ pg_lsn_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_out
DELIMITER //
CREATE FUNCTION "pg_lsn_out"() RETURNS UNKNOWN AS $$ pg_lsn_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_pli
DELIMITER //
CREATE FUNCTION "pg_lsn_pli"() RETURNS UNKNOWN AS $$ pg_lsn_pli $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_recv
DELIMITER //
CREATE FUNCTION "pg_lsn_recv"() RETURNS UNKNOWN AS $$ pg_lsn_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_send
DELIMITER //
CREATE FUNCTION "pg_lsn_send"() RETURNS BYTEA AS $$ pg_lsn_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_lsn_smaller
DELIMITER //
CREATE FUNCTION "pg_lsn_smaller"() RETURNS UNKNOWN AS $$ pg_lsn_smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ls_archive_statusdir
DELIMITER //
CREATE FUNCTION "pg_ls_archive_statusdir"(name , size , modification ) RETURNS UNKNOWN AS $$ pg_ls_archive_statusdir $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ls_dir
DELIMITER //
CREATE FUNCTION "pg_ls_dir"() RETURNS TEXT AS $$ pg_ls_dir $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ls_dir
DELIMITER //
CREATE FUNCTION "pg_ls_dir"() RETURNS TEXT AS $$ pg_ls_dir_1arg $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ls_logdir
DELIMITER //
CREATE FUNCTION "pg_ls_logdir"(name , size , modification ) RETURNS UNKNOWN AS $$ pg_ls_logdir $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ls_tmpdir
DELIMITER //
CREATE FUNCTION "pg_ls_tmpdir"(tablespace INTEGER, name , size , modification ) RETURNS UNKNOWN AS $$ pg_ls_tmpdir_1arg $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ls_tmpdir
DELIMITER //
CREATE FUNCTION "pg_ls_tmpdir"(name , size , modification ) RETURNS UNKNOWN AS $$ pg_ls_tmpdir_noargs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ls_waldir
DELIMITER //
CREATE FUNCTION "pg_ls_waldir"(name , size , modification ) RETURNS UNKNOWN AS $$ pg_ls_waldir $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_mcv_list_in
DELIMITER //
CREATE FUNCTION "pg_mcv_list_in"() RETURNS UNKNOWN AS $$ pg_mcv_list_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_mcv_list_items
DELIMITER //
CREATE FUNCTION "pg_mcv_list_items"(mcv_list UNKNOWN, index , values , nulls , frequency , base_frequency ) RETURNS UNKNOWN AS $$ pg_stats_ext_mcvlist_items $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_mcv_list_out
DELIMITER //
CREATE FUNCTION "pg_mcv_list_out"() RETURNS UNKNOWN AS $$ pg_mcv_list_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_mcv_list_recv
DELIMITER //
CREATE FUNCTION "pg_mcv_list_recv"() RETURNS UNKNOWN AS $$ pg_mcv_list_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_mcv_list_send
DELIMITER //
CREATE FUNCTION "pg_mcv_list_send"() RETURNS BYTEA AS $$ pg_mcv_list_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_my_temp_schema
DELIMITER //
CREATE FUNCTION "pg_my_temp_schema"() RETURNS INTEGER AS $$ pg_my_temp_schema $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ndistinct_in
DELIMITER //
CREATE FUNCTION "pg_ndistinct_in"() RETURNS UNKNOWN AS $$ pg_ndistinct_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ndistinct_out
DELIMITER //
CREATE FUNCTION "pg_ndistinct_out"() RETURNS UNKNOWN AS $$ pg_ndistinct_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ndistinct_recv
DELIMITER //
CREATE FUNCTION "pg_ndistinct_recv"() RETURNS UNKNOWN AS $$ pg_ndistinct_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ndistinct_send
DELIMITER //
CREATE FUNCTION "pg_ndistinct_send"() RETURNS BYTEA AS $$ pg_ndistinct_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_nextoid
DELIMITER //
CREATE FUNCTION "pg_nextoid"() RETURNS INTEGER AS $$ pg_nextoid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_node_tree_in
DELIMITER //
CREATE FUNCTION "pg_node_tree_in"() RETURNS UNKNOWN AS $$ pg_node_tree_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_node_tree_out
DELIMITER //
CREATE FUNCTION "pg_node_tree_out"() RETURNS UNKNOWN AS $$ pg_node_tree_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_node_tree_recv
DELIMITER //
CREATE FUNCTION "pg_node_tree_recv"() RETURNS UNKNOWN AS $$ pg_node_tree_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_node_tree_send
DELIMITER //
CREATE FUNCTION "pg_node_tree_send"() RETURNS BYTEA AS $$ pg_node_tree_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_notification_queue_usage
DELIMITER //
CREATE FUNCTION "pg_notification_queue_usage"() RETURNS DOUBLE PRECISION AS $$ pg_notification_queue_usage $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_notify
DELIMITER //
CREATE FUNCTION "pg_notify"() RETURNS UNKNOWN AS $$ pg_notify $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_opclass_is_visible
DELIMITER //
CREATE FUNCTION "pg_opclass_is_visible"() RETURNS BOOLEAN AS $$ pg_opclass_is_visible $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_operator_is_visible
DELIMITER //
CREATE FUNCTION "pg_operator_is_visible"() RETURNS BOOLEAN AS $$ pg_operator_is_visible $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_opfamily_is_visible
DELIMITER //
CREATE FUNCTION "pg_opfamily_is_visible"() RETURNS BOOLEAN AS $$ pg_opfamily_is_visible $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_options_to_table
DELIMITER //
CREATE FUNCTION "pg_options_to_table"(options_array UNKNOWN, option_name , option_value ) RETURNS UNKNOWN AS $$ pg_options_to_table $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_partition_ancestors
DELIMITER //
CREATE FUNCTION "pg_partition_ancestors"(partitionid REGCLASS, relid ) RETURNS REGCLASS AS $$ pg_partition_ancestors $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_partition_root
DELIMITER //
CREATE FUNCTION "pg_partition_root"() RETURNS REGCLASS AS $$ pg_partition_root $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_partition_tree
DELIMITER //
CREATE FUNCTION "pg_partition_tree"(rootrelid REGCLASS, relid , parentrelid , isleaf , level ) RETURNS UNKNOWN AS $$ pg_partition_tree $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_postmaster_start_time
DELIMITER //
CREATE FUNCTION "pg_postmaster_start_time"() RETURNS TIMESTAMPTZ AS $$ pg_postmaster_start_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_prepared_statement
DELIMITER //
CREATE FUNCTION "pg_prepared_statement"(name , statement , prepare_time , parameter_types , from_sql , generic_plans , custom_plans ) RETURNS UNKNOWN AS $$ pg_prepared_statement $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_prepared_xact
DELIMITER //
CREATE FUNCTION "pg_prepared_xact"(transaction , gid , prepared , ownerid , dbid ) RETURNS UNKNOWN AS $$ pg_prepared_xact $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_promote
DELIMITER //
CREATE FUNCTION "pg_promote"(wait BOOLEAN, wait_seconds INTEGER) RETURNS BOOLEAN AS $$ pg_promote $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_read_binary_file
DELIMITER //
CREATE FUNCTION "pg_read_binary_file"() RETURNS BYTEA AS $$ pg_read_binary_file_off_len $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_read_binary_file
DELIMITER //
CREATE FUNCTION "pg_read_binary_file"() RETURNS BYTEA AS $$ pg_read_binary_file $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_read_binary_file
DELIMITER //
CREATE FUNCTION "pg_read_binary_file"() RETURNS BYTEA AS $$ pg_read_binary_file_all $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_read_file
DELIMITER //
CREATE FUNCTION "pg_read_file"() RETURNS TEXT AS $$ pg_read_file_v2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_read_file
DELIMITER //
CREATE FUNCTION "pg_read_file"() RETURNS TEXT AS $$ pg_read_file_off_len $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_read_file
DELIMITER //
CREATE FUNCTION "pg_read_file"() RETURNS TEXT AS $$ pg_read_file_all $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_read_file_old
DELIMITER //
CREATE FUNCTION "pg_read_file_old"() RETURNS TEXT AS $$ pg_read_file $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_relation_filenode
DELIMITER //
CREATE FUNCTION "pg_relation_filenode"() RETURNS INTEGER AS $$ pg_relation_filenode $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_relation_filepath
DELIMITER //
CREATE FUNCTION "pg_relation_filepath"() RETURNS TEXT AS $$ pg_relation_filepath $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_relation_is_publishable
DELIMITER //
CREATE FUNCTION "pg_relation_is_publishable"() RETURNS BOOLEAN AS $$ pg_relation_is_publishable $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_relation_is_updatable
DELIMITER //
CREATE FUNCTION "pg_relation_is_updatable"() RETURNS INTEGER AS $$ pg_relation_is_updatable $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_relation_size
DELIMITER //
CREATE FUNCTION "pg_relation_size"() RETURNS BIGINT AS $$ pg_relation_size $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_relation_size
DELIMITER //
CREATE FUNCTION "pg_relation_size"() RETURNS BIGINT AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_reload_conf
DELIMITER //
CREATE FUNCTION "pg_reload_conf"() RETURNS BOOLEAN AS $$ pg_reload_conf $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_replication_origin_advance
DELIMITER //
CREATE FUNCTION "pg_replication_origin_advance"() RETURNS UNKNOWN AS $$ pg_replication_origin_advance $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_replication_origin_create
DELIMITER //
CREATE FUNCTION "pg_replication_origin_create"() RETURNS INTEGER AS $$ pg_replication_origin_create $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_replication_origin_drop
DELIMITER //
CREATE FUNCTION "pg_replication_origin_drop"() RETURNS UNKNOWN AS $$ pg_replication_origin_drop $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_replication_origin_oid
DELIMITER //
CREATE FUNCTION "pg_replication_origin_oid"() RETURNS INTEGER AS $$ pg_replication_origin_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_replication_origin_progress
DELIMITER //
CREATE FUNCTION "pg_replication_origin_progress"() RETURNS UNKNOWN AS $$ pg_replication_origin_progress $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_replication_origin_session_is_setup
DELIMITER //
CREATE FUNCTION "pg_replication_origin_session_is_setup"() RETURNS BOOLEAN AS $$ pg_replication_origin_session_is_setup $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_replication_origin_session_progress
DELIMITER //
CREATE FUNCTION "pg_replication_origin_session_progress"() RETURNS UNKNOWN AS $$ pg_replication_origin_session_progress $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_replication_origin_session_reset
DELIMITER //
CREATE FUNCTION "pg_replication_origin_session_reset"() RETURNS UNKNOWN AS $$ pg_replication_origin_session_reset $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_replication_origin_session_setup
DELIMITER //
CREATE FUNCTION "pg_replication_origin_session_setup"() RETURNS UNKNOWN AS $$ pg_replication_origin_session_setup $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_replication_origin_xact_reset
DELIMITER //
CREATE FUNCTION "pg_replication_origin_xact_reset"() RETURNS UNKNOWN AS $$ pg_replication_origin_xact_reset $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_replication_origin_xact_setup
DELIMITER //
CREATE FUNCTION "pg_replication_origin_xact_setup"() RETURNS UNKNOWN AS $$ pg_replication_origin_xact_setup $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_replication_slot_advance
DELIMITER //
CREATE FUNCTION "pg_replication_slot_advance"(slot_name VARCHAR, upto_lsn UNKNOWN, slot_name , end_lsn ) RETURNS UNKNOWN AS $$ pg_replication_slot_advance $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_rotate_logfile
DELIMITER //
CREATE FUNCTION "pg_rotate_logfile"() RETURNS BOOLEAN AS $$ pg_rotate_logfile_v2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_rotate_logfile_old
DELIMITER //
CREATE FUNCTION "pg_rotate_logfile_old"() RETURNS BOOLEAN AS $$ pg_rotate_logfile $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_safe_snapshot_blocking_pids
DELIMITER //
CREATE FUNCTION "pg_safe_snapshot_blocking_pids"() RETURNS UNKNOWN AS $$ pg_safe_snapshot_blocking_pids $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_sequence_last_value
DELIMITER //
CREATE FUNCTION "pg_sequence_last_value"() RETURNS BIGINT AS $$ pg_sequence_last_value $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_sequence_parameters
DELIMITER //
CREATE FUNCTION "pg_sequence_parameters"(sequence_oid INTEGER, start_value , minimum_value , maximum_value , increment , cycle_option , cache_size , data_type ) RETURNS UNKNOWN AS $$ pg_sequence_parameters $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_show_all_file_settings
DELIMITER //
CREATE FUNCTION "pg_show_all_file_settings"(sourcefile , sourceline , seqno , name , setting , applied , error ) RETURNS UNKNOWN AS $$ show_all_file_settings $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_show_all_settings
DELIMITER //
CREATE FUNCTION "pg_show_all_settings"(name , setting , unit , category , short_desc , extra_desc , context , vartype , source , min_val , max_val , enumvals , boot_val , reset_val , sourcefile , sourceline , pending_restart ) RETURNS UNKNOWN AS $$ show_all_settings $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_show_replication_origin_status
DELIMITER //
CREATE FUNCTION "pg_show_replication_origin_status"(local_id , external_id , remote_lsn , local_lsn ) RETURNS UNKNOWN AS $$ pg_show_replication_origin_status $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_size_bytes
DELIMITER //
CREATE FUNCTION "pg_size_bytes"() RETURNS BIGINT AS $$ pg_size_bytes $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_size_pretty
DELIMITER //
CREATE FUNCTION "pg_size_pretty"() RETURNS TEXT AS $$ pg_size_pretty $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_size_pretty
DELIMITER //
CREATE FUNCTION "pg_size_pretty"() RETURNS TEXT AS $$ pg_size_pretty_numeric $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_sleep
DELIMITER //
CREATE FUNCTION "pg_sleep"() RETURNS UNKNOWN AS $$ pg_sleep $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_sleep_for
DELIMITER //
CREATE FUNCTION "pg_sleep_for"() RETURNS UNKNOWN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_sleep_until
DELIMITER //
CREATE FUNCTION "pg_sleep_until"() RETURNS UNKNOWN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_snapshot_in
DELIMITER //
CREATE FUNCTION "pg_snapshot_in"() RETURNS UNKNOWN AS $$ pg_snapshot_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_snapshot_out
DELIMITER //
CREATE FUNCTION "pg_snapshot_out"() RETURNS UNKNOWN AS $$ pg_snapshot_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_snapshot_recv
DELIMITER //
CREATE FUNCTION "pg_snapshot_recv"() RETURNS UNKNOWN AS $$ pg_snapshot_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_snapshot_send
DELIMITER //
CREATE FUNCTION "pg_snapshot_send"() RETURNS BYTEA AS $$ pg_snapshot_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_snapshot_xip
DELIMITER //
CREATE FUNCTION "pg_snapshot_xip"() RETURNS UNKNOWN AS $$ pg_snapshot_xip $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_snapshot_xmax
DELIMITER //
CREATE FUNCTION "pg_snapshot_xmax"() RETURNS UNKNOWN AS $$ pg_snapshot_xmax $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_snapshot_xmin
DELIMITER //
CREATE FUNCTION "pg_snapshot_xmin"() RETURNS UNKNOWN AS $$ pg_snapshot_xmin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_start_backup
DELIMITER //
CREATE FUNCTION "pg_start_backup"(label TEXT, fast BOOLEAN, exclusive BOOLEAN) RETURNS UNKNOWN AS $$ pg_start_backup $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_statistics_obj_is_visible
DELIMITER //
CREATE FUNCTION "pg_statistics_obj_is_visible"() RETURNS BOOLEAN AS $$ pg_statistics_obj_is_visible $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_clear_snapshot
DELIMITER //
CREATE FUNCTION "pg_stat_clear_snapshot"() RETURNS UNKNOWN AS $$ pg_stat_clear_snapshot $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_file
DELIMITER //
CREATE FUNCTION "pg_stat_file"(filename TEXT, size , access , modification , change , creation , isdir ) RETURNS UNKNOWN AS $$ pg_stat_file_1arg $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_file
DELIMITER //
CREATE FUNCTION "pg_stat_file"(filename TEXT, missing_ok BOOLEAN, size , access , modification , change , creation , isdir ) RETURNS UNKNOWN AS $$ pg_stat_file $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_activity
DELIMITER //
CREATE FUNCTION "pg_stat_get_activity"(pid INTEGER, datid , pid , usesysid , application_name , state , query , wait_event_type , wait_event , xact_start , query_start , backend_start , state_change , client_addr , client_hostname , client_port , backend_xid , backend_xmin , backend_type , ssl , sslversion , sslcipher , sslbits , ssl_client_dn , ssl_client_serial , ssl_issuer_dn , gss_auth , gss_princ , gss_enc , leader_pid , query_id ) RETURNS UNKNOWN AS $$ pg_stat_get_activity $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_analyze_count
DELIMITER //
CREATE FUNCTION "pg_stat_get_analyze_count"() RETURNS BIGINT AS $$ pg_stat_get_analyze_count $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_archiver
DELIMITER //
CREATE FUNCTION "pg_stat_get_archiver"(archived_count , last_archived_wal , last_archived_time , failed_count , last_failed_wal , last_failed_time , stats_reset ) RETURNS UNKNOWN AS $$ pg_stat_get_archiver $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_autoanalyze_count
DELIMITER //
CREATE FUNCTION "pg_stat_get_autoanalyze_count"() RETURNS BIGINT AS $$ pg_stat_get_autoanalyze_count $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_autovacuum_count
DELIMITER //
CREATE FUNCTION "pg_stat_get_autovacuum_count"() RETURNS BIGINT AS $$ pg_stat_get_autovacuum_count $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_backend_activity
DELIMITER //
CREATE FUNCTION "pg_stat_get_backend_activity"() RETURNS TEXT AS $$ pg_stat_get_backend_activity $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_backend_activity_start
DELIMITER //
CREATE FUNCTION "pg_stat_get_backend_activity_start"() RETURNS TIMESTAMPTZ AS $$ pg_stat_get_backend_activity_start $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_backend_client_addr
DELIMITER //
CREATE FUNCTION "pg_stat_get_backend_client_addr"() RETURNS INET AS $$ pg_stat_get_backend_client_addr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_backend_client_port
DELIMITER //
CREATE FUNCTION "pg_stat_get_backend_client_port"() RETURNS INTEGER AS $$ pg_stat_get_backend_client_port $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_backend_dbid
DELIMITER //
CREATE FUNCTION "pg_stat_get_backend_dbid"() RETURNS INTEGER AS $$ pg_stat_get_backend_dbid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_backend_idset
DELIMITER //
CREATE FUNCTION "pg_stat_get_backend_idset"() RETURNS INTEGER AS $$ pg_stat_get_backend_idset $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_backend_pid
DELIMITER //
CREATE FUNCTION "pg_stat_get_backend_pid"() RETURNS INTEGER AS $$ pg_stat_get_backend_pid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_backend_start
DELIMITER //
CREATE FUNCTION "pg_stat_get_backend_start"() RETURNS TIMESTAMPTZ AS $$ pg_stat_get_backend_start $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_backend_userid
DELIMITER //
CREATE FUNCTION "pg_stat_get_backend_userid"() RETURNS INTEGER AS $$ pg_stat_get_backend_userid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_backend_wait_event
DELIMITER //
CREATE FUNCTION "pg_stat_get_backend_wait_event"() RETURNS TEXT AS $$ pg_stat_get_backend_wait_event $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_backend_wait_event_type
DELIMITER //
CREATE FUNCTION "pg_stat_get_backend_wait_event_type"() RETURNS TEXT AS $$ pg_stat_get_backend_wait_event_type $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_backend_xact_start
DELIMITER //
CREATE FUNCTION "pg_stat_get_backend_xact_start"() RETURNS TIMESTAMPTZ AS $$ pg_stat_get_backend_xact_start $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_bgwriter_buf_written_checkpoints
DELIMITER //
CREATE FUNCTION "pg_stat_get_bgwriter_buf_written_checkpoints"() RETURNS BIGINT AS $$ pg_stat_get_bgwriter_buf_written_checkpoints $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_bgwriter_buf_written_clean
DELIMITER //
CREATE FUNCTION "pg_stat_get_bgwriter_buf_written_clean"() RETURNS BIGINT AS $$ pg_stat_get_bgwriter_buf_written_clean $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_bgwriter_maxwritten_clean
DELIMITER //
CREATE FUNCTION "pg_stat_get_bgwriter_maxwritten_clean"() RETURNS BIGINT AS $$ pg_stat_get_bgwriter_maxwritten_clean $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_bgwriter_requested_checkpoints
DELIMITER //
CREATE FUNCTION "pg_stat_get_bgwriter_requested_checkpoints"() RETURNS BIGINT AS $$ pg_stat_get_bgwriter_requested_checkpoints $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_bgwriter_stat_reset_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_bgwriter_stat_reset_time"() RETURNS TIMESTAMPTZ AS $$ pg_stat_get_bgwriter_stat_reset_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_bgwriter_timed_checkpoints
DELIMITER //
CREATE FUNCTION "pg_stat_get_bgwriter_timed_checkpoints"() RETURNS BIGINT AS $$ pg_stat_get_bgwriter_timed_checkpoints $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_blocks_fetched
DELIMITER //
CREATE FUNCTION "pg_stat_get_blocks_fetched"() RETURNS BIGINT AS $$ pg_stat_get_blocks_fetched $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_blocks_hit
DELIMITER //
CREATE FUNCTION "pg_stat_get_blocks_hit"() RETURNS BIGINT AS $$ pg_stat_get_blocks_hit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_buf_alloc
DELIMITER //
CREATE FUNCTION "pg_stat_get_buf_alloc"() RETURNS BIGINT AS $$ pg_stat_get_buf_alloc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_buf_fsync_backend
DELIMITER //
CREATE FUNCTION "pg_stat_get_buf_fsync_backend"() RETURNS BIGINT AS $$ pg_stat_get_buf_fsync_backend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_buf_written_backend
DELIMITER //
CREATE FUNCTION "pg_stat_get_buf_written_backend"() RETURNS BIGINT AS $$ pg_stat_get_buf_written_backend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_checkpoint_sync_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_checkpoint_sync_time"() RETURNS DOUBLE PRECISION AS $$ pg_stat_get_checkpoint_sync_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_checkpoint_write_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_checkpoint_write_time"() RETURNS DOUBLE PRECISION AS $$ pg_stat_get_checkpoint_write_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_active_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_active_time"() RETURNS DOUBLE PRECISION AS $$ pg_stat_get_db_active_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_blk_read_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_blk_read_time"() RETURNS DOUBLE PRECISION AS $$ pg_stat_get_db_blk_read_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_blk_write_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_blk_write_time"() RETURNS DOUBLE PRECISION AS $$ pg_stat_get_db_blk_write_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_blocks_fetched
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_blocks_fetched"() RETURNS BIGINT AS $$ pg_stat_get_db_blocks_fetched $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_blocks_hit
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_blocks_hit"() RETURNS BIGINT AS $$ pg_stat_get_db_blocks_hit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_checksum_failures
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_checksum_failures"() RETURNS BIGINT AS $$ pg_stat_get_db_checksum_failures $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_checksum_last_failure
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_checksum_last_failure"() RETURNS TIMESTAMPTZ AS $$ pg_stat_get_db_checksum_last_failure $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_conflict_all
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_conflict_all"() RETURNS BIGINT AS $$ pg_stat_get_db_conflict_all $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_conflict_bufferpin
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_conflict_bufferpin"() RETURNS BIGINT AS $$ pg_stat_get_db_conflict_bufferpin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_conflict_lock
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_conflict_lock"() RETURNS BIGINT AS $$ pg_stat_get_db_conflict_lock $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_conflict_snapshot
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_conflict_snapshot"() RETURNS BIGINT AS $$ pg_stat_get_db_conflict_snapshot $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_conflict_startup_deadlock
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_conflict_startup_deadlock"() RETURNS BIGINT AS $$ pg_stat_get_db_conflict_startup_deadlock $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_conflict_tablespace
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_conflict_tablespace"() RETURNS BIGINT AS $$ pg_stat_get_db_conflict_tablespace $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_deadlocks
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_deadlocks"() RETURNS BIGINT AS $$ pg_stat_get_db_deadlocks $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_idle_in_transaction_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_idle_in_transaction_time"() RETURNS DOUBLE PRECISION AS $$ pg_stat_get_db_idle_in_transaction_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_numbackends
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_numbackends"() RETURNS INTEGER AS $$ pg_stat_get_db_numbackends $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_sessions
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_sessions"() RETURNS BIGINT AS $$ pg_stat_get_db_sessions $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_sessions_abandoned
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_sessions_abandoned"() RETURNS BIGINT AS $$ pg_stat_get_db_sessions_abandoned $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_sessions_fatal
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_sessions_fatal"() RETURNS BIGINT AS $$ pg_stat_get_db_sessions_fatal $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_sessions_killed
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_sessions_killed"() RETURNS BIGINT AS $$ pg_stat_get_db_sessions_killed $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_session_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_session_time"() RETURNS DOUBLE PRECISION AS $$ pg_stat_get_db_session_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_stat_reset_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_stat_reset_time"() RETURNS TIMESTAMPTZ AS $$ pg_stat_get_db_stat_reset_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_temp_bytes
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_temp_bytes"() RETURNS BIGINT AS $$ pg_stat_get_db_temp_bytes $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_temp_files
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_temp_files"() RETURNS BIGINT AS $$ pg_stat_get_db_temp_files $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_tuples_deleted
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_tuples_deleted"() RETURNS BIGINT AS $$ pg_stat_get_db_tuples_deleted $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_tuples_fetched
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_tuples_fetched"() RETURNS BIGINT AS $$ pg_stat_get_db_tuples_fetched $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_tuples_inserted
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_tuples_inserted"() RETURNS BIGINT AS $$ pg_stat_get_db_tuples_inserted $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_tuples_returned
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_tuples_returned"() RETURNS BIGINT AS $$ pg_stat_get_db_tuples_returned $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_tuples_updated
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_tuples_updated"() RETURNS BIGINT AS $$ pg_stat_get_db_tuples_updated $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_xact_commit
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_xact_commit"() RETURNS BIGINT AS $$ pg_stat_get_db_xact_commit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_db_xact_rollback
DELIMITER //
CREATE FUNCTION "pg_stat_get_db_xact_rollback"() RETURNS BIGINT AS $$ pg_stat_get_db_xact_rollback $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_dead_tuples
DELIMITER //
CREATE FUNCTION "pg_stat_get_dead_tuples"() RETURNS BIGINT AS $$ pg_stat_get_dead_tuples $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_function_calls
DELIMITER //
CREATE FUNCTION "pg_stat_get_function_calls"() RETURNS BIGINT AS $$ pg_stat_get_function_calls $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_function_self_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_function_self_time"() RETURNS DOUBLE PRECISION AS $$ pg_stat_get_function_self_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_function_total_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_function_total_time"() RETURNS DOUBLE PRECISION AS $$ pg_stat_get_function_total_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_ins_since_vacuum
DELIMITER //
CREATE FUNCTION "pg_stat_get_ins_since_vacuum"() RETURNS BIGINT AS $$ pg_stat_get_ins_since_vacuum $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_last_analyze_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_last_analyze_time"() RETURNS TIMESTAMPTZ AS $$ pg_stat_get_last_analyze_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_last_autoanalyze_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_last_autoanalyze_time"() RETURNS TIMESTAMPTZ AS $$ pg_stat_get_last_autoanalyze_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_last_autovacuum_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_last_autovacuum_time"() RETURNS TIMESTAMPTZ AS $$ pg_stat_get_last_autovacuum_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_last_vacuum_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_last_vacuum_time"() RETURNS TIMESTAMPTZ AS $$ pg_stat_get_last_vacuum_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_live_tuples
DELIMITER //
CREATE FUNCTION "pg_stat_get_live_tuples"() RETURNS BIGINT AS $$ pg_stat_get_live_tuples $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_mod_since_analyze
DELIMITER //
CREATE FUNCTION "pg_stat_get_mod_since_analyze"() RETURNS BIGINT AS $$ pg_stat_get_mod_since_analyze $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_numscans
DELIMITER //
CREATE FUNCTION "pg_stat_get_numscans"() RETURNS BIGINT AS $$ pg_stat_get_numscans $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_progress_info
DELIMITER //
CREATE FUNCTION "pg_stat_get_progress_info"(cmdtype TEXT, pid , datid , relid , param1 , param2 , param3 , param4 , param5 , param6 , param7 , param8 , param9 , param10 , param11 , param12 , param13 , param14 , param15 , param16 , param17 , param18 , param19 , param20 ) RETURNS UNKNOWN AS $$ pg_stat_get_progress_info $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_replication_slot
DELIMITER //
CREATE FUNCTION "pg_stat_get_replication_slot"(slot_name TEXT, slot_name , spill_txns , spill_count , spill_bytes , stream_txns , stream_count , stream_bytes , total_txns , total_bytes , stats_reset ) RETURNS UNKNOWN AS $$ pg_stat_get_replication_slot $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_slru
DELIMITER //
CREATE FUNCTION "pg_stat_get_slru"(name , blks_zeroed , blks_hit , blks_read , blks_written , blks_exists , flushes , truncates , stats_reset ) RETURNS UNKNOWN AS $$ pg_stat_get_slru $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_snapshot_timestamp
DELIMITER //
CREATE FUNCTION "pg_stat_get_snapshot_timestamp"() RETURNS TIMESTAMPTZ AS $$ pg_stat_get_snapshot_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_subscription
DELIMITER //
CREATE FUNCTION "pg_stat_get_subscription"(subid INTEGER, subid , relid , pid , received_lsn , last_msg_send_time , last_msg_receipt_time , latest_end_lsn , latest_end_time ) RETURNS UNKNOWN AS $$ pg_stat_get_subscription $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_tuples_deleted
DELIMITER //
CREATE FUNCTION "pg_stat_get_tuples_deleted"() RETURNS BIGINT AS $$ pg_stat_get_tuples_deleted $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_tuples_fetched
DELIMITER //
CREATE FUNCTION "pg_stat_get_tuples_fetched"() RETURNS BIGINT AS $$ pg_stat_get_tuples_fetched $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_tuples_hot_updated
DELIMITER //
CREATE FUNCTION "pg_stat_get_tuples_hot_updated"() RETURNS BIGINT AS $$ pg_stat_get_tuples_hot_updated $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_tuples_inserted
DELIMITER //
CREATE FUNCTION "pg_stat_get_tuples_inserted"() RETURNS BIGINT AS $$ pg_stat_get_tuples_inserted $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_tuples_returned
DELIMITER //
CREATE FUNCTION "pg_stat_get_tuples_returned"() RETURNS BIGINT AS $$ pg_stat_get_tuples_returned $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_tuples_updated
DELIMITER //
CREATE FUNCTION "pg_stat_get_tuples_updated"() RETURNS BIGINT AS $$ pg_stat_get_tuples_updated $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_vacuum_count
DELIMITER //
CREATE FUNCTION "pg_stat_get_vacuum_count"() RETURNS BIGINT AS $$ pg_stat_get_vacuum_count $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_wal
DELIMITER //
CREATE FUNCTION "pg_stat_get_wal"(wal_records , wal_fpi , wal_bytes , wal_buffers_full , wal_write , wal_sync , wal_write_time , wal_sync_time , stats_reset ) RETURNS UNKNOWN AS $$ pg_stat_get_wal $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_wal_receiver
DELIMITER //
CREATE FUNCTION "pg_stat_get_wal_receiver"(pid , status , receive_start_lsn , receive_start_tli , written_lsn , flushed_lsn , received_tli , last_msg_send_time , last_msg_receipt_time , latest_end_lsn , latest_end_time , slot_name , sender_host , sender_port , conninfo ) RETURNS UNKNOWN AS $$ pg_stat_get_wal_receiver $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_wal_senders
DELIMITER //
CREATE FUNCTION "pg_stat_get_wal_senders"(pid , state , sent_lsn , write_lsn , flush_lsn , replay_lsn , write_lag , flush_lag , replay_lag , sync_priority , sync_state , reply_time ) RETURNS UNKNOWN AS $$ pg_stat_get_wal_senders $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_xact_blocks_fetched
DELIMITER //
CREATE FUNCTION "pg_stat_get_xact_blocks_fetched"() RETURNS BIGINT AS $$ pg_stat_get_xact_blocks_fetched $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_xact_blocks_hit
DELIMITER //
CREATE FUNCTION "pg_stat_get_xact_blocks_hit"() RETURNS BIGINT AS $$ pg_stat_get_xact_blocks_hit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_xact_function_calls
DELIMITER //
CREATE FUNCTION "pg_stat_get_xact_function_calls"() RETURNS BIGINT AS $$ pg_stat_get_xact_function_calls $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_xact_function_self_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_xact_function_self_time"() RETURNS DOUBLE PRECISION AS $$ pg_stat_get_xact_function_self_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_xact_function_total_time
DELIMITER //
CREATE FUNCTION "pg_stat_get_xact_function_total_time"() RETURNS DOUBLE PRECISION AS $$ pg_stat_get_xact_function_total_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_xact_numscans
DELIMITER //
CREATE FUNCTION "pg_stat_get_xact_numscans"() RETURNS BIGINT AS $$ pg_stat_get_xact_numscans $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_xact_tuples_deleted
DELIMITER //
CREATE FUNCTION "pg_stat_get_xact_tuples_deleted"() RETURNS BIGINT AS $$ pg_stat_get_xact_tuples_deleted $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_xact_tuples_fetched
DELIMITER //
CREATE FUNCTION "pg_stat_get_xact_tuples_fetched"() RETURNS BIGINT AS $$ pg_stat_get_xact_tuples_fetched $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_xact_tuples_hot_updated
DELIMITER //
CREATE FUNCTION "pg_stat_get_xact_tuples_hot_updated"() RETURNS BIGINT AS $$ pg_stat_get_xact_tuples_hot_updated $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_xact_tuples_inserted
DELIMITER //
CREATE FUNCTION "pg_stat_get_xact_tuples_inserted"() RETURNS BIGINT AS $$ pg_stat_get_xact_tuples_inserted $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_xact_tuples_returned
DELIMITER //
CREATE FUNCTION "pg_stat_get_xact_tuples_returned"() RETURNS BIGINT AS $$ pg_stat_get_xact_tuples_returned $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_get_xact_tuples_updated
DELIMITER //
CREATE FUNCTION "pg_stat_get_xact_tuples_updated"() RETURNS BIGINT AS $$ pg_stat_get_xact_tuples_updated $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_reset
DELIMITER //
CREATE FUNCTION "pg_stat_reset"() RETURNS UNKNOWN AS $$ pg_stat_reset $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_reset_replication_slot
DELIMITER //
CREATE FUNCTION "pg_stat_reset_replication_slot"() RETURNS UNKNOWN AS $$ pg_stat_reset_replication_slot $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_reset_shared
DELIMITER //
CREATE FUNCTION "pg_stat_reset_shared"() RETURNS UNKNOWN AS $$ pg_stat_reset_shared $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_reset_single_function_counters
DELIMITER //
CREATE FUNCTION "pg_stat_reset_single_function_counters"() RETURNS UNKNOWN AS $$ pg_stat_reset_single_function_counters $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_reset_single_table_counters
DELIMITER //
CREATE FUNCTION "pg_stat_reset_single_table_counters"() RETURNS UNKNOWN AS $$ pg_stat_reset_single_table_counters $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stat_reset_slru
DELIMITER //
CREATE FUNCTION "pg_stat_reset_slru"() RETURNS UNKNOWN AS $$ pg_stat_reset_slru $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stop_backup
DELIMITER //
CREATE FUNCTION "pg_stop_backup"(exclusive BOOLEAN, wait_for_archive BOOLEAN, lsn , labelfile , spcmapfile ) RETURNS UNKNOWN AS $$ pg_stop_backup_v2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_stop_backup
DELIMITER //
CREATE FUNCTION "pg_stop_backup"() RETURNS UNKNOWN AS $$ pg_stop_backup $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_switch_wal
DELIMITER //
CREATE FUNCTION "pg_switch_wal"() RETURNS UNKNOWN AS $$ pg_switch_wal $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_tablespace_databases
DELIMITER //
CREATE FUNCTION "pg_tablespace_databases"() RETURNS INTEGER AS $$ pg_tablespace_databases $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_tablespace_location
DELIMITER //
CREATE FUNCTION "pg_tablespace_location"() RETURNS TEXT AS $$ pg_tablespace_location $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_tablespace_size
DELIMITER //
CREATE FUNCTION "pg_tablespace_size"() RETURNS BIGINT AS $$ pg_tablespace_size_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_tablespace_size
DELIMITER //
CREATE FUNCTION "pg_tablespace_size"() RETURNS BIGINT AS $$ pg_tablespace_size_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_table_is_visible
DELIMITER //
CREATE FUNCTION "pg_table_is_visible"() RETURNS BOOLEAN AS $$ pg_table_is_visible $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_table_size
DELIMITER //
CREATE FUNCTION "pg_table_size"() RETURNS BIGINT AS $$ pg_table_size $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_terminate_backend
DELIMITER //
CREATE FUNCTION "pg_terminate_backend"(pid INTEGER, timeout BIGINT) RETURNS BOOLEAN AS $$ pg_terminate_backend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_timezone_abbrevs
DELIMITER //
CREATE FUNCTION "pg_timezone_abbrevs"(abbrev , utc_offset , is_dst ) RETURNS UNKNOWN AS $$ pg_timezone_abbrevs $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_timezone_names
DELIMITER //
CREATE FUNCTION "pg_timezone_names"(name , abbrev , utc_offset , is_dst ) RETURNS UNKNOWN AS $$ pg_timezone_names $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_total_relation_size
DELIMITER //
CREATE FUNCTION "pg_total_relation_size"() RETURNS BIGINT AS $$ pg_total_relation_size $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_trigger_depth
DELIMITER //
CREATE FUNCTION "pg_trigger_depth"() RETURNS INTEGER AS $$ pg_trigger_depth $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_try_advisory_lock
DELIMITER //
CREATE FUNCTION "pg_try_advisory_lock"() RETURNS BOOLEAN AS $$ pg_try_advisory_lock_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_try_advisory_lock
DELIMITER //
CREATE FUNCTION "pg_try_advisory_lock"() RETURNS BOOLEAN AS $$ pg_try_advisory_lock_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_try_advisory_lock_shared
DELIMITER //
CREATE FUNCTION "pg_try_advisory_lock_shared"() RETURNS BOOLEAN AS $$ pg_try_advisory_lock_shared_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_try_advisory_lock_shared
DELIMITER //
CREATE FUNCTION "pg_try_advisory_lock_shared"() RETURNS BOOLEAN AS $$ pg_try_advisory_lock_shared_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_try_advisory_xact_lock
DELIMITER //
CREATE FUNCTION "pg_try_advisory_xact_lock"() RETURNS BOOLEAN AS $$ pg_try_advisory_xact_lock_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_try_advisory_xact_lock
DELIMITER //
CREATE FUNCTION "pg_try_advisory_xact_lock"() RETURNS BOOLEAN AS $$ pg_try_advisory_xact_lock_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_try_advisory_xact_lock_shared
DELIMITER //
CREATE FUNCTION "pg_try_advisory_xact_lock_shared"() RETURNS BOOLEAN AS $$ pg_try_advisory_xact_lock_shared_int8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_try_advisory_xact_lock_shared
DELIMITER //
CREATE FUNCTION "pg_try_advisory_xact_lock_shared"() RETURNS BOOLEAN AS $$ pg_try_advisory_xact_lock_shared_int4 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ts_config_is_visible
DELIMITER //
CREATE FUNCTION "pg_ts_config_is_visible"() RETURNS BOOLEAN AS $$ pg_ts_config_is_visible $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ts_dict_is_visible
DELIMITER //
CREATE FUNCTION "pg_ts_dict_is_visible"() RETURNS BOOLEAN AS $$ pg_ts_dict_is_visible $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ts_parser_is_visible
DELIMITER //
CREATE FUNCTION "pg_ts_parser_is_visible"() RETURNS BOOLEAN AS $$ pg_ts_parser_is_visible $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_ts_template_is_visible
DELIMITER //
CREATE FUNCTION "pg_ts_template_is_visible"() RETURNS BOOLEAN AS $$ pg_ts_template_is_visible $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_typeof
DELIMITER //
CREATE FUNCTION "pg_typeof"() RETURNS UNKNOWN AS $$ pg_typeof $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_type_is_visible
DELIMITER //
CREATE FUNCTION "pg_type_is_visible"() RETURNS BOOLEAN AS $$ pg_type_is_visible $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_visible_in_snapshot
DELIMITER //
CREATE FUNCTION "pg_visible_in_snapshot"() RETURNS BOOLEAN AS $$ pg_visible_in_snapshot $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_walfile_name
DELIMITER //
CREATE FUNCTION "pg_walfile_name"() RETURNS TEXT AS $$ pg_walfile_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_walfile_name_offset
DELIMITER //
CREATE FUNCTION "pg_walfile_name_offset"(lsn UNKNOWN, file_name , file_offset ) RETURNS UNKNOWN AS $$ pg_walfile_name_offset $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_wal_lsn_diff
DELIMITER //
CREATE FUNCTION "pg_wal_lsn_diff"() RETURNS NUMERIC AS $$ pg_wal_lsn_diff $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_wal_replay_pause
DELIMITER //
CREATE FUNCTION "pg_wal_replay_pause"() RETURNS UNKNOWN AS $$ pg_wal_replay_pause $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_wal_replay_resume
DELIMITER //
CREATE FUNCTION "pg_wal_replay_resume"() RETURNS UNKNOWN AS $$ pg_wal_replay_resume $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_xact_commit_timestamp
DELIMITER //
CREATE FUNCTION "pg_xact_commit_timestamp"() RETURNS TIMESTAMPTZ AS $$ pg_xact_commit_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_xact_commit_timestamp_origin
DELIMITER //
CREATE FUNCTION "pg_xact_commit_timestamp_origin"(xid INTEGER, timestamp , roident ) RETURNS UNKNOWN AS $$ pg_xact_commit_timestamp_origin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pg_xact_status
DELIMITER //
CREATE FUNCTION "pg_xact_status"() RETURNS TEXT AS $$ pg_xact_status $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.phraseto_tsquery
DELIMITER //
CREATE FUNCTION "phraseto_tsquery"() RETURNS UNKNOWN AS $$ phraseto_tsquery $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.phraseto_tsquery
DELIMITER //
CREATE FUNCTION "phraseto_tsquery"() RETURNS UNKNOWN AS $$ phraseto_tsquery_byid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pi
DELIMITER //
CREATE FUNCTION "pi"() RETURNS DOUBLE PRECISION AS $$ dpi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.plainto_tsquery
DELIMITER //
CREATE FUNCTION "plainto_tsquery"() RETURNS UNKNOWN AS $$ plainto_tsquery_byid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.plainto_tsquery
DELIMITER //
CREATE FUNCTION "plainto_tsquery"() RETURNS UNKNOWN AS $$ plainto_tsquery $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.plpgsql_call_handler
DELIMITER //
CREATE FUNCTION "plpgsql_call_handler"() RETURNS UNKNOWN AS $$ plpgsql_call_handler $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.plpgsql_inline_handler
DELIMITER //
CREATE FUNCTION "plpgsql_inline_handler"() RETURNS UNKNOWN AS $$ plpgsql_inline_handler $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.plpgsql_validator
DELIMITER //
CREATE FUNCTION "plpgsql_validator"() RETURNS UNKNOWN AS $$ plpgsql_validator $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point
DELIMITER //
CREATE FUNCTION "point"() RETURNS POINT AS $$ box_center $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point
DELIMITER //
CREATE FUNCTION "point"() RETURNS POINT AS $$ poly_center $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point
DELIMITER //
CREATE FUNCTION "point"() RETURNS POINT AS $$ construct_point $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point
DELIMITER //
CREATE FUNCTION "point"() RETURNS POINT AS $$ circle_center $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point
DELIMITER //
CREATE FUNCTION "point"() RETURNS POINT AS $$ path_center $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point
DELIMITER //
CREATE FUNCTION "point"() RETURNS POINT AS $$ lseg_center $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_above
DELIMITER //
CREATE FUNCTION "point_above"() RETURNS BOOLEAN AS $$ point_above $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_add
DELIMITER //
CREATE FUNCTION "point_add"() RETURNS POINT AS $$ point_add $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_below
DELIMITER //
CREATE FUNCTION "point_below"() RETURNS BOOLEAN AS $$ point_below $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_distance
DELIMITER //
CREATE FUNCTION "point_distance"() RETURNS DOUBLE PRECISION AS $$ point_distance $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_div
DELIMITER //
CREATE FUNCTION "point_div"() RETURNS POINT AS $$ point_div $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_eq
DELIMITER //
CREATE FUNCTION "point_eq"() RETURNS BOOLEAN AS $$ point_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_horiz
DELIMITER //
CREATE FUNCTION "point_horiz"() RETURNS BOOLEAN AS $$ point_horiz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_in
DELIMITER //
CREATE FUNCTION "point_in"() RETURNS POINT AS $$ point_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_left
DELIMITER //
CREATE FUNCTION "point_left"() RETURNS BOOLEAN AS $$ point_left $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_mul
DELIMITER //
CREATE FUNCTION "point_mul"() RETURNS POINT AS $$ point_mul $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_ne
DELIMITER //
CREATE FUNCTION "point_ne"() RETURNS BOOLEAN AS $$ point_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_out
DELIMITER //
CREATE FUNCTION "point_out"() RETURNS UNKNOWN AS $$ point_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_recv
DELIMITER //
CREATE FUNCTION "point_recv"() RETURNS POINT AS $$ point_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_right
DELIMITER //
CREATE FUNCTION "point_right"() RETURNS BOOLEAN AS $$ point_right $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_send
DELIMITER //
CREATE FUNCTION "point_send"() RETURNS BYTEA AS $$ point_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_sub
DELIMITER //
CREATE FUNCTION "point_sub"() RETURNS POINT AS $$ point_sub $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.point_vert
DELIMITER //
CREATE FUNCTION "point_vert"() RETURNS BOOLEAN AS $$ point_vert $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.polygon
DELIMITER //
CREATE FUNCTION "polygon"() RETURNS POLYGON AS $$ box_poly $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.polygon
DELIMITER //
CREATE FUNCTION "polygon"() RETURNS POLYGON AS $$ circle_poly $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.polygon
DELIMITER //
CREATE FUNCTION "polygon"() RETURNS POLYGON AS $$ path_poly $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.polygon
DELIMITER //
CREATE FUNCTION "polygon"() RETURNS POLYGON AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_above
DELIMITER //
CREATE FUNCTION "poly_above"() RETURNS BOOLEAN AS $$ poly_above $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_below
DELIMITER //
CREATE FUNCTION "poly_below"() RETURNS BOOLEAN AS $$ poly_below $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_center
DELIMITER //
CREATE FUNCTION "poly_center"() RETURNS POINT AS $$ poly_center $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_contain
DELIMITER //
CREATE FUNCTION "poly_contain"() RETURNS BOOLEAN AS $$ poly_contain $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_contained
DELIMITER //
CREATE FUNCTION "poly_contained"() RETURNS BOOLEAN AS $$ poly_contained $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_contain_pt
DELIMITER //
CREATE FUNCTION "poly_contain_pt"() RETURNS BOOLEAN AS $$ poly_contain_pt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_distance
DELIMITER //
CREATE FUNCTION "poly_distance"() RETURNS DOUBLE PRECISION AS $$ poly_distance $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_in
DELIMITER //
CREATE FUNCTION "poly_in"() RETURNS POLYGON AS $$ poly_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_left
DELIMITER //
CREATE FUNCTION "poly_left"() RETURNS BOOLEAN AS $$ poly_left $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_npoints
DELIMITER //
CREATE FUNCTION "poly_npoints"() RETURNS INTEGER AS $$ poly_npoints $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_out
DELIMITER //
CREATE FUNCTION "poly_out"() RETURNS UNKNOWN AS $$ poly_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_overabove
DELIMITER //
CREATE FUNCTION "poly_overabove"() RETURNS BOOLEAN AS $$ poly_overabove $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_overbelow
DELIMITER //
CREATE FUNCTION "poly_overbelow"() RETURNS BOOLEAN AS $$ poly_overbelow $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_overlap
DELIMITER //
CREATE FUNCTION "poly_overlap"() RETURNS BOOLEAN AS $$ poly_overlap $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_overleft
DELIMITER //
CREATE FUNCTION "poly_overleft"() RETURNS BOOLEAN AS $$ poly_overleft $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_overright
DELIMITER //
CREATE FUNCTION "poly_overright"() RETURNS BOOLEAN AS $$ poly_overright $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_recv
DELIMITER //
CREATE FUNCTION "poly_recv"() RETURNS POLYGON AS $$ poly_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_right
DELIMITER //
CREATE FUNCTION "poly_right"() RETURNS BOOLEAN AS $$ poly_right $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_same
DELIMITER //
CREATE FUNCTION "poly_same"() RETURNS BOOLEAN AS $$ poly_same $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.poly_send
DELIMITER //
CREATE FUNCTION "poly_send"() RETURNS BYTEA AS $$ poly_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.popen
DELIMITER //
CREATE FUNCTION "popen"() RETURNS PATH AS $$ path_open $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.position
DELIMITER //
CREATE FUNCTION "position"() RETURNS INTEGER AS $$ textpos $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.position
DELIMITER //
CREATE FUNCTION "position"() RETURNS INTEGER AS $$ byteapos $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.position
DELIMITER //
CREATE FUNCTION "position"() RETURNS INTEGER AS $$ bitposition $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.positionjoinsel
DELIMITER //
CREATE FUNCTION "positionjoinsel"() RETURNS DOUBLE PRECISION AS $$ positionjoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.positionsel
DELIMITER //
CREATE FUNCTION "positionsel"() RETURNS DOUBLE PRECISION AS $$ positionsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.postgresql_fdw_validator
DELIMITER //
CREATE FUNCTION "postgresql_fdw_validator"() RETURNS BOOLEAN AS $$ postgresql_fdw_validator $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pow
DELIMITER //
CREATE FUNCTION "pow"() RETURNS NUMERIC AS $$ numeric_power $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pow
DELIMITER //
CREATE FUNCTION "pow"() RETURNS DOUBLE PRECISION AS $$ dpow $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.power
DELIMITER //
CREATE FUNCTION "power"() RETURNS DOUBLE PRECISION AS $$ dpow $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.power
DELIMITER //
CREATE FUNCTION "power"() RETURNS NUMERIC AS $$ numeric_power $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.prefixjoinsel
DELIMITER //
CREATE FUNCTION "prefixjoinsel"() RETURNS DOUBLE PRECISION AS $$ prefixjoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.prefixsel
DELIMITER //
CREATE FUNCTION "prefixsel"() RETURNS DOUBLE PRECISION AS $$ prefixsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.prsd_end
DELIMITER //
CREATE FUNCTION "prsd_end"() RETURNS UNKNOWN AS $$ prsd_end $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.prsd_headline
DELIMITER //
CREATE FUNCTION "prsd_headline"() RETURNS UNKNOWN AS $$ prsd_headline $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.prsd_lextype
DELIMITER //
CREATE FUNCTION "prsd_lextype"() RETURNS UNKNOWN AS $$ prsd_lextype $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.prsd_nexttoken
DELIMITER //
CREATE FUNCTION "prsd_nexttoken"() RETURNS UNKNOWN AS $$ prsd_nexttoken $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.prsd_start
DELIMITER //
CREATE FUNCTION "prsd_start"() RETURNS UNKNOWN AS $$ prsd_start $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pt_contained_circle
DELIMITER //
CREATE FUNCTION "pt_contained_circle"() RETURNS BOOLEAN AS $$ pt_contained_circle $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.pt_contained_poly
DELIMITER //
CREATE FUNCTION "pt_contained_poly"() RETURNS BOOLEAN AS $$ pt_contained_poly $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.querytree
DELIMITER //
CREATE FUNCTION "querytree"() RETURNS TEXT AS $$ tsquerytree $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.query_to_xml
DELIMITER //
CREATE FUNCTION "query_to_xml"(query TEXT, nulls BOOLEAN, tableforest BOOLEAN, targetns TEXT) RETURNS UNKNOWN AS $$ query_to_xml $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.query_to_xmlschema
DELIMITER //
CREATE FUNCTION "query_to_xmlschema"(query TEXT, nulls BOOLEAN, tableforest BOOLEAN, targetns TEXT) RETURNS UNKNOWN AS $$ query_to_xmlschema $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.query_to_xml_and_xmlschema
DELIMITER //
CREATE FUNCTION "query_to_xml_and_xmlschema"(query TEXT, nulls BOOLEAN, tableforest BOOLEAN, targetns TEXT) RETURNS UNKNOWN AS $$ query_to_xml_and_xmlschema $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.quote_ident
DELIMITER //
CREATE FUNCTION "quote_ident"() RETURNS TEXT AS $$ quote_ident $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.quote_literal
DELIMITER //
CREATE FUNCTION "quote_literal"() RETURNS TEXT AS $$ select pg_catalog.quote_literal($1::pg_catalog.text) $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.quote_literal
DELIMITER //
CREATE FUNCTION "quote_literal"() RETURNS TEXT AS $$ quote_literal $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.quote_nullable
DELIMITER //
CREATE FUNCTION "quote_nullable"() RETURNS TEXT AS $$ select pg_catalog.quote_nullable($1::pg_catalog.text) $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.quote_nullable
DELIMITER //
CREATE FUNCTION "quote_nullable"() RETURNS TEXT AS $$ quote_nullable $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.radians
DELIMITER //
CREATE FUNCTION "radians"() RETURNS DOUBLE PRECISION AS $$ radians $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.radius
DELIMITER //
CREATE FUNCTION "radius"() RETURNS DOUBLE PRECISION AS $$ circle_radius $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.random
DELIMITER //
CREATE FUNCTION "random"() RETURNS DOUBLE PRECISION AS $$ drandom $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.rangesel
DELIMITER //
CREATE FUNCTION "rangesel"() RETURNS DOUBLE PRECISION AS $$ rangesel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_adjacent
DELIMITER //
CREATE FUNCTION "range_adjacent"() RETURNS BOOLEAN AS $$ range_adjacent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_adjacent_multirange
DELIMITER //
CREATE FUNCTION "range_adjacent_multirange"() RETURNS BOOLEAN AS $$ range_adjacent_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_after
DELIMITER //
CREATE FUNCTION "range_after"() RETURNS BOOLEAN AS $$ range_after $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_after_multirange
DELIMITER //
CREATE FUNCTION "range_after_multirange"() RETURNS BOOLEAN AS $$ range_after_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_agg
DELIMITER //
CREATE FUNCTION "range_agg"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_agg_finalfn
DELIMITER //
CREATE FUNCTION "range_agg_finalfn"() RETURNS UNKNOWN AS $$ range_agg_finalfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_agg_transfn
DELIMITER //
CREATE FUNCTION "range_agg_transfn"() RETURNS UNKNOWN AS $$ range_agg_transfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_before
DELIMITER //
CREATE FUNCTION "range_before"() RETURNS BOOLEAN AS $$ range_before $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_before_multirange
DELIMITER //
CREATE FUNCTION "range_before_multirange"() RETURNS BOOLEAN AS $$ range_before_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_cmp
DELIMITER //
CREATE FUNCTION "range_cmp"() RETURNS INTEGER AS $$ range_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_contained_by
DELIMITER //
CREATE FUNCTION "range_contained_by"() RETURNS BOOLEAN AS $$ range_contained_by $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_contained_by_multirange
DELIMITER //
CREATE FUNCTION "range_contained_by_multirange"() RETURNS BOOLEAN AS $$ range_contained_by_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_contains
DELIMITER //
CREATE FUNCTION "range_contains"() RETURNS BOOLEAN AS $$ range_contains $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_contains_elem
DELIMITER //
CREATE FUNCTION "range_contains_elem"() RETURNS BOOLEAN AS $$ range_contains_elem $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_contains_multirange
DELIMITER //
CREATE FUNCTION "range_contains_multirange"() RETURNS BOOLEAN AS $$ range_contains_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_eq
DELIMITER //
CREATE FUNCTION "range_eq"() RETURNS BOOLEAN AS $$ range_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_ge
DELIMITER //
CREATE FUNCTION "range_ge"() RETURNS BOOLEAN AS $$ range_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_gist_consistent
DELIMITER //
CREATE FUNCTION "range_gist_consistent"() RETURNS BOOLEAN AS $$ range_gist_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_gist_penalty
DELIMITER //
CREATE FUNCTION "range_gist_penalty"() RETURNS UNKNOWN AS $$ range_gist_penalty $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_gist_picksplit
DELIMITER //
CREATE FUNCTION "range_gist_picksplit"() RETURNS UNKNOWN AS $$ range_gist_picksplit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_gist_same
DELIMITER //
CREATE FUNCTION "range_gist_same"() RETURNS UNKNOWN AS $$ range_gist_same $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_gist_union
DELIMITER //
CREATE FUNCTION "range_gist_union"() RETURNS UNKNOWN AS $$ range_gist_union $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_gt
DELIMITER //
CREATE FUNCTION "range_gt"() RETURNS BOOLEAN AS $$ range_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_in
DELIMITER //
CREATE FUNCTION "range_in"() RETURNS UNKNOWN AS $$ range_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_intersect
DELIMITER //
CREATE FUNCTION "range_intersect"() RETURNS UNKNOWN AS $$ range_intersect $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_intersect_agg
DELIMITER //
CREATE FUNCTION "range_intersect_agg"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_intersect_agg
DELIMITER //
CREATE FUNCTION "range_intersect_agg"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_intersect_agg_transfn
DELIMITER //
CREATE FUNCTION "range_intersect_agg_transfn"() RETURNS UNKNOWN AS $$ range_intersect_agg_transfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_le
DELIMITER //
CREATE FUNCTION "range_le"() RETURNS BOOLEAN AS $$ range_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_lt
DELIMITER //
CREATE FUNCTION "range_lt"() RETURNS BOOLEAN AS $$ range_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_merge
DELIMITER //
CREATE FUNCTION "range_merge"() RETURNS UNKNOWN AS $$ range_merge_from_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_merge
DELIMITER //
CREATE FUNCTION "range_merge"() RETURNS UNKNOWN AS $$ range_merge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_minus
DELIMITER //
CREATE FUNCTION "range_minus"() RETURNS UNKNOWN AS $$ range_minus $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_ne
DELIMITER //
CREATE FUNCTION "range_ne"() RETURNS BOOLEAN AS $$ range_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_out
DELIMITER //
CREATE FUNCTION "range_out"() RETURNS UNKNOWN AS $$ range_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_overlaps
DELIMITER //
CREATE FUNCTION "range_overlaps"() RETURNS BOOLEAN AS $$ range_overlaps $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_overlaps_multirange
DELIMITER //
CREATE FUNCTION "range_overlaps_multirange"() RETURNS BOOLEAN AS $$ range_overlaps_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_overleft
DELIMITER //
CREATE FUNCTION "range_overleft"() RETURNS BOOLEAN AS $$ range_overleft $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_overleft_multirange
DELIMITER //
CREATE FUNCTION "range_overleft_multirange"() RETURNS BOOLEAN AS $$ range_overleft_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_overright
DELIMITER //
CREATE FUNCTION "range_overright"() RETURNS BOOLEAN AS $$ range_overright $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_overright_multirange
DELIMITER //
CREATE FUNCTION "range_overright_multirange"() RETURNS BOOLEAN AS $$ range_overright_multirange $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_recv
DELIMITER //
CREATE FUNCTION "range_recv"() RETURNS UNKNOWN AS $$ range_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_send
DELIMITER //
CREATE FUNCTION "range_send"() RETURNS BYTEA AS $$ range_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_typanalyze
DELIMITER //
CREATE FUNCTION "range_typanalyze"() RETURNS BOOLEAN AS $$ range_typanalyze $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.range_union
DELIMITER //
CREATE FUNCTION "range_union"() RETURNS UNKNOWN AS $$ range_union $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.rank
DELIMITER //
CREATE FUNCTION "rank"() RETURNS BIGINT AS $$ window_rank $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.rank
DELIMITER //
CREATE FUNCTION "rank"() RETURNS BIGINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.rank_final
DELIMITER //
CREATE FUNCTION "rank_final"() RETURNS BIGINT AS $$ hypothetical_rank_final $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.raw_array_subscript_handler
DELIMITER //
CREATE FUNCTION "raw_array_subscript_handler"() RETURNS UNKNOWN AS $$ raw_array_subscript_handler $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.record_eq
DELIMITER //
CREATE FUNCTION "record_eq"() RETURNS BOOLEAN AS $$ record_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.record_ge
DELIMITER //
CREATE FUNCTION "record_ge"() RETURNS BOOLEAN AS $$ record_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.record_gt
DELIMITER //
CREATE FUNCTION "record_gt"() RETURNS BOOLEAN AS $$ record_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.record_image_eq
DELIMITER //
CREATE FUNCTION "record_image_eq"() RETURNS BOOLEAN AS $$ record_image_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.record_image_ge
DELIMITER //
CREATE FUNCTION "record_image_ge"() RETURNS BOOLEAN AS $$ record_image_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.record_image_gt
DELIMITER //
CREATE FUNCTION "record_image_gt"() RETURNS BOOLEAN AS $$ record_image_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.record_image_le
DELIMITER //
CREATE FUNCTION "record_image_le"() RETURNS BOOLEAN AS $$ record_image_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.record_image_lt
DELIMITER //
CREATE FUNCTION "record_image_lt"() RETURNS BOOLEAN AS $$ record_image_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.record_image_ne
DELIMITER //
CREATE FUNCTION "record_image_ne"() RETURNS BOOLEAN AS $$ record_image_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.record_in
DELIMITER //
CREATE FUNCTION "record_in"() RETURNS UNKNOWN AS $$ record_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.record_le
DELIMITER //
CREATE FUNCTION "record_le"() RETURNS BOOLEAN AS $$ record_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.record_lt
DELIMITER //
CREATE FUNCTION "record_lt"() RETURNS BOOLEAN AS $$ record_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.record_ne
DELIMITER //
CREATE FUNCTION "record_ne"() RETURNS BOOLEAN AS $$ record_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.record_out
DELIMITER //
CREATE FUNCTION "record_out"() RETURNS UNKNOWN AS $$ record_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.record_recv
DELIMITER //
CREATE FUNCTION "record_recv"() RETURNS UNKNOWN AS $$ record_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.record_send
DELIMITER //
CREATE FUNCTION "record_send"() RETURNS BYTEA AS $$ record_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regclass
DELIMITER //
CREATE FUNCTION "regclass"() RETURNS REGCLASS AS $$ text_regclass $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regclassin
DELIMITER //
CREATE FUNCTION "regclassin"() RETURNS REGCLASS AS $$ regclassin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regclassout
DELIMITER //
CREATE FUNCTION "regclassout"() RETURNS UNKNOWN AS $$ regclassout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regclassrecv
DELIMITER //
CREATE FUNCTION "regclassrecv"() RETURNS REGCLASS AS $$ regclassrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regclasssend
DELIMITER //
CREATE FUNCTION "regclasssend"() RETURNS BYTEA AS $$ regclasssend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regcollationin
DELIMITER //
CREATE FUNCTION "regcollationin"() RETURNS UNKNOWN AS $$ regcollationin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regcollationout
DELIMITER //
CREATE FUNCTION "regcollationout"() RETURNS UNKNOWN AS $$ regcollationout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regcollationrecv
DELIMITER //
CREATE FUNCTION "regcollationrecv"() RETURNS UNKNOWN AS $$ regcollationrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regcollationsend
DELIMITER //
CREATE FUNCTION "regcollationsend"() RETURNS BYTEA AS $$ regcollationsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regconfigin
DELIMITER //
CREATE FUNCTION "regconfigin"() RETURNS UNKNOWN AS $$ regconfigin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regconfigout
DELIMITER //
CREATE FUNCTION "regconfigout"() RETURNS UNKNOWN AS $$ regconfigout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regconfigrecv
DELIMITER //
CREATE FUNCTION "regconfigrecv"() RETURNS UNKNOWN AS $$ regconfigrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regconfigsend
DELIMITER //
CREATE FUNCTION "regconfigsend"() RETURNS BYTEA AS $$ regconfigsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regdictionaryin
DELIMITER //
CREATE FUNCTION "regdictionaryin"() RETURNS UNKNOWN AS $$ regdictionaryin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regdictionaryout
DELIMITER //
CREATE FUNCTION "regdictionaryout"() RETURNS UNKNOWN AS $$ regdictionaryout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regdictionaryrecv
DELIMITER //
CREATE FUNCTION "regdictionaryrecv"() RETURNS UNKNOWN AS $$ regdictionaryrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regdictionarysend
DELIMITER //
CREATE FUNCTION "regdictionarysend"() RETURNS BYTEA AS $$ regdictionarysend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regexeqjoinsel
DELIMITER //
CREATE FUNCTION "regexeqjoinsel"() RETURNS DOUBLE PRECISION AS $$ regexeqjoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regexeqsel
DELIMITER //
CREATE FUNCTION "regexeqsel"() RETURNS DOUBLE PRECISION AS $$ regexeqsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regexnejoinsel
DELIMITER //
CREATE FUNCTION "regexnejoinsel"() RETURNS DOUBLE PRECISION AS $$ regexnejoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regexnesel
DELIMITER //
CREATE FUNCTION "regexnesel"() RETURNS DOUBLE PRECISION AS $$ regexnesel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regexp_match
DELIMITER //
CREATE FUNCTION "regexp_match"() RETURNS UNKNOWN AS $$ regexp_match $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regexp_match
DELIMITER //
CREATE FUNCTION "regexp_match"() RETURNS UNKNOWN AS $$ regexp_match_no_flags $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regexp_matches
DELIMITER //
CREATE FUNCTION "regexp_matches"() RETURNS UNKNOWN AS $$ regexp_matches $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regexp_matches
DELIMITER //
CREATE FUNCTION "regexp_matches"() RETURNS UNKNOWN AS $$ regexp_matches_no_flags $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regexp_replace
DELIMITER //
CREATE FUNCTION "regexp_replace"() RETURNS TEXT AS $$ textregexreplace_noopt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regexp_replace
DELIMITER //
CREATE FUNCTION "regexp_replace"() RETURNS TEXT AS $$ textregexreplace $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regexp_split_to_array
DELIMITER //
CREATE FUNCTION "regexp_split_to_array"() RETURNS UNKNOWN AS $$ regexp_split_to_array_no_flags $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regexp_split_to_array
DELIMITER //
CREATE FUNCTION "regexp_split_to_array"() RETURNS UNKNOWN AS $$ regexp_split_to_array $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regexp_split_to_table
DELIMITER //
CREATE FUNCTION "regexp_split_to_table"() RETURNS TEXT AS $$ regexp_split_to_table_no_flags $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regexp_split_to_table
DELIMITER //
CREATE FUNCTION "regexp_split_to_table"() RETURNS TEXT AS $$ regexp_split_to_table $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regnamespacein
DELIMITER //
CREATE FUNCTION "regnamespacein"() RETURNS UNKNOWN AS $$ regnamespacein $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regnamespaceout
DELIMITER //
CREATE FUNCTION "regnamespaceout"() RETURNS UNKNOWN AS $$ regnamespaceout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regnamespacerecv
DELIMITER //
CREATE FUNCTION "regnamespacerecv"() RETURNS UNKNOWN AS $$ regnamespacerecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regnamespacesend
DELIMITER //
CREATE FUNCTION "regnamespacesend"() RETURNS BYTEA AS $$ regnamespacesend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regoperatorin
DELIMITER //
CREATE FUNCTION "regoperatorin"() RETURNS UNKNOWN AS $$ regoperatorin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regoperatorout
DELIMITER //
CREATE FUNCTION "regoperatorout"() RETURNS UNKNOWN AS $$ regoperatorout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regoperatorrecv
DELIMITER //
CREATE FUNCTION "regoperatorrecv"() RETURNS UNKNOWN AS $$ regoperatorrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regoperatorsend
DELIMITER //
CREATE FUNCTION "regoperatorsend"() RETURNS BYTEA AS $$ regoperatorsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regoperin
DELIMITER //
CREATE FUNCTION "regoperin"() RETURNS UNKNOWN AS $$ regoperin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regoperout
DELIMITER //
CREATE FUNCTION "regoperout"() RETURNS UNKNOWN AS $$ regoperout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regoperrecv
DELIMITER //
CREATE FUNCTION "regoperrecv"() RETURNS UNKNOWN AS $$ regoperrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regopersend
DELIMITER //
CREATE FUNCTION "regopersend"() RETURNS BYTEA AS $$ regopersend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regprocedurein
DELIMITER //
CREATE FUNCTION "regprocedurein"() RETURNS UNKNOWN AS $$ regprocedurein $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regprocedureout
DELIMITER //
CREATE FUNCTION "regprocedureout"() RETURNS UNKNOWN AS $$ regprocedureout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regprocedurerecv
DELIMITER //
CREATE FUNCTION "regprocedurerecv"() RETURNS UNKNOWN AS $$ regprocedurerecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regproceduresend
DELIMITER //
CREATE FUNCTION "regproceduresend"() RETURNS BYTEA AS $$ regproceduresend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regprocin
DELIMITER //
CREATE FUNCTION "regprocin"() RETURNS VARCHAR AS $$ regprocin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regprocout
DELIMITER //
CREATE FUNCTION "regprocout"() RETURNS UNKNOWN AS $$ regprocout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regprocrecv
DELIMITER //
CREATE FUNCTION "regprocrecv"() RETURNS VARCHAR AS $$ regprocrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regprocsend
DELIMITER //
CREATE FUNCTION "regprocsend"() RETURNS BYTEA AS $$ regprocsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regrolein
DELIMITER //
CREATE FUNCTION "regrolein"() RETURNS UNKNOWN AS $$ regrolein $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regroleout
DELIMITER //
CREATE FUNCTION "regroleout"() RETURNS UNKNOWN AS $$ regroleout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regrolerecv
DELIMITER //
CREATE FUNCTION "regrolerecv"() RETURNS UNKNOWN AS $$ regrolerecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regrolesend
DELIMITER //
CREATE FUNCTION "regrolesend"() RETURNS BYTEA AS $$ regrolesend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regr_avgx
DELIMITER //
CREATE FUNCTION "regr_avgx"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regr_avgy
DELIMITER //
CREATE FUNCTION "regr_avgy"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regr_count
DELIMITER //
CREATE FUNCTION "regr_count"() RETURNS BIGINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regr_intercept
DELIMITER //
CREATE FUNCTION "regr_intercept"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regr_r2
DELIMITER //
CREATE FUNCTION "regr_r2"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regr_slope
DELIMITER //
CREATE FUNCTION "regr_slope"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regr_sxx
DELIMITER //
CREATE FUNCTION "regr_sxx"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regr_sxy
DELIMITER //
CREATE FUNCTION "regr_sxy"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regr_syy
DELIMITER //
CREATE FUNCTION "regr_syy"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regtypein
DELIMITER //
CREATE FUNCTION "regtypein"() RETURNS UNKNOWN AS $$ regtypein $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regtypeout
DELIMITER //
CREATE FUNCTION "regtypeout"() RETURNS UNKNOWN AS $$ regtypeout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regtyperecv
DELIMITER //
CREATE FUNCTION "regtyperecv"() RETURNS UNKNOWN AS $$ regtyperecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.regtypesend
DELIMITER //
CREATE FUNCTION "regtypesend"() RETURNS BYTEA AS $$ regtypesend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.repeat
DELIMITER //
CREATE FUNCTION "repeat"() RETURNS TEXT AS $$ repeat $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.replace
DELIMITER //
CREATE FUNCTION "replace"() RETURNS TEXT AS $$ replace_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.reverse
DELIMITER //
CREATE FUNCTION "reverse"() RETURNS TEXT AS $$ text_reverse $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.right
DELIMITER //
CREATE FUNCTION "right"() RETURNS TEXT AS $$ text_right $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.RI_FKey_cascade_del
DELIMITER //
CREATE FUNCTION "RI_FKey_cascade_del"() RETURNS UNKNOWN AS $$ RI_FKey_cascade_del $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.RI_FKey_cascade_upd
DELIMITER //
CREATE FUNCTION "RI_FKey_cascade_upd"() RETURNS UNKNOWN AS $$ RI_FKey_cascade_upd $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.RI_FKey_check_ins
DELIMITER //
CREATE FUNCTION "RI_FKey_check_ins"() RETURNS UNKNOWN AS $$ RI_FKey_check_ins $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.RI_FKey_check_upd
DELIMITER //
CREATE FUNCTION "RI_FKey_check_upd"() RETURNS UNKNOWN AS $$ RI_FKey_check_upd $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.RI_FKey_noaction_del
DELIMITER //
CREATE FUNCTION "RI_FKey_noaction_del"() RETURNS UNKNOWN AS $$ RI_FKey_noaction_del $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.RI_FKey_noaction_upd
DELIMITER //
CREATE FUNCTION "RI_FKey_noaction_upd"() RETURNS UNKNOWN AS $$ RI_FKey_noaction_upd $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.RI_FKey_restrict_del
DELIMITER //
CREATE FUNCTION "RI_FKey_restrict_del"() RETURNS UNKNOWN AS $$ RI_FKey_restrict_del $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.RI_FKey_restrict_upd
DELIMITER //
CREATE FUNCTION "RI_FKey_restrict_upd"() RETURNS UNKNOWN AS $$ RI_FKey_restrict_upd $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.RI_FKey_setdefault_del
DELIMITER //
CREATE FUNCTION "RI_FKey_setdefault_del"() RETURNS UNKNOWN AS $$ RI_FKey_setdefault_del $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.RI_FKey_setdefault_upd
DELIMITER //
CREATE FUNCTION "RI_FKey_setdefault_upd"() RETURNS UNKNOWN AS $$ RI_FKey_setdefault_upd $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.RI_FKey_setnull_del
DELIMITER //
CREATE FUNCTION "RI_FKey_setnull_del"() RETURNS UNKNOWN AS $$ RI_FKey_setnull_del $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.RI_FKey_setnull_upd
DELIMITER //
CREATE FUNCTION "RI_FKey_setnull_upd"() RETURNS UNKNOWN AS $$ RI_FKey_setnull_upd $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.round
DELIMITER //
CREATE FUNCTION "round"() RETURNS NUMERIC AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.round
DELIMITER //
CREATE FUNCTION "round"() RETURNS NUMERIC AS $$ numeric_round $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.round
DELIMITER //
CREATE FUNCTION "round"() RETURNS DOUBLE PRECISION AS $$ dround $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.row_number
DELIMITER //
CREATE FUNCTION "row_number"() RETURNS BIGINT AS $$ window_row_number $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.row_security_active
DELIMITER //
CREATE FUNCTION "row_security_active"() RETURNS BOOLEAN AS $$ row_security_active_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.row_security_active
DELIMITER //
CREATE FUNCTION "row_security_active"() RETURNS BOOLEAN AS $$ row_security_active $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.row_to_json
DELIMITER //
CREATE FUNCTION "row_to_json"() RETURNS JSON AS $$ row_to_json $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.row_to_json
DELIMITER //
CREATE FUNCTION "row_to_json"() RETURNS JSON AS $$ row_to_json_pretty $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.rpad
DELIMITER //
CREATE FUNCTION "rpad"() RETURNS TEXT AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.rpad
DELIMITER //
CREATE FUNCTION "rpad"() RETURNS TEXT AS $$ rpad $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.rtrim
DELIMITER //
CREATE FUNCTION "rtrim"() RETURNS TEXT AS $$ rtrim $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.rtrim
DELIMITER //
CREATE FUNCTION "rtrim"() RETURNS TEXT AS $$ rtrim1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.rtrim
DELIMITER //
CREATE FUNCTION "rtrim"() RETURNS BYTEA AS $$ byteartrim $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.satisfies_hash_partition
DELIMITER //
CREATE FUNCTION "satisfies_hash_partition"() RETURNS BOOLEAN AS $$ satisfies_hash_partition $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.scalargejoinsel
DELIMITER //
CREATE FUNCTION "scalargejoinsel"() RETURNS DOUBLE PRECISION AS $$ scalargejoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.scalargesel
DELIMITER //
CREATE FUNCTION "scalargesel"() RETURNS DOUBLE PRECISION AS $$ scalargesel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.scalargtjoinsel
DELIMITER //
CREATE FUNCTION "scalargtjoinsel"() RETURNS DOUBLE PRECISION AS $$ scalargtjoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.scalargtsel
DELIMITER //
CREATE FUNCTION "scalargtsel"() RETURNS DOUBLE PRECISION AS $$ scalargtsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.scalarlejoinsel
DELIMITER //
CREATE FUNCTION "scalarlejoinsel"() RETURNS DOUBLE PRECISION AS $$ scalarlejoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.scalarlesel
DELIMITER //
CREATE FUNCTION "scalarlesel"() RETURNS DOUBLE PRECISION AS $$ scalarlesel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.scalarltjoinsel
DELIMITER //
CREATE FUNCTION "scalarltjoinsel"() RETURNS DOUBLE PRECISION AS $$ scalarltjoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.scalarltsel
DELIMITER //
CREATE FUNCTION "scalarltsel"() RETURNS DOUBLE PRECISION AS $$ scalarltsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.scale
DELIMITER //
CREATE FUNCTION "scale"() RETURNS INTEGER AS $$ numeric_scale $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.schema_to_xml
DELIMITER //
CREATE FUNCTION "schema_to_xml"(schema VARCHAR, nulls BOOLEAN, tableforest BOOLEAN, targetns TEXT) RETURNS UNKNOWN AS $$ schema_to_xml $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.schema_to_xmlschema
DELIMITER //
CREATE FUNCTION "schema_to_xmlschema"(schema VARCHAR, nulls BOOLEAN, tableforest BOOLEAN, targetns TEXT) RETURNS UNKNOWN AS $$ schema_to_xmlschema $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.schema_to_xml_and_xmlschema
DELIMITER //
CREATE FUNCTION "schema_to_xml_and_xmlschema"(schema VARCHAR, nulls BOOLEAN, tableforest BOOLEAN, targetns TEXT) RETURNS UNKNOWN AS $$ schema_to_xml_and_xmlschema $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.session_user
DELIMITER //
CREATE FUNCTION "session_user"() RETURNS VARCHAR AS $$ session_user $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.setseed
DELIMITER //
CREATE FUNCTION "setseed"() RETURNS UNKNOWN AS $$ setseed $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.setval
DELIMITER //
CREATE FUNCTION "setval"() RETURNS BIGINT AS $$ setval3_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.setval
DELIMITER //
CREATE FUNCTION "setval"() RETURNS BIGINT AS $$ setval_oid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.setweight
DELIMITER //
CREATE FUNCTION "setweight"() RETURNS UNKNOWN AS $$ tsvector_setweight $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.setweight
DELIMITER //
CREATE FUNCTION "setweight"() RETURNS UNKNOWN AS $$ tsvector_setweight_by_filter $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.set_bit
DELIMITER //
CREATE FUNCTION "set_bit"() RETURNS BIT AS $$ bitsetbit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.set_bit
DELIMITER //
CREATE FUNCTION "set_bit"() RETURNS BYTEA AS $$ byteaSetBit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.set_byte
DELIMITER //
CREATE FUNCTION "set_byte"() RETURNS BYTEA AS $$ byteaSetByte $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.set_config
DELIMITER //
CREATE FUNCTION "set_config"() RETURNS TEXT AS $$ set_config_by_name $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.set_masklen
DELIMITER //
CREATE FUNCTION "set_masklen"() RETURNS CIDR AS $$ cidr_set_masklen $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.set_masklen
DELIMITER //
CREATE FUNCTION "set_masklen"() RETURNS INET AS $$ inet_set_masklen $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sha224
DELIMITER //
CREATE FUNCTION "sha224"() RETURNS BYTEA AS $$ sha224_bytea $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sha256
DELIMITER //
CREATE FUNCTION "sha256"() RETURNS BYTEA AS $$ sha256_bytea $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sha384
DELIMITER //
CREATE FUNCTION "sha384"() RETURNS BYTEA AS $$ sha384_bytea $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sha512
DELIMITER //
CREATE FUNCTION "sha512"() RETURNS BYTEA AS $$ sha512_bytea $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.shell_in
DELIMITER //
CREATE FUNCTION "shell_in"() RETURNS UNKNOWN AS $$ shell_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.shell_out
DELIMITER //
CREATE FUNCTION "shell_out"() RETURNS UNKNOWN AS $$ shell_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.shift_jis_2004_to_euc_jis_2004
DELIMITER //
CREATE FUNCTION "shift_jis_2004_to_euc_jis_2004"() RETURNS INTEGER AS $$ shift_jis_2004_to_euc_jis_2004 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.shift_jis_2004_to_utf8
DELIMITER //
CREATE FUNCTION "shift_jis_2004_to_utf8"() RETURNS INTEGER AS $$ shift_jis_2004_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.shobj_description
DELIMITER //
CREATE FUNCTION "shobj_description"() RETURNS TEXT AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sign
DELIMITER //
CREATE FUNCTION "sign"() RETURNS NUMERIC AS $$ numeric_sign $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sign
DELIMITER //
CREATE FUNCTION "sign"() RETURNS DOUBLE PRECISION AS $$ dsign $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.similar_escape
DELIMITER //
CREATE FUNCTION "similar_escape"() RETURNS TEXT AS $$ similar_escape $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.similar_to_escape
DELIMITER //
CREATE FUNCTION "similar_to_escape"() RETURNS TEXT AS $$ similar_to_escape_1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.similar_to_escape
DELIMITER //
CREATE FUNCTION "similar_to_escape"() RETURNS TEXT AS $$ similar_to_escape_2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sin
DELIMITER //
CREATE FUNCTION "sin"() RETURNS DOUBLE PRECISION AS $$ dsin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sind
DELIMITER //
CREATE FUNCTION "sind"() RETURNS DOUBLE PRECISION AS $$ dsind $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sinh
DELIMITER //
CREATE FUNCTION "sinh"() RETURNS DOUBLE PRECISION AS $$ dsinh $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sjis_to_euc_jp
DELIMITER //
CREATE FUNCTION "sjis_to_euc_jp"() RETURNS INTEGER AS $$ sjis_to_euc_jp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sjis_to_mic
DELIMITER //
CREATE FUNCTION "sjis_to_mic"() RETURNS INTEGER AS $$ sjis_to_mic $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sjis_to_utf8
DELIMITER //
CREATE FUNCTION "sjis_to_utf8"() RETURNS INTEGER AS $$ sjis_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.slope
DELIMITER //
CREATE FUNCTION "slope"() RETURNS DOUBLE PRECISION AS $$ point_slope $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spghandler
DELIMITER //
CREATE FUNCTION "spghandler"() RETURNS UNKNOWN AS $$ spghandler $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_bbox_quad_config
DELIMITER //
CREATE FUNCTION "spg_bbox_quad_config"() RETURNS UNKNOWN AS $$ spg_bbox_quad_config $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_box_quad_choose
DELIMITER //
CREATE FUNCTION "spg_box_quad_choose"() RETURNS UNKNOWN AS $$ spg_box_quad_choose $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_box_quad_config
DELIMITER //
CREATE FUNCTION "spg_box_quad_config"() RETURNS UNKNOWN AS $$ spg_box_quad_config $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_box_quad_inner_consistent
DELIMITER //
CREATE FUNCTION "spg_box_quad_inner_consistent"() RETURNS UNKNOWN AS $$ spg_box_quad_inner_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_box_quad_leaf_consistent
DELIMITER //
CREATE FUNCTION "spg_box_quad_leaf_consistent"() RETURNS BOOLEAN AS $$ spg_box_quad_leaf_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_box_quad_picksplit
DELIMITER //
CREATE FUNCTION "spg_box_quad_picksplit"() RETURNS UNKNOWN AS $$ spg_box_quad_picksplit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_kd_choose
DELIMITER //
CREATE FUNCTION "spg_kd_choose"() RETURNS UNKNOWN AS $$ spg_kd_choose $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_kd_config
DELIMITER //
CREATE FUNCTION "spg_kd_config"() RETURNS UNKNOWN AS $$ spg_kd_config $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_kd_inner_consistent
DELIMITER //
CREATE FUNCTION "spg_kd_inner_consistent"() RETURNS UNKNOWN AS $$ spg_kd_inner_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_kd_picksplit
DELIMITER //
CREATE FUNCTION "spg_kd_picksplit"() RETURNS UNKNOWN AS $$ spg_kd_picksplit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_poly_quad_compress
DELIMITER //
CREATE FUNCTION "spg_poly_quad_compress"() RETURNS BOX AS $$ spg_poly_quad_compress $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_quad_choose
DELIMITER //
CREATE FUNCTION "spg_quad_choose"() RETURNS UNKNOWN AS $$ spg_quad_choose $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_quad_config
DELIMITER //
CREATE FUNCTION "spg_quad_config"() RETURNS UNKNOWN AS $$ spg_quad_config $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_quad_inner_consistent
DELIMITER //
CREATE FUNCTION "spg_quad_inner_consistent"() RETURNS UNKNOWN AS $$ spg_quad_inner_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_quad_leaf_consistent
DELIMITER //
CREATE FUNCTION "spg_quad_leaf_consistent"() RETURNS BOOLEAN AS $$ spg_quad_leaf_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_quad_picksplit
DELIMITER //
CREATE FUNCTION "spg_quad_picksplit"() RETURNS UNKNOWN AS $$ spg_quad_picksplit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_range_quad_choose
DELIMITER //
CREATE FUNCTION "spg_range_quad_choose"() RETURNS UNKNOWN AS $$ spg_range_quad_choose $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_range_quad_config
DELIMITER //
CREATE FUNCTION "spg_range_quad_config"() RETURNS UNKNOWN AS $$ spg_range_quad_config $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_range_quad_inner_consistent
DELIMITER //
CREATE FUNCTION "spg_range_quad_inner_consistent"() RETURNS UNKNOWN AS $$ spg_range_quad_inner_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_range_quad_leaf_consistent
DELIMITER //
CREATE FUNCTION "spg_range_quad_leaf_consistent"() RETURNS BOOLEAN AS $$ spg_range_quad_leaf_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_range_quad_picksplit
DELIMITER //
CREATE FUNCTION "spg_range_quad_picksplit"() RETURNS UNKNOWN AS $$ spg_range_quad_picksplit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_text_choose
DELIMITER //
CREATE FUNCTION "spg_text_choose"() RETURNS UNKNOWN AS $$ spg_text_choose $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_text_config
DELIMITER //
CREATE FUNCTION "spg_text_config"() RETURNS UNKNOWN AS $$ spg_text_config $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_text_inner_consistent
DELIMITER //
CREATE FUNCTION "spg_text_inner_consistent"() RETURNS UNKNOWN AS $$ spg_text_inner_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_text_leaf_consistent
DELIMITER //
CREATE FUNCTION "spg_text_leaf_consistent"() RETURNS BOOLEAN AS $$ spg_text_leaf_consistent $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.spg_text_picksplit
DELIMITER //
CREATE FUNCTION "spg_text_picksplit"() RETURNS UNKNOWN AS $$ spg_text_picksplit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.split_part
DELIMITER //
CREATE FUNCTION "split_part"() RETURNS TEXT AS $$ split_part $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sqrt
DELIMITER //
CREATE FUNCTION "sqrt"() RETURNS DOUBLE PRECISION AS $$ dsqrt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sqrt
DELIMITER //
CREATE FUNCTION "sqrt"() RETURNS NUMERIC AS $$ numeric_sqrt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.starts_with
DELIMITER //
CREATE FUNCTION "starts_with"() RETURNS BOOLEAN AS $$ text_starts_with $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.statement_timestamp
DELIMITER //
CREATE FUNCTION "statement_timestamp"() RETURNS TIMESTAMPTZ AS $$ statement_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev
DELIMITER //
CREATE FUNCTION "stddev"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev
DELIMITER //
CREATE FUNCTION "stddev"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev
DELIMITER //
CREATE FUNCTION "stddev"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev
DELIMITER //
CREATE FUNCTION "stddev"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev
DELIMITER //
CREATE FUNCTION "stddev"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev
DELIMITER //
CREATE FUNCTION "stddev"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev_pop
DELIMITER //
CREATE FUNCTION "stddev_pop"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev_pop
DELIMITER //
CREATE FUNCTION "stddev_pop"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev_pop
DELIMITER //
CREATE FUNCTION "stddev_pop"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev_pop
DELIMITER //
CREATE FUNCTION "stddev_pop"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev_pop
DELIMITER //
CREATE FUNCTION "stddev_pop"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev_pop
DELIMITER //
CREATE FUNCTION "stddev_pop"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev_samp
DELIMITER //
CREATE FUNCTION "stddev_samp"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev_samp
DELIMITER //
CREATE FUNCTION "stddev_samp"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev_samp
DELIMITER //
CREATE FUNCTION "stddev_samp"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev_samp
DELIMITER //
CREATE FUNCTION "stddev_samp"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev_samp
DELIMITER //
CREATE FUNCTION "stddev_samp"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.stddev_samp
DELIMITER //
CREATE FUNCTION "stddev_samp"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.string_agg
DELIMITER //
CREATE FUNCTION "string_agg"() RETURNS BYTEA AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.string_agg
DELIMITER //
CREATE FUNCTION "string_agg"() RETURNS TEXT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.string_agg_finalfn
DELIMITER //
CREATE FUNCTION "string_agg_finalfn"() RETURNS TEXT AS $$ string_agg_finalfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.string_agg_transfn
DELIMITER //
CREATE FUNCTION "string_agg_transfn"() RETURNS UNKNOWN AS $$ string_agg_transfn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.string_to_array
DELIMITER //
CREATE FUNCTION "string_to_array"() RETURNS UNKNOWN AS $$ text_to_array_null $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.string_to_array
DELIMITER //
CREATE FUNCTION "string_to_array"() RETURNS UNKNOWN AS $$ text_to_array $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.string_to_table
DELIMITER //
CREATE FUNCTION "string_to_table"() RETURNS TEXT AS $$ text_to_table_null $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.string_to_table
DELIMITER //
CREATE FUNCTION "string_to_table"() RETURNS TEXT AS $$ text_to_table $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.strip
DELIMITER //
CREATE FUNCTION "strip"() RETURNS UNKNOWN AS $$ tsvector_strip $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.strpos
DELIMITER //
CREATE FUNCTION "strpos"() RETURNS INTEGER AS $$ textpos $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.substr
DELIMITER //
CREATE FUNCTION "substr"() RETURNS TEXT AS $$ text_substr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.substr
DELIMITER //
CREATE FUNCTION "substr"() RETURNS BYTEA AS $$ bytea_substr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.substr
DELIMITER //
CREATE FUNCTION "substr"() RETURNS TEXT AS $$ text_substr_no_len $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.substr
DELIMITER //
CREATE FUNCTION "substr"() RETURNS BYTEA AS $$ bytea_substr_no_len $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.substring
DELIMITER //
CREATE FUNCTION "substring"() RETURNS TEXT AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.substring
DELIMITER //
CREATE FUNCTION "substring"() RETURNS TEXT AS $$ text_substr_no_len $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.substring
DELIMITER //
CREATE FUNCTION "substring"() RETURNS TEXT AS $$ text_substr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.substring
DELIMITER //
CREATE FUNCTION "substring"() RETURNS BYTEA AS $$ bytea_substr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.substring
DELIMITER //
CREATE FUNCTION "substring"() RETURNS TEXT AS $$ textregexsubstr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.substring
DELIMITER //
CREATE FUNCTION "substring"() RETURNS BIT AS $$ bitsubstr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.substring
DELIMITER //
CREATE FUNCTION "substring"() RETURNS BIT AS $$ bitsubstr_no_len $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.substring
DELIMITER //
CREATE FUNCTION "substring"() RETURNS BYTEA AS $$ bytea_substr_no_len $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sum
DELIMITER //
CREATE FUNCTION "sum"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sum
DELIMITER //
CREATE FUNCTION "sum"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sum
DELIMITER //
CREATE FUNCTION "sum"() RETURNS REAL AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sum
DELIMITER //
CREATE FUNCTION "sum"() RETURNS BIGINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sum
DELIMITER //
CREATE FUNCTION "sum"() RETURNS BIGINT AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sum
DELIMITER //
CREATE FUNCTION "sum"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sum
DELIMITER //
CREATE FUNCTION "sum"() RETURNS MONEY AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.sum
DELIMITER //
CREATE FUNCTION "sum"() RETURNS INTERVAL AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.suppress_redundant_updates_trigger
DELIMITER //
CREATE FUNCTION "suppress_redundant_updates_trigger"() RETURNS UNKNOWN AS $$ suppress_redundant_updates_trigger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.system
DELIMITER //
CREATE FUNCTION "system"() RETURNS UNKNOWN AS $$ tsm_system_handler $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.table_am_handler_in
DELIMITER //
CREATE FUNCTION "table_am_handler_in"() RETURNS UNKNOWN AS $$ table_am_handler_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.table_am_handler_out
DELIMITER //
CREATE FUNCTION "table_am_handler_out"() RETURNS UNKNOWN AS $$ table_am_handler_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.table_to_xml
DELIMITER //
CREATE FUNCTION "table_to_xml"(tbl REGCLASS, nulls BOOLEAN, tableforest BOOLEAN, targetns TEXT) RETURNS UNKNOWN AS $$ table_to_xml $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.table_to_xmlschema
DELIMITER //
CREATE FUNCTION "table_to_xmlschema"(tbl REGCLASS, nulls BOOLEAN, tableforest BOOLEAN, targetns TEXT) RETURNS UNKNOWN AS $$ table_to_xmlschema $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.table_to_xml_and_xmlschema
DELIMITER //
CREATE FUNCTION "table_to_xml_and_xmlschema"(tbl REGCLASS, nulls BOOLEAN, tableforest BOOLEAN, targetns TEXT) RETURNS UNKNOWN AS $$ table_to_xml_and_xmlschema $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tan
DELIMITER //
CREATE FUNCTION "tan"() RETURNS DOUBLE PRECISION AS $$ dtan $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tand
DELIMITER //
CREATE FUNCTION "tand"() RETURNS DOUBLE PRECISION AS $$ dtand $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tanh
DELIMITER //
CREATE FUNCTION "tanh"() RETURNS DOUBLE PRECISION AS $$ dtanh $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.text
DELIMITER //
CREATE FUNCTION "text"() RETURNS TEXT AS $$ network_show $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.text
DELIMITER //
CREATE FUNCTION "text"() RETURNS TEXT AS $$ rtrim1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.text
DELIMITER //
CREATE FUNCTION "text"() RETURNS TEXT AS $$ booltext $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.text
DELIMITER //
CREATE FUNCTION "text"() RETURNS TEXT AS $$ char_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.text
DELIMITER //
CREATE FUNCTION "text"() RETURNS TEXT AS $$ xmltotext $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.text
DELIMITER //
CREATE FUNCTION "text"() RETURNS TEXT AS $$ name_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textanycat
DELIMITER //
CREATE FUNCTION "textanycat"() RETURNS TEXT AS $$ select $1 operator(pg_catalog.||) $2::pg_catalog.text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textcat
DELIMITER //
CREATE FUNCTION "textcat"() RETURNS TEXT AS $$ textcat $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.texteq
DELIMITER //
CREATE FUNCTION "texteq"() RETURNS BOOLEAN AS $$ texteq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.texteqname
DELIMITER //
CREATE FUNCTION "texteqname"() RETURNS BOOLEAN AS $$ texteqname $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textgename
DELIMITER //
CREATE FUNCTION "textgename"() RETURNS BOOLEAN AS $$ textgename $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textgtname
DELIMITER //
CREATE FUNCTION "textgtname"() RETURNS BOOLEAN AS $$ textgtname $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.texticlike
DELIMITER //
CREATE FUNCTION "texticlike"() RETURNS BOOLEAN AS $$ texticlike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.texticlike_support
DELIMITER //
CREATE FUNCTION "texticlike_support"() RETURNS UNKNOWN AS $$ texticlike_support $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.texticnlike
DELIMITER //
CREATE FUNCTION "texticnlike"() RETURNS BOOLEAN AS $$ texticnlike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.texticregexeq
DELIMITER //
CREATE FUNCTION "texticregexeq"() RETURNS BOOLEAN AS $$ texticregexeq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.texticregexeq_support
DELIMITER //
CREATE FUNCTION "texticregexeq_support"() RETURNS UNKNOWN AS $$ texticregexeq_support $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.texticregexne
DELIMITER //
CREATE FUNCTION "texticregexne"() RETURNS BOOLEAN AS $$ texticregexne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textin
DELIMITER //
CREATE FUNCTION "textin"() RETURNS TEXT AS $$ textin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textlen
DELIMITER //
CREATE FUNCTION "textlen"() RETURNS INTEGER AS $$ textlen $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textlename
DELIMITER //
CREATE FUNCTION "textlename"() RETURNS BOOLEAN AS $$ textlename $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textlike
DELIMITER //
CREATE FUNCTION "textlike"() RETURNS BOOLEAN AS $$ textlike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textlike_support
DELIMITER //
CREATE FUNCTION "textlike_support"() RETURNS UNKNOWN AS $$ textlike_support $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textltname
DELIMITER //
CREATE FUNCTION "textltname"() RETURNS BOOLEAN AS $$ textltname $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textne
DELIMITER //
CREATE FUNCTION "textne"() RETURNS BOOLEAN AS $$ textne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textnename
DELIMITER //
CREATE FUNCTION "textnename"() RETURNS BOOLEAN AS $$ textnename $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textnlike
DELIMITER //
CREATE FUNCTION "textnlike"() RETURNS BOOLEAN AS $$ textnlike $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textout
DELIMITER //
CREATE FUNCTION "textout"() RETURNS UNKNOWN AS $$ textout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textrecv
DELIMITER //
CREATE FUNCTION "textrecv"() RETURNS TEXT AS $$ textrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textregexeq
DELIMITER //
CREATE FUNCTION "textregexeq"() RETURNS BOOLEAN AS $$ textregexeq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textregexeq_support
DELIMITER //
CREATE FUNCTION "textregexeq_support"() RETURNS UNKNOWN AS $$ textregexeq_support $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textregexne
DELIMITER //
CREATE FUNCTION "textregexne"() RETURNS BOOLEAN AS $$ textregexne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.textsend
DELIMITER //
CREATE FUNCTION "textsend"() RETURNS BYTEA AS $$ textsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.text_ge
DELIMITER //
CREATE FUNCTION "text_ge"() RETURNS BOOLEAN AS $$ text_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.text_gt
DELIMITER //
CREATE FUNCTION "text_gt"() RETURNS BOOLEAN AS $$ text_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.text_larger
DELIMITER //
CREATE FUNCTION "text_larger"() RETURNS TEXT AS $$ text_larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.text_le
DELIMITER //
CREATE FUNCTION "text_le"() RETURNS BOOLEAN AS $$ text_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.text_lt
DELIMITER //
CREATE FUNCTION "text_lt"() RETURNS BOOLEAN AS $$ text_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.text_pattern_ge
DELIMITER //
CREATE FUNCTION "text_pattern_ge"() RETURNS BOOLEAN AS $$ text_pattern_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.text_pattern_gt
DELIMITER //
CREATE FUNCTION "text_pattern_gt"() RETURNS BOOLEAN AS $$ text_pattern_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.text_pattern_le
DELIMITER //
CREATE FUNCTION "text_pattern_le"() RETURNS BOOLEAN AS $$ text_pattern_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.text_pattern_lt
DELIMITER //
CREATE FUNCTION "text_pattern_lt"() RETURNS BOOLEAN AS $$ text_pattern_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.text_smaller
DELIMITER //
CREATE FUNCTION "text_smaller"() RETURNS TEXT AS $$ text_smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.thesaurus_init
DELIMITER //
CREATE FUNCTION "thesaurus_init"() RETURNS UNKNOWN AS $$ thesaurus_init $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.thesaurus_lexize
DELIMITER //
CREATE FUNCTION "thesaurus_lexize"() RETURNS UNKNOWN AS $$ thesaurus_lexize $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tideq
DELIMITER //
CREATE FUNCTION "tideq"() RETURNS BOOLEAN AS $$ tideq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tidge
DELIMITER //
CREATE FUNCTION "tidge"() RETURNS BOOLEAN AS $$ tidge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tidgt
DELIMITER //
CREATE FUNCTION "tidgt"() RETURNS BOOLEAN AS $$ tidgt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tidin
DELIMITER //
CREATE FUNCTION "tidin"() RETURNS UNKNOWN AS $$ tidin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tidlarger
DELIMITER //
CREATE FUNCTION "tidlarger"() RETURNS UNKNOWN AS $$ tidlarger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tidle
DELIMITER //
CREATE FUNCTION "tidle"() RETURNS BOOLEAN AS $$ tidle $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tidlt
DELIMITER //
CREATE FUNCTION "tidlt"() RETURNS BOOLEAN AS $$ tidlt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tidne
DELIMITER //
CREATE FUNCTION "tidne"() RETURNS BOOLEAN AS $$ tidne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tidout
DELIMITER //
CREATE FUNCTION "tidout"() RETURNS UNKNOWN AS $$ tidout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tidrecv
DELIMITER //
CREATE FUNCTION "tidrecv"() RETURNS UNKNOWN AS $$ tidrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tidsend
DELIMITER //
CREATE FUNCTION "tidsend"() RETURNS BYTEA AS $$ tidsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tidsmaller
DELIMITER //
CREATE FUNCTION "tidsmaller"() RETURNS UNKNOWN AS $$ tidsmaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time
DELIMITER //
CREATE FUNCTION "time"() RETURNS TIME AS $$ timetz_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time
DELIMITER //
CREATE FUNCTION "time"() RETURNS TIME AS $$ timestamp_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time
DELIMITER //
CREATE FUNCTION "time"() RETURNS TIME AS $$ timestamptz_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time
DELIMITER //
CREATE FUNCTION "time"() RETURNS TIME AS $$ time_scale $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time
DELIMITER //
CREATE FUNCTION "time"() RETURNS TIME AS $$ interval_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timedate_pl
DELIMITER //
CREATE FUNCTION "timedate_pl"() RETURNS TIMESTAMP AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timeofday
DELIMITER //
CREATE FUNCTION "timeofday"() RETURNS TEXT AS $$ timeofday $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp
DELIMITER //
CREATE FUNCTION "timestamp"() RETURNS TIMESTAMP AS $$ date_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp
DELIMITER //
CREATE FUNCTION "timestamp"() RETURNS TIMESTAMP AS $$ timestamp_scale $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp
DELIMITER //
CREATE FUNCTION "timestamp"() RETURNS TIMESTAMP AS $$ datetime_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp
DELIMITER //
CREATE FUNCTION "timestamp"() RETURNS TIMESTAMP AS $$ timestamptz_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptypmodin
DELIMITER //
CREATE FUNCTION "timestamptypmodin"() RETURNS INTEGER AS $$ timestamptypmodin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptypmodout
DELIMITER //
CREATE FUNCTION "timestamptypmodout"() RETURNS UNKNOWN AS $$ timestamptypmodout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz
DELIMITER //
CREATE FUNCTION "timestamptz"() RETURNS TIMESTAMPTZ AS $$ date_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz
DELIMITER //
CREATE FUNCTION "timestamptz"() RETURNS TIMESTAMPTZ AS $$ timestamp_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz
DELIMITER //
CREATE FUNCTION "timestamptz"() RETURNS TIMESTAMPTZ AS $$ datetimetz_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz
DELIMITER //
CREATE FUNCTION "timestamptz"() RETURNS TIMESTAMPTZ AS $$ timestamptz_scale $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz
DELIMITER //
CREATE FUNCTION "timestamptz"() RETURNS TIMESTAMPTZ AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptztypmodin
DELIMITER //
CREATE FUNCTION "timestamptztypmodin"() RETURNS INTEGER AS $$ timestamptztypmodin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptztypmodout
DELIMITER //
CREATE FUNCTION "timestamptztypmodout"() RETURNS UNKNOWN AS $$ timestamptztypmodout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_cmp
DELIMITER //
CREATE FUNCTION "timestamptz_cmp"() RETURNS INTEGER AS $$ timestamp_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_cmp_date
DELIMITER //
CREATE FUNCTION "timestamptz_cmp_date"() RETURNS INTEGER AS $$ timestamptz_cmp_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_cmp_timestamp
DELIMITER //
CREATE FUNCTION "timestamptz_cmp_timestamp"() RETURNS INTEGER AS $$ timestamptz_cmp_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_eq
DELIMITER //
CREATE FUNCTION "timestamptz_eq"() RETURNS BOOLEAN AS $$ timestamp_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_eq_date
DELIMITER //
CREATE FUNCTION "timestamptz_eq_date"() RETURNS BOOLEAN AS $$ timestamptz_eq_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_eq_timestamp
DELIMITER //
CREATE FUNCTION "timestamptz_eq_timestamp"() RETURNS BOOLEAN AS $$ timestamptz_eq_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_ge
DELIMITER //
CREATE FUNCTION "timestamptz_ge"() RETURNS BOOLEAN AS $$ timestamp_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_ge_date
DELIMITER //
CREATE FUNCTION "timestamptz_ge_date"() RETURNS BOOLEAN AS $$ timestamptz_ge_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_ge_timestamp
DELIMITER //
CREATE FUNCTION "timestamptz_ge_timestamp"() RETURNS BOOLEAN AS $$ timestamptz_ge_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_gt
DELIMITER //
CREATE FUNCTION "timestamptz_gt"() RETURNS BOOLEAN AS $$ timestamp_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_gt_date
DELIMITER //
CREATE FUNCTION "timestamptz_gt_date"() RETURNS BOOLEAN AS $$ timestamptz_gt_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_gt_timestamp
DELIMITER //
CREATE FUNCTION "timestamptz_gt_timestamp"() RETURNS BOOLEAN AS $$ timestamptz_gt_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_in
DELIMITER //
CREATE FUNCTION "timestamptz_in"() RETURNS TIMESTAMPTZ AS $$ timestamptz_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_larger
DELIMITER //
CREATE FUNCTION "timestamptz_larger"() RETURNS TIMESTAMPTZ AS $$ timestamp_larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_le
DELIMITER //
CREATE FUNCTION "timestamptz_le"() RETURNS BOOLEAN AS $$ timestamp_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_le_date
DELIMITER //
CREATE FUNCTION "timestamptz_le_date"() RETURNS BOOLEAN AS $$ timestamptz_le_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_le_timestamp
DELIMITER //
CREATE FUNCTION "timestamptz_le_timestamp"() RETURNS BOOLEAN AS $$ timestamptz_le_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_lt
DELIMITER //
CREATE FUNCTION "timestamptz_lt"() RETURNS BOOLEAN AS $$ timestamp_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_lt_date
DELIMITER //
CREATE FUNCTION "timestamptz_lt_date"() RETURNS BOOLEAN AS $$ timestamptz_lt_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_lt_timestamp
DELIMITER //
CREATE FUNCTION "timestamptz_lt_timestamp"() RETURNS BOOLEAN AS $$ timestamptz_lt_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_mi
DELIMITER //
CREATE FUNCTION "timestamptz_mi"() RETURNS INTERVAL AS $$ timestamp_mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_mi_interval
DELIMITER //
CREATE FUNCTION "timestamptz_mi_interval"() RETURNS TIMESTAMPTZ AS $$ timestamptz_mi_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_ne
DELIMITER //
CREATE FUNCTION "timestamptz_ne"() RETURNS BOOLEAN AS $$ timestamp_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_ne_date
DELIMITER //
CREATE FUNCTION "timestamptz_ne_date"() RETURNS BOOLEAN AS $$ timestamptz_ne_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_ne_timestamp
DELIMITER //
CREATE FUNCTION "timestamptz_ne_timestamp"() RETURNS BOOLEAN AS $$ timestamptz_ne_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_out
DELIMITER //
CREATE FUNCTION "timestamptz_out"() RETURNS UNKNOWN AS $$ timestamptz_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_pl_interval
DELIMITER //
CREATE FUNCTION "timestamptz_pl_interval"() RETURNS TIMESTAMPTZ AS $$ timestamptz_pl_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_recv
DELIMITER //
CREATE FUNCTION "timestamptz_recv"() RETURNS TIMESTAMPTZ AS $$ timestamptz_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_send
DELIMITER //
CREATE FUNCTION "timestamptz_send"() RETURNS BYTEA AS $$ timestamptz_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamptz_smaller
DELIMITER //
CREATE FUNCTION "timestamptz_smaller"() RETURNS TIMESTAMPTZ AS $$ timestamp_smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_cmp
DELIMITER //
CREATE FUNCTION "timestamp_cmp"() RETURNS INTEGER AS $$ timestamp_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_cmp_date
DELIMITER //
CREATE FUNCTION "timestamp_cmp_date"() RETURNS INTEGER AS $$ timestamp_cmp_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_cmp_timestamptz
DELIMITER //
CREATE FUNCTION "timestamp_cmp_timestamptz"() RETURNS INTEGER AS $$ timestamp_cmp_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_eq
DELIMITER //
CREATE FUNCTION "timestamp_eq"() RETURNS BOOLEAN AS $$ timestamp_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_eq_date
DELIMITER //
CREATE FUNCTION "timestamp_eq_date"() RETURNS BOOLEAN AS $$ timestamp_eq_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_eq_timestamptz
DELIMITER //
CREATE FUNCTION "timestamp_eq_timestamptz"() RETURNS BOOLEAN AS $$ timestamp_eq_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_ge
DELIMITER //
CREATE FUNCTION "timestamp_ge"() RETURNS BOOLEAN AS $$ timestamp_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_ge_date
DELIMITER //
CREATE FUNCTION "timestamp_ge_date"() RETURNS BOOLEAN AS $$ timestamp_ge_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_ge_timestamptz
DELIMITER //
CREATE FUNCTION "timestamp_ge_timestamptz"() RETURNS BOOLEAN AS $$ timestamp_ge_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_gt
DELIMITER //
CREATE FUNCTION "timestamp_gt"() RETURNS BOOLEAN AS $$ timestamp_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_gt_date
DELIMITER //
CREATE FUNCTION "timestamp_gt_date"() RETURNS BOOLEAN AS $$ timestamp_gt_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_gt_timestamptz
DELIMITER //
CREATE FUNCTION "timestamp_gt_timestamptz"() RETURNS BOOLEAN AS $$ timestamp_gt_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_hash
DELIMITER //
CREATE FUNCTION "timestamp_hash"() RETURNS INTEGER AS $$ timestamp_hash $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_hash_extended
DELIMITER //
CREATE FUNCTION "timestamp_hash_extended"() RETURNS BIGINT AS $$ timestamp_hash_extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_in
DELIMITER //
CREATE FUNCTION "timestamp_in"() RETURNS TIMESTAMP AS $$ timestamp_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_larger
DELIMITER //
CREATE FUNCTION "timestamp_larger"() RETURNS TIMESTAMP AS $$ timestamp_larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_le
DELIMITER //
CREATE FUNCTION "timestamp_le"() RETURNS BOOLEAN AS $$ timestamp_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_le_date
DELIMITER //
CREATE FUNCTION "timestamp_le_date"() RETURNS BOOLEAN AS $$ timestamp_le_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_le_timestamptz
DELIMITER //
CREATE FUNCTION "timestamp_le_timestamptz"() RETURNS BOOLEAN AS $$ timestamp_le_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_lt
DELIMITER //
CREATE FUNCTION "timestamp_lt"() RETURNS BOOLEAN AS $$ timestamp_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_lt_date
DELIMITER //
CREATE FUNCTION "timestamp_lt_date"() RETURNS BOOLEAN AS $$ timestamp_lt_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_lt_timestamptz
DELIMITER //
CREATE FUNCTION "timestamp_lt_timestamptz"() RETURNS BOOLEAN AS $$ timestamp_lt_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_mi
DELIMITER //
CREATE FUNCTION "timestamp_mi"() RETURNS INTERVAL AS $$ timestamp_mi $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_mi_interval
DELIMITER //
CREATE FUNCTION "timestamp_mi_interval"() RETURNS TIMESTAMP AS $$ timestamp_mi_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_ne
DELIMITER //
CREATE FUNCTION "timestamp_ne"() RETURNS BOOLEAN AS $$ timestamp_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_ne_date
DELIMITER //
CREATE FUNCTION "timestamp_ne_date"() RETURNS BOOLEAN AS $$ timestamp_ne_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_ne_timestamptz
DELIMITER //
CREATE FUNCTION "timestamp_ne_timestamptz"() RETURNS BOOLEAN AS $$ timestamp_ne_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_out
DELIMITER //
CREATE FUNCTION "timestamp_out"() RETURNS UNKNOWN AS $$ timestamp_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_pl_interval
DELIMITER //
CREATE FUNCTION "timestamp_pl_interval"() RETURNS TIMESTAMP AS $$ timestamp_pl_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_recv
DELIMITER //
CREATE FUNCTION "timestamp_recv"() RETURNS TIMESTAMP AS $$ timestamp_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_send
DELIMITER //
CREATE FUNCTION "timestamp_send"() RETURNS BYTEA AS $$ timestamp_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_smaller
DELIMITER //
CREATE FUNCTION "timestamp_smaller"() RETURNS TIMESTAMP AS $$ timestamp_smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_sortsupport
DELIMITER //
CREATE FUNCTION "timestamp_sortsupport"() RETURNS UNKNOWN AS $$ timestamp_sortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timestamp_support
DELIMITER //
CREATE FUNCTION "timestamp_support"() RETURNS UNKNOWN AS $$ timestamp_support $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetypmodin
DELIMITER //
CREATE FUNCTION "timetypmodin"() RETURNS INTEGER AS $$ timetypmodin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetypmodout
DELIMITER //
CREATE FUNCTION "timetypmodout"() RETURNS UNKNOWN AS $$ timetypmodout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz
DELIMITER //
CREATE FUNCTION "timetz"() RETURNS UNKNOWN AS $$ timetz_scale $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz
DELIMITER //
CREATE FUNCTION "timetz"() RETURNS UNKNOWN AS $$ time_timetz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz
DELIMITER //
CREATE FUNCTION "timetz"() RETURNS UNKNOWN AS $$ timestamptz_timetz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetzdate_pl
DELIMITER //
CREATE FUNCTION "timetzdate_pl"() RETURNS TIMESTAMPTZ AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetztypmodin
DELIMITER //
CREATE FUNCTION "timetztypmodin"() RETURNS INTEGER AS $$ timetztypmodin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetztypmodout
DELIMITER //
CREATE FUNCTION "timetztypmodout"() RETURNS UNKNOWN AS $$ timetztypmodout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_cmp
DELIMITER //
CREATE FUNCTION "timetz_cmp"() RETURNS INTEGER AS $$ timetz_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_eq
DELIMITER //
CREATE FUNCTION "timetz_eq"() RETURNS BOOLEAN AS $$ timetz_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_ge
DELIMITER //
CREATE FUNCTION "timetz_ge"() RETURNS BOOLEAN AS $$ timetz_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_gt
DELIMITER //
CREATE FUNCTION "timetz_gt"() RETURNS BOOLEAN AS $$ timetz_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_hash
DELIMITER //
CREATE FUNCTION "timetz_hash"() RETURNS INTEGER AS $$ timetz_hash $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_hash_extended
DELIMITER //
CREATE FUNCTION "timetz_hash_extended"() RETURNS BIGINT AS $$ timetz_hash_extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_in
DELIMITER //
CREATE FUNCTION "timetz_in"() RETURNS UNKNOWN AS $$ timetz_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_larger
DELIMITER //
CREATE FUNCTION "timetz_larger"() RETURNS UNKNOWN AS $$ timetz_larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_le
DELIMITER //
CREATE FUNCTION "timetz_le"() RETURNS BOOLEAN AS $$ timetz_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_lt
DELIMITER //
CREATE FUNCTION "timetz_lt"() RETURNS BOOLEAN AS $$ timetz_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_mi_interval
DELIMITER //
CREATE FUNCTION "timetz_mi_interval"() RETURNS UNKNOWN AS $$ timetz_mi_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_ne
DELIMITER //
CREATE FUNCTION "timetz_ne"() RETURNS BOOLEAN AS $$ timetz_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_out
DELIMITER //
CREATE FUNCTION "timetz_out"() RETURNS UNKNOWN AS $$ timetz_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_pl_interval
DELIMITER //
CREATE FUNCTION "timetz_pl_interval"() RETURNS UNKNOWN AS $$ timetz_pl_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_recv
DELIMITER //
CREATE FUNCTION "timetz_recv"() RETURNS UNKNOWN AS $$ timetz_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_send
DELIMITER //
CREATE FUNCTION "timetz_send"() RETURNS BYTEA AS $$ timetz_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timetz_smaller
DELIMITER //
CREATE FUNCTION "timetz_smaller"() RETURNS UNKNOWN AS $$ timetz_smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timezone
DELIMITER //
CREATE FUNCTION "timezone"() RETURNS TIMESTAMP AS $$ timestamptz_zone $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timezone
DELIMITER //
CREATE FUNCTION "timezone"() RETURNS UNKNOWN AS $$ timetz_izone $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timezone
DELIMITER //
CREATE FUNCTION "timezone"() RETURNS TIMESTAMPTZ AS $$ timestamp_zone $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timezone
DELIMITER //
CREATE FUNCTION "timezone"() RETURNS UNKNOWN AS $$ timetz_zone $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timezone
DELIMITER //
CREATE FUNCTION "timezone"() RETURNS TIMESTAMPTZ AS $$ timestamp_izone $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.timezone
DELIMITER //
CREATE FUNCTION "timezone"() RETURNS TIMESTAMP AS $$ timestamptz_izone $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_cmp
DELIMITER //
CREATE FUNCTION "time_cmp"() RETURNS INTEGER AS $$ time_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_eq
DELIMITER //
CREATE FUNCTION "time_eq"() RETURNS BOOLEAN AS $$ time_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_ge
DELIMITER //
CREATE FUNCTION "time_ge"() RETURNS BOOLEAN AS $$ time_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_gt
DELIMITER //
CREATE FUNCTION "time_gt"() RETURNS BOOLEAN AS $$ time_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_hash
DELIMITER //
CREATE FUNCTION "time_hash"() RETURNS INTEGER AS $$ time_hash $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_hash_extended
DELIMITER //
CREATE FUNCTION "time_hash_extended"() RETURNS BIGINT AS $$ time_hash_extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_in
DELIMITER //
CREATE FUNCTION "time_in"() RETURNS TIME AS $$ time_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_larger
DELIMITER //
CREATE FUNCTION "time_larger"() RETURNS TIME AS $$ time_larger $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_le
DELIMITER //
CREATE FUNCTION "time_le"() RETURNS BOOLEAN AS $$ time_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_lt
DELIMITER //
CREATE FUNCTION "time_lt"() RETURNS BOOLEAN AS $$ time_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_mi_interval
DELIMITER //
CREATE FUNCTION "time_mi_interval"() RETURNS TIME AS $$ time_mi_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_mi_time
DELIMITER //
CREATE FUNCTION "time_mi_time"() RETURNS INTERVAL AS $$ time_mi_time $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_ne
DELIMITER //
CREATE FUNCTION "time_ne"() RETURNS BOOLEAN AS $$ time_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_out
DELIMITER //
CREATE FUNCTION "time_out"() RETURNS UNKNOWN AS $$ time_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_pl_interval
DELIMITER //
CREATE FUNCTION "time_pl_interval"() RETURNS TIME AS $$ time_pl_interval $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_recv
DELIMITER //
CREATE FUNCTION "time_recv"() RETURNS TIME AS $$ time_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_send
DELIMITER //
CREATE FUNCTION "time_send"() RETURNS BYTEA AS $$ time_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_smaller
DELIMITER //
CREATE FUNCTION "time_smaller"() RETURNS TIME AS $$ time_smaller $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.time_support
DELIMITER //
CREATE FUNCTION "time_support"() RETURNS UNKNOWN AS $$ time_support $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_ascii
DELIMITER //
CREATE FUNCTION "to_ascii"() RETURNS TEXT AS $$ to_ascii_encname $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_ascii
DELIMITER //
CREATE FUNCTION "to_ascii"() RETURNS TEXT AS $$ to_ascii_default $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_ascii
DELIMITER //
CREATE FUNCTION "to_ascii"() RETURNS TEXT AS $$ to_ascii_enc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_char
DELIMITER //
CREATE FUNCTION "to_char"() RETURNS TEXT AS $$ timestamptz_to_char $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_char
DELIMITER //
CREATE FUNCTION "to_char"() RETURNS TEXT AS $$ float4_to_char $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_char
DELIMITER //
CREATE FUNCTION "to_char"() RETURNS TEXT AS $$ numeric_to_char $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_char
DELIMITER //
CREATE FUNCTION "to_char"() RETURNS TEXT AS $$ float8_to_char $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_char
DELIMITER //
CREATE FUNCTION "to_char"() RETURNS TEXT AS $$ int4_to_char $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_char
DELIMITER //
CREATE FUNCTION "to_char"() RETURNS TEXT AS $$ timestamp_to_char $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_char
DELIMITER //
CREATE FUNCTION "to_char"() RETURNS TEXT AS $$ interval_to_char $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_char
DELIMITER //
CREATE FUNCTION "to_char"() RETURNS TEXT AS $$ int8_to_char $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_date
DELIMITER //
CREATE FUNCTION "to_date"() RETURNS DATE AS $$ to_date $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_hex
DELIMITER //
CREATE FUNCTION "to_hex"() RETURNS TEXT AS $$ to_hex64 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_hex
DELIMITER //
CREATE FUNCTION "to_hex"() RETURNS TEXT AS $$ to_hex32 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_json
DELIMITER //
CREATE FUNCTION "to_json"() RETURNS JSON AS $$ to_json $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_jsonb
DELIMITER //
CREATE FUNCTION "to_jsonb"() RETURNS JSONB AS $$ to_jsonb $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_number
DELIMITER //
CREATE FUNCTION "to_number"() RETURNS NUMERIC AS $$ numeric_to_number $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_regclass
DELIMITER //
CREATE FUNCTION "to_regclass"() RETURNS REGCLASS AS $$ to_regclass $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_regcollation
DELIMITER //
CREATE FUNCTION "to_regcollation"() RETURNS UNKNOWN AS $$ to_regcollation $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_regnamespace
DELIMITER //
CREATE FUNCTION "to_regnamespace"() RETURNS UNKNOWN AS $$ to_regnamespace $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_regoper
DELIMITER //
CREATE FUNCTION "to_regoper"() RETURNS UNKNOWN AS $$ to_regoper $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_regoperator
DELIMITER //
CREATE FUNCTION "to_regoperator"() RETURNS UNKNOWN AS $$ to_regoperator $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_regproc
DELIMITER //
CREATE FUNCTION "to_regproc"() RETURNS VARCHAR AS $$ to_regproc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_regprocedure
DELIMITER //
CREATE FUNCTION "to_regprocedure"() RETURNS UNKNOWN AS $$ to_regprocedure $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_regrole
DELIMITER //
CREATE FUNCTION "to_regrole"() RETURNS UNKNOWN AS $$ to_regrole $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_regtype
DELIMITER //
CREATE FUNCTION "to_regtype"() RETURNS UNKNOWN AS $$ to_regtype $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_timestamp
DELIMITER //
CREATE FUNCTION "to_timestamp"() RETURNS TIMESTAMPTZ AS $$ to_timestamp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_timestamp
DELIMITER //
CREATE FUNCTION "to_timestamp"() RETURNS TIMESTAMPTZ AS $$ float8_timestamptz $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_tsquery
DELIMITER //
CREATE FUNCTION "to_tsquery"() RETURNS UNKNOWN AS $$ to_tsquery_byid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_tsquery
DELIMITER //
CREATE FUNCTION "to_tsquery"() RETURNS UNKNOWN AS $$ to_tsquery $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_tsvector
DELIMITER //
CREATE FUNCTION "to_tsvector"() RETURNS UNKNOWN AS $$ to_tsvector_byid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_tsvector
DELIMITER //
CREATE FUNCTION "to_tsvector"() RETURNS UNKNOWN AS $$ to_tsvector $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_tsvector
DELIMITER //
CREATE FUNCTION "to_tsvector"() RETURNS UNKNOWN AS $$ jsonb_string_to_tsvector $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_tsvector
DELIMITER //
CREATE FUNCTION "to_tsvector"() RETURNS UNKNOWN AS $$ json_string_to_tsvector $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_tsvector
DELIMITER //
CREATE FUNCTION "to_tsvector"() RETURNS UNKNOWN AS $$ json_string_to_tsvector_byid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.to_tsvector
DELIMITER //
CREATE FUNCTION "to_tsvector"() RETURNS UNKNOWN AS $$ jsonb_string_to_tsvector_byid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.transaction_timestamp
DELIMITER //
CREATE FUNCTION "transaction_timestamp"() RETURNS TIMESTAMPTZ AS $$ now $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.translate
DELIMITER //
CREATE FUNCTION "translate"() RETURNS TEXT AS $$ translate $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.trigger_in
DELIMITER //
CREATE FUNCTION "trigger_in"() RETURNS UNKNOWN AS $$ trigger_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.trigger_out
DELIMITER //
CREATE FUNCTION "trigger_out"() RETURNS UNKNOWN AS $$ trigger_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.trim_array
DELIMITER //
CREATE FUNCTION "trim_array"() RETURNS UNKNOWN AS $$ trim_array $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.trim_scale
DELIMITER //
CREATE FUNCTION "trim_scale"() RETURNS NUMERIC AS $$ numeric_trim_scale $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.trunc
DELIMITER //
CREATE FUNCTION "trunc"() RETURNS NUMERIC AS $$ numeric_trunc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.trunc
DELIMITER //
CREATE FUNCTION "trunc"() RETURNS UNKNOWN AS $$ macaddr8_trunc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.trunc
DELIMITER //
CREATE FUNCTION "trunc"() RETURNS MACADDR AS $$ macaddr_trunc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.trunc
DELIMITER //
CREATE FUNCTION "trunc"() RETURNS DOUBLE PRECISION AS $$ dtrunc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.trunc
DELIMITER //
CREATE FUNCTION "trunc"() RETURNS NUMERIC AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsmatchjoinsel
DELIMITER //
CREATE FUNCTION "tsmatchjoinsel"() RETURNS DOUBLE PRECISION AS $$ tsmatchjoinsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsmatchsel
DELIMITER //
CREATE FUNCTION "tsmatchsel"() RETURNS DOUBLE PRECISION AS $$ tsmatchsel $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsmultirange
DELIMITER //
CREATE FUNCTION "tsmultirange"() RETURNS UNKNOWN AS $$ multirange_constructor2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsmultirange
DELIMITER //
CREATE FUNCTION "tsmultirange"() RETURNS UNKNOWN AS $$ multirange_constructor1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsmultirange
DELIMITER //
CREATE FUNCTION "tsmultirange"() RETURNS UNKNOWN AS $$ multirange_constructor0 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsm_handler_in
DELIMITER //
CREATE FUNCTION "tsm_handler_in"() RETURNS UNKNOWN AS $$ tsm_handler_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsm_handler_out
DELIMITER //
CREATE FUNCTION "tsm_handler_out"() RETURNS UNKNOWN AS $$ tsm_handler_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsqueryin
DELIMITER //
CREATE FUNCTION "tsqueryin"() RETURNS UNKNOWN AS $$ tsqueryin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsqueryout
DELIMITER //
CREATE FUNCTION "tsqueryout"() RETURNS UNKNOWN AS $$ tsqueryout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsqueryrecv
DELIMITER //
CREATE FUNCTION "tsqueryrecv"() RETURNS UNKNOWN AS $$ tsqueryrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsquerysend
DELIMITER //
CREATE FUNCTION "tsquerysend"() RETURNS BYTEA AS $$ tsquerysend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsquery_and
DELIMITER //
CREATE FUNCTION "tsquery_and"() RETURNS UNKNOWN AS $$ tsquery_and $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsquery_cmp
DELIMITER //
CREATE FUNCTION "tsquery_cmp"() RETURNS INTEGER AS $$ tsquery_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsquery_eq
DELIMITER //
CREATE FUNCTION "tsquery_eq"() RETURNS BOOLEAN AS $$ tsquery_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsquery_ge
DELIMITER //
CREATE FUNCTION "tsquery_ge"() RETURNS BOOLEAN AS $$ tsquery_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsquery_gt
DELIMITER //
CREATE FUNCTION "tsquery_gt"() RETURNS BOOLEAN AS $$ tsquery_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsquery_le
DELIMITER //
CREATE FUNCTION "tsquery_le"() RETURNS BOOLEAN AS $$ tsquery_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsquery_lt
DELIMITER //
CREATE FUNCTION "tsquery_lt"() RETURNS BOOLEAN AS $$ tsquery_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsquery_ne
DELIMITER //
CREATE FUNCTION "tsquery_ne"() RETURNS BOOLEAN AS $$ tsquery_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsquery_not
DELIMITER //
CREATE FUNCTION "tsquery_not"() RETURNS UNKNOWN AS $$ tsquery_not $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsquery_or
DELIMITER //
CREATE FUNCTION "tsquery_or"() RETURNS UNKNOWN AS $$ tsquery_or $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsquery_phrase
DELIMITER //
CREATE FUNCTION "tsquery_phrase"() RETURNS UNKNOWN AS $$ tsquery_phrase_distance $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsquery_phrase
DELIMITER //
CREATE FUNCTION "tsquery_phrase"() RETURNS UNKNOWN AS $$ tsquery_phrase $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsq_mcontained
DELIMITER //
CREATE FUNCTION "tsq_mcontained"() RETURNS BOOLEAN AS $$ tsq_mcontained $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsq_mcontains
DELIMITER //
CREATE FUNCTION "tsq_mcontains"() RETURNS BOOLEAN AS $$ tsq_mcontains $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsrange
DELIMITER //
CREATE FUNCTION "tsrange"() RETURNS UNKNOWN AS $$ range_constructor3 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsrange
DELIMITER //
CREATE FUNCTION "tsrange"() RETURNS UNKNOWN AS $$ range_constructor2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsrange_subdiff
DELIMITER //
CREATE FUNCTION "tsrange_subdiff"() RETURNS DOUBLE PRECISION AS $$ tsrange_subdiff $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tstzmultirange
DELIMITER //
CREATE FUNCTION "tstzmultirange"() RETURNS UNKNOWN AS $$ multirange_constructor0 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tstzmultirange
DELIMITER //
CREATE FUNCTION "tstzmultirange"() RETURNS UNKNOWN AS $$ multirange_constructor1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tstzmultirange
DELIMITER //
CREATE FUNCTION "tstzmultirange"() RETURNS UNKNOWN AS $$ multirange_constructor2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tstzrange
DELIMITER //
CREATE FUNCTION "tstzrange"() RETURNS UNKNOWN AS $$ range_constructor2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tstzrange
DELIMITER //
CREATE FUNCTION "tstzrange"() RETURNS UNKNOWN AS $$ range_constructor3 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tstzrange_subdiff
DELIMITER //
CREATE FUNCTION "tstzrange_subdiff"() RETURNS DOUBLE PRECISION AS $$ tstzrange_subdiff $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsvectorin
DELIMITER //
CREATE FUNCTION "tsvectorin"() RETURNS UNKNOWN AS $$ tsvectorin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsvectorout
DELIMITER //
CREATE FUNCTION "tsvectorout"() RETURNS UNKNOWN AS $$ tsvectorout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsvectorrecv
DELIMITER //
CREATE FUNCTION "tsvectorrecv"() RETURNS UNKNOWN AS $$ tsvectorrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsvectorsend
DELIMITER //
CREATE FUNCTION "tsvectorsend"() RETURNS BYTEA AS $$ tsvectorsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsvector_cmp
DELIMITER //
CREATE FUNCTION "tsvector_cmp"() RETURNS INTEGER AS $$ tsvector_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsvector_concat
DELIMITER //
CREATE FUNCTION "tsvector_concat"() RETURNS UNKNOWN AS $$ tsvector_concat $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsvector_eq
DELIMITER //
CREATE FUNCTION "tsvector_eq"() RETURNS BOOLEAN AS $$ tsvector_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsvector_ge
DELIMITER //
CREATE FUNCTION "tsvector_ge"() RETURNS BOOLEAN AS $$ tsvector_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsvector_gt
DELIMITER //
CREATE FUNCTION "tsvector_gt"() RETURNS BOOLEAN AS $$ tsvector_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsvector_le
DELIMITER //
CREATE FUNCTION "tsvector_le"() RETURNS BOOLEAN AS $$ tsvector_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsvector_lt
DELIMITER //
CREATE FUNCTION "tsvector_lt"() RETURNS BOOLEAN AS $$ tsvector_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsvector_ne
DELIMITER //
CREATE FUNCTION "tsvector_ne"() RETURNS BOOLEAN AS $$ tsvector_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsvector_to_array
DELIMITER //
CREATE FUNCTION "tsvector_to_array"() RETURNS UNKNOWN AS $$ tsvector_to_array $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsvector_update_trigger
DELIMITER //
CREATE FUNCTION "tsvector_update_trigger"() RETURNS UNKNOWN AS $$ tsvector_update_trigger_byid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.tsvector_update_trigger_column
DELIMITER //
CREATE FUNCTION "tsvector_update_trigger_column"() RETURNS UNKNOWN AS $$ tsvector_update_trigger_bycolumn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_debug
DELIMITER //
CREATE FUNCTION "ts_debug"(document TEXT, alias , description , token , dictionaries , dictionary , lexemes ) RETURNS UNKNOWN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_debug
DELIMITER //
CREATE FUNCTION "ts_debug"(config UNKNOWN, document TEXT, alias , description , token , dictionaries , dictionary , lexemes ) RETURNS UNKNOWN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_delete
DELIMITER //
CREATE FUNCTION "ts_delete"() RETURNS UNKNOWN AS $$ tsvector_delete_str $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_delete
DELIMITER //
CREATE FUNCTION "ts_delete"() RETURNS UNKNOWN AS $$ tsvector_delete_arr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_filter
DELIMITER //
CREATE FUNCTION "ts_filter"() RETURNS UNKNOWN AS $$ tsvector_filter $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_headline
DELIMITER //
CREATE FUNCTION "ts_headline"() RETURNS TEXT AS $$ ts_headline_byid_opt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_headline
DELIMITER //
CREATE FUNCTION "ts_headline"() RETURNS TEXT AS $$ ts_headline_byid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_headline
DELIMITER //
CREATE FUNCTION "ts_headline"() RETURNS TEXT AS $$ ts_headline $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_headline
DELIMITER //
CREATE FUNCTION "ts_headline"() RETURNS TEXT AS $$ ts_headline_opt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_headline
DELIMITER //
CREATE FUNCTION "ts_headline"() RETURNS JSON AS $$ ts_headline_json_byid_opt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_headline
DELIMITER //
CREATE FUNCTION "ts_headline"() RETURNS JSONB AS $$ ts_headline_jsonb $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_headline
DELIMITER //
CREATE FUNCTION "ts_headline"() RETURNS JSONB AS $$ ts_headline_jsonb_opt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_headline
DELIMITER //
CREATE FUNCTION "ts_headline"() RETURNS JSON AS $$ ts_headline_json $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_headline
DELIMITER //
CREATE FUNCTION "ts_headline"() RETURNS JSON AS $$ ts_headline_json_opt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_headline
DELIMITER //
CREATE FUNCTION "ts_headline"() RETURNS JSON AS $$ ts_headline_json_byid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_headline
DELIMITER //
CREATE FUNCTION "ts_headline"() RETURNS JSONB AS $$ ts_headline_jsonb_byid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_headline
DELIMITER //
CREATE FUNCTION "ts_headline"() RETURNS JSONB AS $$ ts_headline_jsonb_byid_opt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_lexize
DELIMITER //
CREATE FUNCTION "ts_lexize"() RETURNS UNKNOWN AS $$ ts_lexize $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_match_qv
DELIMITER //
CREATE FUNCTION "ts_match_qv"() RETURNS BOOLEAN AS $$ ts_match_qv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_match_tq
DELIMITER //
CREATE FUNCTION "ts_match_tq"() RETURNS BOOLEAN AS $$ ts_match_tq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_match_tt
DELIMITER //
CREATE FUNCTION "ts_match_tt"() RETURNS BOOLEAN AS $$ ts_match_tt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_match_vq
DELIMITER //
CREATE FUNCTION "ts_match_vq"() RETURNS BOOLEAN AS $$ ts_match_vq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_parse
DELIMITER //
CREATE FUNCTION "ts_parse"(parser_name TEXT, txt TEXT, tokid , token ) RETURNS UNKNOWN AS $$ ts_parse_byname $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_parse
DELIMITER //
CREATE FUNCTION "ts_parse"(parser_oid INTEGER, txt TEXT, tokid , token ) RETURNS UNKNOWN AS $$ ts_parse_byid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_rank
DELIMITER //
CREATE FUNCTION "ts_rank"() RETURNS REAL AS $$ ts_rank_wtt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_rank
DELIMITER //
CREATE FUNCTION "ts_rank"() RETURNS REAL AS $$ ts_rank_ttf $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_rank
DELIMITER //
CREATE FUNCTION "ts_rank"() RETURNS REAL AS $$ ts_rank_tt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_rank
DELIMITER //
CREATE FUNCTION "ts_rank"() RETURNS REAL AS $$ ts_rank_wttf $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_rank_cd
DELIMITER //
CREATE FUNCTION "ts_rank_cd"() RETURNS REAL AS $$ ts_rankcd_ttf $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_rank_cd
DELIMITER //
CREATE FUNCTION "ts_rank_cd"() RETURNS REAL AS $$ ts_rankcd_wttf $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_rank_cd
DELIMITER //
CREATE FUNCTION "ts_rank_cd"() RETURNS REAL AS $$ ts_rankcd_tt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_rank_cd
DELIMITER //
CREATE FUNCTION "ts_rank_cd"() RETURNS REAL AS $$ ts_rankcd_wtt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_rewrite
DELIMITER //
CREATE FUNCTION "ts_rewrite"() RETURNS UNKNOWN AS $$ tsquery_rewrite $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_rewrite
DELIMITER //
CREATE FUNCTION "ts_rewrite"() RETURNS UNKNOWN AS $$ tsquery_rewrite_query $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_stat
DELIMITER //
CREATE FUNCTION "ts_stat"(query TEXT, weights TEXT, word , ndoc , nentry ) RETURNS UNKNOWN AS $$ ts_stat2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_stat
DELIMITER //
CREATE FUNCTION "ts_stat"(query TEXT, word , ndoc , nentry ) RETURNS UNKNOWN AS $$ ts_stat1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_token_type
DELIMITER //
CREATE FUNCTION "ts_token_type"(parser_oid INTEGER, tokid , alias , description ) RETURNS UNKNOWN AS $$ ts_token_type_byid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_token_type
DELIMITER //
CREATE FUNCTION "ts_token_type"(parser_name TEXT, tokid , alias , description ) RETURNS UNKNOWN AS $$ ts_token_type_byname $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.ts_typanalyze
DELIMITER //
CREATE FUNCTION "ts_typanalyze"() RETURNS BOOLEAN AS $$ ts_typanalyze $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.txid_current
DELIMITER //
CREATE FUNCTION "txid_current"() RETURNS BIGINT AS $$ pg_current_xact_id $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.txid_current_if_assigned
DELIMITER //
CREATE FUNCTION "txid_current_if_assigned"() RETURNS BIGINT AS $$ pg_current_xact_id_if_assigned $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.txid_current_snapshot
DELIMITER //
CREATE FUNCTION "txid_current_snapshot"() RETURNS UNKNOWN AS $$ pg_current_snapshot $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.txid_snapshot_in
DELIMITER //
CREATE FUNCTION "txid_snapshot_in"() RETURNS UNKNOWN AS $$ pg_snapshot_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.txid_snapshot_out
DELIMITER //
CREATE FUNCTION "txid_snapshot_out"() RETURNS UNKNOWN AS $$ pg_snapshot_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.txid_snapshot_recv
DELIMITER //
CREATE FUNCTION "txid_snapshot_recv"() RETURNS UNKNOWN AS $$ pg_snapshot_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.txid_snapshot_send
DELIMITER //
CREATE FUNCTION "txid_snapshot_send"() RETURNS BYTEA AS $$ pg_snapshot_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.txid_snapshot_xip
DELIMITER //
CREATE FUNCTION "txid_snapshot_xip"() RETURNS BIGINT AS $$ pg_snapshot_xip $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.txid_snapshot_xmax
DELIMITER //
CREATE FUNCTION "txid_snapshot_xmax"() RETURNS BIGINT AS $$ pg_snapshot_xmax $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.txid_snapshot_xmin
DELIMITER //
CREATE FUNCTION "txid_snapshot_xmin"() RETURNS BIGINT AS $$ pg_snapshot_xmin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.txid_status
DELIMITER //
CREATE FUNCTION "txid_status"() RETURNS TEXT AS $$ pg_xact_status $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.txid_visible_in_snapshot
DELIMITER //
CREATE FUNCTION "txid_visible_in_snapshot"() RETURNS BOOLEAN AS $$ pg_visible_in_snapshot $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.uhc_to_utf8
DELIMITER //
CREATE FUNCTION "uhc_to_utf8"() RETURNS INTEGER AS $$ uhc_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.unique_key_recheck
DELIMITER //
CREATE FUNCTION "unique_key_recheck"() RETURNS UNKNOWN AS $$ unique_key_recheck $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.unistr
DELIMITER //
CREATE FUNCTION "unistr"() RETURNS TEXT AS $$ unistr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.unknownin
DELIMITER //
CREATE FUNCTION "unknownin"() RETURNS UNKNOWN AS $$ unknownin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.unknownout
DELIMITER //
CREATE FUNCTION "unknownout"() RETURNS UNKNOWN AS $$ unknownout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.unknownrecv
DELIMITER //
CREATE FUNCTION "unknownrecv"() RETURNS UNKNOWN AS $$ unknownrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.unknownsend
DELIMITER //
CREATE FUNCTION "unknownsend"() RETURNS BYTEA AS $$ unknownsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.unnest
DELIMITER //
CREATE FUNCTION "unnest"() RETURNS UNKNOWN AS $$ multirange_unnest $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.unnest
DELIMITER //
CREATE FUNCTION "unnest"() RETURNS UNKNOWN AS $$ array_unnest $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.unnest
DELIMITER //
CREATE FUNCTION "unnest"(tsvector UNKNOWN, lexeme , positions , weights ) RETURNS UNKNOWN AS $$ tsvector_unnest $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.upper
DELIMITER //
CREATE FUNCTION "upper"() RETURNS UNKNOWN AS $$ multirange_upper $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.upper
DELIMITER //
CREATE FUNCTION "upper"() RETURNS TEXT AS $$ upper $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.upper
DELIMITER //
CREATE FUNCTION "upper"() RETURNS UNKNOWN AS $$ range_upper $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.upper_inc
DELIMITER //
CREATE FUNCTION "upper_inc"() RETURNS BOOLEAN AS $$ range_upper_inc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.upper_inc
DELIMITER //
CREATE FUNCTION "upper_inc"() RETURNS BOOLEAN AS $$ multirange_upper_inc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.upper_inf
DELIMITER //
CREATE FUNCTION "upper_inf"() RETURNS BOOLEAN AS $$ multirange_upper_inf $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.upper_inf
DELIMITER //
CREATE FUNCTION "upper_inf"() RETURNS BOOLEAN AS $$ range_upper_inf $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_big5
DELIMITER //
CREATE FUNCTION "utf8_to_big5"() RETURNS INTEGER AS $$ utf8_to_big5 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_euc_cn
DELIMITER //
CREATE FUNCTION "utf8_to_euc_cn"() RETURNS INTEGER AS $$ utf8_to_euc_cn $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_euc_jis_2004
DELIMITER //
CREATE FUNCTION "utf8_to_euc_jis_2004"() RETURNS INTEGER AS $$ utf8_to_euc_jis_2004 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_euc_jp
DELIMITER //
CREATE FUNCTION "utf8_to_euc_jp"() RETURNS INTEGER AS $$ utf8_to_euc_jp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_euc_kr
DELIMITER //
CREATE FUNCTION "utf8_to_euc_kr"() RETURNS INTEGER AS $$ utf8_to_euc_kr $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_euc_tw
DELIMITER //
CREATE FUNCTION "utf8_to_euc_tw"() RETURNS INTEGER AS $$ utf8_to_euc_tw $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_gb18030
DELIMITER //
CREATE FUNCTION "utf8_to_gb18030"() RETURNS INTEGER AS $$ utf8_to_gb18030 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_gbk
DELIMITER //
CREATE FUNCTION "utf8_to_gbk"() RETURNS INTEGER AS $$ utf8_to_gbk $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_iso8859
DELIMITER //
CREATE FUNCTION "utf8_to_iso8859"() RETURNS INTEGER AS $$ utf8_to_iso8859 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_iso8859_1
DELIMITER //
CREATE FUNCTION "utf8_to_iso8859_1"() RETURNS INTEGER AS $$ utf8_to_iso8859_1 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_johab
DELIMITER //
CREATE FUNCTION "utf8_to_johab"() RETURNS INTEGER AS $$ utf8_to_johab $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_koi8r
DELIMITER //
CREATE FUNCTION "utf8_to_koi8r"() RETURNS INTEGER AS $$ utf8_to_koi8r $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_koi8u
DELIMITER //
CREATE FUNCTION "utf8_to_koi8u"() RETURNS INTEGER AS $$ utf8_to_koi8u $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_shift_jis_2004
DELIMITER //
CREATE FUNCTION "utf8_to_shift_jis_2004"() RETURNS INTEGER AS $$ utf8_to_shift_jis_2004 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_sjis
DELIMITER //
CREATE FUNCTION "utf8_to_sjis"() RETURNS INTEGER AS $$ utf8_to_sjis $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_uhc
DELIMITER //
CREATE FUNCTION "utf8_to_uhc"() RETURNS INTEGER AS $$ utf8_to_uhc $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.utf8_to_win
DELIMITER //
CREATE FUNCTION "utf8_to_win"() RETURNS INTEGER AS $$ utf8_to_win $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.uuid_cmp
DELIMITER //
CREATE FUNCTION "uuid_cmp"() RETURNS INTEGER AS $$ uuid_cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.uuid_eq
DELIMITER //
CREATE FUNCTION "uuid_eq"() RETURNS BOOLEAN AS $$ uuid_eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.uuid_ge
DELIMITER //
CREATE FUNCTION "uuid_ge"() RETURNS BOOLEAN AS $$ uuid_ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.uuid_gt
DELIMITER //
CREATE FUNCTION "uuid_gt"() RETURNS BOOLEAN AS $$ uuid_gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.uuid_hash
DELIMITER //
CREATE FUNCTION "uuid_hash"() RETURNS INTEGER AS $$ uuid_hash $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.uuid_hash_extended
DELIMITER //
CREATE FUNCTION "uuid_hash_extended"() RETURNS BIGINT AS $$ uuid_hash_extended $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.uuid_in
DELIMITER //
CREATE FUNCTION "uuid_in"() RETURNS UUID AS $$ uuid_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.uuid_le
DELIMITER //
CREATE FUNCTION "uuid_le"() RETURNS BOOLEAN AS $$ uuid_le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.uuid_lt
DELIMITER //
CREATE FUNCTION "uuid_lt"() RETURNS BOOLEAN AS $$ uuid_lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.uuid_ne
DELIMITER //
CREATE FUNCTION "uuid_ne"() RETURNS BOOLEAN AS $$ uuid_ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.uuid_out
DELIMITER //
CREATE FUNCTION "uuid_out"() RETURNS UNKNOWN AS $$ uuid_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.uuid_recv
DELIMITER //
CREATE FUNCTION "uuid_recv"() RETURNS UUID AS $$ uuid_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.uuid_send
DELIMITER //
CREATE FUNCTION "uuid_send"() RETURNS BYTEA AS $$ uuid_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.uuid_sortsupport
DELIMITER //
CREATE FUNCTION "uuid_sortsupport"() RETURNS UNKNOWN AS $$ uuid_sortsupport $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varbit
DELIMITER //
CREATE FUNCTION "varbit"() RETURNS BIT VARYING AS $$ varbit $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varbitcmp
DELIMITER //
CREATE FUNCTION "varbitcmp"() RETURNS INTEGER AS $$ bitcmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varbiteq
DELIMITER //
CREATE FUNCTION "varbiteq"() RETURNS BOOLEAN AS $$ biteq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varbitge
DELIMITER //
CREATE FUNCTION "varbitge"() RETURNS BOOLEAN AS $$ bitge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varbitgt
DELIMITER //
CREATE FUNCTION "varbitgt"() RETURNS BOOLEAN AS $$ bitgt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varbitle
DELIMITER //
CREATE FUNCTION "varbitle"() RETURNS BOOLEAN AS $$ bitle $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varbitlt
DELIMITER //
CREATE FUNCTION "varbitlt"() RETURNS BOOLEAN AS $$ bitlt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varbitne
DELIMITER //
CREATE FUNCTION "varbitne"() RETURNS BOOLEAN AS $$ bitne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varbittypmodin
DELIMITER //
CREATE FUNCTION "varbittypmodin"() RETURNS INTEGER AS $$ varbittypmodin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varbittypmodout
DELIMITER //
CREATE FUNCTION "varbittypmodout"() RETURNS UNKNOWN AS $$ varbittypmodout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varbit_in
DELIMITER //
CREATE FUNCTION "varbit_in"() RETURNS BIT VARYING AS $$ varbit_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varbit_out
DELIMITER //
CREATE FUNCTION "varbit_out"() RETURNS UNKNOWN AS $$ varbit_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varbit_recv
DELIMITER //
CREATE FUNCTION "varbit_recv"() RETURNS BIT VARYING AS $$ varbit_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varbit_send
DELIMITER //
CREATE FUNCTION "varbit_send"() RETURNS BYTEA AS $$ varbit_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varbit_support
DELIMITER //
CREATE FUNCTION "varbit_support"() RETURNS UNKNOWN AS $$ varbit_support $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varchar
DELIMITER //
CREATE FUNCTION "varchar"() RETURNS VARCHAR AS $$ varchar $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varchar
DELIMITER //
CREATE FUNCTION "varchar"() RETURNS VARCHAR AS $$ name_text $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varcharin
DELIMITER //
CREATE FUNCTION "varcharin"() RETURNS VARCHAR AS $$ varcharin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varcharout
DELIMITER //
CREATE FUNCTION "varcharout"() RETURNS UNKNOWN AS $$ varcharout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varcharrecv
DELIMITER //
CREATE FUNCTION "varcharrecv"() RETURNS VARCHAR AS $$ varcharrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varcharsend
DELIMITER //
CREATE FUNCTION "varcharsend"() RETURNS BYTEA AS $$ varcharsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varchartypmodin
DELIMITER //
CREATE FUNCTION "varchartypmodin"() RETURNS INTEGER AS $$ varchartypmodin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varchartypmodout
DELIMITER //
CREATE FUNCTION "varchartypmodout"() RETURNS UNKNOWN AS $$ varchartypmodout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.varchar_support
DELIMITER //
CREATE FUNCTION "varchar_support"() RETURNS UNKNOWN AS $$ varchar_support $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.variance
DELIMITER //
CREATE FUNCTION "variance"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.variance
DELIMITER //
CREATE FUNCTION "variance"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.variance
DELIMITER //
CREATE FUNCTION "variance"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.variance
DELIMITER //
CREATE FUNCTION "variance"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.variance
DELIMITER //
CREATE FUNCTION "variance"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.variance
DELIMITER //
CREATE FUNCTION "variance"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.var_pop
DELIMITER //
CREATE FUNCTION "var_pop"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.var_pop
DELIMITER //
CREATE FUNCTION "var_pop"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.var_pop
DELIMITER //
CREATE FUNCTION "var_pop"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.var_pop
DELIMITER //
CREATE FUNCTION "var_pop"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.var_pop
DELIMITER //
CREATE FUNCTION "var_pop"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.var_pop
DELIMITER //
CREATE FUNCTION "var_pop"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.var_samp
DELIMITER //
CREATE FUNCTION "var_samp"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.var_samp
DELIMITER //
CREATE FUNCTION "var_samp"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.var_samp
DELIMITER //
CREATE FUNCTION "var_samp"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.var_samp
DELIMITER //
CREATE FUNCTION "var_samp"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.var_samp
DELIMITER //
CREATE FUNCTION "var_samp"() RETURNS NUMERIC AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.var_samp
DELIMITER //
CREATE FUNCTION "var_samp"() RETURNS DOUBLE PRECISION AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.version
DELIMITER //
CREATE FUNCTION "version"() RETURNS TEXT AS $$ pgsql_version $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.void_in
DELIMITER //
CREATE FUNCTION "void_in"() RETURNS UNKNOWN AS $$ void_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.void_out
DELIMITER //
CREATE FUNCTION "void_out"() RETURNS UNKNOWN AS $$ void_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.void_recv
DELIMITER //
CREATE FUNCTION "void_recv"() RETURNS UNKNOWN AS $$ void_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.void_send
DELIMITER //
CREATE FUNCTION "void_send"() RETURNS BYTEA AS $$ void_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.websearch_to_tsquery
DELIMITER //
CREATE FUNCTION "websearch_to_tsquery"() RETURNS UNKNOWN AS $$ websearch_to_tsquery_byid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.websearch_to_tsquery
DELIMITER //
CREATE FUNCTION "websearch_to_tsquery"() RETURNS UNKNOWN AS $$ websearch_to_tsquery $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.width
DELIMITER //
CREATE FUNCTION "width"() RETURNS DOUBLE PRECISION AS $$ box_width $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.width_bucket
DELIMITER //
CREATE FUNCTION "width_bucket"() RETURNS INTEGER AS $$ width_bucket_float8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.width_bucket
DELIMITER //
CREATE FUNCTION "width_bucket"() RETURNS INTEGER AS $$ width_bucket_numeric $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.width_bucket
DELIMITER //
CREATE FUNCTION "width_bucket"() RETURNS INTEGER AS $$ width_bucket_array $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.win1250_to_latin2
DELIMITER //
CREATE FUNCTION "win1250_to_latin2"() RETURNS INTEGER AS $$ win1250_to_latin2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.win1250_to_mic
DELIMITER //
CREATE FUNCTION "win1250_to_mic"() RETURNS INTEGER AS $$ win1250_to_mic $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.win1251_to_iso
DELIMITER //
CREATE FUNCTION "win1251_to_iso"() RETURNS INTEGER AS $$ win1251_to_iso $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.win1251_to_koi8r
DELIMITER //
CREATE FUNCTION "win1251_to_koi8r"() RETURNS INTEGER AS $$ win1251_to_koi8r $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.win1251_to_mic
DELIMITER //
CREATE FUNCTION "win1251_to_mic"() RETURNS INTEGER AS $$ win1251_to_mic $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.win1251_to_win866
DELIMITER //
CREATE FUNCTION "win1251_to_win866"() RETURNS INTEGER AS $$ win1251_to_win866 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.win866_to_iso
DELIMITER //
CREATE FUNCTION "win866_to_iso"() RETURNS INTEGER AS $$ win866_to_iso $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.win866_to_koi8r
DELIMITER //
CREATE FUNCTION "win866_to_koi8r"() RETURNS INTEGER AS $$ win866_to_koi8r $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.win866_to_mic
DELIMITER //
CREATE FUNCTION "win866_to_mic"() RETURNS INTEGER AS $$ win866_to_mic $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.win866_to_win1251
DELIMITER //
CREATE FUNCTION "win866_to_win1251"() RETURNS INTEGER AS $$ win866_to_win1251 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.win_to_utf8
DELIMITER //
CREATE FUNCTION "win_to_utf8"() RETURNS INTEGER AS $$ win_to_utf8 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xid
DELIMITER //
CREATE FUNCTION "xid"() RETURNS INTEGER AS $$ xid8toxid $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xid8cmp
DELIMITER //
CREATE FUNCTION "xid8cmp"() RETURNS INTEGER AS $$ xid8cmp $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xid8eq
DELIMITER //
CREATE FUNCTION "xid8eq"() RETURNS BOOLEAN AS $$ xid8eq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xid8ge
DELIMITER //
CREATE FUNCTION "xid8ge"() RETURNS BOOLEAN AS $$ xid8ge $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xid8gt
DELIMITER //
CREATE FUNCTION "xid8gt"() RETURNS BOOLEAN AS $$ xid8gt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xid8in
DELIMITER //
CREATE FUNCTION "xid8in"() RETURNS UNKNOWN AS $$ xid8in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xid8le
DELIMITER //
CREATE FUNCTION "xid8le"() RETURNS BOOLEAN AS $$ xid8le $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xid8lt
DELIMITER //
CREATE FUNCTION "xid8lt"() RETURNS BOOLEAN AS $$ xid8lt $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xid8ne
DELIMITER //
CREATE FUNCTION "xid8ne"() RETURNS BOOLEAN AS $$ xid8ne $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xid8out
DELIMITER //
CREATE FUNCTION "xid8out"() RETURNS UNKNOWN AS $$ xid8out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xid8recv
DELIMITER //
CREATE FUNCTION "xid8recv"() RETURNS UNKNOWN AS $$ xid8recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xid8send
DELIMITER //
CREATE FUNCTION "xid8send"() RETURNS BYTEA AS $$ xid8send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xideq
DELIMITER //
CREATE FUNCTION "xideq"() RETURNS BOOLEAN AS $$ xideq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xideqint4
DELIMITER //
CREATE FUNCTION "xideqint4"() RETURNS BOOLEAN AS $$ xideq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xidin
DELIMITER //
CREATE FUNCTION "xidin"() RETURNS INTEGER AS $$ xidin $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xidneq
DELIMITER //
CREATE FUNCTION "xidneq"() RETURNS BOOLEAN AS $$ xidneq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xidneqint4
DELIMITER //
CREATE FUNCTION "xidneqint4"() RETURNS BOOLEAN AS $$ xidneq $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xidout
DELIMITER //
CREATE FUNCTION "xidout"() RETURNS UNKNOWN AS $$ xidout $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xidrecv
DELIMITER //
CREATE FUNCTION "xidrecv"() RETURNS INTEGER AS $$ xidrecv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xidsend
DELIMITER //
CREATE FUNCTION "xidsend"() RETURNS BYTEA AS $$ xidsend $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xml
DELIMITER //
CREATE FUNCTION "xml"() RETURNS UNKNOWN AS $$ texttoxml $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xmlagg
DELIMITER //
CREATE FUNCTION "xmlagg"() RETURNS UNKNOWN AS $$ aggregate_dummy $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xmlcomment
DELIMITER //
CREATE FUNCTION "xmlcomment"() RETURNS UNKNOWN AS $$ xmlcomment $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xmlconcat2
DELIMITER //
CREATE FUNCTION "xmlconcat2"() RETURNS UNKNOWN AS $$ xmlconcat2 $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xmlexists
DELIMITER //
CREATE FUNCTION "xmlexists"() RETURNS BOOLEAN AS $$ xmlexists $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xmlvalidate
DELIMITER //
CREATE FUNCTION "xmlvalidate"() RETURNS BOOLEAN AS $$ xmlvalidate $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xml_in
DELIMITER //
CREATE FUNCTION "xml_in"() RETURNS UNKNOWN AS $$ xml_in $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xml_is_well_formed
DELIMITER //
CREATE FUNCTION "xml_is_well_formed"() RETURNS BOOLEAN AS $$ xml_is_well_formed $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xml_is_well_formed_content
DELIMITER //
CREATE FUNCTION "xml_is_well_formed_content"() RETURNS BOOLEAN AS $$ xml_is_well_formed_content $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xml_is_well_formed_document
DELIMITER //
CREATE FUNCTION "xml_is_well_formed_document"() RETURNS BOOLEAN AS $$ xml_is_well_formed_document $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xml_out
DELIMITER //
CREATE FUNCTION "xml_out"() RETURNS UNKNOWN AS $$ xml_out $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xml_recv
DELIMITER //
CREATE FUNCTION "xml_recv"() RETURNS UNKNOWN AS $$ xml_recv $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xml_send
DELIMITER //
CREATE FUNCTION "xml_send"() RETURNS BYTEA AS $$ xml_send $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xpath
DELIMITER //
CREATE FUNCTION "xpath"() RETURNS TEXT AS $$ xpath $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xpath
DELIMITER //
CREATE FUNCTION "xpath"() RETURNS TEXT AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xpath_exists
DELIMITER //
CREATE FUNCTION "xpath_exists"() RETURNS BOOLEAN AS $$  $$//
DELIMITER ;

-- Copiando estrutura para função pg_catalog.xpath_exists
DELIMITER //
CREATE FUNCTION "xpath_exists"() RETURNS BOOLEAN AS $$ xpath_exists $$//
DELIMITER ;

-- Copiando estrutura para tabela pg_catalog.pg_aggregate
CREATE TABLE IF NOT EXISTS "pg_aggregate" (
	"aggfnoid" REGPROC NOT NULL,
	"aggkind" UNKNOWN NOT NULL,
	"aggnumdirectargs" SMALLINT NOT NULL,
	"aggtransfn" REGPROC NOT NULL,
	"aggfinalfn" REGPROC NOT NULL,
	"aggcombinefn" REGPROC NOT NULL,
	"aggserialfn" REGPROC NOT NULL,
	"aggdeserialfn" REGPROC NOT NULL,
	"aggmtransfn" REGPROC NOT NULL,
	"aggminvtransfn" REGPROC NOT NULL,
	"aggmfinalfn" REGPROC NOT NULL,
	"aggfinalextra" BOOLEAN NOT NULL,
	"aggmfinalextra" BOOLEAN NOT NULL,
	"aggfinalmodify" UNKNOWN NOT NULL,
	"aggmfinalmodify" UNKNOWN NOT NULL,
	"aggsortop" INTEGER NOT NULL,
	"aggtranstype" INTEGER NOT NULL,
	"aggtransspace" INTEGER NOT NULL,
	"aggmtranstype" INTEGER NOT NULL,
	"aggmtransspace" INTEGER NOT NULL,
	"agginitval" TEXT NULL DEFAULT NULL COLLATE 'C',
	"aggminitval" TEXT NULL DEFAULT NULL COLLATE 'C',
	PRIMARY KEY ("aggfnoid")
);

-- Copiando dados para a tabela pg_catalog.pg_aggregate: 145 rows
DELETE FROM "pg_aggregate";
/*!40000 ALTER TABLE "pg_aggregate" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_am
CREATE TABLE IF NOT EXISTS "pg_am" (
	"oid" INTEGER NOT NULL,
	"amname" VARCHAR NOT NULL COLLATE 'C',
	"amhandler" REGPROC NOT NULL,
	"amtype" UNKNOWN NOT NULL,
	UNIQUE INDEX "pg_am_name_index" ("amname"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_am: 7 rows
DELETE FROM "pg_am";
/*!40000 ALTER TABLE "pg_am" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_amop
CREATE TABLE IF NOT EXISTS "pg_amop" (
	"oid" INTEGER NOT NULL,
	"amopfamily" INTEGER NOT NULL,
	"amoplefttype" INTEGER NOT NULL,
	"amoprighttype" INTEGER NOT NULL,
	"amopstrategy" SMALLINT NOT NULL,
	"amoppurpose" UNKNOWN NOT NULL,
	"amopopr" INTEGER NOT NULL,
	"amopmethod" INTEGER NOT NULL,
	"amopsortfamily" INTEGER NOT NULL,
	UNIQUE INDEX "pg_amop_fam_strat_index" ("amopfamily", "amoplefttype", "amoprighttype", "amopstrategy"),
	UNIQUE INDEX "pg_amop_opr_fam_index" ("amopopr", "amoppurpose", "amopfamily"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_amop: 945 rows
DELETE FROM "pg_amop";
/*!40000 ALTER TABLE "pg_amop" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_amproc
CREATE TABLE IF NOT EXISTS "pg_amproc" (
	"oid" INTEGER NOT NULL,
	"amprocfamily" INTEGER NOT NULL,
	"amproclefttype" INTEGER NOT NULL,
	"amprocrighttype" INTEGER NOT NULL,
	"amprocnum" SMALLINT NOT NULL,
	"amproc" REGPROC NOT NULL,
	UNIQUE INDEX "pg_amproc_fam_proc_index" ("amprocfamily", "amproclefttype", "amprocrighttype", "amprocnum"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_amproc: 696 rows
DELETE FROM "pg_amproc";
/*!40000 ALTER TABLE "pg_amproc" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_attrdef
CREATE TABLE IF NOT EXISTS "pg_attrdef" (
	"oid" INTEGER NOT NULL,
	"adrelid" INTEGER NOT NULL,
	"adnum" SMALLINT NOT NULL,
	"adbin" UNKNOWN NOT NULL COLLATE 'C',
	UNIQUE INDEX "pg_attrdef_adrelid_adnum_index" ("adrelid", "adnum"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_attrdef: 0 rows
DELETE FROM "pg_attrdef";
/*!40000 ALTER TABLE "pg_attrdef" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_attribute
CREATE TABLE IF NOT EXISTS "pg_attribute" (
	"attrelid" INTEGER NOT NULL,
	"attname" VARCHAR NOT NULL COLLATE 'C',
	"atttypid" INTEGER NOT NULL,
	"attstattarget" INTEGER NOT NULL,
	"attlen" SMALLINT NOT NULL,
	"attnum" SMALLINT NOT NULL,
	"attndims" INTEGER NOT NULL,
	"attcacheoff" INTEGER NOT NULL,
	"atttypmod" INTEGER NOT NULL,
	"attbyval" BOOLEAN NOT NULL,
	"attalign" UNKNOWN NOT NULL,
	"attstorage" UNKNOWN NOT NULL,
	"attcompression" UNKNOWN NOT NULL,
	"attnotnull" BOOLEAN NOT NULL,
	"atthasdef" BOOLEAN NOT NULL,
	"atthasmissing" BOOLEAN NOT NULL,
	"attidentity" UNKNOWN NOT NULL,
	"attgenerated" UNKNOWN NOT NULL,
	"attisdropped" BOOLEAN NOT NULL,
	"attislocal" BOOLEAN NOT NULL,
	"attinhcount" INTEGER NOT NULL,
	"attcollation" INTEGER NOT NULL,
	"attacl" UNKNOWN NULL DEFAULT NULL,
	"attoptions" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	"attfdwoptions" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	"attmissingval" UNKNOWN NULL DEFAULT NULL,
	UNIQUE INDEX "pg_attribute_relid_attnam_index" ("attrelid", "attname"),
	PRIMARY KEY ("attrelid", "attnum")
);

-- Copiando dados para a tabela pg_catalog.pg_attribute: 2.971 rows
DELETE FROM "pg_attribute";
/*!40000 ALTER TABLE "pg_attribute" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_authid
CREATE TABLE IF NOT EXISTS "pg_authid" (
	"oid" INTEGER NOT NULL,
	"rolname" VARCHAR NOT NULL COLLATE 'C',
	"rolsuper" BOOLEAN NOT NULL,
	"rolinherit" BOOLEAN NOT NULL,
	"rolcreaterole" BOOLEAN NOT NULL,
	"rolcreatedb" BOOLEAN NOT NULL,
	"rolcanlogin" BOOLEAN NOT NULL,
	"rolreplication" BOOLEAN NOT NULL,
	"rolbypassrls" BOOLEAN NOT NULL,
	"rolconnlimit" INTEGER NOT NULL,
	"rolpassword" TEXT NULL DEFAULT NULL COLLATE 'C',
	"rolvaliduntil" TIMESTAMPTZ NULL DEFAULT NULL,
	UNIQUE INDEX "pg_authid_rolname_index" ("rolname"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_authid: 12 rows
DELETE FROM "pg_authid";
/*!40000 ALTER TABLE "pg_authid" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_auth_members
CREATE TABLE IF NOT EXISTS "pg_auth_members" (
	"roleid" INTEGER NOT NULL,
	"member" INTEGER NOT NULL,
	"grantor" INTEGER NOT NULL,
	"admin_option" BOOLEAN NOT NULL,
	UNIQUE INDEX "pg_auth_members_member_role_index" ("member", "roleid"),
	PRIMARY KEY ("roleid", "member")
);

-- Copiando dados para a tabela pg_catalog.pg_auth_members: 3 rows
DELETE FROM "pg_auth_members";
/*!40000 ALTER TABLE "pg_auth_members" DISABLE KEYS */;
-- Copiando estrutura para view pg_catalog.pg_available_extensions
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_available_extensions" (
	"name" VARCHAR NULL COLLATE 'C',
	"default_version" TEXT NULL,
	"installed_version" TEXT NULL COLLATE 'C',
	"comment" TEXT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_available_extension_versions
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_available_extension_versions" (
	"name" VARCHAR NULL COLLATE 'C',
	"version" TEXT NULL,
	"installed" BOOLEAN NULL,
	"superuser" BOOLEAN NULL,
	"trusted" BOOLEAN NULL,
	"relocatable" BOOLEAN NULL,
	"schema" VARCHAR NULL COLLATE 'C',
	"requires" UNKNOWN NULL COLLATE 'C',
	"comment" TEXT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_backend_memory_contexts
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_backend_memory_contexts" (
	"name" TEXT NULL,
	"ident" TEXT NULL,
	"parent" TEXT NULL,
	"level" INTEGER NULL,
	"total_bytes" BIGINT NULL,
	"total_nblocks" BIGINT NULL,
	"free_bytes" BIGINT NULL,
	"free_chunks" BIGINT NULL,
	"used_bytes" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_cast
CREATE TABLE IF NOT EXISTS "pg_cast" (
	"oid" INTEGER NOT NULL,
	"castsource" INTEGER NOT NULL,
	"casttarget" INTEGER NOT NULL,
	"castfunc" INTEGER NOT NULL,
	"castcontext" UNKNOWN NOT NULL,
	"castmethod" UNKNOWN NOT NULL,
	UNIQUE INDEX "pg_cast_source_target_index" ("castsource", "casttarget"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_cast: 230 rows
DELETE FROM "pg_cast";
/*!40000 ALTER TABLE "pg_cast" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_class
CREATE TABLE IF NOT EXISTS "pg_class" (
	"oid" INTEGER NOT NULL,
	"relname" VARCHAR NOT NULL COLLATE 'C',
	"relnamespace" INTEGER NOT NULL,
	"reltype" INTEGER NOT NULL,
	"reloftype" INTEGER NOT NULL,
	"relowner" INTEGER NOT NULL,
	"relam" INTEGER NOT NULL,
	"relfilenode" INTEGER NOT NULL,
	"reltablespace" INTEGER NOT NULL,
	"relpages" INTEGER NOT NULL,
	"reltuples" REAL NOT NULL,
	"relallvisible" INTEGER NOT NULL,
	"reltoastrelid" INTEGER NOT NULL,
	"relhasindex" BOOLEAN NOT NULL,
	"relisshared" BOOLEAN NOT NULL,
	"relpersistence" UNKNOWN NOT NULL,
	"relkind" UNKNOWN NOT NULL,
	"relnatts" SMALLINT NOT NULL,
	"relchecks" SMALLINT NOT NULL,
	"relhasrules" BOOLEAN NOT NULL,
	"relhastriggers" BOOLEAN NOT NULL,
	"relhassubclass" BOOLEAN NOT NULL,
	"relrowsecurity" BOOLEAN NOT NULL,
	"relforcerowsecurity" BOOLEAN NOT NULL,
	"relispopulated" BOOLEAN NOT NULL,
	"relreplident" UNKNOWN NOT NULL,
	"relispartition" BOOLEAN NOT NULL,
	"relrewrite" INTEGER NOT NULL,
	"relfrozenxid" INTEGER NOT NULL,
	"relminmxid" INTEGER NOT NULL,
	"relacl" UNKNOWN NULL DEFAULT NULL,
	"reloptions" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	"relpartbound" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	UNIQUE INDEX "pg_class_relname_nsp_index" ("relname", "relnamespace"),
	INDEX "pg_class_tblspc_relfilenode_index" ("reltablespace", "relfilenode"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_class: 396 rows
DELETE FROM "pg_class";
/*!40000 ALTER TABLE "pg_class" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_collation
CREATE TABLE IF NOT EXISTS "pg_collation" (
	"oid" INTEGER NOT NULL,
	"collname" VARCHAR NOT NULL COLLATE 'C',
	"collnamespace" INTEGER NOT NULL,
	"collowner" INTEGER NOT NULL,
	"collprovider" UNKNOWN NOT NULL,
	"collisdeterministic" BOOLEAN NOT NULL,
	"collencoding" INTEGER NOT NULL,
	"collcollate" VARCHAR NOT NULL COLLATE 'C',
	"collctype" VARCHAR NOT NULL COLLATE 'C',
	"collversion" TEXT NULL DEFAULT NULL COLLATE 'C',
	UNIQUE INDEX "pg_collation_name_enc_nsp_index" ("collname", "collencoding", "collnamespace"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_collation: 792 rows
DELETE FROM "pg_collation";
/*!40000 ALTER TABLE "pg_collation" DISABLE KEYS */;
-- Copiando estrutura para view pg_catalog.pg_config
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_config" (
	"name" TEXT NULL,
	"setting" TEXT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_constraint
CREATE TABLE IF NOT EXISTS "pg_constraint" (
	"oid" INTEGER NOT NULL,
	"conname" VARCHAR NOT NULL COLLATE 'C',
	"connamespace" INTEGER NOT NULL,
	"contype" UNKNOWN NOT NULL,
	"condeferrable" BOOLEAN NOT NULL,
	"condeferred" BOOLEAN NOT NULL,
	"convalidated" BOOLEAN NOT NULL,
	"conrelid" INTEGER NOT NULL,
	"contypid" INTEGER NOT NULL,
	"conindid" INTEGER NOT NULL,
	"conparentid" INTEGER NOT NULL,
	"confrelid" INTEGER NOT NULL,
	"confupdtype" UNKNOWN NOT NULL,
	"confdeltype" UNKNOWN NOT NULL,
	"confmatchtype" UNKNOWN NOT NULL,
	"conislocal" BOOLEAN NOT NULL,
	"coninhcount" INTEGER NOT NULL,
	"connoinherit" BOOLEAN NOT NULL,
	"conkey" UNKNOWN NULL DEFAULT NULL,
	"confkey" UNKNOWN NULL DEFAULT NULL,
	"conpfeqop" UNKNOWN NULL DEFAULT NULL,
	"conppeqop" UNKNOWN NULL DEFAULT NULL,
	"conffeqop" UNKNOWN NULL DEFAULT NULL,
	"conexclop" UNKNOWN NULL DEFAULT NULL,
	"conbin" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	INDEX "pg_constraint_conname_nsp_index" ("conname", "connamespace"),
	UNIQUE INDEX "pg_constraint_conrelid_contypid_conname_index" ("conrelid", "contypid", "conname"),
	INDEX "pg_constraint_contypid_index" ("contypid"),
	INDEX "pg_constraint_conparentid_index" ("conparentid"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_constraint: 107 rows
DELETE FROM "pg_constraint";
/*!40000 ALTER TABLE "pg_constraint" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_conversion
CREATE TABLE IF NOT EXISTS "pg_conversion" (
	"oid" INTEGER NOT NULL,
	"conname" VARCHAR NOT NULL COLLATE 'C',
	"connamespace" INTEGER NOT NULL,
	"conowner" INTEGER NOT NULL,
	"conforencoding" INTEGER NOT NULL,
	"contoencoding" INTEGER NOT NULL,
	"conproc" REGPROC NOT NULL,
	"condefault" BOOLEAN NOT NULL,
	UNIQUE INDEX "pg_conversion_default_index" ("connamespace", "conforencoding", "contoencoding", "oid"),
	UNIQUE INDEX "pg_conversion_name_nsp_index" ("conname", "connamespace"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_conversion: 128 rows
DELETE FROM "pg_conversion";
/*!40000 ALTER TABLE "pg_conversion" DISABLE KEYS */;
-- Copiando estrutura para view pg_catalog.pg_cursors
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_cursors" (
	"name" TEXT NULL,
	"statement" TEXT NULL,
	"is_holdable" BOOLEAN NULL,
	"is_binary" BOOLEAN NULL,
	"is_scrollable" BOOLEAN NULL,
	"creation_time" TIMESTAMPTZ NULL
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_database
CREATE TABLE IF NOT EXISTS "pg_database" (
	"oid" INTEGER NOT NULL,
	"datname" VARCHAR NOT NULL COLLATE 'C',
	"datdba" INTEGER NOT NULL,
	"encoding" INTEGER NOT NULL,
	"datcollate" VARCHAR NOT NULL COLLATE 'C',
	"datctype" VARCHAR NOT NULL COLLATE 'C',
	"datistemplate" BOOLEAN NOT NULL,
	"datallowconn" BOOLEAN NOT NULL,
	"datconnlimit" INTEGER NOT NULL,
	"datlastsysoid" INTEGER NOT NULL,
	"datfrozenxid" INTEGER NOT NULL,
	"datminmxid" INTEGER NOT NULL,
	"dattablespace" INTEGER NOT NULL,
	"datacl" UNKNOWN NULL DEFAULT NULL,
	UNIQUE INDEX "pg_database_datname_index" ("datname"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_database: 2 rows
DELETE FROM "pg_database";
/*!40000 ALTER TABLE "pg_database" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_db_role_setting
CREATE TABLE IF NOT EXISTS "pg_db_role_setting" (
	"setdatabase" INTEGER NOT NULL,
	"setrole" INTEGER NOT NULL,
	"setconfig" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	PRIMARY KEY ("setdatabase", "setrole")
);

-- Copiando dados para a tabela pg_catalog.pg_db_role_setting: 0 rows
DELETE FROM "pg_db_role_setting";
/*!40000 ALTER TABLE "pg_db_role_setting" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_db_role_setting" ENABLE KEYS */;

-- Copiando estrutura para tabela pg_catalog.pg_default_acl
CREATE TABLE IF NOT EXISTS "pg_default_acl" (
	"oid" INTEGER NOT NULL,
	"defaclrole" INTEGER NOT NULL,
	"defaclnamespace" INTEGER NOT NULL,
	"defaclobjtype" UNKNOWN NOT NULL,
	"defaclacl" UNKNOWN NOT NULL,
	UNIQUE INDEX "pg_default_acl_role_nsp_obj_index" ("defaclrole", "defaclnamespace", "defaclobjtype"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_default_acl: 0 rows
DELETE FROM "pg_default_acl";
/*!40000 ALTER TABLE "pg_default_acl" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_default_acl" ENABLE KEYS */;

-- Copiando estrutura para tabela pg_catalog.pg_depend
CREATE TABLE IF NOT EXISTS "pg_depend" (
	"classid" INTEGER NOT NULL,
	"objid" INTEGER NOT NULL,
	"objsubid" INTEGER NOT NULL,
	"refclassid" INTEGER NOT NULL,
	"refobjid" INTEGER NOT NULL,
	"refobjsubid" INTEGER NOT NULL,
	"deptype" UNKNOWN NOT NULL,
	INDEX "pg_depend_depender_index" ("classid", "objid", "objsubid"),
	INDEX "pg_depend_reference_index" ("refclassid", "refobjid", "refobjsubid")
);

-- Copiando dados para a tabela pg_catalog.pg_depend: 8.813 rows
DELETE FROM "pg_depend";
/*!40000 ALTER TABLE "pg_depend" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_description
CREATE TABLE IF NOT EXISTS "pg_description" (
	"objoid" INTEGER NOT NULL,
	"classoid" INTEGER NOT NULL,
	"objsubid" INTEGER NOT NULL,
	"description" TEXT NOT NULL COLLATE 'C',
	PRIMARY KEY ("objoid", "classoid", "objsubid")
);

-- Copiando dados para a tabela pg_catalog.pg_description: 5.080 rows
DELETE FROM "pg_description";
/*!40000 ALTER TABLE "pg_description" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_enum
CREATE TABLE IF NOT EXISTS "pg_enum" (
	"oid" INTEGER NOT NULL,
	"enumtypid" INTEGER NOT NULL,
	"enumsortorder" REAL NOT NULL,
	"enumlabel" VARCHAR NOT NULL COLLATE 'C',
	UNIQUE INDEX "pg_enum_typid_label_index" ("enumtypid", "enumlabel"),
	UNIQUE INDEX "pg_enum_typid_sortorder_index" ("enumtypid", "enumsortorder"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_enum: 0 rows
DELETE FROM "pg_enum";
/*!40000 ALTER TABLE "pg_enum" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_enum" ENABLE KEYS */;

-- Copiando estrutura para tabela pg_catalog.pg_event_trigger
CREATE TABLE IF NOT EXISTS "pg_event_trigger" (
	"oid" INTEGER NOT NULL,
	"evtname" VARCHAR NOT NULL COLLATE 'C',
	"evtevent" VARCHAR NOT NULL COLLATE 'C',
	"evtowner" INTEGER NOT NULL,
	"evtfoid" INTEGER NOT NULL,
	"evtenabled" UNKNOWN NOT NULL,
	"evttags" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	UNIQUE INDEX "pg_event_trigger_evtname_index" ("evtname"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_event_trigger: 0 rows
DELETE FROM "pg_event_trigger";
/*!40000 ALTER TABLE "pg_event_trigger" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_event_trigger" ENABLE KEYS */;

-- Copiando estrutura para tabela pg_catalog.pg_extension
CREATE TABLE IF NOT EXISTS "pg_extension" (
	"oid" INTEGER NOT NULL,
	"extname" VARCHAR NOT NULL COLLATE 'C',
	"extowner" INTEGER NOT NULL,
	"extnamespace" INTEGER NOT NULL,
	"extrelocatable" BOOLEAN NOT NULL,
	"extversion" TEXT NOT NULL COLLATE 'C',
	"extconfig" UNKNOWN NULL DEFAULT NULL,
	"extcondition" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	UNIQUE INDEX "pg_extension_name_index" ("extname"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_extension: 1 rows
DELETE FROM "pg_extension";
/*!40000 ALTER TABLE "pg_extension" DISABLE KEYS */;
-- Copiando estrutura para view pg_catalog.pg_file_settings
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_file_settings" (
	"sourcefile" TEXT NULL,
	"sourceline" INTEGER NULL,
	"seqno" INTEGER NULL,
	"name" TEXT NULL,
	"setting" TEXT NULL,
	"applied" BOOLEAN NULL,
	"error" TEXT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_foreign_data_wrapper
CREATE TABLE IF NOT EXISTS "pg_foreign_data_wrapper" (
	"oid" INTEGER NOT NULL,
	"fdwname" VARCHAR NOT NULL COLLATE 'C',
	"fdwowner" INTEGER NOT NULL,
	"fdwhandler" INTEGER NOT NULL,
	"fdwvalidator" INTEGER NOT NULL,
	"fdwacl" UNKNOWN NULL DEFAULT NULL,
	"fdwoptions" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	UNIQUE INDEX "pg_foreign_data_wrapper_name_index" ("fdwname"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_foreign_data_wrapper: 0 rows
DELETE FROM "pg_foreign_data_wrapper";
/*!40000 ALTER TABLE "pg_foreign_data_wrapper" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_foreign_data_wrapper" ENABLE KEYS */;

-- Copiando estrutura para tabela pg_catalog.pg_foreign_server
CREATE TABLE IF NOT EXISTS "pg_foreign_server" (
	"oid" INTEGER NOT NULL,
	"srvname" VARCHAR NOT NULL COLLATE 'C',
	"srvowner" INTEGER NOT NULL,
	"srvfdw" INTEGER NOT NULL,
	"srvtype" TEXT NULL DEFAULT NULL COLLATE 'C',
	"srvversion" TEXT NULL DEFAULT NULL COLLATE 'C',
	"srvacl" UNKNOWN NULL DEFAULT NULL,
	"srvoptions" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	UNIQUE INDEX "pg_foreign_server_name_index" ("srvname"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_foreign_server: 0 rows
DELETE FROM "pg_foreign_server";
/*!40000 ALTER TABLE "pg_foreign_server" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_foreign_server" ENABLE KEYS */;

-- Copiando estrutura para tabela pg_catalog.pg_foreign_table
CREATE TABLE IF NOT EXISTS "pg_foreign_table" (
	"ftrelid" INTEGER NOT NULL,
	"ftserver" INTEGER NOT NULL,
	"ftoptions" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	PRIMARY KEY ("ftrelid")
);

-- Copiando dados para a tabela pg_catalog.pg_foreign_table: 0 rows
DELETE FROM "pg_foreign_table";
/*!40000 ALTER TABLE "pg_foreign_table" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_foreign_table" ENABLE KEYS */;

-- Copiando estrutura para view pg_catalog.pg_group
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_group" (
	"groname" VARCHAR NULL COLLATE 'C',
	"grosysid" INTEGER NULL,
	"grolist" UNKNOWN NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_hba_file_rules
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_hba_file_rules" (
	"line_number" INTEGER NULL,
	"type" TEXT NULL,
	"database" UNKNOWN NULL,
	"user_name" UNKNOWN NULL,
	"address" TEXT NULL,
	"netmask" TEXT NULL,
	"auth_method" TEXT NULL,
	"options" UNKNOWN NULL,
	"error" TEXT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_index
CREATE TABLE IF NOT EXISTS "pg_index" (
	"indexrelid" INTEGER NOT NULL,
	"indrelid" INTEGER NOT NULL,
	"indnatts" SMALLINT NOT NULL,
	"indnkeyatts" SMALLINT NOT NULL,
	"indisunique" BOOLEAN NOT NULL,
	"indisprimary" BOOLEAN NOT NULL,
	"indisexclusion" BOOLEAN NOT NULL,
	"indimmediate" BOOLEAN NOT NULL,
	"indisclustered" BOOLEAN NOT NULL,
	"indisvalid" BOOLEAN NOT NULL,
	"indcheckxmin" BOOLEAN NOT NULL,
	"indisready" BOOLEAN NOT NULL,
	"indislive" BOOLEAN NOT NULL,
	"indisreplident" BOOLEAN NOT NULL,
	"indkey" UNKNOWN NOT NULL,
	"indcollation" UNKNOWN NOT NULL,
	"indclass" UNKNOWN NOT NULL,
	"indoption" UNKNOWN NOT NULL,
	"indexprs" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	"indpred" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	INDEX "pg_index_indrelid_index" ("indrelid"),
	PRIMARY KEY ("indexrelid")
);

-- Copiando dados para a tabela pg_catalog.pg_index: 155 rows
DELETE FROM "pg_index";
/*!40000 ALTER TABLE "pg_index" DISABLE KEYS */;
-- Copiando estrutura para view pg_catalog.pg_indexes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_indexes" (
	"schemaname" VARCHAR NULL COLLATE 'C',
	"tablename" VARCHAR NULL COLLATE 'C',
	"indexname" VARCHAR NULL COLLATE 'C',
	"tablespace" VARCHAR NULL COLLATE 'C',
	"indexdef" TEXT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_inherits
CREATE TABLE IF NOT EXISTS "pg_inherits" (
	"inhrelid" INTEGER NOT NULL,
	"inhparent" INTEGER NOT NULL,
	"inhseqno" INTEGER NOT NULL,
	"inhdetachpending" BOOLEAN NOT NULL,
	INDEX "pg_inherits_parent_index" ("inhparent"),
	PRIMARY KEY ("inhrelid", "inhseqno")
);

-- Copiando dados para a tabela pg_catalog.pg_inherits: 0 rows
DELETE FROM "pg_inherits";
/*!40000 ALTER TABLE "pg_inherits" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_inherits" ENABLE KEYS */;

-- Copiando estrutura para tabela pg_catalog.pg_init_privs
CREATE TABLE IF NOT EXISTS "pg_init_privs" (
	"objoid" INTEGER NOT NULL,
	"classoid" INTEGER NOT NULL,
	"objsubid" INTEGER NOT NULL,
	"privtype" UNKNOWN NOT NULL,
	"initprivs" UNKNOWN NOT NULL,
	PRIMARY KEY ("objoid", "classoid", "objsubid")
);

-- Copiando dados para a tabela pg_catalog.pg_init_privs: 199 rows
DELETE FROM "pg_init_privs";
/*!40000 ALTER TABLE "pg_init_privs" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_language
CREATE TABLE IF NOT EXISTS "pg_language" (
	"oid" INTEGER NOT NULL,
	"lanname" VARCHAR NOT NULL COLLATE 'C',
	"lanowner" INTEGER NOT NULL,
	"lanispl" BOOLEAN NOT NULL,
	"lanpltrusted" BOOLEAN NOT NULL,
	"lanplcallfoid" INTEGER NOT NULL,
	"laninline" INTEGER NOT NULL,
	"lanvalidator" INTEGER NOT NULL,
	"lanacl" UNKNOWN NULL DEFAULT NULL,
	UNIQUE INDEX "pg_language_name_index" ("lanname"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_language: 4 rows
DELETE FROM "pg_language";
/*!40000 ALTER TABLE "pg_language" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_largeobject
CREATE TABLE IF NOT EXISTS "pg_largeobject" (
	"loid" INTEGER NOT NULL,
	"pageno" INTEGER NOT NULL,
	"data" BYTEA NOT NULL,
	PRIMARY KEY ("loid", "pageno")
);

-- Copiando dados para a tabela pg_catalog.pg_largeobject: 0 rows
DELETE FROM "pg_largeobject";
/*!40000 ALTER TABLE "pg_largeobject" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_largeobject" ENABLE KEYS */;

-- Copiando estrutura para tabela pg_catalog.pg_largeobject_metadata
CREATE TABLE IF NOT EXISTS "pg_largeobject_metadata" (
	"oid" INTEGER NOT NULL,
	"lomowner" INTEGER NOT NULL,
	"lomacl" UNKNOWN NULL DEFAULT NULL,
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_largeobject_metadata: 0 rows
DELETE FROM "pg_largeobject_metadata";
/*!40000 ALTER TABLE "pg_largeobject_metadata" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_largeobject_metadata" ENABLE KEYS */;

-- Copiando estrutura para view pg_catalog.pg_locks
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_locks" (
	"locktype" TEXT NULL,
	"database" INTEGER NULL,
	"relation" INTEGER NULL,
	"page" INTEGER NULL,
	"tuple" SMALLINT NULL,
	"virtualxid" TEXT NULL,
	"transactionid" INTEGER NULL,
	"classid" INTEGER NULL,
	"objid" INTEGER NULL,
	"objsubid" SMALLINT NULL,
	"virtualtransaction" TEXT NULL,
	"pid" INTEGER NULL,
	"mode" TEXT NULL,
	"granted" BOOLEAN NULL,
	"fastpath" BOOLEAN NULL,
	"waitstart" TIMESTAMPTZ NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_matviews
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_matviews" (
	"schemaname" VARCHAR NULL COLLATE 'C',
	"matviewname" VARCHAR NULL COLLATE 'C',
	"matviewowner" VARCHAR NULL COLLATE 'C',
	"tablespace" VARCHAR NULL COLLATE 'C',
	"hasindexes" BOOLEAN NULL,
	"ispopulated" BOOLEAN NULL,
	"definition" TEXT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_namespace
CREATE TABLE IF NOT EXISTS "pg_namespace" (
	"oid" INTEGER NOT NULL,
	"nspname" VARCHAR NOT NULL COLLATE 'C',
	"nspowner" INTEGER NOT NULL,
	"nspacl" UNKNOWN NULL DEFAULT NULL,
	UNIQUE INDEX "pg_namespace_nspname_index" ("nspname"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_namespace: 4 rows
DELETE FROM "pg_namespace";
/*!40000 ALTER TABLE "pg_namespace" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_opclass
CREATE TABLE IF NOT EXISTS "pg_opclass" (
	"oid" INTEGER NOT NULL,
	"opcmethod" INTEGER NOT NULL,
	"opcname" VARCHAR NOT NULL COLLATE 'C',
	"opcnamespace" INTEGER NOT NULL,
	"opcowner" INTEGER NOT NULL,
	"opcfamily" INTEGER NOT NULL,
	"opcintype" INTEGER NOT NULL,
	"opcdefault" BOOLEAN NOT NULL,
	"opckeytype" INTEGER NOT NULL,
	UNIQUE INDEX "pg_opclass_am_name_nsp_index" ("opcmethod", "opcname", "opcnamespace"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_opclass: 177 rows
DELETE FROM "pg_opclass";
/*!40000 ALTER TABLE "pg_opclass" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_operator
CREATE TABLE IF NOT EXISTS "pg_operator" (
	"oid" INTEGER NOT NULL,
	"oprname" VARCHAR NOT NULL COLLATE 'C',
	"oprnamespace" INTEGER NOT NULL,
	"oprowner" INTEGER NOT NULL,
	"oprkind" UNKNOWN NOT NULL,
	"oprcanmerge" BOOLEAN NOT NULL,
	"oprcanhash" BOOLEAN NOT NULL,
	"oprleft" INTEGER NOT NULL,
	"oprright" INTEGER NOT NULL,
	"oprresult" INTEGER NOT NULL,
	"oprcom" INTEGER NOT NULL,
	"oprnegate" INTEGER NOT NULL,
	"oprcode" REGPROC NOT NULL,
	"oprrest" REGPROC NOT NULL,
	"oprjoin" REGPROC NOT NULL,
	UNIQUE INDEX "pg_operator_oprname_l_r_n_index" ("oprname", "oprleft", "oprright", "oprnamespace"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_operator: 804 rows
DELETE FROM "pg_operator";
/*!40000 ALTER TABLE "pg_operator" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_opfamily
CREATE TABLE IF NOT EXISTS "pg_opfamily" (
	"oid" INTEGER NOT NULL,
	"opfmethod" INTEGER NOT NULL,
	"opfname" VARCHAR NOT NULL COLLATE 'C',
	"opfnamespace" INTEGER NOT NULL,
	"opfowner" INTEGER NOT NULL,
	UNIQUE INDEX "pg_opfamily_am_name_nsp_index" ("opfmethod", "opfname", "opfnamespace"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_opfamily: 146 rows
DELETE FROM "pg_opfamily";
/*!40000 ALTER TABLE "pg_opfamily" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_partitioned_table
CREATE TABLE IF NOT EXISTS "pg_partitioned_table" (
	"partrelid" INTEGER NOT NULL,
	"partstrat" UNKNOWN NOT NULL,
	"partnatts" SMALLINT NOT NULL,
	"partdefid" INTEGER NOT NULL,
	"partattrs" UNKNOWN NOT NULL,
	"partclass" UNKNOWN NOT NULL,
	"partcollation" UNKNOWN NOT NULL,
	"partexprs" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	PRIMARY KEY ("partrelid")
);

-- Copiando dados para a tabela pg_catalog.pg_partitioned_table: 0 rows
DELETE FROM "pg_partitioned_table";
/*!40000 ALTER TABLE "pg_partitioned_table" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_partitioned_table" ENABLE KEYS */;

-- Copiando estrutura para view pg_catalog.pg_policies
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_policies" (
	"schemaname" VARCHAR NULL COLLATE 'C',
	"tablename" VARCHAR NULL COLLATE 'C',
	"policyname" VARCHAR NULL COLLATE 'C',
	"permissive" TEXT NULL,
	"roles" UNKNOWN NULL COLLATE 'C',
	"cmd" TEXT NULL,
	"qual" TEXT NULL COLLATE 'C',
	"with_check" TEXT NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_policy
CREATE TABLE IF NOT EXISTS "pg_policy" (
	"oid" INTEGER NOT NULL,
	"polname" VARCHAR NOT NULL COLLATE 'C',
	"polrelid" INTEGER NOT NULL,
	"polcmd" UNKNOWN NOT NULL,
	"polpermissive" BOOLEAN NOT NULL,
	"polroles" UNKNOWN NOT NULL,
	"polqual" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	"polwithcheck" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	UNIQUE INDEX "pg_policy_polrelid_polname_index" ("polrelid", "polname"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_policy: 0 rows
DELETE FROM "pg_policy";
/*!40000 ALTER TABLE "pg_policy" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_policy" ENABLE KEYS */;

-- Copiando estrutura para view pg_catalog.pg_prepared_statements
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_prepared_statements" (
	"name" TEXT NULL,
	"statement" TEXT NULL,
	"prepare_time" TIMESTAMPTZ NULL,
	"parameter_types" UNKNOWN NULL,
	"from_sql" BOOLEAN NULL,
	"generic_plans" BIGINT NULL,
	"custom_plans" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_prepared_xacts
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_prepared_xacts" (
	"transaction" INTEGER NULL,
	"gid" TEXT NULL,
	"prepared" TIMESTAMPTZ NULL,
	"owner" VARCHAR NULL COLLATE 'C',
	"database" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_proc
CREATE TABLE IF NOT EXISTS "pg_proc" (
	"oid" INTEGER NOT NULL,
	"proname" VARCHAR NOT NULL COLLATE 'C',
	"pronamespace" INTEGER NOT NULL,
	"proowner" INTEGER NOT NULL,
	"prolang" INTEGER NOT NULL,
	"procost" REAL NOT NULL,
	"prorows" REAL NOT NULL,
	"provariadic" INTEGER NOT NULL,
	"prosupport" REGPROC NOT NULL,
	"prokind" UNKNOWN NOT NULL,
	"prosecdef" BOOLEAN NOT NULL,
	"proleakproof" BOOLEAN NOT NULL,
	"proisstrict" BOOLEAN NOT NULL,
	"proretset" BOOLEAN NOT NULL,
	"provolatile" UNKNOWN NOT NULL,
	"proparallel" UNKNOWN NOT NULL,
	"pronargs" SMALLINT NOT NULL,
	"pronargdefaults" SMALLINT NOT NULL,
	"prorettype" INTEGER NOT NULL,
	"proargtypes" UNKNOWN NOT NULL,
	"proallargtypes" UNKNOWN NULL DEFAULT NULL,
	"proargmodes" UNKNOWN NULL DEFAULT NULL,
	"proargnames" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	"proargdefaults" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	"protrftypes" UNKNOWN NULL DEFAULT NULL,
	"prosrc" TEXT NOT NULL COLLATE 'C',
	"probin" TEXT NULL DEFAULT NULL COLLATE 'C',
	"prosqlbody" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	"proconfig" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	"proacl" UNKNOWN NULL DEFAULT NULL,
	UNIQUE INDEX "pg_proc_proname_args_nsp_index" ("proname", "proargtypes", "pronamespace"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_proc: 3.202 rows
DELETE FROM "pg_proc";
/*!40000 ALTER TABLE "pg_proc" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_publication
CREATE TABLE IF NOT EXISTS "pg_publication" (
	"oid" INTEGER NOT NULL,
	"pubname" VARCHAR NOT NULL COLLATE 'C',
	"pubowner" INTEGER NOT NULL,
	"puballtables" BOOLEAN NOT NULL,
	"pubinsert" BOOLEAN NOT NULL,
	"pubupdate" BOOLEAN NOT NULL,
	"pubdelete" BOOLEAN NOT NULL,
	"pubtruncate" BOOLEAN NOT NULL,
	"pubviaroot" BOOLEAN NOT NULL,
	UNIQUE INDEX "pg_publication_pubname_index" ("pubname"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_publication: 0 rows
DELETE FROM "pg_publication";
/*!40000 ALTER TABLE "pg_publication" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_publication" ENABLE KEYS */;

-- Copiando estrutura para tabela pg_catalog.pg_publication_rel
CREATE TABLE IF NOT EXISTS "pg_publication_rel" (
	"oid" INTEGER NOT NULL,
	"prpubid" INTEGER NOT NULL,
	"prrelid" INTEGER NOT NULL,
	UNIQUE INDEX "pg_publication_rel_prrelid_prpubid_index" ("prrelid", "prpubid"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_publication_rel: 0 rows
DELETE FROM "pg_publication_rel";
/*!40000 ALTER TABLE "pg_publication_rel" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_publication_rel" ENABLE KEYS */;

-- Copiando estrutura para view pg_catalog.pg_publication_tables
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_publication_tables" (
	"pubname" VARCHAR NULL COLLATE 'C',
	"schemaname" VARCHAR NULL COLLATE 'C',
	"tablename" VARCHAR NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_range
CREATE TABLE IF NOT EXISTS "pg_range" (
	"rngtypid" INTEGER NOT NULL,
	"rngsubtype" INTEGER NOT NULL,
	"rngmultitypid" INTEGER NOT NULL,
	"rngcollation" INTEGER NOT NULL,
	"rngsubopc" INTEGER NOT NULL,
	"rngcanonical" REGPROC NOT NULL,
	"rngsubdiff" REGPROC NOT NULL,
	UNIQUE INDEX "pg_range_rngmultitypid_index" ("rngmultitypid"),
	PRIMARY KEY ("rngtypid")
);

-- Copiando dados para a tabela pg_catalog.pg_range: 6 rows
DELETE FROM "pg_range";
/*!40000 ALTER TABLE "pg_range" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_replication_origin
CREATE TABLE IF NOT EXISTS "pg_replication_origin" (
	"roident" INTEGER NOT NULL,
	"roname" TEXT NOT NULL COLLATE 'C',
	UNIQUE INDEX "pg_replication_origin_roname_index" ("roname"),
	PRIMARY KEY ("roident")
);

-- Copiando dados para a tabela pg_catalog.pg_replication_origin: 0 rows
DELETE FROM "pg_replication_origin";
/*!40000 ALTER TABLE "pg_replication_origin" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_replication_origin" ENABLE KEYS */;

-- Copiando estrutura para view pg_catalog.pg_replication_origin_status
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_replication_origin_status" (
	"local_id" INTEGER NULL,
	"external_id" TEXT NULL,
	"remote_lsn" UNKNOWN NULL,
	"local_lsn" UNKNOWN NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_replication_slots
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_replication_slots" (
	"slot_name" VARCHAR NULL COLLATE 'C',
	"plugin" VARCHAR NULL COLLATE 'C',
	"slot_type" TEXT NULL,
	"datoid" INTEGER NULL,
	"database" VARCHAR NULL COLLATE 'C',
	"temporary" BOOLEAN NULL,
	"active" BOOLEAN NULL,
	"active_pid" INTEGER NULL,
	"xmin" INTEGER NULL,
	"catalog_xmin" INTEGER NULL,
	"restart_lsn" UNKNOWN NULL,
	"confirmed_flush_lsn" UNKNOWN NULL,
	"wal_status" TEXT NULL,
	"safe_wal_size" BIGINT NULL,
	"two_phase" BOOLEAN NULL
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_rewrite
CREATE TABLE IF NOT EXISTS "pg_rewrite" (
	"oid" INTEGER NOT NULL,
	"rulename" VARCHAR NOT NULL COLLATE 'C',
	"ev_class" INTEGER NOT NULL,
	"ev_type" UNKNOWN NOT NULL,
	"ev_enabled" UNKNOWN NOT NULL,
	"is_instead" BOOLEAN NOT NULL,
	"ev_qual" UNKNOWN NOT NULL COLLATE 'C',
	"ev_action" UNKNOWN NOT NULL COLLATE 'C',
	UNIQUE INDEX "pg_rewrite_rel_rulename_index" ("ev_class", "rulename"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_rewrite: 139 rows
DELETE FROM "pg_rewrite";
/*!40000 ALTER TABLE "pg_rewrite" DISABLE KEYS */;
-- Copiando estrutura para view pg_catalog.pg_roles
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_roles" (
	"rolname" VARCHAR NULL COLLATE 'C',
	"rolsuper" BOOLEAN NULL,
	"rolinherit" BOOLEAN NULL,
	"rolcreaterole" BOOLEAN NULL,
	"rolcreatedb" BOOLEAN NULL,
	"rolcanlogin" BOOLEAN NULL,
	"rolreplication" BOOLEAN NULL,
	"rolconnlimit" INTEGER NULL,
	"rolpassword" TEXT NULL,
	"rolvaliduntil" TIMESTAMPTZ NULL,
	"rolbypassrls" BOOLEAN NULL,
	"rolconfig" UNKNOWN NULL COLLATE 'C',
	"oid" INTEGER NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_rules
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_rules" (
	"schemaname" VARCHAR NULL COLLATE 'C',
	"tablename" VARCHAR NULL COLLATE 'C',
	"rulename" VARCHAR NULL COLLATE 'C',
	"definition" TEXT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_seclabel
CREATE TABLE IF NOT EXISTS "pg_seclabel" (
	"objoid" INTEGER NOT NULL,
	"classoid" INTEGER NOT NULL,
	"objsubid" INTEGER NOT NULL,
	"provider" TEXT NOT NULL COLLATE 'C',
	"label" TEXT NOT NULL COLLATE 'C',
	PRIMARY KEY ("objoid", "classoid", "objsubid", "provider")
);

-- Copiando dados para a tabela pg_catalog.pg_seclabel: 0 rows
DELETE FROM "pg_seclabel";
/*!40000 ALTER TABLE "pg_seclabel" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_seclabel" ENABLE KEYS */;

-- Copiando estrutura para view pg_catalog.pg_seclabels
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_seclabels" (
	"objoid" INTEGER NULL,
	"classoid" INTEGER NULL,
	"objsubid" INTEGER NULL,
	"objtype" TEXT NULL,
	"objnamespace" INTEGER NULL,
	"objname" TEXT NULL COLLATE 'C',
	"provider" TEXT NULL COLLATE 'C',
	"label" TEXT NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_sequence
CREATE TABLE IF NOT EXISTS "pg_sequence" (
	"seqrelid" INTEGER NOT NULL,
	"seqtypid" INTEGER NOT NULL,
	"seqstart" BIGINT NOT NULL,
	"seqincrement" BIGINT NOT NULL,
	"seqmax" BIGINT NOT NULL,
	"seqmin" BIGINT NOT NULL,
	"seqcache" BIGINT NOT NULL,
	"seqcycle" BOOLEAN NOT NULL,
	PRIMARY KEY ("seqrelid")
);

-- Copiando dados para a tabela pg_catalog.pg_sequence: 0 rows
DELETE FROM "pg_sequence";
/*!40000 ALTER TABLE "pg_sequence" DISABLE KEYS */;
-- Copiando estrutura para view pg_catalog.pg_sequences
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_sequences" (
	"schemaname" VARCHAR NULL COLLATE 'C',
	"sequencename" VARCHAR NULL COLLATE 'C',
	"sequenceowner" VARCHAR NULL COLLATE 'C',
	"data_type" UNKNOWN NULL,
	"start_value" BIGINT NULL,
	"min_value" BIGINT NULL,
	"max_value" BIGINT NULL,
	"increment_by" BIGINT NULL,
	"cycle" BOOLEAN NULL,
	"cache_size" BIGINT NULL,
	"last_value" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_settings
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_settings" (
	"name" TEXT NULL,
	"setting" TEXT NULL,
	"unit" TEXT NULL,
	"category" TEXT NULL,
	"short_desc" TEXT NULL,
	"extra_desc" TEXT NULL,
	"context" TEXT NULL,
	"vartype" TEXT NULL,
	"source" TEXT NULL,
	"min_val" TEXT NULL,
	"max_val" TEXT NULL,
	"enumvals" UNKNOWN NULL,
	"boot_val" TEXT NULL,
	"reset_val" TEXT NULL,
	"sourcefile" TEXT NULL,
	"sourceline" INTEGER NULL,
	"pending_restart" BOOLEAN NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_shadow
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_shadow" (
	"usename" VARCHAR NULL COLLATE 'C',
	"usesysid" INTEGER NULL,
	"usecreatedb" BOOLEAN NULL,
	"usesuper" BOOLEAN NULL,
	"userepl" BOOLEAN NULL,
	"usebypassrls" BOOLEAN NULL,
	"passwd" TEXT NULL COLLATE 'C',
	"valuntil" TIMESTAMPTZ NULL,
	"useconfig" UNKNOWN NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_shdepend
CREATE TABLE IF NOT EXISTS "pg_shdepend" (
	"dbid" INTEGER NOT NULL,
	"classid" INTEGER NOT NULL,
	"objid" INTEGER NOT NULL,
	"objsubid" INTEGER NOT NULL,
	"refclassid" INTEGER NOT NULL,
	"refobjid" INTEGER NOT NULL,
	"deptype" UNKNOWN NOT NULL,
	INDEX "pg_shdepend_depender_index" ("dbid", "classid", "objid", "objsubid"),
	INDEX "pg_shdepend_reference_index" ("refclassid", "refobjid")
);

-- Copiando dados para a tabela pg_catalog.pg_shdepend: 12 rows
DELETE FROM "pg_shdepend";
/*!40000 ALTER TABLE "pg_shdepend" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_shdescription
CREATE TABLE IF NOT EXISTS "pg_shdescription" (
	"objoid" INTEGER NOT NULL,
	"classoid" INTEGER NOT NULL,
	"description" TEXT NOT NULL COLLATE 'C',
	PRIMARY KEY ("objoid", "classoid")
);

-- Copiando dados para a tabela pg_catalog.pg_shdescription: 1 rows
DELETE FROM "pg_shdescription";
/*!40000 ALTER TABLE "pg_shdescription" DISABLE KEYS */;
-- Copiando estrutura para view pg_catalog.pg_shmem_allocations
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_shmem_allocations" (
	"name" TEXT NULL,
	"off" BIGINT NULL,
	"size" BIGINT NULL,
	"allocated_size" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_shseclabel
CREATE TABLE IF NOT EXISTS "pg_shseclabel" (
	"objoid" INTEGER NOT NULL,
	"classoid" INTEGER NOT NULL,
	"provider" TEXT NOT NULL COLLATE 'C',
	"label" TEXT NOT NULL COLLATE 'C',
	PRIMARY KEY ("objoid", "classoid", "provider")
);

-- Copiando dados para a tabela pg_catalog.pg_shseclabel: 0 rows
DELETE FROM "pg_shseclabel";
/*!40000 ALTER TABLE "pg_shseclabel" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_shseclabel" ENABLE KEYS */;

-- Copiando estrutura para view pg_catalog.pg_statio_all_indexes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_statio_all_indexes" (
	"relid" INTEGER NULL,
	"indexrelid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"indexrelname" VARCHAR NULL COLLATE 'C',
	"idx_blks_read" BIGINT NULL,
	"idx_blks_hit" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_statio_all_sequences
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_statio_all_sequences" (
	"relid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"blks_read" BIGINT NULL,
	"blks_hit" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_statio_all_tables
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_statio_all_tables" (
	"relid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"heap_blks_read" BIGINT NULL,
	"heap_blks_hit" BIGINT NULL,
	"idx_blks_read" BIGINT NULL,
	"idx_blks_hit" BIGINT NULL,
	"toast_blks_read" BIGINT NULL,
	"toast_blks_hit" BIGINT NULL,
	"tidx_blks_read" BIGINT NULL,
	"tidx_blks_hit" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_statio_sys_indexes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_statio_sys_indexes" (
	"relid" INTEGER NULL,
	"indexrelid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"indexrelname" VARCHAR NULL COLLATE 'C',
	"idx_blks_read" BIGINT NULL,
	"idx_blks_hit" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_statio_sys_sequences
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_statio_sys_sequences" (
	"relid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"blks_read" BIGINT NULL,
	"blks_hit" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_statio_sys_tables
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_statio_sys_tables" (
	"relid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"heap_blks_read" BIGINT NULL,
	"heap_blks_hit" BIGINT NULL,
	"idx_blks_read" BIGINT NULL,
	"idx_blks_hit" BIGINT NULL,
	"toast_blks_read" BIGINT NULL,
	"toast_blks_hit" BIGINT NULL,
	"tidx_blks_read" BIGINT NULL,
	"tidx_blks_hit" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_statio_user_indexes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_statio_user_indexes" (
	"relid" INTEGER NULL,
	"indexrelid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"indexrelname" VARCHAR NULL COLLATE 'C',
	"idx_blks_read" BIGINT NULL,
	"idx_blks_hit" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_statio_user_sequences
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_statio_user_sequences" (
	"relid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"blks_read" BIGINT NULL,
	"blks_hit" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_statio_user_tables
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_statio_user_tables" (
	"relid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"heap_blks_read" BIGINT NULL,
	"heap_blks_hit" BIGINT NULL,
	"idx_blks_read" BIGINT NULL,
	"idx_blks_hit" BIGINT NULL,
	"toast_blks_read" BIGINT NULL,
	"toast_blks_hit" BIGINT NULL,
	"tidx_blks_read" BIGINT NULL,
	"tidx_blks_hit" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_statistic
CREATE TABLE IF NOT EXISTS "pg_statistic" (
	"starelid" INTEGER NOT NULL,
	"staattnum" SMALLINT NOT NULL,
	"stainherit" BOOLEAN NOT NULL,
	"stanullfrac" REAL NOT NULL,
	"stawidth" INTEGER NOT NULL,
	"stadistinct" REAL NOT NULL,
	"stakind1" SMALLINT NOT NULL,
	"stakind2" SMALLINT NOT NULL,
	"stakind3" SMALLINT NOT NULL,
	"stakind4" SMALLINT NOT NULL,
	"stakind5" SMALLINT NOT NULL,
	"staop1" INTEGER NOT NULL,
	"staop2" INTEGER NOT NULL,
	"staop3" INTEGER NOT NULL,
	"staop4" INTEGER NOT NULL,
	"staop5" INTEGER NOT NULL,
	"stacoll1" INTEGER NOT NULL,
	"stacoll2" INTEGER NOT NULL,
	"stacoll3" INTEGER NOT NULL,
	"stacoll4" INTEGER NOT NULL,
	"stacoll5" INTEGER NOT NULL,
	"stanumbers1" UNKNOWN NULL DEFAULT NULL,
	"stanumbers2" UNKNOWN NULL DEFAULT NULL,
	"stanumbers3" UNKNOWN NULL DEFAULT NULL,
	"stanumbers4" UNKNOWN NULL DEFAULT NULL,
	"stanumbers5" UNKNOWN NULL DEFAULT NULL,
	"stavalues1" UNKNOWN NULL DEFAULT NULL,
	"stavalues2" UNKNOWN NULL DEFAULT NULL,
	"stavalues3" UNKNOWN NULL DEFAULT NULL,
	"stavalues4" UNKNOWN NULL DEFAULT NULL,
	"stavalues5" UNKNOWN NULL DEFAULT NULL,
	PRIMARY KEY ("starelid", "staattnum", "stainherit")
);

-- Copiando dados para a tabela pg_catalog.pg_statistic: 406 rows
DELETE FROM "pg_statistic";
/*!40000 ALTER TABLE "pg_statistic" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_statistic_ext
CREATE TABLE IF NOT EXISTS "pg_statistic_ext" (
	"oid" INTEGER NOT NULL,
	"stxrelid" INTEGER NOT NULL,
	"stxname" VARCHAR NOT NULL COLLATE 'C',
	"stxnamespace" INTEGER NOT NULL,
	"stxowner" INTEGER NOT NULL,
	"stxstattarget" INTEGER NOT NULL,
	"stxkeys" UNKNOWN NOT NULL,
	"stxkind" UNKNOWN NOT NULL,
	"stxexprs" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	UNIQUE INDEX "pg_statistic_ext_name_index" ("stxname", "stxnamespace"),
	INDEX "pg_statistic_ext_relid_index" ("stxrelid"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_statistic_ext: 0 rows
DELETE FROM "pg_statistic_ext";
/*!40000 ALTER TABLE "pg_statistic_ext" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_statistic_ext" ENABLE KEYS */;

-- Copiando estrutura para tabela pg_catalog.pg_statistic_ext_data
CREATE TABLE IF NOT EXISTS "pg_statistic_ext_data" (
	"stxoid" INTEGER NOT NULL,
	"stxdndistinct" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	"stxddependencies" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	"stxdmcv" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	"stxdexpr" UNKNOWN NULL DEFAULT NULL,
	PRIMARY KEY ("stxoid")
);

-- Copiando dados para a tabela pg_catalog.pg_statistic_ext_data: 0 rows
DELETE FROM "pg_statistic_ext_data";
/*!40000 ALTER TABLE "pg_statistic_ext_data" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_statistic_ext_data" ENABLE KEYS */;

-- Copiando estrutura para view pg_catalog.pg_stats
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stats" (
	"schemaname" VARCHAR NULL COLLATE 'C',
	"tablename" VARCHAR NULL COLLATE 'C',
	"attname" VARCHAR NULL COLLATE 'C',
	"inherited" BOOLEAN NULL,
	"null_frac" REAL NULL,
	"avg_width" INTEGER NULL,
	"n_distinct" REAL NULL,
	"most_common_vals" UNKNOWN NULL,
	"most_common_freqs" UNKNOWN NULL,
	"histogram_bounds" UNKNOWN NULL,
	"correlation" REAL NULL,
	"most_common_elems" UNKNOWN NULL,
	"most_common_elem_freqs" UNKNOWN NULL,
	"elem_count_histogram" UNKNOWN NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stats_ext
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stats_ext" (
	"schemaname" VARCHAR NULL COLLATE 'C',
	"tablename" VARCHAR NULL COLLATE 'C',
	"statistics_schemaname" VARCHAR NULL COLLATE 'C',
	"statistics_name" VARCHAR NULL COLLATE 'C',
	"statistics_owner" VARCHAR NULL COLLATE 'C',
	"attnames" UNKNOWN NULL COLLATE 'C',
	"exprs" UNKNOWN NULL,
	"kinds" UNKNOWN NULL,
	"n_distinct" UNKNOWN NULL COLLATE 'C',
	"dependencies" UNKNOWN NULL COLLATE 'C',
	"most_common_vals" UNKNOWN NULL,
	"most_common_val_nulls" UNKNOWN NULL,
	"most_common_freqs" UNKNOWN NULL,
	"most_common_base_freqs" UNKNOWN NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stats_ext_exprs
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stats_ext_exprs" (
	"schemaname" VARCHAR NULL COLLATE 'C',
	"tablename" VARCHAR NULL COLLATE 'C',
	"statistics_schemaname" VARCHAR NULL COLLATE 'C',
	"statistics_name" VARCHAR NULL COLLATE 'C',
	"statistics_owner" VARCHAR NULL COLLATE 'C',
	"expr" TEXT NULL,
	"null_frac" REAL NULL,
	"avg_width" INTEGER NULL,
	"n_distinct" REAL NULL,
	"most_common_vals" UNKNOWN NULL,
	"most_common_freqs" UNKNOWN NULL,
	"histogram_bounds" UNKNOWN NULL,
	"correlation" REAL NULL,
	"most_common_elems" UNKNOWN NULL,
	"most_common_elem_freqs" UNKNOWN NULL,
	"elem_count_histogram" UNKNOWN NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_activity
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_activity" (
	"datid" INTEGER NULL,
	"datname" VARCHAR NULL COLLATE 'C',
	"pid" INTEGER NULL,
	"leader_pid" INTEGER NULL,
	"usesysid" INTEGER NULL,
	"usename" VARCHAR NULL COLLATE 'C',
	"application_name" TEXT NULL,
	"client_addr" INET NULL,
	"client_hostname" TEXT NULL,
	"client_port" INTEGER NULL,
	"backend_start" TIMESTAMPTZ NULL,
	"xact_start" TIMESTAMPTZ NULL,
	"query_start" TIMESTAMPTZ NULL,
	"state_change" TIMESTAMPTZ NULL,
	"wait_event_type" TEXT NULL,
	"wait_event" TEXT NULL,
	"state" TEXT NULL,
	"backend_xid" INTEGER NULL,
	"backend_xmin" INTEGER NULL,
	"query_id" BIGINT NULL,
	"query" TEXT NULL,
	"backend_type" TEXT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_all_indexes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_all_indexes" (
	"relid" INTEGER NULL,
	"indexrelid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"indexrelname" VARCHAR NULL COLLATE 'C',
	"idx_scan" BIGINT NULL,
	"idx_tup_read" BIGINT NULL,
	"idx_tup_fetch" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_all_tables
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_all_tables" (
	"relid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"seq_scan" BIGINT NULL,
	"seq_tup_read" BIGINT NULL,
	"idx_scan" BIGINT NULL,
	"idx_tup_fetch" BIGINT NULL,
	"n_tup_ins" BIGINT NULL,
	"n_tup_upd" BIGINT NULL,
	"n_tup_del" BIGINT NULL,
	"n_tup_hot_upd" BIGINT NULL,
	"n_live_tup" BIGINT NULL,
	"n_dead_tup" BIGINT NULL,
	"n_mod_since_analyze" BIGINT NULL,
	"n_ins_since_vacuum" BIGINT NULL,
	"last_vacuum" TIMESTAMPTZ NULL,
	"last_autovacuum" TIMESTAMPTZ NULL,
	"last_analyze" TIMESTAMPTZ NULL,
	"last_autoanalyze" TIMESTAMPTZ NULL,
	"vacuum_count" BIGINT NULL,
	"autovacuum_count" BIGINT NULL,
	"analyze_count" BIGINT NULL,
	"autoanalyze_count" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_archiver
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_archiver" (
	"archived_count" BIGINT NULL,
	"last_archived_wal" TEXT NULL,
	"last_archived_time" TIMESTAMPTZ NULL,
	"failed_count" BIGINT NULL,
	"last_failed_wal" TEXT NULL,
	"last_failed_time" TIMESTAMPTZ NULL,
	"stats_reset" TIMESTAMPTZ NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_bgwriter
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_bgwriter" (
	"checkpoints_timed" BIGINT NULL,
	"checkpoints_req" BIGINT NULL,
	"checkpoint_write_time" DOUBLE PRECISION NULL,
	"checkpoint_sync_time" DOUBLE PRECISION NULL,
	"buffers_checkpoint" BIGINT NULL,
	"buffers_clean" BIGINT NULL,
	"maxwritten_clean" BIGINT NULL,
	"buffers_backend" BIGINT NULL,
	"buffers_backend_fsync" BIGINT NULL,
	"buffers_alloc" BIGINT NULL,
	"stats_reset" TIMESTAMPTZ NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_database
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_database" (
	"datid" INTEGER NULL,
	"datname" VARCHAR NULL COLLATE 'C',
	"numbackends" INTEGER NULL,
	"xact_commit" BIGINT NULL,
	"xact_rollback" BIGINT NULL,
	"blks_read" BIGINT NULL,
	"blks_hit" BIGINT NULL,
	"tup_returned" BIGINT NULL,
	"tup_fetched" BIGINT NULL,
	"tup_inserted" BIGINT NULL,
	"tup_updated" BIGINT NULL,
	"tup_deleted" BIGINT NULL,
	"conflicts" BIGINT NULL,
	"temp_files" BIGINT NULL,
	"temp_bytes" BIGINT NULL,
	"deadlocks" BIGINT NULL,
	"checksum_failures" BIGINT NULL,
	"checksum_last_failure" TIMESTAMPTZ NULL,
	"blk_read_time" DOUBLE PRECISION NULL,
	"blk_write_time" DOUBLE PRECISION NULL,
	"session_time" DOUBLE PRECISION NULL,
	"active_time" DOUBLE PRECISION NULL,
	"idle_in_transaction_time" DOUBLE PRECISION NULL,
	"sessions" BIGINT NULL,
	"sessions_abandoned" BIGINT NULL,
	"sessions_fatal" BIGINT NULL,
	"sessions_killed" BIGINT NULL,
	"stats_reset" TIMESTAMPTZ NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_database_conflicts
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_database_conflicts" (
	"datid" INTEGER NULL,
	"datname" VARCHAR NULL COLLATE 'C',
	"confl_tablespace" BIGINT NULL,
	"confl_lock" BIGINT NULL,
	"confl_snapshot" BIGINT NULL,
	"confl_bufferpin" BIGINT NULL,
	"confl_deadlock" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_gssapi
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_gssapi" (
	"pid" INTEGER NULL,
	"gss_authenticated" BOOLEAN NULL,
	"principal" TEXT NULL,
	"encrypted" BOOLEAN NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_progress_analyze
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_progress_analyze" (
	"pid" INTEGER NULL,
	"datid" INTEGER NULL,
	"datname" VARCHAR NULL COLLATE 'C',
	"relid" INTEGER NULL,
	"phase" TEXT NULL,
	"sample_blks_total" BIGINT NULL,
	"sample_blks_scanned" BIGINT NULL,
	"ext_stats_total" BIGINT NULL,
	"ext_stats_computed" BIGINT NULL,
	"child_tables_total" BIGINT NULL,
	"child_tables_done" BIGINT NULL,
	"current_child_table_relid" INTEGER NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_progress_basebackup
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_progress_basebackup" (
	"pid" INTEGER NULL,
	"phase" TEXT NULL,
	"backup_total" BIGINT NULL,
	"backup_streamed" BIGINT NULL,
	"tablespaces_total" BIGINT NULL,
	"tablespaces_streamed" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_progress_cluster
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_progress_cluster" (
	"pid" INTEGER NULL,
	"datid" INTEGER NULL,
	"datname" VARCHAR NULL COLLATE 'C',
	"relid" INTEGER NULL,
	"command" TEXT NULL,
	"phase" TEXT NULL,
	"cluster_index_relid" INTEGER NULL,
	"heap_tuples_scanned" BIGINT NULL,
	"heap_tuples_written" BIGINT NULL,
	"heap_blks_total" BIGINT NULL,
	"heap_blks_scanned" BIGINT NULL,
	"index_rebuild_count" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_progress_copy
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_progress_copy" (
	"pid" INTEGER NULL,
	"datid" INTEGER NULL,
	"datname" VARCHAR NULL COLLATE 'C',
	"relid" INTEGER NULL,
	"command" TEXT NULL,
	"type" TEXT NULL,
	"bytes_processed" BIGINT NULL,
	"bytes_total" BIGINT NULL,
	"tuples_processed" BIGINT NULL,
	"tuples_excluded" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_progress_create_index
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_progress_create_index" (
	"pid" INTEGER NULL,
	"datid" INTEGER NULL,
	"datname" VARCHAR NULL COLLATE 'C',
	"relid" INTEGER NULL,
	"index_relid" INTEGER NULL,
	"command" TEXT NULL,
	"phase" TEXT NULL,
	"lockers_total" BIGINT NULL,
	"lockers_done" BIGINT NULL,
	"current_locker_pid" BIGINT NULL,
	"blocks_total" BIGINT NULL,
	"blocks_done" BIGINT NULL,
	"tuples_total" BIGINT NULL,
	"tuples_done" BIGINT NULL,
	"partitions_total" BIGINT NULL,
	"partitions_done" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_progress_vacuum
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_progress_vacuum" (
	"pid" INTEGER NULL,
	"datid" INTEGER NULL,
	"datname" VARCHAR NULL COLLATE 'C',
	"relid" INTEGER NULL,
	"phase" TEXT NULL,
	"heap_blks_total" BIGINT NULL,
	"heap_blks_scanned" BIGINT NULL,
	"heap_blks_vacuumed" BIGINT NULL,
	"index_vacuum_count" BIGINT NULL,
	"max_dead_tuples" BIGINT NULL,
	"num_dead_tuples" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_replication
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_replication" (
	"pid" INTEGER NULL,
	"usesysid" INTEGER NULL,
	"usename" VARCHAR NULL COLLATE 'C',
	"application_name" TEXT NULL,
	"client_addr" INET NULL,
	"client_hostname" TEXT NULL,
	"client_port" INTEGER NULL,
	"backend_start" TIMESTAMPTZ NULL,
	"backend_xmin" INTEGER NULL,
	"state" TEXT NULL,
	"sent_lsn" UNKNOWN NULL,
	"write_lsn" UNKNOWN NULL,
	"flush_lsn" UNKNOWN NULL,
	"replay_lsn" UNKNOWN NULL,
	"write_lag" INTERVAL NULL,
	"flush_lag" INTERVAL NULL,
	"replay_lag" INTERVAL NULL,
	"sync_priority" INTEGER NULL,
	"sync_state" TEXT NULL,
	"reply_time" TIMESTAMPTZ NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_replication_slots
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_replication_slots" (
	"slot_name" TEXT NULL,
	"spill_txns" BIGINT NULL,
	"spill_count" BIGINT NULL,
	"spill_bytes" BIGINT NULL,
	"stream_txns" BIGINT NULL,
	"stream_count" BIGINT NULL,
	"stream_bytes" BIGINT NULL,
	"total_txns" BIGINT NULL,
	"total_bytes" BIGINT NULL,
	"stats_reset" TIMESTAMPTZ NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_slru
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_slru" (
	"name" TEXT NULL,
	"blks_zeroed" BIGINT NULL,
	"blks_hit" BIGINT NULL,
	"blks_read" BIGINT NULL,
	"blks_written" BIGINT NULL,
	"blks_exists" BIGINT NULL,
	"flushes" BIGINT NULL,
	"truncates" BIGINT NULL,
	"stats_reset" TIMESTAMPTZ NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_ssl
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_ssl" (
	"pid" INTEGER NULL,
	"ssl" BOOLEAN NULL,
	"version" TEXT NULL,
	"cipher" TEXT NULL,
	"bits" INTEGER NULL,
	"client_dn" TEXT NULL,
	"client_serial" NUMERIC NULL,
	"issuer_dn" TEXT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_subscription
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_subscription" (
	"subid" INTEGER NULL,
	"subname" VARCHAR NULL COLLATE 'C',
	"pid" INTEGER NULL,
	"relid" INTEGER NULL,
	"received_lsn" UNKNOWN NULL,
	"last_msg_send_time" TIMESTAMPTZ NULL,
	"last_msg_receipt_time" TIMESTAMPTZ NULL,
	"latest_end_lsn" UNKNOWN NULL,
	"latest_end_time" TIMESTAMPTZ NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_sys_indexes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_sys_indexes" (
	"relid" INTEGER NULL,
	"indexrelid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"indexrelname" VARCHAR NULL COLLATE 'C',
	"idx_scan" BIGINT NULL,
	"idx_tup_read" BIGINT NULL,
	"idx_tup_fetch" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_sys_tables
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_sys_tables" (
	"relid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"seq_scan" BIGINT NULL,
	"seq_tup_read" BIGINT NULL,
	"idx_scan" BIGINT NULL,
	"idx_tup_fetch" BIGINT NULL,
	"n_tup_ins" BIGINT NULL,
	"n_tup_upd" BIGINT NULL,
	"n_tup_del" BIGINT NULL,
	"n_tup_hot_upd" BIGINT NULL,
	"n_live_tup" BIGINT NULL,
	"n_dead_tup" BIGINT NULL,
	"n_mod_since_analyze" BIGINT NULL,
	"n_ins_since_vacuum" BIGINT NULL,
	"last_vacuum" TIMESTAMPTZ NULL,
	"last_autovacuum" TIMESTAMPTZ NULL,
	"last_analyze" TIMESTAMPTZ NULL,
	"last_autoanalyze" TIMESTAMPTZ NULL,
	"vacuum_count" BIGINT NULL,
	"autovacuum_count" BIGINT NULL,
	"analyze_count" BIGINT NULL,
	"autoanalyze_count" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_user_functions
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_user_functions" (
	"funcid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"funcname" VARCHAR NULL COLLATE 'C',
	"calls" BIGINT NULL,
	"total_time" DOUBLE PRECISION NULL,
	"self_time" DOUBLE PRECISION NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_user_indexes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_user_indexes" (
	"relid" INTEGER NULL,
	"indexrelid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"indexrelname" VARCHAR NULL COLLATE 'C',
	"idx_scan" BIGINT NULL,
	"idx_tup_read" BIGINT NULL,
	"idx_tup_fetch" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_user_tables
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_user_tables" (
	"relid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"seq_scan" BIGINT NULL,
	"seq_tup_read" BIGINT NULL,
	"idx_scan" BIGINT NULL,
	"idx_tup_fetch" BIGINT NULL,
	"n_tup_ins" BIGINT NULL,
	"n_tup_upd" BIGINT NULL,
	"n_tup_del" BIGINT NULL,
	"n_tup_hot_upd" BIGINT NULL,
	"n_live_tup" BIGINT NULL,
	"n_dead_tup" BIGINT NULL,
	"n_mod_since_analyze" BIGINT NULL,
	"n_ins_since_vacuum" BIGINT NULL,
	"last_vacuum" TIMESTAMPTZ NULL,
	"last_autovacuum" TIMESTAMPTZ NULL,
	"last_analyze" TIMESTAMPTZ NULL,
	"last_autoanalyze" TIMESTAMPTZ NULL,
	"vacuum_count" BIGINT NULL,
	"autovacuum_count" BIGINT NULL,
	"analyze_count" BIGINT NULL,
	"autoanalyze_count" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_wal
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_wal" (
	"wal_records" BIGINT NULL,
	"wal_fpi" BIGINT NULL,
	"wal_bytes" NUMERIC NULL,
	"wal_buffers_full" BIGINT NULL,
	"wal_write" BIGINT NULL,
	"wal_sync" BIGINT NULL,
	"wal_write_time" DOUBLE PRECISION NULL,
	"wal_sync_time" DOUBLE PRECISION NULL,
	"stats_reset" TIMESTAMPTZ NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_wal_receiver
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_wal_receiver" (
	"pid" INTEGER NULL,
	"status" TEXT NULL,
	"receive_start_lsn" UNKNOWN NULL,
	"receive_start_tli" INTEGER NULL,
	"written_lsn" UNKNOWN NULL,
	"flushed_lsn" UNKNOWN NULL,
	"received_tli" INTEGER NULL,
	"last_msg_send_time" TIMESTAMPTZ NULL,
	"last_msg_receipt_time" TIMESTAMPTZ NULL,
	"latest_end_lsn" UNKNOWN NULL,
	"latest_end_time" TIMESTAMPTZ NULL,
	"slot_name" TEXT NULL,
	"sender_host" TEXT NULL,
	"sender_port" INTEGER NULL,
	"conninfo" TEXT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_xact_all_tables
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_xact_all_tables" (
	"relid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"seq_scan" BIGINT NULL,
	"seq_tup_read" BIGINT NULL,
	"idx_scan" BIGINT NULL,
	"idx_tup_fetch" BIGINT NULL,
	"n_tup_ins" BIGINT NULL,
	"n_tup_upd" BIGINT NULL,
	"n_tup_del" BIGINT NULL,
	"n_tup_hot_upd" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_xact_sys_tables
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_xact_sys_tables" (
	"relid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"seq_scan" BIGINT NULL,
	"seq_tup_read" BIGINT NULL,
	"idx_scan" BIGINT NULL,
	"idx_tup_fetch" BIGINT NULL,
	"n_tup_ins" BIGINT NULL,
	"n_tup_upd" BIGINT NULL,
	"n_tup_del" BIGINT NULL,
	"n_tup_hot_upd" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_xact_user_functions
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_xact_user_functions" (
	"funcid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"funcname" VARCHAR NULL COLLATE 'C',
	"calls" BIGINT NULL,
	"total_time" DOUBLE PRECISION NULL,
	"self_time" DOUBLE PRECISION NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_stat_xact_user_tables
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_stat_xact_user_tables" (
	"relid" INTEGER NULL,
	"schemaname" VARCHAR NULL COLLATE 'C',
	"relname" VARCHAR NULL COLLATE 'C',
	"seq_scan" BIGINT NULL,
	"seq_tup_read" BIGINT NULL,
	"idx_scan" BIGINT NULL,
	"idx_tup_fetch" BIGINT NULL,
	"n_tup_ins" BIGINT NULL,
	"n_tup_upd" BIGINT NULL,
	"n_tup_del" BIGINT NULL,
	"n_tup_hot_upd" BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_subscription
CREATE TABLE IF NOT EXISTS "pg_subscription" (
	"oid" INTEGER NOT NULL,
	"subdbid" INTEGER NOT NULL,
	"subname" VARCHAR NOT NULL COLLATE 'C',
	"subowner" INTEGER NOT NULL,
	"subenabled" BOOLEAN NOT NULL,
	"subbinary" BOOLEAN NOT NULL,
	"substream" BOOLEAN NOT NULL,
	"subconninfo" TEXT NOT NULL COLLATE 'C',
	"subslotname" VARCHAR NULL DEFAULT NULL COLLATE 'C',
	"subsynccommit" TEXT NOT NULL COLLATE 'C',
	"subpublications" UNKNOWN NOT NULL COLLATE 'C',
	UNIQUE INDEX "pg_subscription_subname_index" ("subdbid", "subname"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_subscription: 0 rows
DELETE FROM "pg_subscription";
/*!40000 ALTER TABLE "pg_subscription" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_subscription" ENABLE KEYS */;

-- Copiando estrutura para tabela pg_catalog.pg_subscription_rel
CREATE TABLE IF NOT EXISTS "pg_subscription_rel" (
	"srsubid" INTEGER NOT NULL,
	"srrelid" INTEGER NOT NULL,
	"srsubstate" UNKNOWN NOT NULL,
	"srsublsn" UNKNOWN NULL DEFAULT NULL,
	PRIMARY KEY ("srrelid", "srsubid")
);

-- Copiando dados para a tabela pg_catalog.pg_subscription_rel: 0 rows
DELETE FROM "pg_subscription_rel";
/*!40000 ALTER TABLE "pg_subscription_rel" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_subscription_rel" ENABLE KEYS */;

-- Copiando estrutura para view pg_catalog.pg_tables
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_tables" (
	"schemaname" VARCHAR NULL COLLATE 'C',
	"tablename" VARCHAR NULL COLLATE 'C',
	"tableowner" VARCHAR NULL COLLATE 'C',
	"tablespace" VARCHAR NULL COLLATE 'C',
	"hasindexes" BOOLEAN NULL,
	"hasrules" BOOLEAN NULL,
	"hastriggers" BOOLEAN NULL,
	"rowsecurity" BOOLEAN NULL
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_tablespace
CREATE TABLE IF NOT EXISTS "pg_tablespace" (
	"oid" INTEGER NOT NULL,
	"spcname" VARCHAR NOT NULL COLLATE 'C',
	"spcowner" INTEGER NOT NULL,
	"spcacl" UNKNOWN NULL DEFAULT NULL,
	"spcoptions" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	UNIQUE INDEX "pg_tablespace_spcname_index" ("spcname"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_tablespace: 2 rows
DELETE FROM "pg_tablespace";
/*!40000 ALTER TABLE "pg_tablespace" DISABLE KEYS */;
-- Copiando estrutura para view pg_catalog.pg_timezone_abbrevs
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_timezone_abbrevs" (
	"abbrev" TEXT NULL,
	"utc_offset" INTERVAL NULL,
	"is_dst" BOOLEAN NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_timezone_names
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_timezone_names" (
	"name" TEXT NULL,
	"abbrev" TEXT NULL,
	"utc_offset" INTERVAL NULL,
	"is_dst" BOOLEAN NULL
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_transform
CREATE TABLE IF NOT EXISTS "pg_transform" (
	"oid" INTEGER NOT NULL,
	"trftype" INTEGER NOT NULL,
	"trflang" INTEGER NOT NULL,
	"trffromsql" REGPROC NOT NULL,
	"trftosql" REGPROC NOT NULL,
	UNIQUE INDEX "pg_transform_type_lang_index" ("trftype", "trflang"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_transform: 0 rows
DELETE FROM "pg_transform";
/*!40000 ALTER TABLE "pg_transform" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_transform" ENABLE KEYS */;

-- Copiando estrutura para tabela pg_catalog.pg_trigger
CREATE TABLE IF NOT EXISTS "pg_trigger" (
	"oid" INTEGER NOT NULL,
	"tgrelid" INTEGER NOT NULL,
	"tgparentid" INTEGER NOT NULL,
	"tgname" VARCHAR NOT NULL COLLATE 'C',
	"tgfoid" INTEGER NOT NULL,
	"tgtype" SMALLINT NOT NULL,
	"tgenabled" UNKNOWN NOT NULL,
	"tgisinternal" BOOLEAN NOT NULL,
	"tgconstrrelid" INTEGER NOT NULL,
	"tgconstrindid" INTEGER NOT NULL,
	"tgconstraint" INTEGER NOT NULL,
	"tgdeferrable" BOOLEAN NOT NULL,
	"tginitdeferred" BOOLEAN NOT NULL,
	"tgnargs" SMALLINT NOT NULL,
	"tgattr" UNKNOWN NOT NULL,
	"tgargs" BYTEA NOT NULL,
	"tgqual" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	"tgoldtable" VARCHAR NULL DEFAULT NULL COLLATE 'C',
	"tgnewtable" VARCHAR NULL DEFAULT NULL COLLATE 'C',
	INDEX "pg_trigger_tgconstraint_index" ("tgconstraint"),
	UNIQUE INDEX "pg_trigger_tgrelid_tgname_index" ("tgrelid", "tgname"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_trigger: 0 rows
DELETE FROM "pg_trigger";
/*!40000 ALTER TABLE "pg_trigger" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_trigger" ENABLE KEYS */;

-- Copiando estrutura para tabela pg_catalog.pg_ts_config
CREATE TABLE IF NOT EXISTS "pg_ts_config" (
	"oid" INTEGER NOT NULL,
	"cfgname" VARCHAR NOT NULL COLLATE 'C',
	"cfgnamespace" INTEGER NOT NULL,
	"cfgowner" INTEGER NOT NULL,
	"cfgparser" INTEGER NOT NULL,
	UNIQUE INDEX "pg_ts_config_cfgname_index" ("cfgname", "cfgnamespace"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_ts_config: 29 rows
DELETE FROM "pg_ts_config";
/*!40000 ALTER TABLE "pg_ts_config" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_ts_config_map
CREATE TABLE IF NOT EXISTS "pg_ts_config_map" (
	"mapcfg" INTEGER NOT NULL,
	"maptokentype" INTEGER NOT NULL,
	"mapseqno" INTEGER NOT NULL,
	"mapdict" INTEGER NOT NULL,
	PRIMARY KEY ("mapcfg", "maptokentype", "mapseqno")
);

-- Copiando dados para a tabela pg_catalog.pg_ts_config_map: 551 rows
DELETE FROM "pg_ts_config_map";
/*!40000 ALTER TABLE "pg_ts_config_map" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_ts_dict
CREATE TABLE IF NOT EXISTS "pg_ts_dict" (
	"oid" INTEGER NOT NULL,
	"dictname" VARCHAR NOT NULL COLLATE 'C',
	"dictnamespace" INTEGER NOT NULL,
	"dictowner" INTEGER NOT NULL,
	"dicttemplate" INTEGER NOT NULL,
	"dictinitoption" TEXT NULL DEFAULT NULL COLLATE 'C',
	UNIQUE INDEX "pg_ts_dict_dictname_index" ("dictname", "dictnamespace"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_ts_dict: 29 rows
DELETE FROM "pg_ts_dict";
/*!40000 ALTER TABLE "pg_ts_dict" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_ts_parser
CREATE TABLE IF NOT EXISTS "pg_ts_parser" (
	"oid" INTEGER NOT NULL,
	"prsname" VARCHAR NOT NULL COLLATE 'C',
	"prsnamespace" INTEGER NOT NULL,
	"prsstart" REGPROC NOT NULL,
	"prstoken" REGPROC NOT NULL,
	"prsend" REGPROC NOT NULL,
	"prsheadline" REGPROC NOT NULL,
	"prslextype" REGPROC NOT NULL,
	UNIQUE INDEX "pg_ts_parser_prsname_index" ("prsname", "prsnamespace"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_ts_parser: 1 rows
DELETE FROM "pg_ts_parser";
/*!40000 ALTER TABLE "pg_ts_parser" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_ts_template
CREATE TABLE IF NOT EXISTS "pg_ts_template" (
	"oid" INTEGER NOT NULL,
	"tmplname" VARCHAR NOT NULL COLLATE 'C',
	"tmplnamespace" INTEGER NOT NULL,
	"tmplinit" REGPROC NOT NULL,
	"tmpllexize" REGPROC NOT NULL,
	UNIQUE INDEX "pg_ts_template_tmplname_index" ("tmplname", "tmplnamespace"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_ts_template: 5 rows
DELETE FROM "pg_ts_template";
/*!40000 ALTER TABLE "pg_ts_template" DISABLE KEYS */;
-- Copiando estrutura para tabela pg_catalog.pg_type
CREATE TABLE IF NOT EXISTS "pg_type" (
	"oid" INTEGER NOT NULL,
	"typname" VARCHAR NOT NULL COLLATE 'C',
	"typnamespace" INTEGER NOT NULL,
	"typowner" INTEGER NOT NULL,
	"typlen" SMALLINT NOT NULL,
	"typbyval" BOOLEAN NOT NULL,
	"typtype" UNKNOWN NOT NULL,
	"typcategory" UNKNOWN NOT NULL,
	"typispreferred" BOOLEAN NOT NULL,
	"typisdefined" BOOLEAN NOT NULL,
	"typdelim" UNKNOWN NOT NULL,
	"typrelid" INTEGER NOT NULL,
	"typsubscript" REGPROC NOT NULL,
	"typelem" INTEGER NOT NULL,
	"typarray" INTEGER NOT NULL,
	"typinput" REGPROC NOT NULL,
	"typoutput" REGPROC NOT NULL,
	"typreceive" REGPROC NOT NULL,
	"typsend" REGPROC NOT NULL,
	"typmodin" REGPROC NOT NULL,
	"typmodout" REGPROC NOT NULL,
	"typanalyze" REGPROC NOT NULL,
	"typalign" UNKNOWN NOT NULL,
	"typstorage" UNKNOWN NOT NULL,
	"typnotnull" BOOLEAN NOT NULL,
	"typbasetype" INTEGER NOT NULL,
	"typtypmod" INTEGER NOT NULL,
	"typndims" INTEGER NOT NULL,
	"typcollation" INTEGER NOT NULL,
	"typdefaultbin" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	"typdefault" TEXT NULL DEFAULT NULL COLLATE 'C',
	"typacl" UNKNOWN NULL DEFAULT NULL,
	UNIQUE INDEX "pg_type_typname_nsp_index" ("typname", "typnamespace"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_type: 601 rows
DELETE FROM "pg_type";
/*!40000 ALTER TABLE "pg_type" DISABLE KEYS */;
-- Copiando estrutura para view pg_catalog.pg_user
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_user" (
	"usename" VARCHAR NULL COLLATE 'C',
	"usesysid" INTEGER NULL,
	"usecreatedb" BOOLEAN NULL,
	"usesuper" BOOLEAN NULL,
	"userepl" BOOLEAN NULL,
	"usebypassrls" BOOLEAN NULL,
	"passwd" TEXT NULL,
	"valuntil" TIMESTAMPTZ NULL,
	"useconfig" UNKNOWN NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para tabela pg_catalog.pg_user_mapping
CREATE TABLE IF NOT EXISTS "pg_user_mapping" (
	"oid" INTEGER NOT NULL,
	"umuser" INTEGER NOT NULL,
	"umserver" INTEGER NOT NULL,
	"umoptions" UNKNOWN NULL DEFAULT NULL COLLATE 'C',
	UNIQUE INDEX "pg_user_mapping_user_server_index" ("umuser", "umserver"),
	PRIMARY KEY ("oid")
);

-- Copiando dados para a tabela pg_catalog.pg_user_mapping: 0 rows
DELETE FROM "pg_user_mapping";
/*!40000 ALTER TABLE "pg_user_mapping" DISABLE KEYS */;
/*!40000 ALTER TABLE "pg_user_mapping" ENABLE KEYS */;

-- Copiando estrutura para view pg_catalog.pg_user_mappings
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_user_mappings" (
	"umid" INTEGER NULL,
	"srvid" INTEGER NULL,
	"srvname" VARCHAR NULL COLLATE 'C',
	"umuser" INTEGER NULL,
	"usename" VARCHAR NULL COLLATE 'C',
	"umoptions" UNKNOWN NULL COLLATE 'C'
) ENGINE=MyISAM;

-- Copiando estrutura para view pg_catalog.pg_views
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE "pg_views" (
	"schemaname" VARCHAR NULL COLLATE 'C',
	"viewname" VARCHAR NULL COLLATE 'C',
	"viewowner" VARCHAR NULL COLLATE 'C',
	"definition" TEXT NULL
) ENGINE=MyISAM;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_available_extensions";
CREATE VIEW "pg_available_extensions" AS  SELECT e.name,
    e.default_version,
    x.extversion AS installed_version,
    e.comment
   FROM (pg_available_extensions() e(name, default_version, comment)
     LEFT JOIN pg_extension x ON ((e.name = x.extname)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_available_extension_versions";
CREATE VIEW "pg_available_extension_versions" AS  SELECT e.name,
    e.version,
    (x.extname IS NOT NULL) AS installed,
    e.superuser,
    e.trusted,
    e.relocatable,
    e.schema,
    e.requires,
    e.comment
   FROM (pg_available_extension_versions() e(name, version, superuser, trusted, relocatable, schema, requires, comment)
     LEFT JOIN pg_extension x ON (((e.name = x.extname) AND (e.version = x.extversion))));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_backend_memory_contexts";
CREATE VIEW "pg_backend_memory_contexts" AS  SELECT pg_get_backend_memory_contexts.name,
    pg_get_backend_memory_contexts.ident,
    pg_get_backend_memory_contexts.parent,
    pg_get_backend_memory_contexts.level,
    pg_get_backend_memory_contexts.total_bytes,
    pg_get_backend_memory_contexts.total_nblocks,
    pg_get_backend_memory_contexts.free_bytes,
    pg_get_backend_memory_contexts.free_chunks,
    pg_get_backend_memory_contexts.used_bytes
   FROM pg_get_backend_memory_contexts() pg_get_backend_memory_contexts(name, ident, parent, level, total_bytes, total_nblocks, free_bytes, free_chunks, used_bytes);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_config";
CREATE VIEW "pg_config" AS  SELECT pg_config.name,
    pg_config.setting
   FROM pg_config() pg_config(name, setting);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_cursors";
CREATE VIEW "pg_cursors" AS  SELECT c.name,
    c.statement,
    c.is_holdable,
    c.is_binary,
    c.is_scrollable,
    c.creation_time
   FROM pg_cursor() c(name, statement, is_holdable, is_binary, is_scrollable, creation_time);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_file_settings";
CREATE VIEW "pg_file_settings" AS  SELECT a.sourcefile,
    a.sourceline,
    a.seqno,
    a.name,
    a.setting,
    a.applied,
    a.error
   FROM pg_show_all_file_settings() a(sourcefile, sourceline, seqno, name, setting, applied, error);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_group";
CREATE VIEW "pg_group" AS  SELECT pg_authid.rolname AS groname,
    pg_authid.oid AS grosysid,
    ARRAY( SELECT pg_auth_members.member
           FROM pg_auth_members
          WHERE (pg_auth_members.roleid = pg_authid.oid)) AS grolist
   FROM pg_authid
  WHERE (NOT pg_authid.rolcanlogin);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_hba_file_rules";
CREATE VIEW "pg_hba_file_rules" AS  SELECT a.line_number,
    a.type,
    a.database,
    a.user_name,
    a.address,
    a.netmask,
    a.auth_method,
    a.options,
    a.error
   FROM pg_hba_file_rules() a(line_number, type, database, user_name, address, netmask, auth_method, options, error);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_indexes";
CREATE VIEW "pg_indexes" AS  SELECT n.nspname AS schemaname,
    c.relname AS tablename,
    i.relname AS indexname,
    t.spcname AS tablespace,
    pg_get_indexdef(i.oid) AS indexdef
   FROM ((((pg_index x
     JOIN pg_class c ON ((c.oid = x.indrelid)))
     JOIN pg_class i ON ((i.oid = x.indexrelid)))
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
     LEFT JOIN pg_tablespace t ON ((t.oid = i.reltablespace)))
  WHERE ((c.relkind = ANY (ARRAY['r'::"char", 'm'::"char", 'p'::"char"])) AND (i.relkind = ANY (ARRAY['i'::"char", 'I'::"char"])));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_locks";
CREATE VIEW "pg_locks" AS  SELECT l.locktype,
    l.database,
    l.relation,
    l.page,
    l.tuple,
    l.virtualxid,
    l.transactionid,
    l.classid,
    l.objid,
    l.objsubid,
    l.virtualtransaction,
    l.pid,
    l.mode,
    l.granted,
    l.fastpath,
    l.waitstart
   FROM pg_lock_status() l(locktype, database, relation, page, tuple, virtualxid, transactionid, classid, objid, objsubid, virtualtransaction, pid, mode, granted, fastpath, waitstart);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_matviews";
CREATE VIEW "pg_matviews" AS  SELECT n.nspname AS schemaname,
    c.relname AS matviewname,
    pg_get_userbyid(c.relowner) AS matviewowner,
    t.spcname AS tablespace,
    c.relhasindex AS hasindexes,
    c.relispopulated AS ispopulated,
    pg_get_viewdef(c.oid) AS definition
   FROM ((pg_class c
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
     LEFT JOIN pg_tablespace t ON ((t.oid = c.reltablespace)))
  WHERE (c.relkind = 'm'::"char");;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_policies";
CREATE VIEW "pg_policies" AS  SELECT n.nspname AS schemaname,
    c.relname AS tablename,
    pol.polname AS policyname,
        CASE
            WHEN pol.polpermissive THEN 'PERMISSIVE'::text
            ELSE 'RESTRICTIVE'::text
        END AS permissive,
        CASE
            WHEN (pol.polroles = '{0}'::oid[]) THEN (string_to_array('public'::text, ''::text))::name[]
            ELSE ARRAY( SELECT pg_authid.rolname
               FROM pg_authid
              WHERE (pg_authid.oid = ANY (pol.polroles))
              ORDER BY pg_authid.rolname)
        END AS roles,
        CASE pol.polcmd
            WHEN 'r'::"char" THEN 'SELECT'::text
            WHEN 'a'::"char" THEN 'INSERT'::text
            WHEN 'w'::"char" THEN 'UPDATE'::text
            WHEN 'd'::"char" THEN 'DELETE'::text
            WHEN '*'::"char" THEN 'ALL'::text
            ELSE NULL::text
        END AS cmd,
    pg_get_expr(pol.polqual, pol.polrelid) AS qual,
    pg_get_expr(pol.polwithcheck, pol.polrelid) AS with_check
   FROM ((pg_policy pol
     JOIN pg_class c ON ((c.oid = pol.polrelid)))
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_prepared_statements";
CREATE VIEW "pg_prepared_statements" AS  SELECT p.name,
    p.statement,
    p.prepare_time,
    p.parameter_types,
    p.from_sql,
    p.generic_plans,
    p.custom_plans
   FROM pg_prepared_statement() p(name, statement, prepare_time, parameter_types, from_sql, generic_plans, custom_plans);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_prepared_xacts";
CREATE VIEW "pg_prepared_xacts" AS  SELECT p.transaction,
    p.gid,
    p.prepared,
    u.rolname AS owner,
    d.datname AS database
   FROM ((pg_prepared_xact() p(transaction, gid, prepared, ownerid, dbid)
     LEFT JOIN pg_authid u ON ((p.ownerid = u.oid)))
     LEFT JOIN pg_database d ON ((p.dbid = d.oid)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_publication_tables";
CREATE VIEW "pg_publication_tables" AS  SELECT p.pubname,
    n.nspname AS schemaname,
    c.relname AS tablename
   FROM pg_publication p,
    LATERAL pg_get_publication_tables((p.pubname)::text) gpt(relid),
    (pg_class c
     JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
  WHERE (c.oid = gpt.relid);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_replication_origin_status";
CREATE VIEW "pg_replication_origin_status" AS  SELECT pg_show_replication_origin_status.local_id,
    pg_show_replication_origin_status.external_id,
    pg_show_replication_origin_status.remote_lsn,
    pg_show_replication_origin_status.local_lsn
   FROM pg_show_replication_origin_status() pg_show_replication_origin_status(local_id, external_id, remote_lsn, local_lsn);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_replication_slots";
CREATE VIEW "pg_replication_slots" AS  SELECT l.slot_name,
    l.plugin,
    l.slot_type,
    l.datoid,
    d.datname AS database,
    l.temporary,
    l.active,
    l.active_pid,
    l.xmin,
    l.catalog_xmin,
    l.restart_lsn,
    l.confirmed_flush_lsn,
    l.wal_status,
    l.safe_wal_size,
    l.two_phase
   FROM (pg_get_replication_slots() l(slot_name, plugin, slot_type, datoid, temporary, active, active_pid, xmin, catalog_xmin, restart_lsn, confirmed_flush_lsn, wal_status, safe_wal_size, two_phase)
     LEFT JOIN pg_database d ON ((l.datoid = d.oid)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_roles";
CREATE VIEW "pg_roles" AS  SELECT pg_authid.rolname,
    pg_authid.rolsuper,
    pg_authid.rolinherit,
    pg_authid.rolcreaterole,
    pg_authid.rolcreatedb,
    pg_authid.rolcanlogin,
    pg_authid.rolreplication,
    pg_authid.rolconnlimit,
    '********'::text AS rolpassword,
    pg_authid.rolvaliduntil,
    pg_authid.rolbypassrls,
    s.setconfig AS rolconfig,
    pg_authid.oid
   FROM (pg_authid
     LEFT JOIN pg_db_role_setting s ON (((pg_authid.oid = s.setrole) AND (s.setdatabase = (0)::oid))));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_rules";
CREATE VIEW "pg_rules" AS  SELECT n.nspname AS schemaname,
    c.relname AS tablename,
    r.rulename,
    pg_get_ruledef(r.oid) AS definition
   FROM ((pg_rewrite r
     JOIN pg_class c ON ((c.oid = r.ev_class)))
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
  WHERE (r.rulename <> '_RETURN'::name);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_seclabels";
CREATE VIEW "pg_seclabels" AS  SELECT l.objoid,
    l.classoid,
    l.objsubid,
        CASE
            WHEN (rel.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])) THEN 'table'::text
            WHEN (rel.relkind = 'v'::"char") THEN 'view'::text
            WHEN (rel.relkind = 'm'::"char") THEN 'materialized view'::text
            WHEN (rel.relkind = 'S'::"char") THEN 'sequence'::text
            WHEN (rel.relkind = 'f'::"char") THEN 'foreign table'::text
            ELSE NULL::text
        END AS objtype,
    rel.relnamespace AS objnamespace,
        CASE
            WHEN pg_table_is_visible(rel.oid) THEN quote_ident((rel.relname)::text)
            ELSE ((quote_ident((nsp.nspname)::text) || '.'::text) || quote_ident((rel.relname)::text))
        END AS objname,
    l.provider,
    l.label
   FROM ((pg_seclabel l
     JOIN pg_class rel ON (((l.classoid = rel.tableoid) AND (l.objoid = rel.oid))))
     JOIN pg_namespace nsp ON ((rel.relnamespace = nsp.oid)))
  WHERE (l.objsubid = 0)
UNION ALL
 SELECT l.objoid,
    l.classoid,
    l.objsubid,
    'column'::text AS objtype,
    rel.relnamespace AS objnamespace,
    ((
        CASE
            WHEN pg_table_is_visible(rel.oid) THEN quote_ident((rel.relname)::text)
            ELSE ((quote_ident((nsp.nspname)::text) || '.'::text) || quote_ident((rel.relname)::text))
        END || '.'::text) || (att.attname)::text) AS objname,
    l.provider,
    l.label
   FROM (((pg_seclabel l
     JOIN pg_class rel ON (((l.classoid = rel.tableoid) AND (l.objoid = rel.oid))))
     JOIN pg_attribute att ON (((rel.oid = att.attrelid) AND (l.objsubid = att.attnum))))
     JOIN pg_namespace nsp ON ((rel.relnamespace = nsp.oid)))
  WHERE (l.objsubid <> 0)
UNION ALL
 SELECT l.objoid,
    l.classoid,
    l.objsubid,
        CASE pro.prokind
            WHEN 'a'::"char" THEN 'aggregate'::text
            WHEN 'f'::"char" THEN 'function'::text
            WHEN 'p'::"char" THEN 'procedure'::text
            WHEN 'w'::"char" THEN 'window'::text
            ELSE NULL::text
        END AS objtype,
    pro.pronamespace AS objnamespace,
    (((
        CASE
            WHEN pg_function_is_visible(pro.oid) THEN quote_ident((pro.proname)::text)
            ELSE ((quote_ident((nsp.nspname)::text) || '.'::text) || quote_ident((pro.proname)::text))
        END || '('::text) || pg_get_function_arguments(pro.oid)) || ')'::text) AS objname,
    l.provider,
    l.label
   FROM ((pg_seclabel l
     JOIN pg_proc pro ON (((l.classoid = pro.tableoid) AND (l.objoid = pro.oid))))
     JOIN pg_namespace nsp ON ((pro.pronamespace = nsp.oid)))
  WHERE (l.objsubid = 0)
UNION ALL
 SELECT l.objoid,
    l.classoid,
    l.objsubid,
        CASE
            WHEN (typ.typtype = 'd'::"char") THEN 'domain'::text
            ELSE 'type'::text
        END AS objtype,
    typ.typnamespace AS objnamespace,
        CASE
            WHEN pg_type_is_visible(typ.oid) THEN quote_ident((typ.typname)::text)
            ELSE ((quote_ident((nsp.nspname)::text) || '.'::text) || quote_ident((typ.typname)::text))
        END AS objname,
    l.provider,
    l.label
   FROM ((pg_seclabel l
     JOIN pg_type typ ON (((l.classoid = typ.tableoid) AND (l.objoid = typ.oid))))
     JOIN pg_namespace nsp ON ((typ.typnamespace = nsp.oid)))
  WHERE (l.objsubid = 0)
UNION ALL
 SELECT l.objoid,
    l.classoid,
    l.objsubid,
    'large object'::text AS objtype,
    NULL::oid AS objnamespace,
    (l.objoid)::text AS objname,
    l.provider,
    l.label
   FROM (pg_seclabel l
     JOIN pg_largeobject_metadata lom ON ((l.objoid = lom.oid)))
  WHERE ((l.classoid = ('pg_largeobject'::regclass)::oid) AND (l.objsubid = 0))
UNION ALL
 SELECT l.objoid,
    l.classoid,
    l.objsubid,
    'language'::text AS objtype,
    NULL::oid AS objnamespace,
    quote_ident((lan.lanname)::text) AS objname,
    l.provider,
    l.label
   FROM (pg_seclabel l
     JOIN pg_language lan ON (((l.classoid = lan.tableoid) AND (l.objoid = lan.oid))))
  WHERE (l.objsubid = 0)
UNION ALL
 SELECT l.objoid,
    l.classoid,
    l.objsubid,
    'schema'::text AS objtype,
    nsp.oid AS objnamespace,
    quote_ident((nsp.nspname)::text) AS objname,
    l.provider,
    l.label
   FROM (pg_seclabel l
     JOIN pg_namespace nsp ON (((l.classoid = nsp.tableoid) AND (l.objoid = nsp.oid))))
  WHERE (l.objsubid = 0)
UNION ALL
 SELECT l.objoid,
    l.classoid,
    l.objsubid,
    'event trigger'::text AS objtype,
    NULL::oid AS objnamespace,
    quote_ident((evt.evtname)::text) AS objname,
    l.provider,
    l.label
   FROM (pg_seclabel l
     JOIN pg_event_trigger evt ON (((l.classoid = evt.tableoid) AND (l.objoid = evt.oid))))
  WHERE (l.objsubid = 0)
UNION ALL
 SELECT l.objoid,
    l.classoid,
    l.objsubid,
    'publication'::text AS objtype,
    NULL::oid AS objnamespace,
    quote_ident((p.pubname)::text) AS objname,
    l.provider,
    l.label
   FROM (pg_seclabel l
     JOIN pg_publication p ON (((l.classoid = p.tableoid) AND (l.objoid = p.oid))))
  WHERE (l.objsubid = 0)
UNION ALL
 SELECT l.objoid,
    l.classoid,
    0 AS objsubid,
    'subscription'::text AS objtype,
    NULL::oid AS objnamespace,
    quote_ident((s.subname)::text) AS objname,
    l.provider,
    l.label
   FROM (pg_shseclabel l
     JOIN pg_subscription s ON (((l.classoid = s.tableoid) AND (l.objoid = s.oid))))
UNION ALL
 SELECT l.objoid,
    l.classoid,
    0 AS objsubid,
    'database'::text AS objtype,
    NULL::oid AS objnamespace,
    quote_ident((dat.datname)::text) AS objname,
    l.provider,
    l.label
   FROM (pg_shseclabel l
     JOIN pg_database dat ON (((l.classoid = dat.tableoid) AND (l.objoid = dat.oid))))
UNION ALL
 SELECT l.objoid,
    l.classoid,
    0 AS objsubid,
    'tablespace'::text AS objtype,
    NULL::oid AS objnamespace,
    quote_ident((spc.spcname)::text) AS objname,
    l.provider,
    l.label
   FROM (pg_shseclabel l
     JOIN pg_tablespace spc ON (((l.classoid = spc.tableoid) AND (l.objoid = spc.oid))))
UNION ALL
 SELECT l.objoid,
    l.classoid,
    0 AS objsubid,
    'role'::text AS objtype,
    NULL::oid AS objnamespace,
    quote_ident((rol.rolname)::text) AS objname,
    l.provider,
    l.label
   FROM (pg_shseclabel l
     JOIN pg_authid rol ON (((l.classoid = rol.tableoid) AND (l.objoid = rol.oid))));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_sequences";
CREATE VIEW "pg_sequences" AS  SELECT n.nspname AS schemaname,
    c.relname AS sequencename,
    pg_get_userbyid(c.relowner) AS sequenceowner,
    (s.seqtypid)::regtype AS data_type,
    s.seqstart AS start_value,
    s.seqmin AS min_value,
    s.seqmax AS max_value,
    s.seqincrement AS increment_by,
    s.seqcycle AS cycle,
    s.seqcache AS cache_size,
        CASE
            WHEN has_sequence_privilege(c.oid, 'SELECT,USAGE'::text) THEN pg_sequence_last_value((c.oid)::regclass)
            ELSE NULL::bigint
        END AS last_value
   FROM ((pg_sequence s
     JOIN pg_class c ON ((c.oid = s.seqrelid)))
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
  WHERE ((NOT pg_is_other_temp_schema(n.oid)) AND (c.relkind = 'S'::"char"));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_settings";
CREATE VIEW "pg_settings" AS  SELECT a.name,
    a.setting,
    a.unit,
    a.category,
    a.short_desc,
    a.extra_desc,
    a.context,
    a.vartype,
    a.source,
    a.min_val,
    a.max_val,
    a.enumvals,
    a.boot_val,
    a.reset_val,
    a.sourcefile,
    a.sourceline,
    a.pending_restart
   FROM pg_show_all_settings() a(name, setting, unit, category, short_desc, extra_desc, context, vartype, source, min_val, max_val, enumvals, boot_val, reset_val, sourcefile, sourceline, pending_restart);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_shadow";
CREATE VIEW "pg_shadow" AS  SELECT pg_authid.rolname AS usename,
    pg_authid.oid AS usesysid,
    pg_authid.rolcreatedb AS usecreatedb,
    pg_authid.rolsuper AS usesuper,
    pg_authid.rolreplication AS userepl,
    pg_authid.rolbypassrls AS usebypassrls,
    pg_authid.rolpassword AS passwd,
    pg_authid.rolvaliduntil AS valuntil,
    s.setconfig AS useconfig
   FROM (pg_authid
     LEFT JOIN pg_db_role_setting s ON (((pg_authid.oid = s.setrole) AND (s.setdatabase = (0)::oid))))
  WHERE pg_authid.rolcanlogin;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_shmem_allocations";
CREATE VIEW "pg_shmem_allocations" AS  SELECT pg_get_shmem_allocations.name,
    pg_get_shmem_allocations.off,
    pg_get_shmem_allocations.size,
    pg_get_shmem_allocations.allocated_size
   FROM pg_get_shmem_allocations() pg_get_shmem_allocations(name, off, size, allocated_size);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_statio_all_indexes";
CREATE VIEW "pg_statio_all_indexes" AS  SELECT c.oid AS relid,
    i.oid AS indexrelid,
    n.nspname AS schemaname,
    c.relname,
    i.relname AS indexrelname,
    (pg_stat_get_blocks_fetched(i.oid) - pg_stat_get_blocks_hit(i.oid)) AS idx_blks_read,
    pg_stat_get_blocks_hit(i.oid) AS idx_blks_hit
   FROM (((pg_class c
     JOIN pg_index x ON ((c.oid = x.indrelid)))
     JOIN pg_class i ON ((i.oid = x.indexrelid)))
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
  WHERE (c.relkind = ANY (ARRAY['r'::"char", 't'::"char", 'm'::"char"]));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_statio_all_sequences";
CREATE VIEW "pg_statio_all_sequences" AS  SELECT c.oid AS relid,
    n.nspname AS schemaname,
    c.relname,
    (pg_stat_get_blocks_fetched(c.oid) - pg_stat_get_blocks_hit(c.oid)) AS blks_read,
    pg_stat_get_blocks_hit(c.oid) AS blks_hit
   FROM (pg_class c
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
  WHERE (c.relkind = 'S'::"char");;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_statio_all_tables";
CREATE VIEW "pg_statio_all_tables" AS  SELECT c.oid AS relid,
    n.nspname AS schemaname,
    c.relname,
    (pg_stat_get_blocks_fetched(c.oid) - pg_stat_get_blocks_hit(c.oid)) AS heap_blks_read,
    pg_stat_get_blocks_hit(c.oid) AS heap_blks_hit,
    (sum((pg_stat_get_blocks_fetched(i.indexrelid) - pg_stat_get_blocks_hit(i.indexrelid))))::bigint AS idx_blks_read,
    (sum(pg_stat_get_blocks_hit(i.indexrelid)))::bigint AS idx_blks_hit,
    (pg_stat_get_blocks_fetched(t.oid) - pg_stat_get_blocks_hit(t.oid)) AS toast_blks_read,
    pg_stat_get_blocks_hit(t.oid) AS toast_blks_hit,
    (pg_stat_get_blocks_fetched(x.indexrelid) - pg_stat_get_blocks_hit(x.indexrelid)) AS tidx_blks_read,
    pg_stat_get_blocks_hit(x.indexrelid) AS tidx_blks_hit
   FROM ((((pg_class c
     LEFT JOIN pg_index i ON ((c.oid = i.indrelid)))
     LEFT JOIN pg_class t ON ((c.reltoastrelid = t.oid)))
     LEFT JOIN pg_index x ON ((t.oid = x.indrelid)))
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
  WHERE (c.relkind = ANY (ARRAY['r'::"char", 't'::"char", 'm'::"char"]))
  GROUP BY c.oid, n.nspname, c.relname, t.oid, x.indexrelid;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_statio_sys_indexes";
CREATE VIEW "pg_statio_sys_indexes" AS  SELECT pg_statio_all_indexes.relid,
    pg_statio_all_indexes.indexrelid,
    pg_statio_all_indexes.schemaname,
    pg_statio_all_indexes.relname,
    pg_statio_all_indexes.indexrelname,
    pg_statio_all_indexes.idx_blks_read,
    pg_statio_all_indexes.idx_blks_hit
   FROM pg_statio_all_indexes
  WHERE ((pg_statio_all_indexes.schemaname = ANY (ARRAY['pg_catalog'::name, 'information_schema'::name])) OR (pg_statio_all_indexes.schemaname ~ '^pg_toast'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_statio_sys_sequences";
CREATE VIEW "pg_statio_sys_sequences" AS  SELECT pg_statio_all_sequences.relid,
    pg_statio_all_sequences.schemaname,
    pg_statio_all_sequences.relname,
    pg_statio_all_sequences.blks_read,
    pg_statio_all_sequences.blks_hit
   FROM pg_statio_all_sequences
  WHERE ((pg_statio_all_sequences.schemaname = ANY (ARRAY['pg_catalog'::name, 'information_schema'::name])) OR (pg_statio_all_sequences.schemaname ~ '^pg_toast'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_statio_sys_tables";
CREATE VIEW "pg_statio_sys_tables" AS  SELECT pg_statio_all_tables.relid,
    pg_statio_all_tables.schemaname,
    pg_statio_all_tables.relname,
    pg_statio_all_tables.heap_blks_read,
    pg_statio_all_tables.heap_blks_hit,
    pg_statio_all_tables.idx_blks_read,
    pg_statio_all_tables.idx_blks_hit,
    pg_statio_all_tables.toast_blks_read,
    pg_statio_all_tables.toast_blks_hit,
    pg_statio_all_tables.tidx_blks_read,
    pg_statio_all_tables.tidx_blks_hit
   FROM pg_statio_all_tables
  WHERE ((pg_statio_all_tables.schemaname = ANY (ARRAY['pg_catalog'::name, 'information_schema'::name])) OR (pg_statio_all_tables.schemaname ~ '^pg_toast'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_statio_user_indexes";
CREATE VIEW "pg_statio_user_indexes" AS  SELECT pg_statio_all_indexes.relid,
    pg_statio_all_indexes.indexrelid,
    pg_statio_all_indexes.schemaname,
    pg_statio_all_indexes.relname,
    pg_statio_all_indexes.indexrelname,
    pg_statio_all_indexes.idx_blks_read,
    pg_statio_all_indexes.idx_blks_hit
   FROM pg_statio_all_indexes
  WHERE ((pg_statio_all_indexes.schemaname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])) AND (pg_statio_all_indexes.schemaname !~ '^pg_toast'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_statio_user_sequences";
CREATE VIEW "pg_statio_user_sequences" AS  SELECT pg_statio_all_sequences.relid,
    pg_statio_all_sequences.schemaname,
    pg_statio_all_sequences.relname,
    pg_statio_all_sequences.blks_read,
    pg_statio_all_sequences.blks_hit
   FROM pg_statio_all_sequences
  WHERE ((pg_statio_all_sequences.schemaname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])) AND (pg_statio_all_sequences.schemaname !~ '^pg_toast'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_statio_user_tables";
CREATE VIEW "pg_statio_user_tables" AS  SELECT pg_statio_all_tables.relid,
    pg_statio_all_tables.schemaname,
    pg_statio_all_tables.relname,
    pg_statio_all_tables.heap_blks_read,
    pg_statio_all_tables.heap_blks_hit,
    pg_statio_all_tables.idx_blks_read,
    pg_statio_all_tables.idx_blks_hit,
    pg_statio_all_tables.toast_blks_read,
    pg_statio_all_tables.toast_blks_hit,
    pg_statio_all_tables.tidx_blks_read,
    pg_statio_all_tables.tidx_blks_hit
   FROM pg_statio_all_tables
  WHERE ((pg_statio_all_tables.schemaname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])) AND (pg_statio_all_tables.schemaname !~ '^pg_toast'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stats";
CREATE VIEW "pg_stats" AS  SELECT n.nspname AS schemaname,
    c.relname AS tablename,
    a.attname,
    s.stainherit AS inherited,
    s.stanullfrac AS null_frac,
    s.stawidth AS avg_width,
    s.stadistinct AS n_distinct,
        CASE
            WHEN (s.stakind1 = 1) THEN s.stavalues1
            WHEN (s.stakind2 = 1) THEN s.stavalues2
            WHEN (s.stakind3 = 1) THEN s.stavalues3
            WHEN (s.stakind4 = 1) THEN s.stavalues4
            WHEN (s.stakind5 = 1) THEN s.stavalues5
            ELSE NULL::anyarray
        END AS most_common_vals,
        CASE
            WHEN (s.stakind1 = 1) THEN s.stanumbers1
            WHEN (s.stakind2 = 1) THEN s.stanumbers2
            WHEN (s.stakind3 = 1) THEN s.stanumbers3
            WHEN (s.stakind4 = 1) THEN s.stanumbers4
            WHEN (s.stakind5 = 1) THEN s.stanumbers5
            ELSE NULL::real[]
        END AS most_common_freqs,
        CASE
            WHEN (s.stakind1 = 2) THEN s.stavalues1
            WHEN (s.stakind2 = 2) THEN s.stavalues2
            WHEN (s.stakind3 = 2) THEN s.stavalues3
            WHEN (s.stakind4 = 2) THEN s.stavalues4
            WHEN (s.stakind5 = 2) THEN s.stavalues5
            ELSE NULL::anyarray
        END AS histogram_bounds,
        CASE
            WHEN (s.stakind1 = 3) THEN s.stanumbers1[1]
            WHEN (s.stakind2 = 3) THEN s.stanumbers2[1]
            WHEN (s.stakind3 = 3) THEN s.stanumbers3[1]
            WHEN (s.stakind4 = 3) THEN s.stanumbers4[1]
            WHEN (s.stakind5 = 3) THEN s.stanumbers5[1]
            ELSE NULL::real
        END AS correlation,
        CASE
            WHEN (s.stakind1 = 4) THEN s.stavalues1
            WHEN (s.stakind2 = 4) THEN s.stavalues2
            WHEN (s.stakind3 = 4) THEN s.stavalues3
            WHEN (s.stakind4 = 4) THEN s.stavalues4
            WHEN (s.stakind5 = 4) THEN s.stavalues5
            ELSE NULL::anyarray
        END AS most_common_elems,
        CASE
            WHEN (s.stakind1 = 4) THEN s.stanumbers1
            WHEN (s.stakind2 = 4) THEN s.stanumbers2
            WHEN (s.stakind3 = 4) THEN s.stanumbers3
            WHEN (s.stakind4 = 4) THEN s.stanumbers4
            WHEN (s.stakind5 = 4) THEN s.stanumbers5
            ELSE NULL::real[]
        END AS most_common_elem_freqs,
        CASE
            WHEN (s.stakind1 = 5) THEN s.stanumbers1
            WHEN (s.stakind2 = 5) THEN s.stanumbers2
            WHEN (s.stakind3 = 5) THEN s.stanumbers3
            WHEN (s.stakind4 = 5) THEN s.stanumbers4
            WHEN (s.stakind5 = 5) THEN s.stanumbers5
            ELSE NULL::real[]
        END AS elem_count_histogram
   FROM (((pg_statistic s
     JOIN pg_class c ON ((c.oid = s.starelid)))
     JOIN pg_attribute a ON (((c.oid = a.attrelid) AND (a.attnum = s.staattnum))))
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
  WHERE ((NOT a.attisdropped) AND has_column_privilege(c.oid, a.attnum, 'select'::text) AND ((c.relrowsecurity = false) OR (NOT row_security_active(c.oid))));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stats_ext";
CREATE VIEW "pg_stats_ext" AS  SELECT cn.nspname AS schemaname,
    c.relname AS tablename,
    sn.nspname AS statistics_schemaname,
    s.stxname AS statistics_name,
    pg_get_userbyid(s.stxowner) AS statistics_owner,
    ( SELECT array_agg(a.attname ORDER BY a.attnum) AS array_agg
           FROM (unnest(s.stxkeys) k(k)
             JOIN pg_attribute a ON (((a.attrelid = s.stxrelid) AND (a.attnum = k.k))))) AS attnames,
    pg_get_statisticsobjdef_expressions(s.oid) AS exprs,
    s.stxkind AS kinds,
    sd.stxdndistinct AS n_distinct,
    sd.stxddependencies AS dependencies,
    m.most_common_vals,
    m.most_common_val_nulls,
    m.most_common_freqs,
    m.most_common_base_freqs
   FROM (((((pg_statistic_ext s
     JOIN pg_class c ON ((c.oid = s.stxrelid)))
     JOIN pg_statistic_ext_data sd ON ((s.oid = sd.stxoid)))
     LEFT JOIN pg_namespace cn ON ((cn.oid = c.relnamespace)))
     LEFT JOIN pg_namespace sn ON ((sn.oid = s.stxnamespace)))
     LEFT JOIN LATERAL ( SELECT array_agg(pg_mcv_list_items."values") AS most_common_vals,
            array_agg(pg_mcv_list_items.nulls) AS most_common_val_nulls,
            array_agg(pg_mcv_list_items.frequency) AS most_common_freqs,
            array_agg(pg_mcv_list_items.base_frequency) AS most_common_base_freqs
           FROM pg_mcv_list_items(sd.stxdmcv) pg_mcv_list_items(index, "values", nulls, frequency, base_frequency)) m ON ((sd.stxdmcv IS NOT NULL)))
  WHERE ((NOT (EXISTS ( SELECT 1
           FROM (unnest(s.stxkeys) k(k)
             JOIN pg_attribute a ON (((a.attrelid = s.stxrelid) AND (a.attnum = k.k))))
          WHERE (NOT has_column_privilege(c.oid, a.attnum, 'select'::text))))) AND ((c.relrowsecurity = false) OR (NOT row_security_active(c.oid))));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stats_ext_exprs";
CREATE VIEW "pg_stats_ext_exprs" AS  SELECT cn.nspname AS schemaname,
    c.relname AS tablename,
    sn.nspname AS statistics_schemaname,
    s.stxname AS statistics_name,
    pg_get_userbyid(s.stxowner) AS statistics_owner,
    stat.expr,
    (stat.a).stanullfrac AS null_frac,
    (stat.a).stawidth AS avg_width,
    (stat.a).stadistinct AS n_distinct,
        CASE
            WHEN ((stat.a).stakind1 = 1) THEN (stat.a).stavalues1
            WHEN ((stat.a).stakind2 = 1) THEN (stat.a).stavalues2
            WHEN ((stat.a).stakind3 = 1) THEN (stat.a).stavalues3
            WHEN ((stat.a).stakind4 = 1) THEN (stat.a).stavalues4
            WHEN ((stat.a).stakind5 = 1) THEN (stat.a).stavalues5
            ELSE NULL::anyarray
        END AS most_common_vals,
        CASE
            WHEN ((stat.a).stakind1 = 1) THEN (stat.a).stanumbers1
            WHEN ((stat.a).stakind2 = 1) THEN (stat.a).stanumbers2
            WHEN ((stat.a).stakind3 = 1) THEN (stat.a).stanumbers3
            WHEN ((stat.a).stakind4 = 1) THEN (stat.a).stanumbers4
            WHEN ((stat.a).stakind5 = 1) THEN (stat.a).stanumbers5
            ELSE NULL::real[]
        END AS most_common_freqs,
        CASE
            WHEN ((stat.a).stakind1 = 2) THEN (stat.a).stavalues1
            WHEN ((stat.a).stakind2 = 2) THEN (stat.a).stavalues2
            WHEN ((stat.a).stakind3 = 2) THEN (stat.a).stavalues3
            WHEN ((stat.a).stakind4 = 2) THEN (stat.a).stavalues4
            WHEN ((stat.a).stakind5 = 2) THEN (stat.a).stavalues5
            ELSE NULL::anyarray
        END AS histogram_bounds,
        CASE
            WHEN ((stat.a).stakind1 = 3) THEN (stat.a).stanumbers1[1]
            WHEN ((stat.a).stakind2 = 3) THEN (stat.a).stanumbers2[1]
            WHEN ((stat.a).stakind3 = 3) THEN (stat.a).stanumbers3[1]
            WHEN ((stat.a).stakind4 = 3) THEN (stat.a).stanumbers4[1]
            WHEN ((stat.a).stakind5 = 3) THEN (stat.a).stanumbers5[1]
            ELSE NULL::real
        END AS correlation,
        CASE
            WHEN ((stat.a).stakind1 = 4) THEN (stat.a).stavalues1
            WHEN ((stat.a).stakind2 = 4) THEN (stat.a).stavalues2
            WHEN ((stat.a).stakind3 = 4) THEN (stat.a).stavalues3
            WHEN ((stat.a).stakind4 = 4) THEN (stat.a).stavalues4
            WHEN ((stat.a).stakind5 = 4) THEN (stat.a).stavalues5
            ELSE NULL::anyarray
        END AS most_common_elems,
        CASE
            WHEN ((stat.a).stakind1 = 4) THEN (stat.a).stanumbers1
            WHEN ((stat.a).stakind2 = 4) THEN (stat.a).stanumbers2
            WHEN ((stat.a).stakind3 = 4) THEN (stat.a).stanumbers3
            WHEN ((stat.a).stakind4 = 4) THEN (stat.a).stanumbers4
            WHEN ((stat.a).stakind5 = 4) THEN (stat.a).stanumbers5
            ELSE NULL::real[]
        END AS most_common_elem_freqs,
        CASE
            WHEN ((stat.a).stakind1 = 5) THEN (stat.a).stanumbers1
            WHEN ((stat.a).stakind2 = 5) THEN (stat.a).stanumbers2
            WHEN ((stat.a).stakind3 = 5) THEN (stat.a).stanumbers3
            WHEN ((stat.a).stakind4 = 5) THEN (stat.a).stanumbers4
            WHEN ((stat.a).stakind5 = 5) THEN (stat.a).stanumbers5
            ELSE NULL::real[]
        END AS elem_count_histogram
   FROM (((((pg_statistic_ext s
     JOIN pg_class c ON ((c.oid = s.stxrelid)))
     LEFT JOIN pg_statistic_ext_data sd ON ((s.oid = sd.stxoid)))
     LEFT JOIN pg_namespace cn ON ((cn.oid = c.relnamespace)))
     LEFT JOIN pg_namespace sn ON ((sn.oid = s.stxnamespace)))
     JOIN LATERAL ( SELECT unnest(pg_get_statisticsobjdef_expressions(s.oid)) AS expr,
            unnest(sd.stxdexpr) AS a) stat ON ((stat.expr IS NOT NULL)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_activity";
CREATE VIEW "pg_stat_activity" AS  SELECT s.datid,
    d.datname,
    s.pid,
    s.leader_pid,
    s.usesysid,
    u.rolname AS usename,
    s.application_name,
    s.client_addr,
    s.client_hostname,
    s.client_port,
    s.backend_start,
    s.xact_start,
    s.query_start,
    s.state_change,
    s.wait_event_type,
    s.wait_event,
    s.state,
    s.backend_xid,
    s.backend_xmin,
    s.query_id,
    s.query,
    s.backend_type
   FROM ((pg_stat_get_activity(NULL::integer) s(datid, pid, usesysid, application_name, state, query, wait_event_type, wait_event, xact_start, query_start, backend_start, state_change, client_addr, client_hostname, client_port, backend_xid, backend_xmin, backend_type, ssl, sslversion, sslcipher, sslbits, ssl_client_dn, ssl_client_serial, ssl_issuer_dn, gss_auth, gss_princ, gss_enc, leader_pid, query_id)
     LEFT JOIN pg_database d ON ((s.datid = d.oid)))
     LEFT JOIN pg_authid u ON ((s.usesysid = u.oid)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_all_indexes";
CREATE VIEW "pg_stat_all_indexes" AS  SELECT c.oid AS relid,
    i.oid AS indexrelid,
    n.nspname AS schemaname,
    c.relname,
    i.relname AS indexrelname,
    pg_stat_get_numscans(i.oid) AS idx_scan,
    pg_stat_get_tuples_returned(i.oid) AS idx_tup_read,
    pg_stat_get_tuples_fetched(i.oid) AS idx_tup_fetch
   FROM (((pg_class c
     JOIN pg_index x ON ((c.oid = x.indrelid)))
     JOIN pg_class i ON ((i.oid = x.indexrelid)))
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
  WHERE (c.relkind = ANY (ARRAY['r'::"char", 't'::"char", 'm'::"char"]));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_all_tables";
CREATE VIEW "pg_stat_all_tables" AS  SELECT c.oid AS relid,
    n.nspname AS schemaname,
    c.relname,
    pg_stat_get_numscans(c.oid) AS seq_scan,
    pg_stat_get_tuples_returned(c.oid) AS seq_tup_read,
    (sum(pg_stat_get_numscans(i.indexrelid)))::bigint AS idx_scan,
    ((sum(pg_stat_get_tuples_fetched(i.indexrelid)))::bigint + pg_stat_get_tuples_fetched(c.oid)) AS idx_tup_fetch,
    pg_stat_get_tuples_inserted(c.oid) AS n_tup_ins,
    pg_stat_get_tuples_updated(c.oid) AS n_tup_upd,
    pg_stat_get_tuples_deleted(c.oid) AS n_tup_del,
    pg_stat_get_tuples_hot_updated(c.oid) AS n_tup_hot_upd,
    pg_stat_get_live_tuples(c.oid) AS n_live_tup,
    pg_stat_get_dead_tuples(c.oid) AS n_dead_tup,
    pg_stat_get_mod_since_analyze(c.oid) AS n_mod_since_analyze,
    pg_stat_get_ins_since_vacuum(c.oid) AS n_ins_since_vacuum,
    pg_stat_get_last_vacuum_time(c.oid) AS last_vacuum,
    pg_stat_get_last_autovacuum_time(c.oid) AS last_autovacuum,
    pg_stat_get_last_analyze_time(c.oid) AS last_analyze,
    pg_stat_get_last_autoanalyze_time(c.oid) AS last_autoanalyze,
    pg_stat_get_vacuum_count(c.oid) AS vacuum_count,
    pg_stat_get_autovacuum_count(c.oid) AS autovacuum_count,
    pg_stat_get_analyze_count(c.oid) AS analyze_count,
    pg_stat_get_autoanalyze_count(c.oid) AS autoanalyze_count
   FROM ((pg_class c
     LEFT JOIN pg_index i ON ((c.oid = i.indrelid)))
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
  WHERE (c.relkind = ANY (ARRAY['r'::"char", 't'::"char", 'm'::"char", 'p'::"char"]))
  GROUP BY c.oid, n.nspname, c.relname;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_archiver";
CREATE VIEW "pg_stat_archiver" AS  SELECT s.archived_count,
    s.last_archived_wal,
    s.last_archived_time,
    s.failed_count,
    s.last_failed_wal,
    s.last_failed_time,
    s.stats_reset
   FROM pg_stat_get_archiver() s(archived_count, last_archived_wal, last_archived_time, failed_count, last_failed_wal, last_failed_time, stats_reset);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_bgwriter";
CREATE VIEW "pg_stat_bgwriter" AS  SELECT pg_stat_get_bgwriter_timed_checkpoints() AS checkpoints_timed,
    pg_stat_get_bgwriter_requested_checkpoints() AS checkpoints_req,
    pg_stat_get_checkpoint_write_time() AS checkpoint_write_time,
    pg_stat_get_checkpoint_sync_time() AS checkpoint_sync_time,
    pg_stat_get_bgwriter_buf_written_checkpoints() AS buffers_checkpoint,
    pg_stat_get_bgwriter_buf_written_clean() AS buffers_clean,
    pg_stat_get_bgwriter_maxwritten_clean() AS maxwritten_clean,
    pg_stat_get_buf_written_backend() AS buffers_backend,
    pg_stat_get_buf_fsync_backend() AS buffers_backend_fsync,
    pg_stat_get_buf_alloc() AS buffers_alloc,
    pg_stat_get_bgwriter_stat_reset_time() AS stats_reset;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_database";
CREATE VIEW "pg_stat_database" AS  SELECT d.oid AS datid,
    d.datname,
        CASE
            WHEN (d.oid = (0)::oid) THEN 0
            ELSE pg_stat_get_db_numbackends(d.oid)
        END AS numbackends,
    pg_stat_get_db_xact_commit(d.oid) AS xact_commit,
    pg_stat_get_db_xact_rollback(d.oid) AS xact_rollback,
    (pg_stat_get_db_blocks_fetched(d.oid) - pg_stat_get_db_blocks_hit(d.oid)) AS blks_read,
    pg_stat_get_db_blocks_hit(d.oid) AS blks_hit,
    pg_stat_get_db_tuples_returned(d.oid) AS tup_returned,
    pg_stat_get_db_tuples_fetched(d.oid) AS tup_fetched,
    pg_stat_get_db_tuples_inserted(d.oid) AS tup_inserted,
    pg_stat_get_db_tuples_updated(d.oid) AS tup_updated,
    pg_stat_get_db_tuples_deleted(d.oid) AS tup_deleted,
    pg_stat_get_db_conflict_all(d.oid) AS conflicts,
    pg_stat_get_db_temp_files(d.oid) AS temp_files,
    pg_stat_get_db_temp_bytes(d.oid) AS temp_bytes,
    pg_stat_get_db_deadlocks(d.oid) AS deadlocks,
    pg_stat_get_db_checksum_failures(d.oid) AS checksum_failures,
    pg_stat_get_db_checksum_last_failure(d.oid) AS checksum_last_failure,
    pg_stat_get_db_blk_read_time(d.oid) AS blk_read_time,
    pg_stat_get_db_blk_write_time(d.oid) AS blk_write_time,
    pg_stat_get_db_session_time(d.oid) AS session_time,
    pg_stat_get_db_active_time(d.oid) AS active_time,
    pg_stat_get_db_idle_in_transaction_time(d.oid) AS idle_in_transaction_time,
    pg_stat_get_db_sessions(d.oid) AS sessions,
    pg_stat_get_db_sessions_abandoned(d.oid) AS sessions_abandoned,
    pg_stat_get_db_sessions_fatal(d.oid) AS sessions_fatal,
    pg_stat_get_db_sessions_killed(d.oid) AS sessions_killed,
    pg_stat_get_db_stat_reset_time(d.oid) AS stats_reset
   FROM ( SELECT 0 AS oid,
            NULL::name AS datname
        UNION ALL
         SELECT pg_database.oid,
            pg_database.datname
           FROM pg_database) d;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_database_conflicts";
CREATE VIEW "pg_stat_database_conflicts" AS  SELECT d.oid AS datid,
    d.datname,
    pg_stat_get_db_conflict_tablespace(d.oid) AS confl_tablespace,
    pg_stat_get_db_conflict_lock(d.oid) AS confl_lock,
    pg_stat_get_db_conflict_snapshot(d.oid) AS confl_snapshot,
    pg_stat_get_db_conflict_bufferpin(d.oid) AS confl_bufferpin,
    pg_stat_get_db_conflict_startup_deadlock(d.oid) AS confl_deadlock
   FROM pg_database d;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_gssapi";
CREATE VIEW "pg_stat_gssapi" AS  SELECT s.pid,
    s.gss_auth AS gss_authenticated,
    s.gss_princ AS principal,
    s.gss_enc AS encrypted
   FROM pg_stat_get_activity(NULL::integer) s(datid, pid, usesysid, application_name, state, query, wait_event_type, wait_event, xact_start, query_start, backend_start, state_change, client_addr, client_hostname, client_port, backend_xid, backend_xmin, backend_type, ssl, sslversion, sslcipher, sslbits, ssl_client_dn, ssl_client_serial, ssl_issuer_dn, gss_auth, gss_princ, gss_enc, leader_pid, query_id)
  WHERE (s.client_port IS NOT NULL);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_progress_analyze";
CREATE VIEW "pg_stat_progress_analyze" AS  SELECT s.pid,
    s.datid,
    d.datname,
    s.relid,
        CASE s.param1
            WHEN 0 THEN 'initializing'::text
            WHEN 1 THEN 'acquiring sample rows'::text
            WHEN 2 THEN 'acquiring inherited sample rows'::text
            WHEN 3 THEN 'computing statistics'::text
            WHEN 4 THEN 'computing extended statistics'::text
            WHEN 5 THEN 'finalizing analyze'::text
            ELSE NULL::text
        END AS phase,
    s.param2 AS sample_blks_total,
    s.param3 AS sample_blks_scanned,
    s.param4 AS ext_stats_total,
    s.param5 AS ext_stats_computed,
    s.param6 AS child_tables_total,
    s.param7 AS child_tables_done,
    (s.param8)::oid AS current_child_table_relid
   FROM (pg_stat_get_progress_info('ANALYZE'::text) s(pid, datid, relid, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10, param11, param12, param13, param14, param15, param16, param17, param18, param19, param20)
     LEFT JOIN pg_database d ON ((s.datid = d.oid)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_progress_basebackup";
CREATE VIEW "pg_stat_progress_basebackup" AS  SELECT s.pid,
        CASE s.param1
            WHEN 0 THEN 'initializing'::text
            WHEN 1 THEN 'waiting for checkpoint to finish'::text
            WHEN 2 THEN 'estimating backup size'::text
            WHEN 3 THEN 'streaming database files'::text
            WHEN 4 THEN 'waiting for wal archiving to finish'::text
            WHEN 5 THEN 'transferring wal files'::text
            ELSE NULL::text
        END AS phase,
        CASE s.param2
            WHEN '-1'::integer THEN NULL::bigint
            ELSE s.param2
        END AS backup_total,
    s.param3 AS backup_streamed,
    s.param4 AS tablespaces_total,
    s.param5 AS tablespaces_streamed
   FROM pg_stat_get_progress_info('BASEBACKUP'::text) s(pid, datid, relid, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10, param11, param12, param13, param14, param15, param16, param17, param18, param19, param20);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_progress_cluster";
CREATE VIEW "pg_stat_progress_cluster" AS  SELECT s.pid,
    s.datid,
    d.datname,
    s.relid,
        CASE s.param1
            WHEN 1 THEN 'CLUSTER'::text
            WHEN 2 THEN 'VACUUM FULL'::text
            ELSE NULL::text
        END AS command,
        CASE s.param2
            WHEN 0 THEN 'initializing'::text
            WHEN 1 THEN 'seq scanning heap'::text
            WHEN 2 THEN 'index scanning heap'::text
            WHEN 3 THEN 'sorting tuples'::text
            WHEN 4 THEN 'writing new heap'::text
            WHEN 5 THEN 'swapping relation files'::text
            WHEN 6 THEN 'rebuilding index'::text
            WHEN 7 THEN 'performing final cleanup'::text
            ELSE NULL::text
        END AS phase,
    (s.param3)::oid AS cluster_index_relid,
    s.param4 AS heap_tuples_scanned,
    s.param5 AS heap_tuples_written,
    s.param6 AS heap_blks_total,
    s.param7 AS heap_blks_scanned,
    s.param8 AS index_rebuild_count
   FROM (pg_stat_get_progress_info('CLUSTER'::text) s(pid, datid, relid, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10, param11, param12, param13, param14, param15, param16, param17, param18, param19, param20)
     LEFT JOIN pg_database d ON ((s.datid = d.oid)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_progress_copy";
CREATE VIEW "pg_stat_progress_copy" AS  SELECT s.pid,
    s.datid,
    d.datname,
    s.relid,
        CASE s.param5
            WHEN 1 THEN 'COPY FROM'::text
            WHEN 2 THEN 'COPY TO'::text
            ELSE NULL::text
        END AS command,
        CASE s.param6
            WHEN 1 THEN 'FILE'::text
            WHEN 2 THEN 'PROGRAM'::text
            WHEN 3 THEN 'PIPE'::text
            WHEN 4 THEN 'CALLBACK'::text
            ELSE NULL::text
        END AS type,
    s.param1 AS bytes_processed,
    s.param2 AS bytes_total,
    s.param3 AS tuples_processed,
    s.param4 AS tuples_excluded
   FROM (pg_stat_get_progress_info('COPY'::text) s(pid, datid, relid, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10, param11, param12, param13, param14, param15, param16, param17, param18, param19, param20)
     LEFT JOIN pg_database d ON ((s.datid = d.oid)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_progress_create_index";
CREATE VIEW "pg_stat_progress_create_index" AS  SELECT s.pid,
    s.datid,
    d.datname,
    s.relid,
    (s.param7)::oid AS index_relid,
        CASE s.param1
            WHEN 1 THEN 'CREATE INDEX'::text
            WHEN 2 THEN 'CREATE INDEX CONCURRENTLY'::text
            WHEN 3 THEN 'REINDEX'::text
            WHEN 4 THEN 'REINDEX CONCURRENTLY'::text
            ELSE NULL::text
        END AS command,
        CASE s.param10
            WHEN 0 THEN 'initializing'::text
            WHEN 1 THEN 'waiting for writers before build'::text
            WHEN 2 THEN ('building index'::text || COALESCE((': '::text || pg_indexam_progress_phasename((s.param9)::oid, s.param11)), ''::text))
            WHEN 3 THEN 'waiting for writers before validation'::text
            WHEN 4 THEN 'index validation: scanning index'::text
            WHEN 5 THEN 'index validation: sorting tuples'::text
            WHEN 6 THEN 'index validation: scanning table'::text
            WHEN 7 THEN 'waiting for old snapshots'::text
            WHEN 8 THEN 'waiting for readers before marking dead'::text
            WHEN 9 THEN 'waiting for readers before dropping'::text
            ELSE NULL::text
        END AS phase,
    s.param4 AS lockers_total,
    s.param5 AS lockers_done,
    s.param6 AS current_locker_pid,
    s.param16 AS blocks_total,
    s.param17 AS blocks_done,
    s.param12 AS tuples_total,
    s.param13 AS tuples_done,
    s.param14 AS partitions_total,
    s.param15 AS partitions_done
   FROM (pg_stat_get_progress_info('CREATE INDEX'::text) s(pid, datid, relid, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10, param11, param12, param13, param14, param15, param16, param17, param18, param19, param20)
     LEFT JOIN pg_database d ON ((s.datid = d.oid)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_progress_vacuum";
CREATE VIEW "pg_stat_progress_vacuum" AS  SELECT s.pid,
    s.datid,
    d.datname,
    s.relid,
        CASE s.param1
            WHEN 0 THEN 'initializing'::text
            WHEN 1 THEN 'scanning heap'::text
            WHEN 2 THEN 'vacuuming indexes'::text
            WHEN 3 THEN 'vacuuming heap'::text
            WHEN 4 THEN 'cleaning up indexes'::text
            WHEN 5 THEN 'truncating heap'::text
            WHEN 6 THEN 'performing final cleanup'::text
            ELSE NULL::text
        END AS phase,
    s.param2 AS heap_blks_total,
    s.param3 AS heap_blks_scanned,
    s.param4 AS heap_blks_vacuumed,
    s.param5 AS index_vacuum_count,
    s.param6 AS max_dead_tuples,
    s.param7 AS num_dead_tuples
   FROM (pg_stat_get_progress_info('VACUUM'::text) s(pid, datid, relid, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10, param11, param12, param13, param14, param15, param16, param17, param18, param19, param20)
     LEFT JOIN pg_database d ON ((s.datid = d.oid)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_replication";
CREATE VIEW "pg_stat_replication" AS  SELECT s.pid,
    s.usesysid,
    u.rolname AS usename,
    s.application_name,
    s.client_addr,
    s.client_hostname,
    s.client_port,
    s.backend_start,
    s.backend_xmin,
    w.state,
    w.sent_lsn,
    w.write_lsn,
    w.flush_lsn,
    w.replay_lsn,
    w.write_lag,
    w.flush_lag,
    w.replay_lag,
    w.sync_priority,
    w.sync_state,
    w.reply_time
   FROM ((pg_stat_get_activity(NULL::integer) s(datid, pid, usesysid, application_name, state, query, wait_event_type, wait_event, xact_start, query_start, backend_start, state_change, client_addr, client_hostname, client_port, backend_xid, backend_xmin, backend_type, ssl, sslversion, sslcipher, sslbits, ssl_client_dn, ssl_client_serial, ssl_issuer_dn, gss_auth, gss_princ, gss_enc, leader_pid, query_id)
     JOIN pg_stat_get_wal_senders() w(pid, state, sent_lsn, write_lsn, flush_lsn, replay_lsn, write_lag, flush_lag, replay_lag, sync_priority, sync_state, reply_time) ON ((s.pid = w.pid)))
     LEFT JOIN pg_authid u ON ((s.usesysid = u.oid)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_replication_slots";
CREATE VIEW "pg_stat_replication_slots" AS  SELECT s.slot_name,
    s.spill_txns,
    s.spill_count,
    s.spill_bytes,
    s.stream_txns,
    s.stream_count,
    s.stream_bytes,
    s.total_txns,
    s.total_bytes,
    s.stats_reset
   FROM pg_replication_slots r,
    LATERAL pg_stat_get_replication_slot((r.slot_name)::text) s(slot_name, spill_txns, spill_count, spill_bytes, stream_txns, stream_count, stream_bytes, total_txns, total_bytes, stats_reset)
  WHERE (r.datoid IS NOT NULL);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_slru";
CREATE VIEW "pg_stat_slru" AS  SELECT s.name,
    s.blks_zeroed,
    s.blks_hit,
    s.blks_read,
    s.blks_written,
    s.blks_exists,
    s.flushes,
    s.truncates,
    s.stats_reset
   FROM pg_stat_get_slru() s(name, blks_zeroed, blks_hit, blks_read, blks_written, blks_exists, flushes, truncates, stats_reset);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_ssl";
CREATE VIEW "pg_stat_ssl" AS  SELECT s.pid,
    s.ssl,
    s.sslversion AS version,
    s.sslcipher AS cipher,
    s.sslbits AS bits,
    s.ssl_client_dn AS client_dn,
    s.ssl_client_serial AS client_serial,
    s.ssl_issuer_dn AS issuer_dn
   FROM pg_stat_get_activity(NULL::integer) s(datid, pid, usesysid, application_name, state, query, wait_event_type, wait_event, xact_start, query_start, backend_start, state_change, client_addr, client_hostname, client_port, backend_xid, backend_xmin, backend_type, ssl, sslversion, sslcipher, sslbits, ssl_client_dn, ssl_client_serial, ssl_issuer_dn, gss_auth, gss_princ, gss_enc, leader_pid, query_id)
  WHERE (s.client_port IS NOT NULL);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_subscription";
CREATE VIEW "pg_stat_subscription" AS  SELECT su.oid AS subid,
    su.subname,
    st.pid,
    st.relid,
    st.received_lsn,
    st.last_msg_send_time,
    st.last_msg_receipt_time,
    st.latest_end_lsn,
    st.latest_end_time
   FROM (pg_subscription su
     LEFT JOIN pg_stat_get_subscription(NULL::oid) st(subid, relid, pid, received_lsn, last_msg_send_time, last_msg_receipt_time, latest_end_lsn, latest_end_time) ON ((st.subid = su.oid)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_sys_indexes";
CREATE VIEW "pg_stat_sys_indexes" AS  SELECT pg_stat_all_indexes.relid,
    pg_stat_all_indexes.indexrelid,
    pg_stat_all_indexes.schemaname,
    pg_stat_all_indexes.relname,
    pg_stat_all_indexes.indexrelname,
    pg_stat_all_indexes.idx_scan,
    pg_stat_all_indexes.idx_tup_read,
    pg_stat_all_indexes.idx_tup_fetch
   FROM pg_stat_all_indexes
  WHERE ((pg_stat_all_indexes.schemaname = ANY (ARRAY['pg_catalog'::name, 'information_schema'::name])) OR (pg_stat_all_indexes.schemaname ~ '^pg_toast'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_sys_tables";
CREATE VIEW "pg_stat_sys_tables" AS  SELECT pg_stat_all_tables.relid,
    pg_stat_all_tables.schemaname,
    pg_stat_all_tables.relname,
    pg_stat_all_tables.seq_scan,
    pg_stat_all_tables.seq_tup_read,
    pg_stat_all_tables.idx_scan,
    pg_stat_all_tables.idx_tup_fetch,
    pg_stat_all_tables.n_tup_ins,
    pg_stat_all_tables.n_tup_upd,
    pg_stat_all_tables.n_tup_del,
    pg_stat_all_tables.n_tup_hot_upd,
    pg_stat_all_tables.n_live_tup,
    pg_stat_all_tables.n_dead_tup,
    pg_stat_all_tables.n_mod_since_analyze,
    pg_stat_all_tables.n_ins_since_vacuum,
    pg_stat_all_tables.last_vacuum,
    pg_stat_all_tables.last_autovacuum,
    pg_stat_all_tables.last_analyze,
    pg_stat_all_tables.last_autoanalyze,
    pg_stat_all_tables.vacuum_count,
    pg_stat_all_tables.autovacuum_count,
    pg_stat_all_tables.analyze_count,
    pg_stat_all_tables.autoanalyze_count
   FROM pg_stat_all_tables
  WHERE ((pg_stat_all_tables.schemaname = ANY (ARRAY['pg_catalog'::name, 'information_schema'::name])) OR (pg_stat_all_tables.schemaname ~ '^pg_toast'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_user_functions";
CREATE VIEW "pg_stat_user_functions" AS  SELECT p.oid AS funcid,
    n.nspname AS schemaname,
    p.proname AS funcname,
    pg_stat_get_function_calls(p.oid) AS calls,
    pg_stat_get_function_total_time(p.oid) AS total_time,
    pg_stat_get_function_self_time(p.oid) AS self_time
   FROM (pg_proc p
     LEFT JOIN pg_namespace n ON ((n.oid = p.pronamespace)))
  WHERE ((p.prolang <> (12)::oid) AND (pg_stat_get_function_calls(p.oid) IS NOT NULL));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_user_indexes";
CREATE VIEW "pg_stat_user_indexes" AS  SELECT pg_stat_all_indexes.relid,
    pg_stat_all_indexes.indexrelid,
    pg_stat_all_indexes.schemaname,
    pg_stat_all_indexes.relname,
    pg_stat_all_indexes.indexrelname,
    pg_stat_all_indexes.idx_scan,
    pg_stat_all_indexes.idx_tup_read,
    pg_stat_all_indexes.idx_tup_fetch
   FROM pg_stat_all_indexes
  WHERE ((pg_stat_all_indexes.schemaname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])) AND (pg_stat_all_indexes.schemaname !~ '^pg_toast'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_user_tables";
CREATE VIEW "pg_stat_user_tables" AS  SELECT pg_stat_all_tables.relid,
    pg_stat_all_tables.schemaname,
    pg_stat_all_tables.relname,
    pg_stat_all_tables.seq_scan,
    pg_stat_all_tables.seq_tup_read,
    pg_stat_all_tables.idx_scan,
    pg_stat_all_tables.idx_tup_fetch,
    pg_stat_all_tables.n_tup_ins,
    pg_stat_all_tables.n_tup_upd,
    pg_stat_all_tables.n_tup_del,
    pg_stat_all_tables.n_tup_hot_upd,
    pg_stat_all_tables.n_live_tup,
    pg_stat_all_tables.n_dead_tup,
    pg_stat_all_tables.n_mod_since_analyze,
    pg_stat_all_tables.n_ins_since_vacuum,
    pg_stat_all_tables.last_vacuum,
    pg_stat_all_tables.last_autovacuum,
    pg_stat_all_tables.last_analyze,
    pg_stat_all_tables.last_autoanalyze,
    pg_stat_all_tables.vacuum_count,
    pg_stat_all_tables.autovacuum_count,
    pg_stat_all_tables.analyze_count,
    pg_stat_all_tables.autoanalyze_count
   FROM pg_stat_all_tables
  WHERE ((pg_stat_all_tables.schemaname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])) AND (pg_stat_all_tables.schemaname !~ '^pg_toast'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_wal";
CREATE VIEW "pg_stat_wal" AS  SELECT w.wal_records,
    w.wal_fpi,
    w.wal_bytes,
    w.wal_buffers_full,
    w.wal_write,
    w.wal_sync,
    w.wal_write_time,
    w.wal_sync_time,
    w.stats_reset
   FROM pg_stat_get_wal() w(wal_records, wal_fpi, wal_bytes, wal_buffers_full, wal_write, wal_sync, wal_write_time, wal_sync_time, stats_reset);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_wal_receiver";
CREATE VIEW "pg_stat_wal_receiver" AS  SELECT s.pid,
    s.status,
    s.receive_start_lsn,
    s.receive_start_tli,
    s.written_lsn,
    s.flushed_lsn,
    s.received_tli,
    s.last_msg_send_time,
    s.last_msg_receipt_time,
    s.latest_end_lsn,
    s.latest_end_time,
    s.slot_name,
    s.sender_host,
    s.sender_port,
    s.conninfo
   FROM pg_stat_get_wal_receiver() s(pid, status, receive_start_lsn, receive_start_tli, written_lsn, flushed_lsn, received_tli, last_msg_send_time, last_msg_receipt_time, latest_end_lsn, latest_end_time, slot_name, sender_host, sender_port, conninfo)
  WHERE (s.pid IS NOT NULL);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_xact_all_tables";
CREATE VIEW "pg_stat_xact_all_tables" AS  SELECT c.oid AS relid,
    n.nspname AS schemaname,
    c.relname,
    pg_stat_get_xact_numscans(c.oid) AS seq_scan,
    pg_stat_get_xact_tuples_returned(c.oid) AS seq_tup_read,
    (sum(pg_stat_get_xact_numscans(i.indexrelid)))::bigint AS idx_scan,
    ((sum(pg_stat_get_xact_tuples_fetched(i.indexrelid)))::bigint + pg_stat_get_xact_tuples_fetched(c.oid)) AS idx_tup_fetch,
    pg_stat_get_xact_tuples_inserted(c.oid) AS n_tup_ins,
    pg_stat_get_xact_tuples_updated(c.oid) AS n_tup_upd,
    pg_stat_get_xact_tuples_deleted(c.oid) AS n_tup_del,
    pg_stat_get_xact_tuples_hot_updated(c.oid) AS n_tup_hot_upd
   FROM ((pg_class c
     LEFT JOIN pg_index i ON ((c.oid = i.indrelid)))
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
  WHERE (c.relkind = ANY (ARRAY['r'::"char", 't'::"char", 'm'::"char", 'p'::"char"]))
  GROUP BY c.oid, n.nspname, c.relname;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_xact_sys_tables";
CREATE VIEW "pg_stat_xact_sys_tables" AS  SELECT pg_stat_xact_all_tables.relid,
    pg_stat_xact_all_tables.schemaname,
    pg_stat_xact_all_tables.relname,
    pg_stat_xact_all_tables.seq_scan,
    pg_stat_xact_all_tables.seq_tup_read,
    pg_stat_xact_all_tables.idx_scan,
    pg_stat_xact_all_tables.idx_tup_fetch,
    pg_stat_xact_all_tables.n_tup_ins,
    pg_stat_xact_all_tables.n_tup_upd,
    pg_stat_xact_all_tables.n_tup_del,
    pg_stat_xact_all_tables.n_tup_hot_upd
   FROM pg_stat_xact_all_tables
  WHERE ((pg_stat_xact_all_tables.schemaname = ANY (ARRAY['pg_catalog'::name, 'information_schema'::name])) OR (pg_stat_xact_all_tables.schemaname ~ '^pg_toast'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_xact_user_functions";
CREATE VIEW "pg_stat_xact_user_functions" AS  SELECT p.oid AS funcid,
    n.nspname AS schemaname,
    p.proname AS funcname,
    pg_stat_get_xact_function_calls(p.oid) AS calls,
    pg_stat_get_xact_function_total_time(p.oid) AS total_time,
    pg_stat_get_xact_function_self_time(p.oid) AS self_time
   FROM (pg_proc p
     LEFT JOIN pg_namespace n ON ((n.oid = p.pronamespace)))
  WHERE ((p.prolang <> (12)::oid) AND (pg_stat_get_xact_function_calls(p.oid) IS NOT NULL));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_stat_xact_user_tables";
CREATE VIEW "pg_stat_xact_user_tables" AS  SELECT pg_stat_xact_all_tables.relid,
    pg_stat_xact_all_tables.schemaname,
    pg_stat_xact_all_tables.relname,
    pg_stat_xact_all_tables.seq_scan,
    pg_stat_xact_all_tables.seq_tup_read,
    pg_stat_xact_all_tables.idx_scan,
    pg_stat_xact_all_tables.idx_tup_fetch,
    pg_stat_xact_all_tables.n_tup_ins,
    pg_stat_xact_all_tables.n_tup_upd,
    pg_stat_xact_all_tables.n_tup_del,
    pg_stat_xact_all_tables.n_tup_hot_upd
   FROM pg_stat_xact_all_tables
  WHERE ((pg_stat_xact_all_tables.schemaname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])) AND (pg_stat_xact_all_tables.schemaname !~ '^pg_toast'::text));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_tables";
CREATE VIEW "pg_tables" AS  SELECT n.nspname AS schemaname,
    c.relname AS tablename,
    pg_get_userbyid(c.relowner) AS tableowner,
    t.spcname AS tablespace,
    c.relhasindex AS hasindexes,
    c.relhasrules AS hasrules,
    c.relhastriggers AS hastriggers,
    c.relrowsecurity AS rowsecurity
   FROM ((pg_class c
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
     LEFT JOIN pg_tablespace t ON ((t.oid = c.reltablespace)))
  WHERE (c.relkind = ANY (ARRAY['r'::"char", 'p'::"char"]));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_timezone_abbrevs";
CREATE VIEW "pg_timezone_abbrevs" AS  SELECT pg_timezone_abbrevs.abbrev,
    pg_timezone_abbrevs.utc_offset,
    pg_timezone_abbrevs.is_dst
   FROM pg_timezone_abbrevs() pg_timezone_abbrevs(abbrev, utc_offset, is_dst);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_timezone_names";
CREATE VIEW "pg_timezone_names" AS  SELECT pg_timezone_names.name,
    pg_timezone_names.abbrev,
    pg_timezone_names.utc_offset,
    pg_timezone_names.is_dst
   FROM pg_timezone_names() pg_timezone_names(name, abbrev, utc_offset, is_dst);;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_user";
CREATE VIEW "pg_user" AS  SELECT pg_shadow.usename,
    pg_shadow.usesysid,
    pg_shadow.usecreatedb,
    pg_shadow.usesuper,
    pg_shadow.userepl,
    pg_shadow.usebypassrls,
    '********'::text AS passwd,
    pg_shadow.valuntil,
    pg_shadow.useconfig
   FROM pg_shadow;;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_user_mappings";
CREATE VIEW "pg_user_mappings" AS  SELECT u.oid AS umid,
    s.oid AS srvid,
    s.srvname,
    u.umuser,
        CASE
            WHEN (u.umuser = (0)::oid) THEN 'public'::name
            ELSE a.rolname
        END AS usename,
        CASE
            WHEN (((u.umuser <> (0)::oid) AND (a.rolname = CURRENT_USER) AND (pg_has_role(s.srvowner, 'USAGE'::text) OR has_server_privilege(s.oid, 'USAGE'::text))) OR ((u.umuser = (0)::oid) AND pg_has_role(s.srvowner, 'USAGE'::text)) OR ( SELECT pg_authid.rolsuper
               FROM pg_authid
              WHERE (pg_authid.rolname = CURRENT_USER))) THEN u.umoptions
            ELSE NULL::text[]
        END AS umoptions
   FROM ((pg_user_mapping u
     JOIN pg_foreign_server s ON ((u.umserver = s.oid)))
     LEFT JOIN pg_authid a ON ((a.oid = u.umuser)));;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS "pg_views";
CREATE VIEW "pg_views" AS  SELECT n.nspname AS schemaname,
    c.relname AS viewname,
    pg_get_userbyid(c.relowner) AS viewowner,
    pg_get_viewdef(c.oid) AS definition
   FROM (pg_class c
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
  WHERE (c.relkind = 'v'::"char");;

-- Copiando estrutura para tabela public.tb_cliente
CREATE TABLE IF NOT EXISTS "tb_cliente" (
	"cd_cliente" SERIAL NOT NULL,
	"cpf_cnpj" VARCHAR(14) NULL DEFAULT NULL::character varying,
	"razao_social" VARCHAR(200) NULL DEFAULT NULL::character varying,
	"nm_fantasia" VARCHAR(200) NULL DEFAULT NULL::character varying,
	"nm_comercial" VARCHAR(100) NULL DEFAULT NULL::character varying,
	"telefone_comercial" VARCHAR(25) NULL DEFAULT NULL::character varying,
	"celular_comercial" VARCHAR(25) NULL DEFAULT NULL::character varying,
	"email_comercial" VARCHAR(50) NULL DEFAULT NULL::character varying,
	"tx_observacao" VARCHAR(200) NULL DEFAULT NULL::character varying,
	"dt_cadastro" DATE NULL DEFAULT NULL,
	"dt_alteracao" DATE NULL DEFAULT NULL,
	"login_cadastro" VARCHAR(200) NULL DEFAULT NULL::character varying,
	PRIMARY KEY ("cd_cliente")
);

-- Copiando dados para a tabela public.tb_cliente: 3 rows
DELETE FROM "tb_cliente";
/*!40000 ALTER TABLE "tb_cliente" DISABLE KEYS */;
-- Copiando estrutura para tabela public.tb_log_acesso
CREATE TABLE IF NOT EXISTS "tb_log_acesso" (
	"cd_log" INTEGER NOT NULL,
	"login_usuario" VARCHAR(50) NULL DEFAULT NULL::character varying,
	"descricao" VARCHAR(5000) NOT NULL,
	"hostname" VARCHAR(200) NULL DEFAULT NULL::character varying,
	"ip" VARCHAR(200) NULL DEFAULT NULL::character varying,
	"dt_acesso" DATE NOT NULL,
	"hr_acesso" TIME NOT NULL,
	PRIMARY KEY ("cd_log")
);

-- Copiando dados para a tabela public.tb_log_acesso: -1 rows
DELETE FROM "tb_log_acesso";
/*!40000 ALTER TABLE "tb_log_acesso" DISABLE KEYS */;
/*!40000 ALTER TABLE "tb_log_acesso" ENABLE KEYS */;

-- Copiando estrutura para tabela public.tb_produto
CREATE TABLE IF NOT EXISTS "tb_produto" (
	"cd_produto" SERIAL NOT NULL,
	"nome" VARCHAR(200) NOT NULL,
	"dt_cadastro" DATE NOT NULL,
	"login_cadastro" VARCHAR(200) NOT NULL,
	"quantidade" INTEGER NULL DEFAULT NULL,
	PRIMARY KEY ("cd_produto")
);

-- Copiando dados para a tabela public.tb_produto: -1 rows
DELETE FROM "tb_produto";
/*!40000 ALTER TABLE "tb_produto" DISABLE KEYS */;
-- Copiando estrutura para tabela public.tb_usuario
CREATE TABLE IF NOT EXISTS "tb_usuario" (
	"cd_usuario" INTEGER NOT NULL,
	"login" VARCHAR(20) NOT NULL,
	"nome" VARCHAR(200) NOT NULL,
	"email" VARCHAR(40) NOT NULL,
	"tipo" VARCHAR(1) NOT NULL,
	"status" VARCHAR(1) NOT NULL,
	"senha" VARCHAR(200) NULL DEFAULT NULL::character varying,
	PRIMARY KEY ("cd_usuario")
);

-- Copiando dados para a tabela public.tb_usuario: 1 rows
DELETE FROM "tb_usuario";
/*!40000 ALTER TABLE "tb_usuario" DISABLE KEYS */;
/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
