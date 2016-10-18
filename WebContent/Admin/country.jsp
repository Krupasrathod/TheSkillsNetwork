<html>
<head>
<basefont face="Arial">
<SCRIPT LANGUAGE="JavaScript">
<!-- hide the code!

function isDigit(c)
{
var test = "" + c;
if (test == "0" || test == "1" || test == "2" || test == "3" || test == "4"
|| test == "5" || test == "6" || test == "7" || test == "8" || test == "9")
{
return true;
}
return false;
}

function ageOK()
{
if (document.forms[ 0 ].age.value.length == 0)
{
alert("Sorry, you have failed to enter an age");
return false;
}
var c = document.forms[ 0 ].age.value.substring(0, 1);
if (isDigit(c) == false)
{
alert("Sorry, you have failed to enter an appropriate age");
return false;
}
var result = parseInt(document.forms[ 0 ].age.value, 10);
if (result < 18)
{
alert("Sorry, you have failed to enter an appropriate age");
return false;
}
return true;
}

function isAllDigits(s)
{
var test = "" + s;
for (var k = 0; k < test.length; k++)
{
var c = test.substring(k, k+1);
if (isDigit(c) == false)
{
return false;
}
}
return true;
}

function checkForm()
{
if (ageOK() == false)
{
return;
}
document.forms[ 0 ].submit();
}
// end of code -->
</SCRIPT>

</head>
<body>

<form action="--WEBBOT-SELF--" method="POST">
<!--webbot bot="SaveResults" u-file="_private/feedback.csv" s-format="HTML/BR" s-label-fields="TRUE" b-reverse-chronology="FALSE" s-builtin-fields startspan --><input TYPE="hidden" NAME="VTI-GROUP" VALUE="0"><!--webbot bot="SaveResults" endspan i-checksum="43374" -->
Name:
<br>
<input type="text" name="name" id="name" size="20" maxlength="64">
<p>
Email address:
<br>
<input type="text" name="email" id="email" size="20" maxlength="64">
<p>
Age:
<br>
<input type="text" name="age" id="age" size="20" maxlength="3">
<p>
<input type="submit" value="Submit Form" ONCLICK="checkForm()">
</form>
</body>
</html>