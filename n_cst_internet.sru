HA$PBExportHeader$n_cst_internet.sru
forward
global type n_cst_internet from internetresult
end type
end forward

global type n_cst_internet from internetresult
end type
global n_cst_internet n_cst_internet

forward prototypes
public function integer internetdata (blob data)
end prototypes

public function integer internetdata (blob data);MessageBox("HTML from PostURL",   &
   String(data, EncodingANSI!))

RETURN 1

end function

on n_cst_internet.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_internet.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

