HA$PBExportHeader$w_test.srw
forward
global type w_test from window
end type
type mle_2 from multilineedit within w_test
end type
type sle_3 from singlelineedit within w_test
end type
type sle_2 from singlelineedit within w_test
end type
type cb_7 from commandbutton within w_test
end type
type sle_1 from singlelineedit within w_test
end type
type mle_1 from multilineedit within w_test
end type
type cb_6 from commandbutton within w_test
end type
type cb_5 from commandbutton within w_test
end type
type cb_4 from commandbutton within w_test
end type
type cb_3 from commandbutton within w_test
end type
type cb_2 from commandbutton within w_test
end type
type dw_1 from datawindow within w_test
end type
type cb_1 from commandbutton within w_test
end type
end forward

global type w_test from window
integer width = 2258
integer height = 1996
boolean titlebar = true
string title = "Test SL"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
mle_2 mle_2
sle_3 sle_3
sle_2 sle_2
cb_7 cb_7
sle_1 sle_1
mle_1 mle_1
cb_6 cb_6
cb_5 cb_5
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
dw_1 dw_1
cb_1 cb_1
end type
global w_test w_test

type variables
n_cst_jsonparser lnv_JsonParser
n_cst_httpclient lnv_HttpClient

end variables

on w_test.create
this.mle_2=create mle_2
this.sle_3=create sle_3
this.sle_2=create sle_2
this.cb_7=create cb_7
this.sle_1=create sle_1
this.mle_1=create mle_1
this.cb_6=create cb_6
this.cb_5=create cb_5
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.dw_1=create dw_1
this.cb_1=create cb_1
this.Control[]={this.mle_2,&
this.sle_3,&
this.sle_2,&
this.cb_7,&
this.sle_1,&
this.mle_1,&
this.cb_6,&
this.cb_5,&
this.cb_4,&
this.cb_3,&
this.cb_2,&
this.dw_1,&
this.cb_1}
end on

on w_test.destroy
destroy(this.mle_2)
destroy(this.sle_3)
destroy(this.sle_2)
destroy(this.cb_7)
destroy(this.sle_1)
destroy(this.mle_1)
destroy(this.cb_6)
destroy(this.cb_5)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.dw_1)
destroy(this.cb_1)
end on

event open;lnv_JsonParser = Create n_cst_jsonparser
lnv_HttpClient= Create n_cst_httpclient
end event

type mle_2 from multilineedit within w_test
integer x = 114
integer y = 1404
integer width = 1998
integer height = 260
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean vscrollbar = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type sle_3 from singlelineedit within w_test
integer x = 1216
integer y = 292
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "PArmValue"
borderstyle borderstyle = stylelowered!
end type

type sle_2 from singlelineedit within w_test
integer x = 763
integer y = 292
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "ParmName"
borderstyle borderstyle = stylelowered!
end type

type cb_7 from commandbutton within w_test
integer x = 87
integer y = 292
integer width = 576
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Set Value"
end type

event clicked;string ls_json
string ls_ReturnJson
int li_rc

lnv_HttpClient.SetRequestHeader("Cookie", "ROUTEID=.node0; B1SESSION=" + dw_1.object.sessionid[1])

ls_json = "{" 

ls_json = ls_json + '"' + sle_2.text + '"  : "' + sle_3.text + '"' 

ls_json = ls_json + "}"

li_rc = lnv_HttpClient.SendRequest("PATCH", "https://192.168.192.3:50000/b1s/v1/BusinessPartners('" + sle_1.text +"')", ls_json, EncodingUTF8!)
// obtain the response data
if li_rc = 1 and lnv_HttpClient.GetResponseStatusCode() = 200 then
 lnv_HttpClient.GetResponseBody(ls_ReturnJson)
end if

//MessageBox("Response", ls_ReturnJson)
mle_2.text = lnv_HttpClient.GetResponseStatusText() 

mle_1.text = ls_ReturnJson
end event

type sle_1 from singlelineedit within w_test
integer x = 763
integer y = 160
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "AC001"
borderstyle borderstyle = stylelowered!
end type

type mle_1 from multilineedit within w_test
integer x = 119
integer y = 516
integer width = 1998
integer height = 784
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean vscrollbar = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_6 from commandbutton within w_test
integer x = 87
integer y = 160
integer width = 576
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Get BusinessPartner"
end type

