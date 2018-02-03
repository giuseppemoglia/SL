HA$PBExportHeader$sl_test.sra
$PBExportComments$Generated Application Object
forward
global type sl_test from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type sl_test from application
string appname = "sl_test"
end type
global sl_test sl_test

on sl_test.create
appname="sl_test"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on sl_test.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;Open(w_test)
end event

