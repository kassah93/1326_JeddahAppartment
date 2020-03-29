
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
var access = xmlhttpGET.responseXML.documentElement.getElementsByTagName('ACCESS')[0]; if(!access || access.getAttribute('UCID') != 1585379888) {document.location.reload(true); return;}
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
if(x[9].getAttribute('VALUE') == '0') {
SetBg('INPUT9', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT9', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input9.style.display = 'none';
} else {
Input9.style.display = 'block';
}
var Input10 = document.getElementById('INPUT10');
if(x[10].getAttribute('VALUE') == '0') {
SetBg('INPUT10', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT10', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input10.style.display = 'none';
} else {
Input10.style.display = 'block';
}
var Input11 = document.getElementById('INPUT11');
if(x[11].getAttribute('VALUE') == '0') {
SetBg('INPUT11', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT11', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input11.style.display = 'none';
} else {
Input11.style.display = 'block';
}
var Input12 = document.getElementById('INPUT12');
if(x[12].getAttribute('VALUE') == '0') {
SetBg('INPUT12', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT12', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input12.style.display = 'none';
} else {
Input12.style.display = 'block';
}
var Input13 = document.getElementById('INPUT13');
if(x[13].getAttribute('VALUE') == '0') {
SetBg('INPUT13', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT13', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input13.style.display = 'none';
} else {
Input13.style.display = 'block';
}
var Input14 = document.getElementById('INPUT14');
if(x[14].getAttribute('VALUE') == '0') {
SetBg('INPUT14', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT14', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input14.style.display = 'none';
} else {
Input14.style.display = 'block';
}
var Input15 = document.getElementById('INPUT15');
if(x[15].getAttribute('VALUE') == '0') {
SetBg('INPUT15', 'IDEA_4_1.PNG');
} else {
SetBg('INPUT15', 'IDEA_3_1.PNG');
}
if(x[0].getAttribute('VALUE') == '0') {
Input15.style.display = 'none';
} else {
Input15.style.display = 'block';
}
var Input16 = document.getElementById('INPUT16');
if(x[17].getAttribute('VALUE') == '0') {
SetBg('INPUT16', 'PLUG_S.PNG');
} else {
SetBg('INPUT16', 'PLUG_G_S.PNG');
}
if(x[16].getAttribute('VALUE') == '0') {
Input16.style.display = 'none';
} else {
Input16.style.display = 'block';
}
var Input17 = document.getElementById('INPUT17');
switch(parseInt(x[19].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/WINDOW9.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/WINDOW10.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/WINDOW11.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/WINDOW12.PNG")'; break;
case 4 : gTemp = 'url("IMAGES/WINDOW13.PNG")'; break;
default: gTemp = ''; }
if(Input17.style.backgroundImage != gTemp) Input17.style.backgroundImage = gTemp;
if(x[18].getAttribute('VALUE') == '0') {
Input17.style.visibility = 'hidden';
} else {
Input17.style.visibility = 'visible';
}
var Input18 = document.getElementById('INPUT18');
if(!InputEdited[17]) {
UpdateValue(Input18, x[20], '#000000');}
if(x[18].getAttribute('VALUE') == '0') {
Input18.style.visibility = 'hidden';
} else {
Input18.style.visibility = 'visible';
}
var Input19 = document.getElementById('INPUT19');
if(x[18].getAttribute('VALUE') == '0') {
Input19.style.visibility = 'hidden';
} else {
Input19.style.visibility = 'visible';
}
var Input20 = document.getElementById('INPUT20');
if(x[21].getAttribute('VALUE') == '0') {
SetBg('INPUT20', 'BTN_BL_5.PNG');
} else {
SetBg('INPUT20', 'BTN_GREE.PNG');
}
if(x[18].getAttribute('VALUE') == '0') {
Input20.style.display = 'none';
} else {
Input20.style.display = 'block';
}
var Input21 = document.getElementById('INPUT21');
if(x[22].getAttribute('VALUE') == '0') {
SetBg('INPUT21', 'BTN_BL_7.PNG');
} else {
SetBg('INPUT21', 'BTN_GRE1.PNG');
}
if(x[18].getAttribute('VALUE') == '0') {
Input21.style.display = 'none';
} else {
Input21.style.display = 'block';
}
var Input22 = document.getElementById('INPUT22');
if(x[0].getAttribute('VALUE') != '0') {
Input22.style.visibility = 'hidden';
} else {
Input22.style.visibility = 'visible';
}
var Input23 = document.getElementById('INPUT23');
if(x[16].getAttribute('VALUE') != '0') {
Input23.style.visibility = 'hidden';
} else {
Input23.style.visibility = 'visible';
}
var Input24 = document.getElementById('INPUT24');
if(x[18].getAttribute('VALUE') != '0') {
Input24.style.visibility = 'hidden';
} else {
Input24.style.visibility = 'visible';
}
var Input25 = document.getElementById('INPUT25');
if(x[0].getAttribute('VALUE') != '0') {
Input25.style.visibility = 'hidden';
} else {
Input25.style.visibility = 'visible';
}
var Input26 = document.getElementById('INPUT26');
if(x[16].getAttribute('VALUE') != '0') {
Input26.style.visibility = 'hidden';
} else {
Input26.style.visibility = 'visible';
}
var Input27 = document.getElementById('INPUT27');
if(x[18].getAttribute('VALUE') != '0') {
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
if(x[16].getAttribute('VALUE') == '0') {
Input29.style.visibility = 'hidden';
} else {
Input29.style.visibility = 'visible';
}
var Input30 = document.getElementById('INPUT30');
if(x[18].getAttribute('VALUE') == '0') {
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
if(x[16].getAttribute('VALUE') == '0') {
Input32.style.visibility = 'hidden';
} else {
Input32.style.visibility = 'visible';
}
var Input33 = document.getElementById('INPUT33');
if(x[18].getAttribute('VALUE') == '0') {
Input33.style.visibility = 'hidden';
} else {
Input33.style.visibility = 'visible';
}
var Input34 = document.getElementById('INPUT34');
var Input35 = document.getElementById('INPUT35');
var Input36 = document.getElementById('INPUT36');
var Input37 = document.getElementById('INPUT37');
switch(parseInt(x[23].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/WINDOW9.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/WINDOW10.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/WINDOW11.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/WINDOW12.PNG")'; break;
case 4 : gTemp = 'url("IMAGES/WINDOW13.PNG")'; break;
default: gTemp = ''; }
if(Input37.style.backgroundImage != gTemp) Input37.style.backgroundImage = gTemp;
if(x[18].getAttribute('VALUE') == '0') {
Input37.style.visibility = 'hidden';
} else {
Input37.style.visibility = 'visible';
}
var Input38 = document.getElementById('INPUT38');
if(!InputEdited[37]) {
UpdateValue(Input38, x[24], '#000000');}
if(x[18].getAttribute('VALUE') == '0') {
Input38.style.visibility = 'hidden';
} else {
Input38.style.visibility = 'visible';
}
var Input39 = document.getElementById('INPUT39');
if(x[18].getAttribute('VALUE') == '0') {
Input39.style.visibility = 'hidden';
} else {
Input39.style.visibility = 'visible';
}
var Input40 = document.getElementById('INPUT40');
if(x[25].getAttribute('VALUE') == '0') {
SetBg('INPUT40', 'BTN_BL_5.PNG');
} else {
SetBg('INPUT40', 'BTN_GREE.PNG');
}
if(x[18].getAttribute('VALUE') == '0') {
Input40.style.display = 'none';
} else {
Input40.style.display = 'block';
}
var Input41 = document.getElementById('INPUT41');
if(x[26].getAttribute('VALUE') == '0') {
SetBg('INPUT41', 'BTN_BL_7.PNG');
} else {
SetBg('INPUT41', 'BTN_GRE1.PNG');
}
if(x[18].getAttribute('VALUE') == '0') {
Input41.style.display = 'none';
} else {
Input41.style.display = 'block';
}
var Input42 = document.getElementById('INPUT42');
switch(parseInt(x[27].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/WINDOW9.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/WINDOW10.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/WINDOW11.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/WINDOW12.PNG")'; break;
case 4 : gTemp = 'url("IMAGES/WINDOW13.PNG")'; break;
default: gTemp = ''; }
if(Input42.style.backgroundImage != gTemp) Input42.style.backgroundImage = gTemp;
if(x[18].getAttribute('VALUE') == '0') {
Input42.style.visibility = 'hidden';
} else {
Input42.style.visibility = 'visible';
}
var Input43 = document.getElementById('INPUT43');
if(!InputEdited[42]) {
UpdateValue(Input43, x[28], '#000000');}
if(x[18].getAttribute('VALUE') == '0') {
Input43.style.visibility = 'hidden';
} else {
Input43.style.visibility = 'visible';
}
var Input44 = document.getElementById('INPUT44');
if(x[18].getAttribute('VALUE') == '0') {
Input44.style.visibility = 'hidden';
} else {
Input44.style.visibility = 'visible';
}
var Input45 = document.getElementById('INPUT45');
if(x[29].getAttribute('VALUE') == '0') {
SetBg('INPUT45', 'BTN_BL_5.PNG');
} else {
SetBg('INPUT45', 'BTN_GREE.PNG');
}
if(x[18].getAttribute('VALUE') == '0') {
Input45.style.display = 'none';
} else {
Input45.style.display = 'block';
}
var Input46 = document.getElementById('INPUT46');
if(x[30].getAttribute('VALUE') == '0') {
SetBg('INPUT46', 'BTN_BL_7.PNG');
} else {
SetBg('INPUT46', 'BTN_GRE1.PNG');
}
if(x[18].getAttribute('VALUE') == '0') {
Input46.style.display = 'none';
} else {
Input46.style.display = 'block';
}
var Input47 = document.getElementById('INPUT47');
switch(parseInt(x[31].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/WINDOW9.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/WINDOW10.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/WINDOW11.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/WINDOW12.PNG")'; break;
case 4 : gTemp = 'url("IMAGES/WINDOW13.PNG")'; break;
default: gTemp = ''; }
if(Input47.style.backgroundImage != gTemp) Input47.style.backgroundImage = gTemp;
if(x[18].getAttribute('VALUE') == '0') {
Input47.style.visibility = 'hidden';
} else {
Input47.style.visibility = 'visible';
}
var Input48 = document.getElementById('INPUT48');
if(!InputEdited[47]) {
UpdateValue(Input48, x[32], '#000000');}
if(x[18].getAttribute('VALUE') == '0') {
Input48.style.visibility = 'hidden';
} else {
Input48.style.visibility = 'visible';
}
var Input49 = document.getElementById('INPUT49');
if(x[18].getAttribute('VALUE') == '0') {
Input49.style.visibility = 'hidden';
} else {
Input49.style.visibility = 'visible';
}
var Input50 = document.getElementById('INPUT50');
if(x[33].getAttribute('VALUE') == '0') {
SetBg('INPUT50', 'BTN_BL_5.PNG');
} else {
SetBg('INPUT50', 'BTN_GREE.PNG');
}
if(x[18].getAttribute('VALUE') == '0') {
Input50.style.display = 'none';
} else {
Input50.style.display = 'block';
}
var Input51 = document.getElementById('INPUT51');
if(x[34].getAttribute('VALUE') == '0') {
SetBg('INPUT51', 'BTN_BL_7.PNG');
} else {
SetBg('INPUT51', 'BTN_GRE1.PNG');
}
if(x[18].getAttribute('VALUE') == '0') {
Input51.style.display = 'none';
} else {
Input51.style.display = 'block';
}
var Input52 = document.getElementById('INPUT52');
switch(parseInt(x[35].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/WINDOW9.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/WINDOW10.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/WINDOW11.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/WINDOW12.PNG")'; break;
case 4 : gTemp = 'url("IMAGES/WINDOW13.PNG")'; break;
default: gTemp = ''; }
if(Input52.style.backgroundImage != gTemp) Input52.style.backgroundImage = gTemp;
if(x[18].getAttribute('VALUE') == '0') {
Input52.style.visibility = 'hidden';
} else {
Input52.style.visibility = 'visible';
}
var Input53 = document.getElementById('INPUT53');
if(!InputEdited[52]) {
UpdateValue(Input53, x[36], '#000000');}
if(x[18].getAttribute('VALUE') == '0') {
Input53.style.visibility = 'hidden';
} else {
Input53.style.visibility = 'visible';
}
var Input54 = document.getElementById('INPUT54');
if(x[18].getAttribute('VALUE') == '0') {
Input54.style.visibility = 'hidden';
} else {
Input54.style.visibility = 'visible';
}
var Input55 = document.getElementById('INPUT55');
if(x[37].getAttribute('VALUE') == '0') {
SetBg('INPUT55', 'BTN_BL_5.PNG');
} else {
SetBg('INPUT55', 'BTN_GREE.PNG');
}
if(x[18].getAttribute('VALUE') == '0') {
Input55.style.display = 'none';
} else {
Input55.style.display = 'block';
}
var Input56 = document.getElementById('INPUT56');
if(x[38].getAttribute('VALUE') == '0') {
SetBg('INPUT56', 'BTN_BL_7.PNG');
} else {
SetBg('INPUT56', 'BTN_GRE1.PNG');
}
if(x[18].getAttribute('VALUE') == '0') {
Input56.style.display = 'none';
} else {
Input56.style.display = 'block';
}
var Input57 = document.getElementById('INPUT57');
if(x[39].getAttribute('VALUE') != '0') {
Input57.style.visibility = 'hidden';
} else {
Input57.style.visibility = 'visible';
}
var Input58 = document.getElementById('INPUT58');
if(x[39].getAttribute('VALUE') != '0') {
Input58.style.visibility = 'hidden';
} else {
Input58.style.visibility = 'visible';
}
var Input59 = document.getElementById('INPUT59');
if(x[39].getAttribute('VALUE') == '0') {
Input59.style.visibility = 'hidden';
} else {
Input59.style.visibility = 'visible';
}
var Input60 = document.getElementById('INPUT60');
if(x[39].getAttribute('VALUE') == '0') {
Input60.style.visibility = 'hidden';
} else {
Input60.style.visibility = 'visible';
}
var Input61 = document.getElementById('INPUT61');
var Input62 = document.getElementById('INPUT62');
if(x[40].getAttribute('VALUE') == '0') {
SetBg('INPUT62', 'MOTION_S.PNG');
} else {
SetBg('INPUT62', 'MOTION_S.GIF');
}
var Input63 = document.getElementById('INPUT63');
var Input63h = document.getElementById('INPUT63h');
if(Input63h) { vz = x[41].getAttribute('VALUE') == '0'; iz = Input63h.value == '0';
if(vz == iz) {
if(vz) {
Input63h.value = '1';
Input63.style.backgroundImage = 'url("IMAGES/OFF.PNG")';
if(Input63.getAttribute('value') != null) {Input63.value = '';} else {}
} else {
Input63h.value = '0';
Input63.style.backgroundImage = 'url("IMAGES/ON.PNG")';
if(Input63.getAttribute('value') != null) {Input63.value = '';
} else {}
}}} else {
if(x[41].getAttribute('VALUE') == '0') {
SetBg('INPUT63', 'OFF.PNG');
} else {
SetBg('INPUT63', 'ON.PNG');
}}
if(x[39].getAttribute('VALUE') == '0') {
Input63.style.display = 'none';
} else {
Input63.style.display = 'block';
}
var Input64 = document.getElementById('INPUT64');
switch(parseInt(x[42].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
default: gTemp = ''; }
if(Input64.style.backgroundImage != gTemp) Input64.style.backgroundImage = gTemp;
if(x[39].getAttribute('VALUE') == '0') {
Input64.style.visibility = 'hidden';
} else {
Input64.style.visibility = 'visible';
}
var Input65 = document.getElementById('INPUT65');
switch(parseInt(x[42].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
default: gTemp = ''; }
if(Input65.style.backgroundImage != gTemp) Input65.style.backgroundImage = gTemp;
if(x[39].getAttribute('VALUE') == '0') {
Input65.style.visibility = 'hidden';
} else {
Input65.style.visibility = 'visible';
}
var Input66 = document.getElementById('INPUT66');
switch(parseInt(x[42].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
default: gTemp = ''; }
if(Input66.style.backgroundImage != gTemp) Input66.style.backgroundImage = gTemp;
if(x[39].getAttribute('VALUE') == '0') {
Input66.style.visibility = 'hidden';
} else {
Input66.style.visibility = 'visible';
}
var Input67 = document.getElementById('INPUT67');
switch(parseInt(x[42].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 2 : gTemp = 'url("IMAGES/INDICAT1.PNG")'; break;
case 3 : gTemp = 'url("IMAGES/INDICATO.PNG")'; break;
default: gTemp = ''; }
if(Input67.style.backgroundImage != gTemp) Input67.style.backgroundImage = gTemp;
if(x[39].getAttribute('VALUE') == '0') {
Input67.style.visibility = 'hidden';
} else {
Input67.style.visibility = 'visible';
}
var Input68 = document.getElementById('INPUT68');
if(x[43].getAttribute('VALUE') == '0') {
Input68.style.visibility = 'hidden';
} else {
Input68.style.visibility = 'visible';
}
var Input69 = document.getElementById('INPUT69');
if(x[43].getAttribute('VALUE') == '0') {
Input69.style.visibility = 'hidden';
} else {
Input69.style.visibility = 'visible';
}
var Input70 = document.getElementById('INPUT70');
if(x[43].getAttribute('VALUE') == '0') {
Input70.style.visibility = 'hidden';
} else {
Input70.style.visibility = 'visible';
}
var Input71 = document.getElementById('INPUT71');
if(x[43].getAttribute('VALUE') == '0') {
Input71.style.visibility = 'hidden';
} else {
Input71.style.visibility = 'visible';
}
var Input72 = document.getElementById('INPUT72');
if(x[39].getAttribute('VALUE') == '0') {
Input72.style.visibility = 'hidden';
} else {
Input72.style.visibility = 'visible';
}
var Input73 = document.getElementById('INPUT73');
if(x[39].getAttribute('VALUE') == '0') {
Input73.style.visibility = 'hidden';
} else {
Input73.style.visibility = 'visible';
}
var Input74 = document.getElementById('INPUT74');
if(x[39].getAttribute('VALUE') == '0') {
Input74.style.visibility = 'hidden';
} else {
Input74.style.visibility = 'visible';
}
var Input75 = document.getElementById('INPUT75');
if(x[39].getAttribute('VALUE') == '0') {
Input75.style.visibility = 'hidden';
} else {
Input75.style.visibility = 'visible';
}
var Input76 = document.getElementById('INPUT76');
switch(parseInt(x[44].getAttribute('VALUE'))) {
case 0 : gTemp = 'url("IMAGES/FAN_OFF.PNG")'; break;
case 1 : gTemp = 'url("IMAGES/80.GIF")'; break;
case 2 : gTemp = 'url("IMAGES/50.GIF")'; break;
case 3 : gTemp = 'url("IMAGES/50.GIF")'; break;
case 4 : gTemp = 'url("IMAGES/20.GIF")'; break;
default: gTemp = ''; }
if(Input76.style.backgroundImage != gTemp) Input76.style.backgroundImage = gTemp;
if(x[39].getAttribute('VALUE') == '0') {
Input76.style.visibility = 'hidden';
} else {
Input76.style.visibility = 'visible';
}
var Input77 = document.getElementById('INPUT77');
var Input77h = document.getElementById('INPUT77h');
if(Input77h) { vz = x[45].getAttribute('VALUE') == '0'; iz = Input77h.value == '0';
if(vz == iz) {
if(vz) {
Input77h.value = '1';
Input77.style.backgroundImage = 'url("IMAGES/AIR-CON1.PNG")';
if(Input77.getAttribute('value') != null) {Input77.value = '';} else {}
} else {
Input77h.value = '0';
Input77.style.backgroundImage = 'url("IMAGES/VENTILA1.PNG")';
if(Input77.getAttribute('value') != null) {Input77.value = '';
} else {}
}}} else {
if(x[45].getAttribute('VALUE') == '0') {
SetBg('INPUT77', 'AIR-CON1.PNG');
} else {
SetBg('INPUT77', 'VENTILA1.PNG');
}}
if(x[39].getAttribute('VALUE') == '0') {
Input77.style.display = 'none';
} else {
Input77.style.display = 'block';
}
var Input78 = document.getElementById('INPUT78');
if(!InputEdited[77]) {
UpdateValue(Input78, x[46], '#3C3C3C');}
var Input78x = document.getElementById('INPUT78x');
if(x[39].getAttribute('VALUE') == '0') {
if(Input78x) Input78x.style.visibility = 'hidden';
Input78.style.display = 'none';
} else {
Input78.style.display = 'inline';
}
var Input79 = document.getElementById('INPUT79');
var Input79h = document.getElementById('INPUT79h');
if(Input79h) { vz = x[47].getAttribute('VALUE') == '0'; iz = Input79h.value == '0';
if(vz == iz) {
if(vz) {
Input79h.value = '1';
Input79.style.backgroundImage = 'url("IMAGES/CONTROL-.PNG")';
if(Input79.getAttribute('value') != null) {Input79.value = '';} else {}
} else {
Input79h.value = '0';
Input79.style.backgroundImage = 'url("IMAGES/CONTROL1.PNG")';
if(Input79.getAttribute('value') != null) {Input79.value = '';
} else {}
}}} else {
if(x[47].getAttribute('VALUE') == '0') {
SetBg('INPUT79', 'CONTROL-.PNG');
} else {
SetBg('INPUT79', 'CONTROL1.PNG');
}}
if(x[39].getAttribute('VALUE') == '0') {
Input79.style.display = 'none';
} else {
Input79.style.display = 'block';
}
var Input80 = document.getElementById('INPUT80');
if(x[39].getAttribute('VALUE') == '0') {
Input80.style.visibility = 'hidden';
} else {
Input80.style.visibility = 'visible';
}
var Input81 = document.getElementById('INPUT81');
Input81.value = x[48].getAttribute('VALUE');
if(x[39].getAttribute('VALUE') == '0') {
Input81.style.visibility = 'hidden';
} else {
Input81.style.visibility = 'visible';
}
var Input82 = document.getElementById('INPUT82');
if(x[39].getAttribute('VALUE') == '0') {
Input82.style.visibility = 'hidden';
} else {
Input82.style.visibility = 'visible';
}
var Input83 = document.getElementById('INPUT83');
if(x[39].getAttribute('VALUE') == '0') {
Input83.style.visibility = 'hidden';
} else {
Input83.style.visibility = 'visible';
}
var Input84 = document.getElementById('INPUT84');
if(x[43].getAttribute('VALUE') == '0') {
Input84.style.visibility = 'hidden';
} else {
Input84.style.visibility = 'visible';
}
var Input85 = document.getElementById('INPUT85');
if(x[39].getAttribute('VALUE') == '0') {
Input85.style.visibility = 'hidden';
} else {
Input85.style.visibility = 'visible';
}
var Input86 = document.getElementById('INPUT86');
if(x[39].getAttribute('VALUE') == '0') {
Input86.style.visibility = 'hidden';
} else {
Input86.style.visibility = 'visible';
}
var Input87 = document.getElementById('INPUT87');
if(x[45].getAttribute('VALUE') == '0') {
SetBg('INPUT87', 'TRANSPE2.PNG');
Input87.innerHTML = 'Cooling';
} else {
SetBg('INPUT87', 'TRANSPE2.PNG');
Input87.innerHTML = 'Fan only';
}
if(x[39].getAttribute('VALUE') == '0') {
Input87.style.display = 'none';
} else {
Input87.style.display = 'block';
}
var Input88 = document.getElementById('INPUT88');
if(x[16].getAttribute('VALUE') == '0') {
Input88.style.visibility = 'hidden';
} else {
Input88.style.visibility = 'visible';
}
var Input89 = document.getElementById('INPUT89');
if(x[0].getAttribute('VALUE') == '0') {
Input89.style.visibility = 'hidden';
} else {
Input89.style.visibility = 'visible';
}
var Input90 = document.getElementById('INPUT90');
if(x[0].getAttribute('VALUE') == '0') {
Input90.style.visibility = 'hidden';
} else {
Input90.style.visibility = 'visible';
}
var Input91 = document.getElementById('INPUT91');
if(x[0].getAttribute('VALUE') == '0') {
Input91.style.visibility = 'hidden';
} else {
Input91.style.visibility = 'visible';
}
var Input92 = document.getElementById('INPUT92');
if(x[0].getAttribute('VALUE') == '0') {
Input92.style.visibility = 'hidden';
} else {
Input92.style.visibility = 'visible';
}
var Input93 = document.getElementById('INPUT93');
if(x[0].getAttribute('VALUE') == '0') {
Input93.style.visibility = 'hidden';
} else {
Input93.style.visibility = 'visible';
}
var Input94 = document.getElementById('INPUT94');
if(x[0].getAttribute('VALUE') == '0') {
Input94.style.visibility = 'hidden';
} else {
Input94.style.visibility = 'visible';
}
var Input95 = document.getElementById('INPUT95');
if(x[0].getAttribute('VALUE') == '0') {
Input95.style.visibility = 'hidden';
} else {
Input95.style.visibility = 'visible';
}
var Input96 = document.getElementById('INPUT96');
if(x[0].getAttribute('VALUE') == '0') {
Input96.style.visibility = 'hidden';
} else {
Input96.style.visibility = 'visible';
}
var Input97 = document.getElementById('INPUT97');
if(x[0].getAttribute('VALUE') == '0') {
Input97.style.visibility = 'hidden';
} else {
Input97.style.visibility = 'visible';
}
var Input98 = document.getElementById('INPUT98');
if(x[0].getAttribute('VALUE') == '0') {
Input98.style.visibility = 'hidden';
} else {
Input98.style.visibility = 'visible';
}
var Input99 = document.getElementById('INPUT99');
if(x[0].getAttribute('VALUE') == '0') {
Input99.style.visibility = 'hidden';
} else {
Input99.style.visibility = 'visible';
}
var Input100 = document.getElementById('INPUT100');
if(x[0].getAttribute('VALUE') == '0') {
Input100.style.visibility = 'hidden';
} else {
Input100.style.visibility = 'visible';
}
var Input101 = document.getElementById('INPUT101');
if(x[0].getAttribute('VALUE') == '0') {
Input101.style.visibility = 'hidden';
} else {
Input101.style.visibility = 'visible';
}
var Input102 = document.getElementById('INPUT102');
if(x[0].getAttribute('VALUE') == '0') {
Input102.style.visibility = 'hidden';
} else {
Input102.style.visibility = 'visible';
}
var Input103 = document.getElementById('INPUT103');
if(x[0].getAttribute('VALUE') == '0') {
Input103.style.visibility = 'hidden';
} else {
Input103.style.visibility = 'visible';
}
var Input104 = document.getElementById('INPUT104');
if(x[18].getAttribute('VALUE') == '0') {
Input104.style.visibility = 'hidden';
} else {
Input104.style.visibility = 'visible';
}
var Input105 = document.getElementById('INPUT105');
if(x[18].getAttribute('VALUE') == '0') {
Input105.style.visibility = 'hidden';
} else {
Input105.style.visibility = 'visible';
}
var Input106 = document.getElementById('INPUT106');
if(x[18].getAttribute('VALUE') == '0') {
Input106.style.visibility = 'hidden';
} else {
Input106.style.visibility = 'visible';
}
var Input107 = document.getElementById('INPUT107');
if(x[18].getAttribute('VALUE') == '0') {
Input107.style.visibility = 'hidden';
} else {
Input107.style.visibility = 'visible';
}
var Input108 = document.getElementById('INPUT108');
if(x[18].getAttribute('VALUE') == '0') {
Input108.style.visibility = 'hidden';
} else {
Input108.style.visibility = 'visible';
}
var Input109 = document.getElementById('INPUT109');
if(x[18].getAttribute('VALUE') == '0') {
Input109.style.visibility = 'hidden';
} else {
Input109.style.visibility = 'visible';
}
var Input110 = document.getElementById('INPUT110');
if(x[18].getAttribute('VALUE') == '0') {
Input110.style.visibility = 'hidden';
} else {
Input110.style.visibility = 'visible';
}
var Input111 = document.getElementById('INPUT111');
if(x[18].getAttribute('VALUE') == '0') {
Input111.style.visibility = 'hidden';
} else {
Input111.style.visibility = 'visible';
}
var Input112 = document.getElementById('INPUT112');
if(x[18].getAttribute('VALUE') == '0') {
Input112.style.visibility = 'hidden';
} else {
Input112.style.visibility = 'visible';
}
var Input113 = document.getElementById('INPUT113');
if(x[18].getAttribute('VALUE') == '0') {
Input113.style.visibility = 'hidden';
} else {
Input113.style.visibility = 'visible';
}
} else {document.location.reload(true); return;}
} catch(err) {console.log(err.message)}
if(pd!=''){setTimeout("GetXML('MAJLES.XML','"+pd+"')",1);}else{setTimeout("GetXML('MAJLES.XML')",1000);}}
function FunWatchDog() {
if(gWatchDog > 0 || g_postInProgress) {
gWatchDog = 0;
} else {
document.location.reload(true);
}
setTimeout("FunWatchDog()", 20000);
}

function PostXML34() {
PostXML('MAJLES.XML', encodeURIComponent('__R3482_USINT_u=0')); 
}
function PostXML35() {
PostXML('MAJLES.XML', encodeURIComponent('__R3482_USINT_u=1')); 
}
function PostXML36() {
PostXML('MAJLES.XML', encodeURIComponent('__R3482_USINT_u=2')); 
}
function PostXML61() {
PostXML('MAJLES.XML', encodeURIComponent('__R3482_USINT_u=3')); 
}
function PostXML63() {
var Input63h = document.getElementById('INPUT63h');
PostXML('MAJLES.XML', encodeURIComponent(Input63h.name+'='+Input63h.value));
}
function PostXML72() {
PostXML('MAJLES.XML', encodeURIComponent('__R10181_USINT_u=0')); 
}
function PostXML73() {
PostXML('MAJLES.XML', encodeURIComponent('__R10181_USINT_u=1')); 
}
function PostXML74() {
PostXML('MAJLES.XML', encodeURIComponent('__R10181_USINT_u=2')); 
}
function PostXML75() {
PostXML('MAJLES.XML', encodeURIComponent('__R10181_USINT_u=3')); 
}
function PostXML77() {
var Input77h = document.getElementById('INPUT77h');
PostXML('MAJLES.XML', encodeURIComponent(Input77h.name+'='+Input77h.value));
}
function PostXML78() {
var Input78 = document.getElementById('INPUT78');
document.getElementById('INPUT78x').style.visibility = 'hidden';if(InputEdited[77]) {
PostXML('MAJLES.XML', encodeURIComponent(Input78.name+'='+Input78.value)); InputEdited[77] = 0;
}
}
function PostXML79() {
var Input79h = document.getElementById('INPUT79h');
PostXML('MAJLES.XML', encodeURIComponent(Input79h.name+'='+Input79h.value));
}
function PostXML88() {
PostXML('MAJLES.XML', encodeURIComponent('__R9783.0_BOOL_i=1')); 
}
function PostXML89() {
PostXML('MAJLES.XML', encodeURIComponent('__R9763.0_BOOL_i=1')); 
}
function PostXML90() {
PostXML('MAJLES.XML', encodeURIComponent('__R9763.1_BOOL_i=1')); 
}
function PostXML91() {
PostXML('MAJLES.XML', encodeURIComponent('__R9763.2_BOOL_i=1')); 
}
function PostXML92() {
PostXML('MAJLES.XML', encodeURIComponent('__R9763.3_BOOL_i=1')); 
}
function PostXML93() {
PostXML('MAJLES.XML', encodeURIComponent('__R9763.4_BOOL_i=1')); 
}
function PostXML94() {
PostXML('MAJLES.XML', encodeURIComponent('__R9763.5_BOOL_i=1')); 
}
function PostXML95() {
PostXML('MAJLES.XML', encodeURIComponent('__R9763.6_BOOL_i=1')); 
}
function PostXML96() {
PostXML('MAJLES.XML', encodeURIComponent('__R9763.7_BOOL_i=1')); 
}
function PostXML97() {
PostXML('MAJLES.XML', encodeURIComponent('__R9764.0_BOOL_i=1')); 
}
function PostXML98() {
PostXML('MAJLES.XML', encodeURIComponent('__R9764.1_BOOL_i=1')); 
}
function PostXML99() {
PostXML('MAJLES.XML', encodeURIComponent('__R9764.2_BOOL_i=1')); 
}
function PostXML100() {
PostXML('MAJLES.XML', encodeURIComponent('__R9764.3_BOOL_i=1')); 
}
function PostXML101() {
PostXML('MAJLES.XML', encodeURIComponent('__R9764.4_BOOL_i=1')); 
}
function PostXML102() {
PostXML('MAJLES.XML', encodeURIComponent('__R9764.5_BOOL_i=1')); 
}
function PostXML103() {
PostXML('MAJLES.XML', encodeURIComponent('__R9764.6_BOOL_i=1')); 
}
function PostXML104() {
PostXML('MAJLES.XML', encodeURIComponent('__R10022.0_BOOL_i=1')); 
}
function PostXML105() {
PostXML('MAJLES.XML', encodeURIComponent('__R10023.0_BOOL_i=1')); 
}
function PostXML106() {
PostXML('MAJLES.XML', encodeURIComponent('__R10022.1_BOOL_i=1')); 
}
function PostXML107() {
PostXML('MAJLES.XML', encodeURIComponent('__R10023.1_BOOL_i=1')); 
}
function PostXML108() {
PostXML('MAJLES.XML', encodeURIComponent('__R10022.2_BOOL_i=1')); 
}
function PostXML109() {
PostXML('MAJLES.XML', encodeURIComponent('__R10023.2_BOOL_i=1')); 
}
function PostXML110() {
PostXML('MAJLES.XML', encodeURIComponent('__R10022.3_BOOL_i=1')); 
}
function PostXML111() {
PostXML('MAJLES.XML', encodeURIComponent('__R10023.3_BOOL_i=1')); 
}
function PostXML112() {
PostXML('MAJLES.XML', encodeURIComponent('__R10022.4_BOOL_i=1')); 
}
function PostXML113() {
PostXML('MAJLES.XML', encodeURIComponent('__R10023.4_BOOL_i=1')); 
}

function PostGlobal() {
var Input18 = document.getElementById('INPUT18');
var Input38 = document.getElementById('INPUT38');
var Input43 = document.getElementById('INPUT43');
var Input48 = document.getElementById('INPUT48');
var Input53 = document.getElementById('INPUT53');
PostXML('MAJLES.XML', (InputEdited[17] ? encodeURIComponent(Input18.name)+'='+encodeURIComponent(Input18.value)+'&' : '')+(InputEdited[37] ? encodeURIComponent(Input38.name)+'='+encodeURIComponent(Input38.value)+'&' : '')+(InputEdited[42] ? encodeURIComponent(Input43.name)+'='+encodeURIComponent(Input43.value)+'&' : '')+(InputEdited[47] ? encodeURIComponent(Input48.name)+'='+encodeURIComponent(Input48.value)+'&' : '')+(InputEdited[52] ? encodeURIComponent(Input53.name)+'='+encodeURIComponent(Input53.value)+'&' : ''));
InputEdited[17]=0;
InputEdited[37]=0;
InputEdited[42]=0;
InputEdited[47]=0;
InputEdited[52]=0;
}
