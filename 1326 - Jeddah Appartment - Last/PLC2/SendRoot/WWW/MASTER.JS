
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
var access = xmlhttpGET.responseXML.documentElement.getElementsByTagName('ACCESS')[0]; if(!access || access.getAttribute('UCID') != 1584613324) {document.location.reload(true); return;}
var pd = '';
var x=xmlhttpGET.responseXML.documentElement.getElementsByTagName('INPUT');
if(x[0]) {
var Input1 = document.getElementById('INPUT1');
if(x[1].getAttribute('VALUE') == '0') {
SetBg('INPUT1', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT1', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input1.style.display = 'none';
} else {
Input1.style.display = 'block';
}
var Input2 = document.getElementById('INPUT2');
if(x[2].getAttribute('VALUE') == '0') {
SetBg('INPUT2', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT2', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input2.style.display = 'none';
} else {
Input2.style.display = 'block';
}
var Input3 = document.getElementById('INPUT3');
if(x[3].getAttribute('VALUE') == '0') {
SetBg('INPUT3', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT3', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input3.style.display = 'none';
} else {
Input3.style.display = 'block';
}
var Input4 = document.getElementById('INPUT4');
if(x[4].getAttribute('VALUE') == '0') {
SetBg('INPUT4', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT4', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input4.style.display = 'none';
} else {
Input4.style.display = 'block';
}
var Input5 = document.getElementById('INPUT5');
if(x[5].getAttribute('VALUE') == '0') {
SetBg('INPUT5', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT5', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input5.style.display = 'none';
} else {
Input5.style.display = 'block';
}
var Input6 = document.getElementById('INPUT6');
if(x[6].getAttribute('VALUE') == '0') {
SetBg('INPUT6', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT6', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input6.style.display = 'none';
} else {
Input6.style.display = 'block';
}
var Input7 = document.getElementById('INPUT7');
if(x[7].getAttribute('VALUE') == '0') {
SetBg('INPUT7', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT7', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input7.style.display = 'none';
} else {
Input7.style.display = 'block';
}
var Input8 = document.getElementById('INPUT8');
if(x[8].getAttribute('VALUE') == '0') {
SetBg('INPUT8', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT8', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input8.style.display = 'none';
} else {
Input8.style.display = 'block';
}
var Input9 = document.getElementById('INPUT9');
if(x[0].getAttribute('VALUE') != '0') {
Input9.style.visibility = 'hidden';
} else {
Input9.style.visibility = 'visible';
}
var Input10 = document.getElementById('INPUT10');
if(x[9].getAttribute('VALUE') != '0') {
Input10.style.visibility = 'hidden';
} else {
Input10.style.visibility = 'visible';
}
var Input11 = document.getElementById('INPUT11');
if(x[10].getAttribute('VALUE') != '0') {
Input11.style.visibility = 'hidden';
} else {
Input11.style.visibility = 'visible';
}
var Input12 = document.getElementById('INPUT12');
if(x[0].getAttribute('VALUE') != '0') {
Input12.style.visibility = 'hidden';
} else {
Input12.style.visibility = 'visible';
}
var Input13 = document.getElementById('INPUT13');
if(x[9].getAttribute('VALUE') != '0') {
Input13.style.visibility = 'hidden';
} else {
Input13.style.visibility = 'visible';
}
var Input14 = document.getElementById('INPUT14');
if(x[10].getAttribute('VALUE') != '0') {
Input14.style.visibility = 'hidden';
} else {
Input14.style.visibility = 'visible';
}
var Input15 = document.getElementById('INPUT15');
if(x[0].getAttribute('VALUE') == '0') {
Input15.style.visibility = 'hidden';
} else {
Input15.style.visibility = 'visible';
}
var Input16 = document.getElementById('INPUT16');
if(x[9].getAttribute('VALUE') == '0') {
Input16.style.visibility = 'hidden';
} else {
Input16.style.visibility = 'visible';
}
var Input17 = document.getElementById('INPUT17');
if(x[10].getAttribute('VALUE') == '0') {
Input17.style.visibility = 'hidden';
} else {
Input17.style.visibility = 'visible';
}
var Input18 = document.getElementById('INPUT18');
if(x[0].getAttribute('VALUE') == '0') {
Input18.style.visibility = 'hidden';
} else {
Input18.style.visibility = 'visible';
}
var Input19 = document.getElementById('INPUT19');
if(x[9].getAttribute('VALUE') == '0') {
Input19.style.visibility = 'hidden';
} else {
Input19.style.visibility = 'visible';
}
var Input20 = document.getElementById('INPUT20');
if(x[10].getAttribute('VALUE') == '0') {
Input20.style.visibility = 'hidden';
} else {
Input20.style.visibility = 'visible';
}
var Input21 = document.getElementById('INPUT21');
var Input22 = document.getElementById('INPUT22');
var Input23 = document.getElementById('INPUT23');
var Input24 = document.getElementById('INPUT24');
if(x[11].getAttribute('VALUE') != '0') {
Input24.style.visibility = 'hidden';
} else {
Input24.style.visibility = 'visible';
}
var Input25 = document.getElementById('INPUT25');
if(x[11].getAttribute('VALUE') != '0') {
Input25.style.visibility = 'hidden';
} else {
Input25.style.visibility = 'visible';
}
var Input26 = document.getElementById('INPUT26');
if(x[11].getAttribute('VALUE') == '0') {
Input26.style.visibility = 'hidden';
} else {
Input26.style.visibility = 'visible';
}
var Input27 = document.getElementById('INPUT27');
if(x[11].getAttribute('VALUE') == '0') {
Input27.style.visibility = 'hidden';
} else {
Input27.style.visibility = 'visible';
}
var Input28 = document.getElementById('INPUT28');
var Input29 = document.getElementById('INPUT29');
if(x[10].getAttribute('VALUE') == '0') {
Input29.style.visibility = 'hidden';
} else {
Input29.style.visibility = 'visible';
}
var Input30 = document.getElementById('INPUT30');
if(x[10].getAttribute('VALUE') == '0') {
Input30.style.visibility = 'hidden';
} else {
Input30.style.visibility = 'visible';
}
var Input31 = document.getElementById('INPUT31');
if(x[10].getAttribute('VALUE') == '0') {
Input31.style.visibility = 'hidden';
} else {
Input31.style.visibility = 'visible';
}
var Input32 = document.getElementById('INPUT32');
if(x[10].getAttribute('VALUE') == '0') {
Input32.style.display = 'none';
} else {
Input32.style.display = 'block';
}
var Input33 = document.getElementById('INPUT33');
if(x[10].getAttribute('VALUE') == '0') {
Input33.style.display = 'none';
} else {
Input33.style.display = 'block';
}
var Input34 = document.getElementById('INPUT34');
if(x[10].getAttribute('VALUE') == '0') {
Input34.style.visibility = 'hidden';
} else {
Input34.style.visibility = 'visible';
}
var Input35 = document.getElementById('INPUT35');
if(x[10].getAttribute('VALUE') == '0') {
Input35.style.visibility = 'hidden';
} else {
Input35.style.visibility = 'visible';
}
var Input36 = document.getElementById('INPUT36');
if(x[10].getAttribute('VALUE') == '0') {
Input36.style.visibility = 'hidden';
} else {
Input36.style.visibility = 'visible';
}
var Input37 = document.getElementById('INPUT37');
if(x[10].getAttribute('VALUE') == '0') {
Input37.style.display = 'none';
} else {
Input37.style.display = 'block';
}
var Input38 = document.getElementById('INPUT38');
if(x[10].getAttribute('VALUE') == '0') {
Input38.style.display = 'none';
} else {
Input38.style.display = 'block';
}
var Input39 = document.getElementById('INPUT39');
if(x[12].getAttribute('VALUE') == '0') {
SetBg('INPUT39', 'PLUG_S.PNG');
} else {
SetBg('INPUT39', 'PLUG_G_S.PNG');
}
if(x[9].getAttribute('VALUE') == '0') {
Input39.style.display = 'none';
} else {
Input39.style.display = 'block';
}
var Input40 = document.getElementById('INPUT40');
if(x[13].getAttribute('VALUE') == '0') {
SetBg('INPUT40', 'MOTION_S.PNG');
} else {
SetBg('INPUT40', 'MOTION_S.GIF');
}
var Input41 = document.getElementById('INPUT41');
if(x[0].getAttribute('VALUE') == '0') {
Input41.style.visibility = 'hidden';
} else {
Input41.style.visibility = 'visible';
}
var Input42 = document.getElementById('INPUT42');
if(x[0].getAttribute('VALUE') == '0') {
Input42.style.visibility = 'hidden';
} else {
Input42.style.visibility = 'visible';
}
var Input43 = document.getElementById('INPUT43');
if(x[0].getAttribute('VALUE') == '0') {
Input43.style.visibility = 'hidden';
} else {
Input43.style.visibility = 'visible';
}
var Input44 = document.getElementById('INPUT44');
if(x[0].getAttribute('VALUE') == '0') {
Input44.style.visibility = 'hidden';
} else {
Input44.style.visibility = 'visible';
}
var Input45 = document.getElementById('INPUT45');
if(x[0].getAttribute('VALUE') == '0') {
Input45.style.visibility = 'hidden';
} else {
Input45.style.visibility = 'visible';
}
var Input46 = document.getElementById('INPUT46');
if(x[0].getAttribute('VALUE') == '0') {
Input46.style.visibility = 'hidden';
} else {
Input46.style.visibility = 'visible';
}
var Input47 = document.getElementById('INPUT47');
if(x[0].getAttribute('VALUE') == '0') {
Input47.style.visibility = 'hidden';
} else {
Input47.style.visibility = 'visible';
}
var Input48 = document.getElementById('INPUT48');
if(x[0].getAttribute('VALUE') == '0') {
Input48.style.visibility = 'hidden';
} else {
Input48.style.visibility = 'visible';
}
var Input49 = document.getElementById('INPUT49');
if(x[9].getAttribute('VALUE') == '0') {
Input49.style.visibility = 'hidden';
} else {
Input49.style.visibility = 'visible';
}
var Input50 = document.getElementById('INPUT50');
var Input50h = document.getElementById('INPUT50h');
if(Input50h) { vz = x[14].getAttribute('VALUE') == '0'; iz = Input50h.value == '0';
if(vz == iz) {
if(vz) {
Input50h.value = '1';
Input50.style.backgroundImage = 'url("IMAGES/OFF.PNG")';
if(Input50.getAttribute('value') != null) {Input50.value = '';} else {}
} else {
Input50h.value = '0';
Input50.style.backgroundImage = 'url("IMAGES/ON.PNG")';
if(Input50.getAttribute('value') != null) {Input50.value = '';
} else {}
}}} else {
if(x[14].getAttribute('VALUE') == '0') {
SetBg('INPUT50', 'OFF.PNG');
} else {
SetBg('INPUT50', 'ON.PNG');
}}
if(x[11].getAttribute('VALUE') == '0') {
Input50.style.display = 'none';
} else {
Input50.style.display = 'block';
}
var Input51 = document.getElementById('INPUT51');
switch(parseInt(x[15].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
default: gTemp = ''; }
if(Input51.style.backgroundImage != gTemp) Input51.style.backgroundImage = gTemp;
if(x[11].getAttribute('VALUE') == '0') {
Input51.style.visibility = 'hidden';
} else {
Input51.style.visibility = 'visible';
}
var Input52 = document.getElementById('INPUT52');
switch(parseInt(x[15].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
default: gTemp = ''; }
if(Input52.style.backgroundImage != gTemp) Input52.style.backgroundImage = gTemp;
if(x[11].getAttribute('VALUE') == '0') {
Input52.style.visibility = 'hidden';
} else {
Input52.style.visibility = 'visible';
}
var Input53 = document.getElementById('INPUT53');
switch(parseInt(x[15].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
default: gTemp = ''; }
if(Input53.style.backgroundImage != gTemp) Input53.style.backgroundImage = gTemp;
if(x[11].getAttribute('VALUE') == '0') {
Input53.style.visibility = 'hidden';
} else {
Input53.style.visibility = 'visible';
}
var Input54 = document.getElementById('INPUT54');
switch(parseInt(x[15].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
default: gTemp = ''; }
if(Input54.style.backgroundImage != gTemp) Input54.style.backgroundImage = gTemp;
if(x[11].getAttribute('VALUE') == '0') {
Input54.style.visibility = 'hidden';
} else {
Input54.style.visibility = 'visible';
}
var Input55 = document.getElementById('INPUT55');
if(x[11].getAttribute('VALUE') == '0') {
Input55.style.visibility = 'hidden';
} else {
Input55.style.visibility = 'visible';
}
var Input56 = document.getElementById('INPUT56');
if(x[11].getAttribute('VALUE') == '0') {
Input56.style.visibility = 'hidden';
} else {
Input56.style.visibility = 'visible';
}
var Input57 = document.getElementById('INPUT57');
if(x[11].getAttribute('VALUE') == '0') {
Input57.style.visibility = 'hidden';
} else {
Input57.style.visibility = 'visible';
}
var Input58 = document.getElementById('INPUT58');
if(x[11].getAttribute('VALUE') == '0') {
Input58.style.visibility = 'hidden';
} else {
Input58.style.visibility = 'visible';
}
var Input59 = document.getElementById('INPUT59');
switch(parseInt(x[16].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/FAN_OFF.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/80.GIF")'; break;
case 2 : gTemp = 'url("IMAGES/50.GIF")'; break;
case 3 : gTemp = 'url("IMAGES/50.GIF")'; break;
case 4 : gTemp = 'url("IMAGES/20.GIF")'; break;
default: gTemp = ''; }
if(Input59.style.backgroundImage != gTemp) Input59.style.backgroundImage = gTemp;
if(x[11].getAttribute('VALUE') == '0') {
Input59.style.visibility = 'hidden';
} else {
Input59.style.visibility = 'visible';
}
var Input60 = document.getElementById('INPUT60');
var Input60h = document.getElementById('INPUT60h');
if(Input60h) { vz = x[17].getAttribute('VALUE') == '0'; iz = Input60h.value == '0';
if(vz == iz) {
if(vz) {
Input60h.value = '1';
Input60.style.backgroundImage = 'url("IMAGES/AIR-CON1.PNG")';
if(Input60.getAttribute('value') != null) {Input60.value = '';} else {}
} else {
Input60h.value = '0';
Input60.style.backgroundImage = 'url("IMAGES/VENTILA1.PNG")';
if(Input60.getAttribute('value') != null) {Input60.value = '';
} else {}
}}} else {
if(x[17].getAttribute('VALUE') == '0') {
SetBg('INPUT60', 'AIR-CON1.PNG');
} else {
SetBg('INPUT60', 'VENTILA1.PNG');
}}
if(x[11].getAttribute('VALUE') == '0') {
Input60.style.display = 'none';
} else {
Input60.style.display = 'block';
}
var Input61 = document.getElementById('INPUT61');
if(!InputEdited[60]) {
UpdateValue(Input61, x[18], '#3C3C3C');}
var Input61x = document.getElementById('INPUT61x');
if(x[11].getAttribute('VALUE') == '0') {
if(Input61x) Input61x.style.visibility = 'hidden';
Input61.style.display = 'none';
} else {
Input61.style.display = 'inline';
}
var Input62 = document.getElementById('INPUT62');
var Input62h = document.getElementById('INPUT62h');
if(Input62h) { vz = x[19].getAttribute('VALUE') == '0'; iz = Input62h.value == '0';
if(vz == iz) {
if(vz) {
Input62h.value = '1';
Input62.style.backgroundImage = 'url("IMAGES/CONTROL-.PNG")';
if(Input62.getAttribute('value') != null) {Input62.value = '';} else {}
} else {
Input62h.value = '0';
Input62.style.backgroundImage = 'url("IMAGES/CONTROL1.PNG")';
if(Input62.getAttribute('value') != null) {Input62.value = '';
} else {}
}}} else {
if(x[19].getAttribute('VALUE') == '0') {
SetBg('INPUT62', 'CONTROL-.PNG');
} else {
SetBg('INPUT62', 'CONTROL1.PNG');
}}
if(x[11].getAttribute('VALUE') == '0') {
Input62.style.display = 'none';
} else {
Input62.style.display = 'block';
}
var Input63 = document.getElementById('INPUT63');
if(x[11].getAttribute('VALUE') == '0') {
Input63.style.visibility = 'hidden';
} else {
Input63.style.visibility = 'visible';
}
var Input64 = document.getElementById('INPUT64');
Input64.value = x[20].getAttribute('VALUE');
if(x[11].getAttribute('VALUE') == '0') {
Input64.style.visibility = 'hidden';
} else {
Input64.style.visibility = 'visible';
}
var Input65 = document.getElementById('INPUT65');
if(x[11].getAttribute('VALUE') == '0') {
Input65.style.visibility = 'hidden';
} else {
Input65.style.visibility = 'visible';
}
var Input66 = document.getElementById('INPUT66');
if(x[11].getAttribute('VALUE') == '0') {
Input66.style.visibility = 'hidden';
} else {
Input66.style.visibility = 'visible';
}
var Input67 = document.getElementById('INPUT67');
if(x[11].getAttribute('VALUE') == '0') {
Input67.style.visibility = 'hidden';
} else {
Input67.style.visibility = 'visible';
}
var Input68 = document.getElementById('INPUT68');
if(x[11].getAttribute('VALUE') == '0') {
Input68.style.visibility = 'hidden';
} else {
Input68.style.visibility = 'visible';
}
var Input69 = document.getElementById('INPUT69');
if(x[11].getAttribute('VALUE') == '0') {
Input69.style.visibility = 'hidden';
} else {
Input69.style.visibility = 'visible';
}
var Input70 = document.getElementById('INPUT70');
if(x[17].getAttribute('VALUE') == '0') {
SetBg('INPUT70', 'TRANSPE2.PNG');
Input70.innerHTML = 'Cooling';
} else {
SetBg('INPUT70', 'TRANSPE2.PNG');
Input70.innerHTML = 'Fan only';
}
if(x[11].getAttribute('VALUE') == '0') {
Input70.style.display = 'none';
} else {
Input70.style.display = 'block';
}
var Input71 = document.getElementById('INPUT71');
if(x[11].getAttribute('VALUE') == '0') {
Input71.style.visibility = 'hidden';
} else {
Input71.style.visibility = 'visible';
}
var Input72 = document.getElementById('INPUT72');
if(x[11].getAttribute('VALUE') == '0') {
Input72.style.visibility = 'hidden';
} else {
Input72.style.visibility = 'visible';
}
var Input73 = document.getElementById('INPUT73');
if(x[11].getAttribute('VALUE') == '0') {
Input73.style.visibility = 'hidden';
} else {
Input73.style.visibility = 'visible';
}
var Input74 = document.getElementById('INPUT74');
if(x[11].getAttribute('VALUE') == '0') {
Input74.style.visibility = 'hidden';
} else {
Input74.style.visibility = 'visible';
}
} else {document.location.reload(true); return;}
} catch(err) {console.log(err.message)}
if(pd!=''){setTimeout("GetXML('MASTER.XML','"+pd+"')",1);}else{setTimeout("GetXML('MASTER.XML')",1000);}}
function FunWatchDog() {
if(gWatchDog > 0 || g_postInProgress) {
gWatchDog = 0;
} else {
document.location.reload(true);
}
setTimeout("FunWatchDog()", 20000);
}

function PostXML21() {
PostXML('MASTER.XML', encodeURIComponent('__R16452_USINT_u=0')); 
}
function PostXML22() {
PostXML('MASTER.XML', encodeURIComponent('__R16452_USINT_u=1')); 
}
function PostXML23() {
PostXML('MASTER.XML', encodeURIComponent('__R16452_USINT_u=2')); 
}
function PostXML28() {
PostXML('MASTER.XML', encodeURIComponent('__R16452_USINT_u=3')); 
}
function PostXML41() {
PostXML('MASTER.XML', encodeURIComponent('__R19646.0_BOOL_i=1')); 
}
function PostXML42() {
PostXML('MASTER.XML', encodeURIComponent('__R19646.1_BOOL_i=1')); 
}
function PostXML43() {
PostXML('MASTER.XML', encodeURIComponent('__R19646.3_BOOL_i=1')); 
}
function PostXML44() {
PostXML('MASTER.XML', encodeURIComponent('__R19646.4_BOOL_i=1')); 
}
function PostXML45() {
PostXML('MASTER.XML', encodeURIComponent('__R19646.5_BOOL_i=1')); 
}
function PostXML46() {
PostXML('MASTER.XML', encodeURIComponent('__R19646.7_BOOL_i=1')); 
}
function PostXML47() {
PostXML('MASTER.XML', encodeURIComponent('__R19646.2_BOOL_i=1')); 
}
function PostXML48() {
PostXML('MASTER.XML', encodeURIComponent('__R19646.6_BOOL_i=1')); 
}
function PostXML49() {
PostXML('MASTER.XML', encodeURIComponent('__R19666.0_BOOL_i=1')); 
}
function PostXML50() {
var Input50h = document.getElementById('INPUT50h');
PostXML('MASTER.XML', encodeURIComponent(Input50h.name+'='+Input50h.value));
}
function PostXML60() {
var Input60h = document.getElementById('INPUT60h');
PostXML('MASTER.XML', encodeURIComponent(Input60h.name+'='+Input60h.value));
}
function PostXML61() {
var Input61 = document.getElementById('INPUT61');
document.getElementById('INPUT61x').style.visibility = 'hidden';if(InputEdited[60]) {
PostXML('MASTER.XML', encodeURIComponent(Input61.name+'='+Input61.value)); InputEdited[60] = 0;
}
}
function PostXML62() {
var Input62h = document.getElementById('INPUT62h');
PostXML('MASTER.XML', encodeURIComponent(Input62h.name+'='+Input62h.value));
}
function PostXML71() {
PostXML('MASTER.XML', encodeURIComponent('__R19830_USINT_u=0')); 
}
function PostXML72() {
PostXML('MASTER.XML', encodeURIComponent('__R19830_USINT_u=1')); 
}
function PostXML73() {
PostXML('MASTER.XML', encodeURIComponent('__R19830_USINT_u=2')); 
}
function PostXML74() {
PostXML('MASTER.XML', encodeURIComponent('__R19830_USINT_u=3')); 
}

function PostGlobal() {
}