event clicked;string ls_json
string ls_ReturnJson
int li_rc

lnv_HttpClient.SetRequestHeader("Cookie", "ROUTEID=.node0; B1SESSION=" + dw_1.object.sessionid[1])


li_rc = lnv_HttpClient.SendRequest("GET", "https://192.168.192.3:50000/b1s/v1/BusinessPartners('" + sle_1.text +"')", ls_json, EncodingUTF8!)
// obtain the response data
if li_rc = 1 and lnv_HttpClient.GetResponseStatusCode() = 200 then
 lnv_HttpClient.GetResponseBody(ls_ReturnJson)
end if

//MessageBox("Response", ls_ReturnJson)
mle_2.text = lnv_HttpClient.GetResponseStatusText() 

mle_1.text = ls_ReturnJson
end event

type cb_5 from commandbutton within w_test
integer x = 1568
integer y = 52
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "TestParse"
end type

event clicked;JsonParser lnv_JsonParser1
string ls_json
Long ll_RootObject
Date ldate_date 
lnv_JsonParser1 = Create JsonParser
ls_Json = '{"datetime":7234930293, "date": "2017-09-21", "time": "12:00:00"}'
lnv_JsonParser1.LoadString(ls_Json)
ll_RootObject = lnv_JsonParser1.GetRootItem()
ldate_date = lnv_JsonParser1.GetItemDate(ll_RootObject, "date")

MessageBox("Date", string(ldate_date))
end event

type cb_4 from commandbutton within w_test
integer x = 91
integer y = 28
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Connect"
end type

event clicked;int li_rc
String ls_ReturnJson
String ls_json = '{"UserName" : "manager", "Password":"sata", "CompanyDB":"SBOM1_TEST_HANA"}'

// Construct a POST request (supports all headers)
lnv_HttpClient.SetRequestHeader("Content-Type", "application/json;charset=UTF-8")
// Content-Length header set by SendRequest

// Send request using POST method (to add the string data to the body and set to the Content-Length header)
li_rc = lnv_HttpClient.SendRequest("POST", "https://192.168.192.3:50000/b1s/v1/Login", ls_json, EncodingUTF8!)
// obtain the response data
if li_rc = 1 and lnv_HttpClient.GetResponseStatusCode() = 200 then
 lnv_HttpClient.GetResponseBody(ls_ReturnJson)
end if

mle_2.text = lnv_HttpClient.GetResponseStatusText() 

string ls_error, ls_key, ls_value

//MessageBox("Response", ls_ReturnJson)
    	
//ls_ReturnJson = pfc_n_cst_string.of_globalreplace(ls_ReturnJson, '~n', '')
//ls_ReturnJson = pfc_n_cst_string.of_globalreplace(ls_ReturnJson, '~r', '')
		 
ls_Error = lnv_JsonParser.LoadString(ls_ReturnJson)
if Len(ls_Error) > 0 then
 MessageBox("Error", ls_Error)
end if

Long ll_RootObject, ll_item, ll_ChildCount, ll_index

ll_RootObject = lnv_JsonParser.GetRootItem()
long ll_row
ll_row = dw_1.insertRow(0)
dw_1.object.metadata[ll_row] =  lnv_JsonParser.GetItemString(ll_RootObject, "odata.metadata")
dw_1.object.sessionid[ll_row] =  lnv_JsonParser.GetItemString(ll_RootObject, "SessionId")
dw_1.object.version[ll_row] =  lnv_JsonParser.GetItemString(ll_RootObject, "Version")
dw_1.object.sessiontimeout[ll_row] =  lnv_JsonParser.GetItemNumber(ll_RootObject, "SessionTimeout")

end event

type cb_3 from commandbutton within w_test
boolean visible = false
integer x = 1641
integer y = 280
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Windows"
end type

event clicked;OleObject lole_Send
OleObject lole_SrvHTTP
OleObject lole_ScriptControl

String ls_status
String ls_response
String ls_value

lole_Send = CREATE OleObject
lole_SrvHTTP = CREATE OleObject
lole_Send.connectToNewObject("Msxml2.DOMDocument.6.0")
lole_SrvHTTP.connectToNewObject("MSXML2.ServerXMLHTTP.6.0")
lole_SrvHTTP.Open("GET", "http://date.jsontest.com", FALSE)
lole_SrvHTTP.SetRequestHeader( "Content-Type", "application/json")
lole_SrvHTTP.Send(lole_Send)
ls_status = string(lole_SrvHTTP.Status)
ls_response = string(lole_SrvHTTP.ResponseText)

