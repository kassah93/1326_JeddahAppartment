
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
var access = xmlhttpGET.responseXML.documentElement.getElementsByTagName('ACCESS')[0]; if(!access || access.getAttribute('UCID') != 1584613147) {document.location.reload(true); return;}
var pd = '';
var x=xmlhttpGET.responseXML.documentElement.getElementsByTagName('INPUT');
if(x[0]) {
var Input1 = document.getElementById('INPUT1');
if(x[1].getAttribute('VALUE') == '0') {
SetBg('INPUT1', 'PLUG_S.PNG');
} else {
SetBg('INPUT1', 'PLUG_G_S.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input1.style.display = 'none';
} else {
Input1.style.display = 'block';
}
var Input2 = document.getElementById('INPUT2');
if(x[2].getAttribute('VALUE') != '0') {
Input2.style.visibility = 'hidden';
} else {
Input2.style.visibility = 'visible';
}
var Input3 = document.getElementById('INPUT3');
if(x[0].getAttribute('VALUE') != '0') {
Input3.style.visibility = 'hidden';
} else {
Input3.style.visibility = 'visible';
}
var Input4 = document.getElementById('INPUT4');
if(x[2].getAttribute('VALUE') != '0') {
Input4.style.visibility = 'hidden';
} else {
Input4.style.visibility = 'visible';
}
var Input5 = document.getElementById('INPUT5');
if(x[0].getAttribute('VALUE') != '0') {
Input5.style.visibility = 'hidden';
} else {
Input5.style.visibility = 'visible';
}
var Input6 = document.getElementById('INPUT6');
if(x[2].getAttribute('VALUE') == '0') {
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
if(x[2].getAttribute('VALUE') == '0') {
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
var Input11 = document.getElementById('INPUT11');
var Input12 = document.getElementById('INPUT12');
if(x[3].getAttribute('VALUE') != '0') {
Input12.style.visibility = 'hidden';
} else {
Input12.style.visibility = 'visible';
}
var Input13 = document.getElementById('INPUT13');
if(x[3].getAttribute('VALUE') != '0') {
Input13.style.visibility = 'hidden';
} else {
Input13.style.visibility = 'visible';
}
var Input14 = document.getElementById('INPUT14');
if(x[3].getAttribute('VALUE') == '0') {
Input14.style.visibility = 'hidden';
} else {
Input14.style.visibility = 'visible';
}
var Input15 = document.getElementById('INPUT15');
if(x[3].getAttribute('VALUE') == '0') {
Input15.style.visibility = 'hidden';
} else {
Input15.style.visibility = 'visible';
}
var Input16 = document.getElementById('INPUT16');
var Input17 = document.getElementById('INPUT17');
if(x[4].getAttribute('VALUE') == '0') {
SetBg('INPUT17', 'MOTION_S.PNG');
} else {
SetBg('INPUT17', 'MOTION_S.GIF');
}
var Input18 = document.getElementById('INPUT18');
if(x[5].getAttribute('VALUE') == '0') {
SetBg('INPUT18', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT18', 'IDEA_3_1.PNG');
}
if(x[2].getAttribute('VALUE') == '0') {
Input18.style.display = 'none';
} else {
Input18.style.display = 'block';
}
var Input19 = document.getElementById('INPUT19');
if(x[6].getAttribute('VALUE') == '0') {
SetBg('INPUT19', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT19', 'IDEA_3_1.PNG');
}
if(x[2].getAttribute('VALUE') == '0') {
Input19.style.display = 'none';
} else {
Input19.style.display = 'block';
}
var Input20 = document.getElementById('INPUT20');
if(x[7].getAttribute('VALUE') == '0') {
SetBg('INPUT20', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT20', 'IDEA_3_1.PNG');
}
if(x[2].getAttribute('VALUE') == '0') {
Input20.style.display = 'none';
} else {
Input20.style.display = 'block';
}
var Input21 = document.getElementById('INPUT21');
if(x[8].getAttribute('VALUE') == '0') {
SetBg('INPUT21', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT21', 'IDEA_3_1.PNG');
}
if(x[2].getAttribute('VALUE') == '0') {
Input21.style.display = 'none';
} else {
Input21.style.display = 'block';
}
var Input22 = document.getElementById('INPUT22');
if(x[9].getAttribute('VALUE') == '0') {
SetBg('INPUT22', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT22', 'IDEA_3_1.PNG');
}
if(x[2].getAttribute('VALUE') == '0') {
Input22.style.display = 'none';
} else {
Input22.style.display = 'block';
}
var Input23 = document.getElementById('INPUT23');
if(x[2].getAttribute('VALUE') == '0') {
Input23.style.visibility = 'hidden';
} else {
Input23.style.visibility = 'visible';
}
var Input24 = document.getElementById('INPUT24');
if(x[2].getAttribute('VALUE') == '0') {
Input24.style.visibility = 'hidden';
} else {
Input24.style.visibility = 'visible';
}
var Input25 = document.getElementById('INPUT25');
if(x[2].getAttribute('VALUE') == '0') {
Input25.style.visibility = 'hidden';
} else {
Input25.style.visibility = 'visible';
}
var Input26 = document.getElementById('INPUT26');
if(x[2].getAttribute('VALUE') == '0') {
Input26.style.visibility = 'hidden';
} else {
Input26.style.visibility = 'visible';
}
var Input27 = document.getElementById('INPUT27');
if(x[2].getAttribute('VALUE') == '0') {
Input27.style.visibility = 'hidden';
} else {
Input27.style.visibility = 'visible';
}
var Input28 = document.getElementById('INPUT28');
if(x[0].getAttribute('VALUE') == '0') {
Input28.style.visibility = 'hidden';
} else {
Input28.style.visibility = 'visible';
}
var Input29 = document.getElementById('INPUT29');
var Input29h = document.getElementById('INPUT29h');
if(Input29h) { vz = x[10].getAttribute('VALUE') == '0'; iz = Input29h.value == '0';
if(vz == iz) {
if(vz) {
Input29h.value = '1';
Input29.style.backgroundImage = 'url("IMAGES/OFF.PNG")';
if(Input29.getAttribute('value') != null) {Input29.value = '';} else {}
} else {
Input29h.value = '0';
Input29.style.backgroundImage = 'url("IMAGES/ON.PNG")';
if(Input29.getAttribute('value') != null) {Input29.value = '';
} else {}
}}} else {
if(x[10].getAttribute('VALUE') == '0') {
SetBg('INPUT29', 'OFF.PNG');
} else {
SetBg('INPUT29', 'ON.PNG');
}}
if(x[3].getAttribute('VALUE') == '0') {
Input29.style.display = 'none';
} else {
Input29.style.display = 'block';
}
var Input30 = document.getElementById('INPUT30');
switch(parseInt(x[11].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
default: gTemp = ''; }
if(Input30.style.backgroundImage != gTemp) Input30.style.backgroundImage = gTemp;
if(x[3].getAttribute('VALUE') == '0') {
Input30.style.visibility = 'hidden';
} else {
Input30.style.visibility = 'visible';
}
var Input31 = document.getElementById('INPUT31');
switch(parseInt(x[11].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
default: gTemp = ''; }
if(Input31.style.backgroundImage != gTemp) Input31.style.backgroundImage = gTemp;
if(x[3].getAttribute('VALUE') == '0') {
Input31.style.visibility = 'hidden';
} else {
Input31.style.visibility = 'visible';
}
var Input32 = document.getElementById('INPUT32');
switch(parseInt(x[11].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
default: gTemp = ''; }
if(Input32.style.backgroundImage != gTemp) Input32.style.backgroundImage = gTemp;
if(x[3].getAttribute('VALUE') == '0') {
Input32.style.visibility = 'hidden';
} else {
Input32.style.visibility = 'visible';
}
var Input33 = document.getElementById('INPUT33');
switch(parseInt(x[11].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
default: gTemp = ''; }
if(Input33.style.backgroundImage != gTemp) Input33.style.backgroundImage = gTemp;
if(x[3].getAttribute('VALUE') == '0') {
Input33.style.visibility = 'hidden';
} else {
Input33.style.visibility = 'visible';
}
var Input34 = document.getElementById('INPUT34');
if(x[3].getAttribute('VALUE') == '0') {
Input34.style.visibility = 'hidden';
} else {
Input34.style.visibility = 'visible';
}
var Input35 = document.getElementById('INPUT35');
if(x[3].getAttribute('VALUE') == '0') {
Input35.style.visibility = 'hidden';
} else {
Input35.style.visibility = 'visible';
}
var Input36 = document.getElementById('INPUT36');
if(x[3].getAttribute('VALUE') == '0') {
Input36.style.visibility = 'hidden';
} else {
Input36.style.visibility = 'visible';
}
var Input37 = document.getElementById('INPUT37');
if(x[3].getAttribute('VALUE') == '0') {
Input37.style.visibility = 'hidden';
} else {
Input37.style.visibility = 'visible';
}
var Input38 = document.getElementById('INPUT38');
switch(parseInt(x[12].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/FAN_OFF.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/80.GIF")'; break;
case 2 : gTemp = 'url("IMAGES/50.GIF")'; break;
case 3 : gTemp = 'url("IMAGES/50.GIF")'; break;
case 4 : gTemp = 'url("IMAGES/20.GIF")'; break;
default: gTemp = ''; }
if(Input38.style.backgroundImage != gTemp) Input38.style.backgroundImage = gTemp;
if(x[3].getAttribute('VALUE') == '0') {
Input38.style.visibility = 'hidden';
} else {
Input38.style.visibility = 'visible';
}
var Input39 = document.getElementById('INPUT39');
var Input39h = document.getElementById('INPUT39h');
if(Input39h) { vz = x[13].getAttribute('VALUE') == '0'; iz = Input39h.value == '0';
if(vz == iz) {
if(vz) {
Input39h.value = '1';
Input39.style.backgroundImage = 'url("IMAGES/AIR-CON1.PNG")';
if(Input39.getAttribute('value') != null) {Input39.value = '';} else {}
} else {
Input39h.value = '0';
Input39.style.backgroundImage = 'url("IMAGES/VENTILA1.PNG")';
if(Input39.getAttribute('value') != null) {Input39.value = '';
} else {}
}}} else {
if(x[13].getAttribute('VALUE') == '0') {
SetBg('INPUT39', 'AIR-CON1.PNG');
} else {
SetBg('INPUT39', 'VENTILA1.PNG');
}}
if(x[3].getAttribute('VALUE') == '0') {
Input39.style.display = 'none';
} else {
Input39.style.display = 'block';
}
var Input40 = document.getElementById('INPUT40');
if(!InputEdited[39]) {
UpdateValue(Input40, x[14], '#3C3C3C');}
var Input40x = document.getElementById('INPUT40x');
if(x[3].getAttribute('VALUE') == '0') {
if(Input40x) Input40x.style.visibility = 'hidden';
Input40.style.display = 'none';
} else {
Input40.style.display = 'inline';
}
var Input41 = document.getElementById('INPUT41');
var Input41h = document.getElementById('INPUT41h');
if(Input41h) { vz = x[15].getAttribute('VALUE') == '0'; iz = Input41h.value == '0';
if(vz == iz) {
if(vz) {
Input41h.value = '1';
Input41.style.backgroundImage = 'url("IMAGES/CONTROL-.PNG")';
if(Input41.getAttribute('value') != null) {Input41.value = '';} else {}
} else {
Input41h.value = '0';
Input41.style.backgroundImage = 'url("IMAGES/CONTROL1.PNG")';
if(Input41.getAttribute('value') != null) {Input41.value = '';
} else {}
}}} else {
if(x[15].getAttribute('VALUE') == '0') {
SetBg('INPUT41', 'CONTROL-.PNG');
} else {
SetBg('INPUT41', 'CONTROL1.PNG');
}}
if(x[3].getAttribute('VALUE') == '0') {
Input41.style.display = 'none';
} else {
Input41.style.display = 'block';
}
var Input42 = document.getElementById('INPUT42');
if(x[3].getAttribute('VALUE') == '0') {
Input42.style.visibility = 'hidden';
} else {
Input42.style.visibility = 'visible';
}
var Input43 = document.getElementById('INPUT43');
Input43.value = x[16].getAttribute('VALUE');
if(x[3].getAttribute('VALUE') == '0') {
Input43.style.visibility = 'hidden';
} else {
Input43.style.visibility = 'visible';
}
var Input44 = document.getElementById('INPUT44');
if(x[3].getAttribute('VALUE') == '0') {
Input44.style.visibility = 'hidden';
} else {
Input44.style.visibility = 'visible';
}
var Input45 = document.getElementById('INPUT45');
if(x[3].getAttribute('VALUE') == '0') {
Input45.style.visibility = 'hidden';
} else {
Input45.style.visibility = 'visible';
}
var Input46 = document.getElementById('INPUT46');
if(x[3].getAttribute('VALUE') == '0') {
Input46.style.visibility = 'hidden';
} else {
Input46.style.visibility = 'visible';
}
var Input47 = document.getElementById('INPUT47');
if(x[3].getAttribute('VALUE') == '0') {
Input47.style.visibility = 'hidden';
} else {
Input47.style.visibility = 'visible';
}
var Input48 = document.getElementById('INPUT48');
if(x[3].getAttribute('VALUE') == '0') {
Input48.style.visibility = 'hidden';
} else {
Input48.style.visibility = 'visible';
}
var Input49 = document.getElementById('INPUT49');
if(x[13].getAttribute('VALUE') == '0') {
SetBg('INPUT49', 'TRANSPE2.PNG');
Input49.innerHTML = 'Cooling';
} else {
SetBg('INPUT49', 'TRANSPE2.PNG');
Input49.innerHTML = 'Fan only';
}
if(x[3].getAttribute('VALUE') == '0') {
Input49.style.display = 'none';
} else {
Input49.style.display = 'block';
}
var Input50 = document.getElementById('INPUT50');
if(x[3].getAttribute('VALUE') == '0') {
Input50.style.visibility = 'hidden';
} else {
Input50.style.visibility = 'visible';
}
var Input51 = document.getElementById('INPUT51');
if(x[3].getAttribute('VALUE') == '0') {
Input51.style.visibility = 'hidden';
} else {
Input51.style.visibility = 'visible';
}
var Input52 = document.getElementById('INPUT52');
if(x[3].getAttribute('VALUE') == '0') {
Input52.style.visibility = 'hidden';
} else {
Input52.style.visibility = 'visible';
}
var Input53 = document.getElementById('INPUT53');
if(x[3].getAttribute('VALUE') == '0') {
Input53.style.visibility = 'hidden';
} else {
Input53.style.visibility = 'visible';
}
} else {document.location.reload(true); return;}
} catch(err) {console.log(err.message)}
if(pd!=''){setTimeout("GetXML('DINING.XML','"+pd+"')",1);}else{setTimeout("GetXML('DINING.XML')",1000);}}
function FunWatchDog() {
if(gWatchDog > 0 || g_postInProgress) {
gWatchDog = 0;
} else {
document.location.reload(true);
}
setTimeout("FunWatchDog()", 20000);
}

function PostXML10() {
PostXML('DINING.XML', encodeURIComponent('__R3278_USINT_u=0')); 
}
function PostXML11() {
PostXML('DINING.XML', encodeURIComponent('__R3278_USINT_u=1')); 
}
function PostXML16() {
PostXML('DINING.XML', encodeURIComponent('__R3278_USINT_u=2')); 
}
function PostXML23() {
PostXML('DINING.XML', encodeURIComponent('__R6436.0_BOOL_i=1')); 
}
function PostXML24() {
PostXML('DINING.XML', encodeURIComponent('__R6436.1_BOOL_i=1')); 
}
function PostXML25() {
PostXML('DINING.XML', encodeURIComponent('__R6436.2_BOOL_i=1')); 
}
function PostXML26() {
PostXML('DINING.XML', encodeURIComponent('__R6436.3_BOOL_i=1')); 
}
function PostXML27() {
PostXML('DINING.XML', encodeURIComponent('__R6436.4_BOOL_i=1')); 
}
function PostXML28() {
PostXML('DINING.XML', encodeURIComponent('__R6456.0_BOOL_i=1')); 
}
function PostXML29() {
var Input29h = document.getElementById('INPUT29h');
PostXML('DINING.XML', encodeURIComponent(Input29h.name+'='+Input29h.value));
}
function PostXML39() {
var Input39h = document.getElementById('INPUT39h');
PostXML('DINING.XML', encodeURIComponent(Input39h.name+'='+Input39h.value));
}
function PostXML40() {
var Input40 = document.getElementById('INPUT40');
document.getElementById('INPUT40x').style.visibility = 'hidden';if(InputEdited[39]) {
PostXML('DINING.XML', encodeURIComponent(Input40.name+'='+Input40.value)); InputEdited[39] = 0;
}
}
function PostXML41() {
var Input41h = document.getElementById('INPUT41h');
PostXML('DINING.XML', encodeURIComponent(Input41h.name+'='+Input41h.value));
}
function PostXML50() {
PostXML('DINING.XML', encodeURIComponent('__R6584_USINT_u=0')); 
}
function PostXML51() {
PostXML('DINING.XML', encodeURIComponent('__R6584_USINT_u=1')); 
}
function PostXML52() {
PostXML('DINING.XML', encodeURIComponent('__R6584_USINT_u=2')); 
}
function PostXML53() {
PostXML('DINING.XML', encodeURIComponent('__R6584_USINT_u=3')); 
}

function PostGlobal() {
}
