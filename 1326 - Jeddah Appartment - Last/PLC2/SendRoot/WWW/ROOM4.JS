
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
var access = xmlhttpGET.responseXML.documentElement.getElementsByTagName('ACCESS')[0]; if(!access || access.getAttribute('UCID') != 1585234965) {document.location.reload(true); return;}
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
if(x[7].getAttribute('VALUE') == '0') {
SetBg('INPUT6', 'PLUG_S.PNG');
} else {
SetBg('INPUT6', 'PLUG_G_S.PNG');
}
if(x[6].getAttribute('VALUE') == '0') {
Input6.style.display = 'none';
} else {
Input6.style.display = 'block';
}
var Input7 = document.getElementById('INPUT7');
if(x[0].getAttribute('VALUE') != '0') {
Input7.style.visibility = 'hidden';
} else {
Input7.style.visibility = 'visible';
}
var Input8 = document.getElementById('INPUT8');
if(x[6].getAttribute('VALUE') != '0') {
Input8.style.visibility = 'hidden';
} else {
Input8.style.visibility = 'visible';
}
var Input9 = document.getElementById('INPUT9');
if(x[8].getAttribute('VALUE') != '0') {
Input9.style.visibility = 'hidden';
} else {
Input9.style.visibility = 'visible';
}
var Input10 = document.getElementById('INPUT10');
if(x[0].getAttribute('VALUE') != '0') {
Input10.style.visibility = 'hidden';
} else {
Input10.style.visibility = 'visible';
}
var Input11 = document.getElementById('INPUT11');
if(x[6].getAttribute('VALUE') != '0') {
Input11.style.visibility = 'hidden';
} else {
Input11.style.visibility = 'visible';
}
var Input12 = document.getElementById('INPUT12');
if(x[8].getAttribute('VALUE') != '0') {
Input12.style.visibility = 'hidden';
} else {
Input12.style.visibility = 'visible';
}
var Input13 = document.getElementById('INPUT13');
if(x[0].getAttribute('VALUE') == '0') {
Input13.style.visibility = 'hidden';
} else {
Input13.style.visibility = 'visible';
}
var Input14 = document.getElementById('INPUT14');
if(x[6].getAttribute('VALUE') == '0') {
Input14.style.visibility = 'hidden';
} else {
Input14.style.visibility = 'visible';
}
var Input15 = document.getElementById('INPUT15');
if(x[8].getAttribute('VALUE') == '0') {
Input15.style.visibility = 'hidden';
} else {
Input15.style.visibility = 'visible';
}
var Input16 = document.getElementById('INPUT16');
if(x[0].getAttribute('VALUE') == '0') {
Input16.style.visibility = 'hidden';
} else {
Input16.style.visibility = 'visible';
}
var Input17 = document.getElementById('INPUT17');
if(x[6].getAttribute('VALUE') == '0') {
Input17.style.visibility = 'hidden';
} else {
Input17.style.visibility = 'visible';
}
var Input18 = document.getElementById('INPUT18');
if(x[8].getAttribute('VALUE') == '0') {
Input18.style.visibility = 'hidden';
} else {
Input18.style.visibility = 'visible';
}
var Input19 = document.getElementById('INPUT19');
var Input20 = document.getElementById('INPUT20');
var Input21 = document.getElementById('INPUT21');
var Input22 = document.getElementById('INPUT22');
if(x[9].getAttribute('VALUE') != '0') {
Input22.style.visibility = 'hidden';
} else {
Input22.style.visibility = 'visible';
}
var Input23 = document.getElementById('INPUT23');
if(x[9].getAttribute('VALUE') != '0') {
Input23.style.visibility = 'hidden';
} else {
Input23.style.visibility = 'visible';
}
var Input24 = document.getElementById('INPUT24');
if(x[9].getAttribute('VALUE') == '0') {
Input24.style.visibility = 'hidden';
} else {
Input24.style.visibility = 'visible';
}
var Input25 = document.getElementById('INPUT25');
if(x[9].getAttribute('VALUE') == '0') {
Input25.style.visibility = 'hidden';
} else {
Input25.style.visibility = 'visible';
}
var Input26 = document.getElementById('INPUT26');
var Input27 = document.getElementById('INPUT27');
if(x[10].getAttribute('VALUE') == '0') {
SetBg('INPUT27', 'MOTION_S.PNG');
} else {
SetBg('INPUT27', 'MOTION_S.GIF');
}
var Input28 = document.getElementById('INPUT28');
if(x[11].getAttribute('VALUE') == '0') {
SetBg('INPUT28', 'MOTION_S.PNG');
} else {
SetBg('INPUT28', 'MOTION_S.GIF');
}
var Input29 = document.getElementById('INPUT29');
if(x[12].getAttribute('VALUE') == '0') {
SetBg('INPUT29', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT29', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input29.style.display = 'none';
} else {
Input29.style.display = 'block';
}
var Input30 = document.getElementById('INPUT30');
if(x[0].getAttribute('VALUE') == '0') {
Input30.style.visibility = 'hidden';
} else {
Input30.style.visibility = 'visible';
}
var Input31 = document.getElementById('INPUT31');
if(x[0].getAttribute('VALUE') == '0') {
Input31.style.visibility = 'hidden';
} else {
Input31.style.visibility = 'visible';
}
var Input32 = document.getElementById('INPUT32');
if(x[0].getAttribute('VALUE') == '0') {
Input32.style.visibility = 'hidden';
} else {
Input32.style.visibility = 'visible';
}
var Input33 = document.getElementById('INPUT33');
if(x[0].getAttribute('VALUE') == '0') {
Input33.style.visibility = 'hidden';
} else {
Input33.style.visibility = 'visible';
}
var Input34 = document.getElementById('INPUT34');
if(x[0].getAttribute('VALUE') == '0') {
Input34.style.visibility = 'hidden';
} else {
Input34.style.visibility = 'visible';
}
var Input35 = document.getElementById('INPUT35');
if(x[0].getAttribute('VALUE') == '0') {
Input35.style.visibility = 'hidden';
} else {
Input35.style.visibility = 'visible';
}
var Input36 = document.getElementById('INPUT36');
if(x[6].getAttribute('VALUE') == '0') {
Input36.style.visibility = 'hidden';
} else {
Input36.style.visibility = 'visible';
}
var Input37 = document.getElementById('INPUT37');
var Input37h = document.getElementById('INPUT37h');
if(Input37h) { vz = x[13].getAttribute('VALUE') == '0'; iz = Input37h.value == '0';
if(vz == iz) {
if(vz) {
Input37h.value = '1';
Input37.style.backgroundImage = 'url("IMAGES/OFF.PNG")';
if(Input37.getAttribute('value') != null) {Input37.value = '';} else {}
} else {
Input37h.value = '0';
Input37.style.backgroundImage = 'url("IMAGES/ON.PNG")';
if(Input37.getAttribute('value') != null) {Input37.value = '';
} else {}
}}} else {
if(x[13].getAttribute('VALUE') == '0') {
SetBg('INPUT37', 'OFF.PNG');
} else {
SetBg('INPUT37', 'ON.PNG');
}}
if(x[9].getAttribute('VALUE') == '0') {
Input37.style.display = 'none';
} else {
Input37.style.display = 'block';
}
var Input38 = document.getElementById('INPUT38');
switch(parseInt(x[14].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
default: gTemp = ''; }
if(Input38.style.backgroundImage != gTemp) Input38.style.backgroundImage = gTemp;
if(x[9].getAttribute('VALUE') == '0') {
Input38.style.visibility = 'hidden';
} else {
Input38.style.visibility = 'visible';
}
var Input39 = document.getElementById('INPUT39');
switch(parseInt(x[14].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
default: gTemp = ''; }
if(Input39.style.backgroundImage != gTemp) Input39.style.backgroundImage = gTemp;
if(x[9].getAttribute('VALUE') == '0') {
Input39.style.visibility = 'hidden';
} else {
Input39.style.visibility = 'visible';
}
var Input40 = document.getElementById('INPUT40');
switch(parseInt(x[14].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
default: gTemp = ''; }
if(Input40.style.backgroundImage != gTemp) Input40.style.backgroundImage = gTemp;
if(x[9].getAttribute('VALUE') == '0') {
Input40.style.visibility = 'hidden';
} else {
Input40.style.visibility = 'visible';
}
var Input41 = document.getElementById('INPUT41');
switch(parseInt(x[14].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
default: gTemp = ''; }
if(Input41.style.backgroundImage != gTemp) Input41.style.backgroundImage = gTemp;
if(x[9].getAttribute('VALUE') == '0') {
Input41.style.visibility = 'hidden';
} else {
Input41.style.visibility = 'visible';
}
var Input42 = document.getElementById('INPUT42');
if(x[9].getAttribute('VALUE') == '0') {
Input42.style.visibility = 'hidden';
} else {
Input42.style.visibility = 'visible';
}
var Input43 = document.getElementById('INPUT43');
if(x[9].getAttribute('VALUE') == '0') {
Input43.style.visibility = 'hidden';
} else {
Input43.style.visibility = 'visible';
}
var Input44 = document.getElementById('INPUT44');
if(x[9].getAttribute('VALUE') == '0') {
Input44.style.visibility = 'hidden';
} else {
Input44.style.visibility = 'visible';
}
var Input45 = document.getElementById('INPUT45');
if(x[9].getAttribute('VALUE') == '0') {
Input45.style.visibility = 'hidden';
} else {
Input45.style.visibility = 'visible';
}
var Input46 = document.getElementById('INPUT46');
if(x[9].getAttribute('VALUE') == '0') {
Input46.style.visibility = 'hidden';
} else {
Input46.style.visibility = 'visible';
}
var Input47 = document.getElementById('INPUT47');
if(x[9].getAttribute('VALUE') == '0') {
Input47.style.visibility = 'hidden';
} else {
Input47.style.visibility = 'visible';
}
var Input48 = document.getElementById('INPUT48');
if(x[9].getAttribute('VALUE') == '0') {
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
switch(parseInt(x[15].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/FAN_OFF.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/80.GIF")'; break;
case 2 : gTemp = 'url("IMAGES/50.GIF")'; break;
case 3 : gTemp = 'url("IMAGES/50.GIF")'; break;
case 4 : gTemp = 'url("IMAGES/20.GIF")'; break;
default: gTemp = ''; }
if(Input50.style.backgroundImage != gTemp) Input50.style.backgroundImage = gTemp;
if(x[9].getAttribute('VALUE') == '0') {
Input50.style.visibility = 'hidden';
} else {
Input50.style.visibility = 'visible';
}
var Input51 = document.getElementById('INPUT51');
var Input51h = document.getElementById('INPUT51h');
if(Input51h) { vz = x[16].getAttribute('VALUE') == '0'; iz = Input51h.value == '0';
if(vz == iz) {
if(vz) {
Input51h.value = '1';
Input51.style.backgroundImage = 'url("IMAGES/AIR-CON1.PNG")';
if(Input51.getAttribute('value') != null) {Input51.value = '';} else {}
} else {
Input51h.value = '0';
Input51.style.backgroundImage = 'url("IMAGES/VENTILA1.PNG")';
if(Input51.getAttribute('value') != null) {Input51.value = '';
} else {}
}}} else {
if(x[16].getAttribute('VALUE') == '0') {
SetBg('INPUT51', 'AIR-CON1.PNG');
} else {
SetBg('INPUT51', 'VENTILA1.PNG');
}}
if(x[9].getAttribute('VALUE') == '0') {
Input51.style.display = 'none';
} else {
Input51.style.display = 'block';
}
var Input52 = document.getElementById('INPUT52');
if(!InputEdited[51]) {
UpdateValue(Input52, x[17], '#3C3C3C');}
var Input52x = document.getElementById('INPUT52x');
if(x[9].getAttribute('VALUE') == '0') {
if(Input52x) Input52x.style.visibility = 'hidden';
Input52.style.display = 'none';
} else {
Input52.style.display = 'inline';
}
var Input53 = document.getElementById('INPUT53');
var Input53h = document.getElementById('INPUT53h');
if(Input53h) { vz = x[18].getAttribute('VALUE') == '0'; iz = Input53h.value == '0';
if(vz == iz) {
if(vz) {
Input53h.value = '1';
Input53.style.backgroundImage = 'url("IMAGES/CONTROL-.PNG")';
if(Input53.getAttribute('value') != null) {Input53.value = '';} else {}
} else {
Input53h.value = '0';
Input53.style.backgroundImage = 'url("IMAGES/CONTROL1.PNG")';
if(Input53.getAttribute('value') != null) {Input53.value = '';
} else {}
}}} else {
if(x[18].getAttribute('VALUE') == '0') {
SetBg('INPUT53', 'CONTROL-.PNG');
} else {
SetBg('INPUT53', 'CONTROL1.PNG');
}}
if(x[9].getAttribute('VALUE') == '0') {
Input53.style.display = 'none';
} else {
Input53.style.display = 'block';
}
var Input54 = document.getElementById('INPUT54');
if(x[9].getAttribute('VALUE') == '0') {
Input54.style.visibility = 'hidden';
} else {
Input54.style.visibility = 'visible';
}
var Input55 = document.getElementById('INPUT55');
Input55.value = x[19].getAttribute('VALUE');
if(x[9].getAttribute('VALUE') == '0') {
Input55.style.visibility = 'hidden';
} else {
Input55.style.visibility = 'visible';
}
var Input56 = document.getElementById('INPUT56');
if(x[9].getAttribute('VALUE') == '0') {
Input56.style.visibility = 'hidden';
} else {
Input56.style.visibility = 'visible';
}
var Input57 = document.getElementById('INPUT57');
if(x[9].getAttribute('VALUE') == '0') {
Input57.style.visibility = 'hidden';
} else {
Input57.style.visibility = 'visible';
}
var Input58 = document.getElementById('INPUT58');
if(x[9].getAttribute('VALUE') == '0') {
Input58.style.visibility = 'hidden';
} else {
Input58.style.visibility = 'visible';
}
var Input59 = document.getElementById('INPUT59');
if(x[9].getAttribute('VALUE') == '0') {
Input59.style.visibility = 'hidden';
} else {
Input59.style.visibility = 'visible';
}
var Input60 = document.getElementById('INPUT60');
if(x[9].getAttribute('VALUE') == '0') {
Input60.style.visibility = 'hidden';
} else {
Input60.style.visibility = 'visible';
}
var Input61 = document.getElementById('INPUT61');
if(x[16].getAttribute('VALUE') == '0') {
SetBg('INPUT61', 'TRANSPE2.PNG');
Input61.innerHTML = 'Cooling';
} else {
SetBg('INPUT61', 'TRANSPE2.PNG');
Input61.innerHTML = 'Fan only';
}
if(x[9].getAttribute('VALUE') == '0') {
Input61.style.display = 'none';
} else {
Input61.style.display = 'block';
}
var Input62 = document.getElementById('INPUT62');
switch(parseInt(x[20].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/WINDOW9.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/WINDOW10.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/WINDOW11.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/WINDOW12.PNG")'; break;
case 4 : gTemp = 'url("IMAGES/WINDOW13.PNG")'; break;
default: gTemp = ''; }
if(Input62.style.backgroundImage != gTemp) Input62.style.backgroundImage = gTemp;
if(x[8].getAttribute('VALUE') == '0') {
Input62.style.visibility = 'hidden';
} else {
Input62.style.visibility = 'visible';
}
var Input63 = document.getElementById('INPUT63');
if(!InputEdited[62]) {
UpdateValue(Input63, x[21], '#000000');}
if(x[8].getAttribute('VALUE') == '0') {
Input63.style.visibility = 'hidden';
} else {
Input63.style.visibility = 'visible';
}
var Input64 = document.getElementById('INPUT64');
if(x[8].getAttribute('VALUE') == '0') {
Input64.style.visibility = 'hidden';
} else {
Input64.style.visibility = 'visible';
}
var Input65 = document.getElementById('INPUT65');
if(x[22].getAttribute('VALUE') == '0') {
SetBg('INPUT65', 'BTN_BL_5.PNG');
} else {
SetBg('INPUT65', 'BTN_GREE.PNG');
}
if(x[8].getAttribute('VALUE') == '0') {
Input65.style.display = 'none';
} else {
Input65.style.display = 'block';
}
var Input66 = document.getElementById('INPUT66');
if(x[23].getAttribute('VALUE') == '0') {
SetBg('INPUT66', 'BTN_BL_7.PNG');
} else {
SetBg('INPUT66', 'BTN_GRE1.PNG');
}
if(x[8].getAttribute('VALUE') == '0') {
Input66.style.display = 'none';
} else {
Input66.style.display = 'block';
}
var Input67 = document.getElementById('INPUT67');
if(x[8].getAttribute('VALUE') == '0') {
Input67.style.visibility = 'hidden';
} else {
Input67.style.visibility = 'visible';
}
var Input68 = document.getElementById('INPUT68');
if(x[8].getAttribute('VALUE') == '0') {
Input68.style.visibility = 'hidden';
} else {
Input68.style.visibility = 'visible';
}
} else {document.location.reload(true); return;}
} catch(err) {console.log(err.message)}
if(pd!=''){setTimeout("GetXML('ROOM4.XML','"+pd+"')",1);}else{setTimeout("GetXML('ROOM4.XML')",1000);}}
function FunWatchDog() {
if(gWatchDog > 0 || g_postInProgress) {
gWatchDog = 0;
} else {
document.location.reload(true);
}
setTimeout("FunWatchDog()", 20000);
}

function PostXML19() {
PostXML('ROOM4.XML', encodeURIComponent('__R20234_USINT_u=0')); 
}
function PostXML20() {
PostXML('ROOM4.XML', encodeURIComponent('__R20234_USINT_u=1')); 
}
function PostXML21() {
PostXML('ROOM4.XML', encodeURIComponent('__R20234_USINT_u=2')); 
}
function PostXML26() {
PostXML('ROOM4.XML', encodeURIComponent('__R20234_USINT_u=3')); 
}
function PostXML30() {
PostXML('ROOM4.XML', encodeURIComponent('__R23428.0_BOOL_i=1')); 
}
function PostXML31() {
PostXML('ROOM4.XML', encodeURIComponent('__R23428.1_BOOL_i=1')); 
}
function PostXML32() {
PostXML('ROOM4.XML', encodeURIComponent('__R23428.2_BOOL_i=1')); 
}
function PostXML33() {
PostXML('ROOM4.XML', encodeURIComponent('__R23428.3_BOOL_i=1')); 
}
function PostXML34() {
PostXML('ROOM4.XML', encodeURIComponent('__R23428.4_BOOL_i=1')); 
}
function PostXML35() {
PostXML('ROOM4.XML', encodeURIComponent('__R23428.5_BOOL_i=1')); 
}
function PostXML36() {
PostXML('ROOM4.XML', encodeURIComponent('__R23448.0_BOOL_i=1')); 
}
function PostXML37() {
var Input37h = document.getElementById('INPUT37h');
PostXML('ROOM4.XML', encodeURIComponent(Input37h.name+'='+Input37h.value));
}
function PostXML46() {
PostXML('ROOM4.XML', encodeURIComponent('__R23596_USINT_u=0')); 
}
function PostXML47() {
PostXML('ROOM4.XML', encodeURIComponent('__R23596_USINT_u=1')); 
}
function PostXML48() {
PostXML('ROOM4.XML', encodeURIComponent('__R23596_USINT_u=2')); 
}
function PostXML49() {
PostXML('ROOM4.XML', encodeURIComponent('__R23596_USINT_u=3')); 
}
function PostXML51() {
var Input51h = document.getElementById('INPUT51h');
PostXML('ROOM4.XML', encodeURIComponent(Input51h.name+'='+Input51h.value));
}
function PostXML52() {
var Input52 = document.getElementById('INPUT52');
document.getElementById('INPUT52x').style.visibility = 'hidden';if(InputEdited[51]) {
PostXML('ROOM4.XML', encodeURIComponent(Input52.name+'='+Input52.value)); InputEdited[51] = 0;
}
}
function PostXML53() {
var Input53h = document.getElementById('INPUT53h');
PostXML('ROOM4.XML', encodeURIComponent(Input53h.name+'='+Input53h.value));
}
function PostXML67() {
PostXML('ROOM4.XML', encodeURIComponent('__R23503.0_BOOL_i=1')); 
}
function PostXML68() {
PostXML('ROOM4.XML', encodeURIComponent('__R23504.0_BOOL_i=1')); 
}

function PostGlobal() {
var Input63 = document.getElementById('INPUT63');
PostXML('ROOM4.XML', (InputEdited[62] ? encodeURIComponent(Input63.name)+'='+encodeURIComponent(Input63.value)+'&' : ''));
InputEdited[62]=0;
}
