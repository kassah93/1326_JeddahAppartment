
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
var access = xmlhttpGET.responseXML.documentElement.getElementsByTagName('ACCESS')[0]; if(!access || access.getAttribute('UCID') != 1585234692) {document.location.reload(true); return;}
var pd = '';
var x=xmlhttpGET.responseXML.documentElement.getElementsByTagName('INPUT');
if(x[0]) {
var Input1 = document.getElementById('INPUT1');
if(x[0].getAttribute('VALUE') != '0') {
Input1.style.visibility = 'hidden';
} else {
Input1.style.visibility = 'visible';
}
var Input2 = document.getElementById('INPUT2');
if(x[1].getAttribute('VALUE') != '0') {
Input2.style.visibility = 'hidden';
} else {
Input2.style.visibility = 'visible';
}
var Input3 = document.getElementById('INPUT3');
if(x[2].getAttribute('VALUE') != '0') {
Input3.style.visibility = 'hidden';
} else {
Input3.style.visibility = 'visible';
}
var Input4 = document.getElementById('INPUT4');
if(x[0].getAttribute('VALUE') != '0') {
Input4.style.visibility = 'hidden';
} else {
Input4.style.visibility = 'visible';
}
var Input5 = document.getElementById('INPUT5');
if(x[1].getAttribute('VALUE') != '0') {
Input5.style.visibility = 'hidden';
} else {
Input5.style.visibility = 'visible';
}
var Input6 = document.getElementById('INPUT6');
if(x[2].getAttribute('VALUE') != '0') {
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
if(x[1].getAttribute('VALUE') == '0') {
Input8.style.visibility = 'hidden';
} else {
Input8.style.visibility = 'visible';
}
var Input9 = document.getElementById('INPUT9');
if(x[2].getAttribute('VALUE') == '0') {
Input9.style.visibility = 'hidden';
} else {
Input9.style.visibility = 'visible';
}
var Input10 = document.getElementById('INPUT10');
if(x[0].getAttribute('VALUE') == '0') {
Input10.style.visibility = 'hidden';
} else {
Input10.style.visibility = 'visible';
}
var Input11 = document.getElementById('INPUT11');
if(x[1].getAttribute('VALUE') == '0') {
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
var Input14 = document.getElementById('INPUT14');
var Input15 = document.getElementById('INPUT15');
var Input16 = document.getElementById('INPUT16');
if(x[3].getAttribute('VALUE') == '0') {
SetBg('INPUT16', 'MOTION_S.PNG');
} else {
SetBg('INPUT16', 'MOTION_S.GIF');
}
var Input17 = document.getElementById('INPUT17');
if(x[4].getAttribute('VALUE') == '0') {
SetBg('INPUT17', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT17', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input17.style.display = 'none';
} else {
Input17.style.display = 'block';
}
var Input18 = document.getElementById('INPUT18');
if(x[5].getAttribute('VALUE') == '0') {
SetBg('INPUT18', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT18', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
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
if(x[0].getAttribute('VALUE') == '0') {
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
if(x[0].getAttribute('VALUE') == '0') {
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
if(x[0].getAttribute('VALUE') == '0') {
Input21.style.display = 'none';
} else {
Input21.style.display = 'block';
}
var Input22 = document.getElementById('INPUT22');
if(x[9].getAttribute('VALUE') == '0') {
SetBg('INPUT22', 'PLUG_S.PNG');
} else {
SetBg('INPUT22', 'PLUG_G_S.PNG');
}
if(x[1].getAttribute('VALUE') == '0') {
Input22.style.display = 'none';
} else {
Input22.style.display = 'block';
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
if(x[0].getAttribute('VALUE') == '0') {
Input25.style.visibility = 'hidden';
} else {
Input25.style.visibility = 'visible';
}
var Input26 = document.getElementById('INPUT26');
if(x[0].getAttribute('VALUE') == '0') {
Input26.style.visibility = 'hidden';
} else {
Input26.style.visibility = 'visible';
}
var Input27 = document.getElementById('INPUT27');
if(x[0].getAttribute('VALUE') == '0') {
Input27.style.visibility = 'hidden';
} else {
Input27.style.visibility = 'visible';
}
var Input28 = document.getElementById('INPUT28');
if(x[1].getAttribute('VALUE') == '0') {
Input28.style.visibility = 'hidden';
} else {
Input28.style.visibility = 'visible';
}
var Input29 = document.getElementById('INPUT29');
switch(parseInt(x[10].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/WINDOW9.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/WINDOW10.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/WINDOW11.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/WINDOW12.PNG")'; break;
case 4 : gTemp = 'url("IMAGES/WINDOW13.PNG")'; break;
default: gTemp = ''; }
if(Input29.style.backgroundImage != gTemp) Input29.style.backgroundImage = gTemp;
if(x[2].getAttribute('VALUE') == '0') {
Input29.style.visibility = 'hidden';
} else {
Input29.style.visibility = 'visible';
}
var Input30 = document.getElementById('INPUT30');
if(!InputEdited[29]) {
UpdateValue(Input30, x[11], '#000000');}
if(x[2].getAttribute('VALUE') == '0') {
Input30.style.visibility = 'hidden';
} else {
Input30.style.visibility = 'visible';
}
var Input31 = document.getElementById('INPUT31');
if(x[2].getAttribute('VALUE') == '0') {
Input31.style.visibility = 'hidden';
} else {
Input31.style.visibility = 'visible';
}
var Input32 = document.getElementById('INPUT32');
if(x[12].getAttribute('VALUE') == '0') {
SetBg('INPUT32', 'BTN_BL_5.PNG');
} else {
SetBg('INPUT32', 'BTN_GREE.PNG');
}
if(x[2].getAttribute('VALUE') == '0') {
Input32.style.display = 'none';
} else {
Input32.style.display = 'block';
}
var Input33 = document.getElementById('INPUT33');
if(x[13].getAttribute('VALUE') == '0') {
SetBg('INPUT33', 'BTN_BL_7.PNG');
} else {
SetBg('INPUT33', 'BTN_GRE1.PNG');
}
if(x[2].getAttribute('VALUE') == '0') {
Input33.style.display = 'none';
} else {
Input33.style.display = 'block';
}
var Input34 = document.getElementById('INPUT34');
switch(parseInt(x[14].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/WINDOW9.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/WINDOW10.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/WINDOW11.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/WINDOW12.PNG")'; break;
case 4 : gTemp = 'url("IMAGES/WINDOW13.PNG")'; break;
default: gTemp = ''; }
if(Input34.style.backgroundImage != gTemp) Input34.style.backgroundImage = gTemp;
if(x[2].getAttribute('VALUE') == '0') {
Input34.style.visibility = 'hidden';
} else {
Input34.style.visibility = 'visible';
}
var Input35 = document.getElementById('INPUT35');
if(!InputEdited[34]) {
UpdateValue(Input35, x[15], '#000000');}
if(x[2].getAttribute('VALUE') == '0') {
Input35.style.visibility = 'hidden';
} else {
Input35.style.visibility = 'visible';
}
var Input36 = document.getElementById('INPUT36');
if(x[2].getAttribute('VALUE') == '0') {
Input36.style.visibility = 'hidden';
} else {
Input36.style.visibility = 'visible';
}
var Input37 = document.getElementById('INPUT37');
if(x[16].getAttribute('VALUE') == '0') {
SetBg('INPUT37', 'BTN_BL_5.PNG');
} else {
SetBg('INPUT37', 'BTN_GREE.PNG');
}
if(x[2].getAttribute('VALUE') == '0') {
Input37.style.display = 'none';
} else {
Input37.style.display = 'block';
}
var Input38 = document.getElementById('INPUT38');
if(x[17].getAttribute('VALUE') == '0') {
SetBg('INPUT38', 'BTN_BL_7.PNG');
} else {
SetBg('INPUT38', 'BTN_GRE1.PNG');
}
if(x[2].getAttribute('VALUE') == '0') {
Input38.style.display = 'none';
} else {
Input38.style.display = 'block';
}
var Input39 = document.getElementById('INPUT39');
if(x[2].getAttribute('VALUE') == '0') {
Input39.style.visibility = 'hidden';
} else {
Input39.style.visibility = 'visible';
}
var Input40 = document.getElementById('INPUT40');
if(x[2].getAttribute('VALUE') == '0') {
Input40.style.visibility = 'hidden';
} else {
Input40.style.visibility = 'visible';
}
var Input41 = document.getElementById('INPUT41');
if(x[2].getAttribute('VALUE') == '0') {
Input41.style.visibility = 'hidden';
} else {
Input41.style.visibility = 'visible';
}
var Input42 = document.getElementById('INPUT42');
if(x[2].getAttribute('VALUE') == '0') {
Input42.style.visibility = 'hidden';
} else {
Input42.style.visibility = 'visible';
}
} else {document.location.reload(true); return;}
} catch(err) {console.log(err.message)}
if(pd!=''){setTimeout("GetXML('LIVING.XML','"+pd+"')",1);}else{setTimeout("GetXML('LIVING.XML')",1000);}}
function FunWatchDog() {
if(gWatchDog > 0 || g_postInProgress) {
gWatchDog = 0;
} else {
document.location.reload(true);
}
setTimeout("FunWatchDog()", 20000);
}

function PostXML13() {
PostXML('LIVING.XML', encodeURIComponent('__R6964_USINT_u=0')); 
}
function PostXML14() {
PostXML('LIVING.XML', encodeURIComponent('__R6964_USINT_u=1')); 
}
function PostXML15() {
PostXML('LIVING.XML', encodeURIComponent('__R6964_USINT_u=2')); 
}
function PostXML23() {
PostXML('LIVING.XML', encodeURIComponent('__R10158.0_BOOL_i=1')); 
}
function PostXML24() {
PostXML('LIVING.XML', encodeURIComponent('__R10158.1_BOOL_i=1')); 
}
function PostXML25() {
PostXML('LIVING.XML', encodeURIComponent('__R10158.2_BOOL_i=1')); 
}
function PostXML26() {
PostXML('LIVING.XML', encodeURIComponent('__R10158.3_BOOL_i=1')); 
}
function PostXML27() {
PostXML('LIVING.XML', encodeURIComponent('__R10158.4_BOOL_i=1')); 
}
function PostXML28() {
PostXML('LIVING.XML', encodeURIComponent('__R10178.0_BOOL_i=1')); 
}
function PostXML39() {
PostXML('LIVING.XML', encodeURIComponent('__R10241.0_BOOL_i=1')); 
}
function PostXML40() {
PostXML('LIVING.XML', encodeURIComponent('__R10242.0_BOOL_i=1')); 
}
function PostXML41() {
PostXML('LIVING.XML', encodeURIComponent('__R10241.1_BOOL_i=1')); 
}
function PostXML42() {
PostXML('LIVING.XML', encodeURIComponent('__R10242.1_BOOL_i=1')); 
}

function PostGlobal() {
var Input30 = document.getElementById('INPUT30');
var Input35 = document.getElementById('INPUT35');
PostXML('LIVING.XML', (InputEdited[29] ? encodeURIComponent(Input30.name)+'='+encodeURIComponent(Input30.value)+'&' : '')+(InputEdited[34] ? encodeURIComponent(Input35.name)+'='+encodeURIComponent(Input35.value)+'&' : ''));
InputEdited[29]=0;
InputEdited[34]=0;
}
