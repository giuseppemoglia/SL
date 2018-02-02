$PBExportHeader$n_cst_jsonparser.sru
forward
global type n_cst_jsonparser from jsonparser
end type
end forward

global type n_cst_jsonparser from jsonparser
end type
global n_cst_jsonparser n_cst_jsonparser

on n_cst_jsonparser.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_jsonparser.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

