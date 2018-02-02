$PBExportHeader$n_cst_httpclient.sru
forward
global type n_cst_httpclient from httpclient
end type
end forward

global type n_cst_httpclient from httpclient
boolean autoreaddata = false
integer secureprotocol = 3
end type
global n_cst_httpclient n_cst_httpclient

on n_cst_httpclient.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_httpclient.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