MessageBox("REST HTTP response", ls_status)  // 200 is OK!
MessageBox("JSON response", ls_response)

lole_ScriptControl = CREATE OleObject
lole_ScriptControl.ConnectToNewObject( "MSScriptControl.ScriptControl" )
lole_ScriptControl.Language = "JScript"
lole_ScriptControl.AddCode("function getValue(s,key) {eval(~"jsonobj=~" + s); return eval(~"jsonobj.~" + key) ; }")

TRY
  // remove (replace with "") all the carriage return to clean up the JSON string
  int position, i
  FOR i = 1 to len(ls_response)
        position = pos(ls_response, "~n")
        IF position > 0 THEN
            ls_response= Replace(ls_response, position, 1, "")
        END IF
  NEXT
  MessageBox("JSON response cleanup", ls_response)
  // typical response
  //   { "time": "04:21:52 PM",  "milliseconds_since_epoch": 1436113312190, "date": "07-05-2015" }

   ls_value =  lole_ScriptControl.Eval ("getValue(' " + ls_response + " ',  'date');")
   MessageBox("date value", ls_value)
CATCH ( Throwable e )
   MessageBox("Err", e.GetMessage())
END TRY
end event

type cb_2 from commandbutton within w_test
boolean visible = false
integer x = 786
integer y = 560
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;n_cst_httpclient lnv_HttpClient
lnv_HttpClient = Create n_cst_httpclient
string ls_TotalStrData, ls_response
int li_rc
ls_TotalStrData = '{"UserName" : "manager", "Password":"sata", "CompanyDB":"SBOM1_TEST_HANA"}'

//// Construct a POST request
// Content-Length indicates the total bytes of data being sent
// Each PB character takes up two bytes of storage
lnv_HttpClient.SetRequestHeader("Content-Length", String(Len(ls_TotalStrData)*2))

lnv_HttpClient.SetRequestHeader("Content-Type", "application/json;charset=UTF-8")


// Start posting data and request information
if lnv_HttpClient.PostDataStart("https://192.168.192.3:50000/b1s/v1/Login") = 1 then
// for i = 1 to li_PackCount
  li_rc = lnv_HttpClient.PostData(ls_TotalStrData, Len(ls_TotalStrData)* 2)
  // li_rc = lnv_HttpClient.PostData(lblb_NextData, 1024)
//  if li_rc <> 1 then break
// next
end if
if li_rc = 1 then
 li_rc = lnv_HttpClient.PostDataEnd()
end if
// Obtain the response data

if li_rc = 1 and lnv_HttpClient.GetResponseStatusCode() = 200 then
 lnv_HttpClient.GetResponseBody(ls_response)
end if

MessageBox("Response", ls_response)



end event

type dw_1 from datawindow within w_test
boolean visible = false
integer x = 210
integer y = 960
integer width = 1536
integer height = 812
integer taborder = 20
string title = "none"
string dataobject = "dw_session"
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
boolean hsplitscroll = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
boolean righttoleft = true
end type

type cb_1 from commandbutton within w_test
boolean visible = false
integer x = 1637
integer y = 392
integer width = 576
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "TEST connection SL"
end type

event clicked;n_cst_restclient lnv_RestClient
lnv_RestClient = Create n_cst_restclient
Long ll_rc

datastore ds

ds = Create datastore

String ls_json = '{"UserName" : "manager", "Password":"sata", "CompanyDB":"SBOM1_TEST_HANA"}'

// Construct a POST request (supports all headers)
lnv_RestClient.SetRequestHeader("Content-Type", "application/json;charset=UTF-8")
// Content-Length is set by Retrieve automatically

// Send the POST request (add data to the body and automatically set Content-Length header)
ll_rc = lnv_RestClient.Retrieve(dw_1, "https://192.168.192.3:50000/b1s/v1/Login", ls_Json)

// Check the return value
if ll_rc >= 0 then
	MessageBox("Success", "Rows = " + String(ll_rc) + '~r~n' + string(lnv_RestClient.getREsponsestatuscode()))
	
else
	MessageBox("Error", "Failed to retrieve data.")
end if



end event

