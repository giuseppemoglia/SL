$PBExportHeader$n_cst_restclient.sru
forward
global type n_cst_restclient from restclient
end type
end forward

global type n_cst_restclient from restclient
integer secureprotocol = 3
end type
global n_cst_restclient n_cst_restclient

on n_cst_restclient.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_restclient.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

