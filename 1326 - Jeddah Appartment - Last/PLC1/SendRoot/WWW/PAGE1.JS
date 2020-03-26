
function RefreshCam(ipcamimg, elementid, url, t, d) {var o=document.getElementById(elementid);if(o){o.setAttribute("src",eval(ipcamimg+'.src'));if(o.parentNode.parentNode.style.visibility!='hidden')setTimeout(ipcamimg+".src = \""+url+d+Math.random()+"\"", t);}}
function SetBg(name, imag) {var obj = document.getElementById(name); obj.style.backgroundImage = imag == '' ? '' : 'url("IMAGES/'+imag+'")';}
function SetCond(obj, val) {if(obj != val) obj = val;}
function GetColor(val) {var tmp = '000000'+parseInt(parseInt(((val << 16) & 0xFF0000) | (val & 0xFF00) | ((val >> 16) & 0xFF))).toString(16); return '#'+tmp.substr(tmp.length-6,6);}
function GetDateByFormat(pstr,pf) {var isDel=new RegExp("^([-:]|\\s|\\.)");var isNotDel=new RegExp("^[YMDhmsz]");var strYY='', strMM='0', strDD='0', strhh='0', strmm='0', strss='0', strzz='0';var j = 0;for(var i = 0; i < pstr.length; i++, j++) {if(isNotDel.test(pstr.charAt(i))) {if(isDel.test(pf.charAt(j))) {j--;} else {switch(pstr.charAt(i)) {case 'Y' : strYY += pf.charAt(j); break;case 'M' : strMM += pf.charAt(j); break;case 'D' : strDD += pf.charAt(j); break;case 'h' : strhh += pf.charAt(j); break;case 'm' : strmm += pf.charAt(j); break;case 's' : strss += pf.charAt(j); break;case 'z' : strzz += pf.charAt(j); break;}}}}strzz = (strzz+'00').substr(0,4);  return new Date(strYY, strMM, strDD, strhh, strmm, strss, strzz);}
function CheckValueLimits(value,type,format,mmin,mmax) {switch(type) {case 0:value = parseFloat(value);mnin  = parseFloat(mmin);mmax  = parseFloat(mmax);break;case 1:value = parseInt(value, 16);mnin  = parseInt(mmin, 16);mmax  = parseInt(mmax, 16);break;case 2:value = GetDateByFormat(format, value);mmin  = GetDateByFormat(format, mmin);mmax  = GetDateByFormat(format, mmax);break;}return value >= mmin && value <= mmax;}
var xmlhttpGET  = null;
var xmlhttpPOST = null;
var gNewLoc='';function GetXML(e,t){if(window.XMLHttpRequest){xmlhttpGET=new XMLHttpRequest}else if(window.ActiveXObject){xmlhttpGET=new ActiveXObject("Microsoft.XMLHTTP")}if(xmlhttpGET!=null){xmlhttpGET.onreadystatechange=onResponse;if(t){xmlhttpGET.open("POST",e,true);xmlhttpGET.setRequestHeader("Content-type","application/x-www-form-urlencoded")}else{xmlhttpGET.open("GET",e,true)}xmlhttpGET.setRequestHeader("x-tecomat","data");xmlhttpGET.send(t)}else{alert("Your browser does not support XMLHTTP.")}}
function PostXML(e,t,l){if(window.XMLHttpRequest){xmlhttpPOST=new XMLHttpRequest}else if(window.ActiveXObject){xmlhttpPOST=new ActiveXObject("Microsoft.XMLHTTP")}if(xmlhttpPOST!=null){gNewLoc=l;xmlhttpPOST.onreadystatechange=onPostResponse;xmlhttpPOST.open("POST",e,true);xmlhttpPOST.setRequestHeader("Content-type","application/x-www-form-urlencoded");xmlhttpPOST.send(t)}else{alert("Your browser does not support XMLHTTP.")}}

var g_postInProgress=false;
var UpdateFileSubmit;
function TUpdateFileSubmit(div, name, size) {this.mDiv = div; this.mName = name; this.mSize = size; this.mNum = 0;this.refresh = function() {var sp = ['|','/','-','\\'];this.mDiv.innerHTML=this.mName+' '+sp[this.mNum%4]+' '+ this.mSize;this.mNum++;setTimeout("UpdateFileSubmit.refresh()", 500);};this.refresh();}
function postFileSubmit(sourceForm, colour, warning) {if(sourceForm[0].value) {if(!warning || confirm(warning)) {g_postInProgress = true;for( var x = 0; sourceForm.childNodes[x]; x++ ){if(sourceForm.childNodes[x].style) {if(sourceForm.childNodes[x].style.display == 'none') {sourceForm.childNodes[x].style.display = 'block';if(sourceForm[0].files) {UpdateFileSubmit = new TUpdateFileSubmit(sourceForm.childNodes[x],sourceForm[0].files[0].name,sourceForm[0].files[0].size+'B',0);}else{UpdateFileSubmit = new TUpdateFileSubmit(sourceForm.childNodes[x],sourceForm[0].value.replace(/.*(\/|\\)/, ''),'');}} else sourceForm.childNodes[x].style.display = 'none';}}sourceForm.submit();}else{sourceForm[0].value=''}}}
function SetInputEdited(i, e){var keynum;if(window.event){keynum=e.keyCode;}else if(e.which){keynum=e.which;}InputFocused[i-1]=1;if(keynum!=9&&keynum!=11&&keynum!=16&&keynum !=17){if(keynum==27){InputEdited[i-1]=0; }else{InputEdited[i-1]=1;document.getElementById('INPUT'+i).style.color='#FF0000';}}}
var InputEdited=[];var InputFocused=[];var gCI=[];var gLCI=[]; var gIC=[];var gWatchDog = 0; var gTemp;
function UpdateValue(input, x, color) {
if(input.value != x.getAttribute('VALUE')) input.value = x.getAttribute('VALUE');
if(input.style.color != color) input.style.color = color;
}
function onPostResponse() {
if(!xmlhttpPOST) return;
if(xmlhttpPOST.readyState != 4) return;
if(!xmlhttpPOST.status) return;
if(xmlhttpPOST.status != 200){
alert('Problem posting XML data ' + xmlhttpPOST.statusText + '(' + xmlhttpPOST.status + ')');
}else{if(gNewLoc)document.location.href=gNewLoc;}
}
function BackToReferrer() {
r = document.referrer.toLowerCase();
if(r==''||r==document.location.href.toLowerCase()||r.search('login.xml')!=-1||r.search('logout.xml')!=-1) {
document.location.href='INDEX.XML';
} else {document.location.href=r;}}
function onResponse() {
try {
gWatchDog++;
if(!xmlhttpGET) return;
if(xmlhttpGET.readyState != 4) return;
if(!xmlhttpGET.status) return;
if(xmlhttpGET.status != 200){
alert('Problem retrieving XML data ' + xmlhttpGET.statusText + '(' + xmlhttpGET.status + ')');
document.location.reload(true)
return;}
var access = xmlhttpGET.responseXML.documentElement.getElementsByTagName('ACCESS')[0]; if(!access || access.getAttribute('UCID') != 1584613442) {document.location.reload(true); return;}
var pd = '';
var x=xmlhttpGET.responseXML.documentElement.getElementsByTagName('INPUT');
if(x[0]) {
var Input1 = document.getElementById('INPUT1');
var Input1h = document.getElementById('INPUT1h');
if(Input1h) { vz = x[1].getAttribute('VALUE') == '0'; iz = Input1h.value == '0';
if(vz == iz) {
if(vz) {
Input1h.value = '1';
Input1.style.backgroundImage = 'url("IMAGES/OFF.PNG")';
if(Input1.getAttribute('value') != null) {Input1.value = '';} else {}
} else {
Input1h.value = '0';
Input1.style.backgroundImage = 'url("IMAGES/ON.PNG")';
if(Input1.getAttribute('value') != null) {Input1.value = '';
} else {}
}}} else {
if(x[1].getAttribute('VALUE') == '0') {
SetBg('INPUT1', 'OFF.PNG');
} else {
SetBg('INPUT1', 'ON.PNG');
}}
if(x[0].getAttribute('VALUE') == '0') {
Input1.style.display = 'none';
} else {
Input1.style.display = 'block';
}
var Input2 = document.getElementById('INPUT2');
switch(parseInt(x[3].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
default: gTemp = ''; }
if(Input2.style.backgroundImage != gTemp) Input2.style.backgroundImage = gTemp;
if(x[2].getAttribute('VALUE') == '0') {
Input2.style.visibility = 'hidden';
} else {
Input2.style.visibility = 'visible';
}
var Input3 = document.getElementById('INPUT3');
switch(parseInt(x[3].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
default: gTemp = ''; }
if(Input3.style.backgroundImage != gTemp) Input3.style.backgroundImage = gTemp;
if(x[2].getAttribute('VALUE') == '0') {
Input3.style.visibility = 'hidden';
} else {
Input3.style.visibility = 'visible';
}
var Input4 = document.getElementById('INPUT4');
switch(parseInt(x[3].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
default: gTemp = ''; }
if(Input4.style.backgroundImage != gTemp) Input4.style.backgroundImage = gTemp;
if(x[2].getAttribute('VALUE') == '0') {
Input4.style.visibility = 'hidden';
} else {
Input4.style.visibility = 'visible';
}
var Input5 = document.getElementById('INPUT5');
switch(parseInt(x[3].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
default: gTemp = ''; }
if(Input5.style.backgroundImage != gTemp) Input5.style.backgroundImage = gTemp;
if(x[2].getAttribute('VALUE') == '0') {
Input5.style.visibility = 'hidden';
} else {
Input5.style.visibility = 'visible';
}
var Input6 = document.getElementById('INPUT6');
if(x[0].getAttribute('VALUE') == '0') {
Input6.style.visibility = 'hidden';
} else {
Input6.style.visibility = 'visible';
}
var Input7 = document.getElementById('INPUT7');
if(x[0].getAttribute('VALUE') == '0') {
Input7.style.visibility = 'hidden';
} else {
Input7.style.visibility = 'visible';
}
var Input8 = document.getElementById('INPUT8');
if(x[0].getAttribute('VALUE') == '0') {
Input8.style.visibility = 'hidden';
} else {
Input8.style.visibility = 'visible';
}
var Input9 = document.getElementById('INPUT9');
if(x[0].getAttribute('VALUE') == '0') {
Input9.style.visibility = 'hidden';
} else {
Input9.style.visibility = 'visible';
}
var Input10 = document.getElementById('INPUT10');
if(x[2].getAttribute('VALUE') == '0') {
Input10.style.visibility = 'hidden';
} else {
Input10.style.visibility = 'visible';
}
var Input11 = document.getElementById('INPUT11');
if(x[2].getAttribute('VALUE') == '0') {
Input11.style.visibility = 'hidden';
} else {
Input11.style.visibility = 'visible';
}
var Input12 = document.getElementById('INPUT12');
if(x[2].getAttribute('VALUE') == '0') {
Input12.style.visibility = 'hidden';
} else {
Input12.style.visibility = 'visible';
}
var Input13 = document.getElementById('INPUT13');
if(x[2].getAttribute('VALUE') == '0') {
Input13.style.visibility = 'hidden';
} else {
Input13.style.visibility = 'visible';
}
var Input14 = document.getElementById('INPUT14');
switch(parseInt(x[4].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/FAN_OFF.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/80.GIF")'; break;
case 2 : gTemp = 'url("IMAGES/50.GIF")'; break;
case 3 : gTemp = 'url("IMAGES/50.GIF")'; break;
case 4 : gTemp = 'url("IMAGES/20.GIF")'; break;
default: gTemp = ''; }
if(Input14.style.backgroundImage != gTemp) Input14.style.backgroundImage = gTemp;
if(x[2].getAttribute('VALUE') == '0') {
Input14.style.visibility = 'hidden';
} else {
Input14.style.visibility = 'visible';
}
var Input15 = document.getElementById('INPUT15');
var Input15h = document.getElementById('INPUT15h');
if(Input15h) { vz = x[5].getAttribute('VALUE') == '0'; iz = Input15h.value == '0';
if(vz == iz) {
if(vz) {
Input15h.value = '1';
Input15.style.backgroundImage = 'url("IMAGES/AIR-CON1.PNG")';
if(Input15.getAttribute('value') != null) {Input15.value = '';} else {}
} else {
Input15h.value = '0';
Input15.style.backgroundImage = 'url("IMAGES/VENTILA1.PNG")';
if(Input15.getAttribute('value') != null) {Input15.value = '';
} else {}
}}} else {
if(x[5].getAttribute('VALUE') == '0') {
SetBg('INPUT15', 'AIR-CON1.PNG');
} else {
SetBg('INPUT15', 'VENTILA1.PNG');
}}
if(x[2].getAttribute('VALUE') == '0') {
Input15.style.display = 'none';
} else {
Input15.style.display = 'block';
}
var Input16 = document.getElementById('INPUT16');
if(!InputEdited[15]) {
UpdateValue(Input16, x[6], '#3C3C3C');}
var Input16x = document.getElementById('INPUT16x');
if(x[0].getAttribute('VALUE') == '0') {
if(Input16x) Input16x.style.visibility = 'hidden';
Input16.style.display = 'none';
} else {
Input16.style.display = 'inline';
}
var Input17 = document.getElementById('INPUT17');
var Input17h = document.getElementById('INPUT17h');
if(Input17h) { vz = x[7].getAttribute('VALUE') == '0'; iz = Input17h.value == '0';
if(vz == iz) {
if(vz) {
Input17h.value = '1';
Input17.style.backgroundImage = 'url("IMAGES/CONTROL-.PNG")';
if(Input17.getAttribute('value') != null) {Input17.value = '';} else {}
} else {
Input17h.value = '0';
Input17.style.backgroundImage = 'url("IMAGES/CONTROL1.PNG")';
if(Input17.getAttribute('value') != null) {Input17.value = '';
} else {}
}}} else {
if(x[7].getAttribute('VALUE') == '0') {
SetBg('INPUT17', 'CONTROL-.PNG');
} else {
SetBg('INPUT17', 'CONTROL1.PNG');
}}
if(x[0].getAttribute('VALUE') == '0') {
Input17.style.display = 'none';
} else {
Input17.style.display = 'block';
}
var Input18 = document.getElementById('INPUT18');
if(x[0].getAttribute('VALUE') == '0') {
Input18.style.visibility = 'hidden';
} else {
Input18.style.visibility = 'visible';
}
var Input19 = document.getElementById('INPUT19');
Input19.value = x[8].getAttribute('VALUE');
if(x[0].getAttribute('VALUE') == '0') {
Input19.style.visibility = 'hidden';
} else {
Input19.style.visibility = 'visible';
}
var Input20 = document.getElementById('INPUT20');
if(x[0].getAttribute('VALUE') == '0') {
Input20.style.visibility = 'hidden';
} else {
Input20.style.visibility = 'visible';
}
var Input21 = document.getElementById('INPUT21');
if(x[0].getAttribute('VALUE') == '0') {
Input21.style.visibility = 'hidden';
} else {
Input21.style.visibility = 'visible';
}
var Input22 = document.getElementById('INPUT22');
if(x[0].getAttribute('VALUE') == '0') {
Input22.style.visibility = 'hidden';
} else {
Input22.style.visibility = 'visible';
}
var Input23 = document.getElementById('INPUT23');
if(x[0].getAttribute('VALUE') == '0') {
Input23.style.visibility = 'hidden';
} else {
Input23.style.visibility = 'visible';
}
var Input24 = document.getElementById('INPUT24');
if(x[0].getAttribute('VALUE') == '0') {
Input24.style.visibility = 'hidden';
} else {
Input24.style.visibility = 'visible';
}
var Input25 = document.getElementById('INPUT25');
if(x[5].getAttribute('VALUE') == '0') {
SetBg('INPUT25', 'TRANSPE2.PNG');
Input25.innerHTML = 'Cooling';
} else {
SetBg('INPUT25', 'TRANSPE2.PNG');
Input25.innerHTML = 'Fan only';
}
if(x[0].getAttribute('VALUE') == '0') {
Input25.style.display = 'none';
} else {
Input25.style.display = 'block';
}
var Input26 = document.getElementById('INPUT26');
if(x[9].getAttribute('VALUE') == '0') {
Input26.style.display = 'none';
} else {
Input26.style.display = 'block';
}
var Input27 = document.getElementById('INPUT27');
if(x[9].getAttribute('VALUE') == '0') {
Input27.style.display = 'none';
} else {
Input27.style.display = 'block';
}
var Input28 = document.getElementById('INPUT28');
if(x[10].getAttribute('VALUE') == '0') {
SetBg('INPUT28', 'PLUG_S.PNG');
} else {
SetBg('INPUT28', 'PLUG_G_S.PNG');
}
if(x[9].getAttribute('VALUE') == '0') {
Input28.style.display = 'none';
} else {
Input28.style.display = 'block';
}
var Input29 = document.getElementById('INPUT29');
if(x[11].getAttribute('VALUE') == '0') {
SetBg('INPUT29', 'PLUG_S.PNG');
} else {
SetBg('INPUT29', 'PLUG_G_S.PNG');
}
if(x[9].getAttribute('VALUE') == '0') {
Input29.style.display = 'none';
} else {
Input29.style.display = 'block';
}
var Input30 = document.getElementById('INPUT30');
if(x[9].getAttribute('VALUE') == '0') {
Input30.style.visibility = 'hidden';
} else {
Input30.style.visibility = 'visible';
}
var Input31 = document.getElementById('INPUT31');
if(x[9].getAttribute('VALUE') == '0') {
Input31.style.visibility = 'hidden';
} else {
Input31.style.visibility = 'visible';
}
var Input32 = document.getElementById('INPUT32');
if(x[13].getAttribute('VALUE') == '0') {
SetBg('INPUT32', 'PLUG_S.PNG');
} else {
SetBg('INPUT32', 'PLUG_G_S.PNG');
}
if(x[12].getAttribute('VALUE') == '0') {
Input32.style.display = 'none';
} else {
Input32.style.display = 'block';
}
var Input33 = document.getElementById('INPUT33');
if(x[14].getAttribute('VALUE') == '0') {
SetBg('INPUT33', 'PLUG_S.PNG');
} else {
SetBg('INPUT33', 'PLUG_G_S.PNG');
}
if(x[12].getAttribute('VALUE') == '0') {
Input33.style.display = 'none';
} else {
Input33.style.display = 'block';
}
var Input34 = document.getElementById('INPUT34');
if(x[15].getAttribute('VALUE') == '0') {
SetBg('INPUT34', 'PLUG_S.PNG');
} else {
SetBg('INPUT34', 'PLUG_G_S.PNG');
}
if(x[12].getAttribute('VALUE') == '0') {
Input34.style.display = 'none';
} else {
Input34.style.display = 'block';
}
var Input35 = document.getElementById('INPUT35');
if(x[16].getAttribute('VALUE') == '0') {
SetBg('INPUT35', 'PLUG_S.PNG');
} else {
SetBg('INPUT35', 'PLUG_G_S.PNG');
}
if(x[12].getAttribute('VALUE') == '0') {
Input35.style.display = 'none';
} else {
Input35.style.display = 'block';
}
var Input36 = document.getElementById('INPUT36');
if(x[17].getAttribute('VALUE') == '0') {
SetBg('INPUT36', 'PLUG_S.PNG');
} else {
SetBg('INPUT36', 'PLUG_G_S.PNG');
}
if(x[12].getAttribute('VALUE') == '0') {
Input36.style.display = 'none';
} else {
Input36.style.display = 'block';
}
var Input37 = document.getElementById('INPUT37');
if(x[18].getAttribute('VALUE') == '0') {
SetBg('INPUT37', 'PLUG_S.PNG');
} else {
SetBg('INPUT37', 'PLUG_G_S.PNG');
}
if(x[12].getAttribute('VALUE') == '0') {
Input37.style.display = 'none';
} else {
Input37.style.display = 'block';
}
var Input38 = document.getElementById('INPUT38');
if(x[12].getAttribute('VALUE') == '0') {
Input38.style.visibility = 'hidden';
} else {
Input38.style.visibility = 'visible';
}
var Input39 = document.getElementById('INPUT39');
if(x[12].getAttribute('VALUE') == '0') {
Input39.style.visibility = 'hidden';
} else {
Input39.style.visibility = 'visible';
}
var Input40 = document.getElementById('INPUT40');
if(x[12].getAttribute('VALUE') == '0') {
Input40.style.visibility = 'hidden';
} else {
Input40.style.visibility = 'visible';
}
var Input41 = document.getElementById('INPUT41');
if(x[12].getAttribute('VALUE') == '0') {
Input41.style.visibility = 'hidden';
} else {
Input41.style.visibility = 'visible';
}
var Input42 = document.getElementById('INPUT42');
if(x[12].getAttribute('VALUE') == '0') {
Input42.style.visibility = 'hidden';
} else {
Input42.style.visibility = 'visible';
}
var Input43 = document.getElementById('INPUT43');
if(x[12].getAttribute('VALUE') == '0') {
Input43.style.visibility = 'hidden';
} else {
Input43.style.visibility = 'visible';
}
} else {document.location.reload(true); return;}
} catch(err) {console.log(err.message)}
if(pd!=''){setTimeout("GetXML('PAGE1.XML','"+pd+"')",1);}else{setTimeout("GetXML('PAGE1.XML')",1000);}}
function FunWatchDog() {
if(gWatchDog > 0 || g_postInProgress) {
gWatchDog = 0;
} else {
document.location.reload(true);
}
setTimeout("FunWatchDog()", 20000);
}

function PostXML1() {
var Input1h = document.getElementById('INPUT1h');
PostXML('PAGE1.XML', encodeURIComponent(Input1h.name+'='+Input1h.value));
}
function PostXML10() {
PostXML('PAGE1.XML', encodeURIComponent('__R10183_USINT_u=0')); 
}
function PostXML11() {
PostXML('PAGE1.XML', encodeURIComponent('__R10183_USINT_u=1')); 
}
function PostXML12() {
PostXML('PAGE1.XML', encodeURIComponent('__R10183_USINT_u=2')); 
}
function PostXML13() {
PostXML('PAGE1.XML', encodeURIComponent('__R10183_USINT_u=3')); 
}
function PostXML15() {
var Input15h = document.getElementById('INPUT15h');
PostXML('PAGE1.XML', encodeURIComponent(Input15h.name+'='+Input15h.value));
}
function PostXML16() {
var Input16 = document.getElementById('INPUT16');
document.getElementById('INPUT16x').style.visibility = 'hidden';if(InputEdited[15]) {
PostXML('PAGE1.XML', encodeURIComponent(Input16.name+'='+Input16.value)); InputEdited[15] = 0;
}
}
function PostXML17() {
var Input17h = document.getElementById('INPUT17h');
PostXML('PAGE1.XML', encodeURIComponent(Input17h.name+'='+Input17h.value));
}
function PostXML30() {
PostXML('PAGE1.XML', encodeURIComponent('__R20267.0_BOOL_i=1')); 
}
function PostXML31() {
PostXML('PAGE1.XML', encodeURIComponent('__R20267.1_BOOL_i=1')); 
}
function PostXML38() {
PostXML('PAGE1.XML', encodeURIComponent('__R9783.0_BOOL_i=1')); 
}
function PostXML39() {
PostXML('PAGE1.XML', encodeURIComponent('__R9783.1_BOOL_i=1')); 
}
function PostXML40() {
PostXML('PAGE1.XML', encodeURIComponent('__R9783.2_BOOL_i=1')); 
}
function PostXML41() {
PostXML('PAGE1.XML', encodeURIComponent('__R9783.3_BOOL_i=1')); 
}
function PostXML42() {
PostXML('PAGE1.XML', encodeURIComponent('__R9783.4_BOOL_i=1')); 
}
function PostXML43() {
PostXML('PAGE1.XML', encodeURIComponent('__R9783.5_BOOL_i=1')); 
}

function PostGlobal() {
}
