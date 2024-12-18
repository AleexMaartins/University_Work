//$c13 SAB 09/09/09 SPR 516717: Validate numerical text fields within JavaScript to avoid focusing issues
//$c12 SAB 04/30/09 SPR 464128. Added click handler for linked serial number edit fields.  Select all text in clicked field or when tab or auto-advance
//$c11 JPS 04/17/09 SPR 478500. Support for tracking clicks on expand/collapse group boxes within the summary page. Added calls to OnHTML_EXPANDGROUPBOX.
//$c10 JPS 04/16/09 SPR 485363.  Added OnEnterKeyOnButton and OnEnterKeyInEdit and call them from our Edit Input fields and our footer buttons instead of using generic OnClick handler. Replacing OnClick in footer buttons with OnMouseUp and OnKeyPress to make buttons respond to specific clicks or specific keyboard actions. Needed because we always force focus to the footer page, and ENTER keys would automatically press the first button.  Modified text Input Edit fields to watch for OnKeyPress so we can handle ENTER key hits and jump to next edit field in javascript, or set focus to the footer "Next" button.
//$c9   JPS 04/14/09 SPR 478491. Added checks for enabled/disabled buttons before setting focus.
//$c8   JPS 04/02/09 SPR 486493.  Added null check for what appears to be a timing issue as we transition pages.  Also added a bunch of other null checks for every object used to avoid potential script errors.
//$c7   JPS 01/23/09 Prj 14740. Added support for collapsible header bars with bitmap background and hover states for the collapse/expand icons. Added mouseOverGroupBox.
//$c6   JPS 01/12/09 SPR 467153. Added support for restoring scroll position of various DIV elements. Added GetDivScrollPosition/SetDivScrollPosition.
//$c5   JPS 12/17/08 SPR 464124. Added setNextButtonFocus and setNextButtonFocusFromFrame.
//$c4   JPS 12/12/08 Added changeToImage for updating footer buttons on mouse over, down, etc.
//$c3   JPS 11/07/08 Added arg to productClicked.
//$c2   JPS 11/06/08 Updated .gif location reference.
//$c1   JPS 11/05/08 Prj 14454. Created.  Most of these functions were taken out of CHTMLGeneratorInterface::GetHTML_Script which used to write them dynamically to top of every .htm.
//
//
// Copyright 2008 SolidWorks Corporation.  All rights reserved.
//
// No part of these files may be reproduced or used outside of the SolidWorks product
// for any purpose, without the express written permission of SolidWorks Corporation.
//

function OnHTML_Dismiss_MultiOption(event)
{
	found = false;
	childnode = event.srcElement;
	do
	{
		if(childnode.className == "multioption_root")
		{
			found = true;
		}
		else
		{
			childnode = childnode.parentNode;
		}
	}while(found == false && childnode.tagName != "HTML");
	if(found == false)
	{
		var openmenus = document.getElementsByTagName("UL");
		for(i=0; i<openmenus.length; i++)
		{
			menu_node = openmenus[i];
			if(menu_node.className == "multioption_menu_visible");
			{
				menu_node.className = "multioption_menu_hidden";
				menu_node.style.top = "auto";
			}
		}
	}
}

// Removed the "onclick" handler in our footer buttons and handle mouse clicks instead using the "OnMouseUp" handler. Because of this, hitting
// ENTER key doesn't work, so adding the function below to be called by "OnKeyPress" event for each button. Part of SPR 485363.
function OnEnterKeyOnButton(evt) 
{ 
      var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : ((evt.which) ? evt.which : 0)); 
      //alert("charcode = " + charCode);
      if (charCode == 13) 
        return true;        // If ENTER key, then it will cause the OnHTML_BUTTON(id) function to be called...
      
      return false;

//        if(evt != null) 
//        { 
//            var button = evt.srcElement;
//            if(button != null)
//            {
//            //alert("OnEnterKeyInEdit");
//            button.focus();
//            button.click();               // This doesn't work because I took onclick out of button definition due to the focus issues.
//                                          // Instead, return true above and we will call the OnHTML_BUTTON function. Part of SPR 485363.
//            }
//        }
}

// Because we are always forcing focus to the buttons at the bottom of the footer, we need the function below to be called from the "OnKeyPress" 
// event for each edit field.  This will allow us to "tab" to the next edit field or send focus to the "Next" button if no more edit fields exist.
// Note, the stuff below needs to be combined with removal of "OnClick" handlers for the footer button and instead watch for actual keypress on footer buttons.
// Part of SPR 485363.
function OnEnterKeyInEdit(strThisId, strNextId, evt) 
{ 
   var field = document.getElementById(strThisId); 
   if (field != null && evt != null) 
   { 
        var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : ((evt.which) ? evt.which : 0)); 
        if (charCode == 13)     // If ENTER key is hit...
        { 
            var nextField = document.getElementById(strNextId); 
            if (nextField != null && !nextField.disabled) 
            { 
                nextField.focus();//select()
                // Move to end of the field
                var r = nextField.createTextRange(); 
                r.collapse(false); 
                r.select();
                return false;   // Return FALSE so we don't propogate this to the parent view which would send an ENTER key to the footer
                                // window because it always has focus forced to it. Part of SPR 485363.
            } 
            else    // If no futher edit fields, or next edit field disabled, the force ENTER key to jump focus to the "Next" button.
            {
                setNextButtonFocusFromFrame();
                return true;
            }
        } 
   } 
} 

function AutoTab(strThisId, strNextId, evt) 
{ 
   var field = document.getElementById(strThisId); 
   if (field != null && evt != null) 
   { 
      var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : ((evt.which) ? evt.which : 0)); 
      if (charCode >= 48 && field.value.length == field.maxLength) 
      { 
         // Advance to next field (no longer just if it is empty)
         var nextField = document.getElementById(strNextId); 
         if (nextField != null 
			//&& nextField.value.length == 0 
			&& !nextField.disabled) 
         { 
            nextField.focus(); 
		//nextField.select();
            // Move to end 
            var r = nextField.createTextRange(); 
            //r.collapse(false);
            r.select(); 
         } 
      } 
   } 
} 

var lastEditClicked = "";
function ClickField(fieldName) 
{ 
   var field=document.getElementById(fieldName); 
   if ((field != null) && !field.disabled && (lastEditClicked != fieldName))
   { 
 	lastEditClicked = fieldName;

      field.focus(); 
      var r = field.createTextRange(); 
     	//r.collapse(false);
      r.select(); 
   } 
} 
function FocusField(fieldName) 
{ 
   var field=document.getElementById(fieldName); 
   if (field != null && !field.disabled) 
   { 
      field.focus(); 
      var r = field.createTextRange(); 
      //r.collapse(false); 
      r.select(); 
   } 
} 
var nPrevScrollPos = 0; 
function GetScrollPosition() 
{ 
   var nScrollPos = 0; 
   if(document.body != null)
        nScrollPos = document.body.scrollTop; 
        
   return nScrollPos; 
} 

// On user scroll action, we hook the OnHTML_DIVSCROLLPOS function which calls this javascript function to get the div scroll value
// and pass it to our C++ thru Window.external callback.  Page reload will call the SetDivScrollPosition function below with hardcoded 
// scroll value that was stored on the C++ side. Override ::CreateOnLoad if your page has a DIV you want to maintain its scroll position.
function GetDivScrollPosition(divName) 
{ 
   var nScrollPos = 0; 
   var divItem = document.getElementById(divName); 
   if(divItem != null)
   {
     nScrollPos = divItem.scrollTop;
   }

   return nScrollPos; 
} 

function SetDivScrollPosition(divName, scrollPos) 
{
   var divItem = document.getElementById(divName); 
   if(divItem != null)
   {
     divItem.scrollTop = 0;		// NOTE - we MUST first set this to zero, or else call to scrollTop only scrolls to 21...!
     divItem.scrollTop = scrollPos;
   }
}

// SPR 516717: Validate within JavaScript to avoid focusing issues
var nPrevDefaultValidation = 0; 
function ValidateField(fieldName, minval, maxval, defaultval, errortext) 
{ 
   if (nPrevDefaultValidation == 0)
   {
	nPrevDefaultValidation = defaultval;
   }

   var field=document.getElementById(fieldName); 
   if (field != null && !field.disabled) 
   { 
	var val = field.value - 0;
	var OK = 1;
	if (parseInt(field.value) != val)
	{
		OK = 0;	// Not a valid integer
	}
	else if ((minval != -1) && (val < minval))
	{
		OK = 0;	// Integer is too small
	}
	else if ((maxval != -1) && (val > maxval))
	{
		OK = 0;	// Integer is too small
	}

	// If invalid, show error, reset to default value and reset focus
	if (OK == 0)
	{
		field.value = nPrevDefaultValidation;	// Reset before calling alert so OnBlur won't show a duplicate error
		alert(errortext);
		FocusField(fieldName);
	}
	else
	{
		nPrevDefaultValidation = val;
	}
	return OK;
   }
   return 1;
} 

// Used by Product Selection page for showing the product description... Prj 14454.
function productClicked(optionID,fromIFrame) 
{ 
	var prodDescId = "product_description_" + optionID; 

	var prodLineItemId = "checkBox_ID_" + optionID;	// The table containing the selected product line item...

	// Get the text from a hidden <div> that contains the product description
	// and pass it to parent content.htm page.. 
	var prodDescObj = document.getElementById(prodDescId); 
	if(prodDescObj) 
	{ 
		var prodDesc = prodDescObj.innerHTML; // Get the hidden text...
			
		if(fromIFrame==1)
		{
			if(window.parent) 
			{ 
				window.parent.showProductDescription(prodDesc); // Pass it to the parent doc to set the value...
				highlightTableData(prodLineItemId);				// Now highlight the selected line item...
			} 
		}
		else
		{
			showProductDescription(prodDesc); // Pass it to the parent doc to set the value...
			highlightTableData(prodLineItemId);				// Now highlight the selected line item...
		}
	} 
} 

// Used by Product Selection page for showing the product description... Prj 14454.
function showProductDescription(prodDesc) 
{ 
	var actDescObj = document.getElementById("active_product_description");
	if(actDescObj)
	{ 
		if(prodDesc=="")
			prodDesc="&nbsp;";
		actDescObj.innerHTML=prodDesc;
	} 
} 

// For use on the Product Selection page to hightlight the selected line item... Prj 14454.
function highlightTableData(tdId) 
{ 
	var allTDElements = document.all.tags("td");
	if(allTDElements==null)
		return;

	for (i=0;i<allTDElements.length;i++)
	{ 
	    if(allTDElements[i] != null)
	    {
		    if(allTDElements[i].id == tdId)
		    {
			    allTDElements[i].style.backgroundColor = "#d3e5f1";
		    }
		    else
		    {
			    allTDElements[i].style.backgroundColor = "";     // Dehighlight any previously selected row...
		    }
		}
	}
	
} 

// This will hide and show a DIV for "expando" menu items. Placement of DIV matters in html code. Prj 14454.
function expandGroupBox(groupBoxID)
{

	theDiv = eval("document.all." + groupBoxID + "Expando");     // This is the collapsible area
	if(theDiv)
	{
	
	    var action = "";

		//alert("Found " + groupBoxID);
		//if(theDiv.style.visibility == "visible")
		if(theDiv.style.display == "none")
		{
		//	alert("Setting to visible");
			var bodyElem = document.getElementById(groupBoxID + "body");
			if(bodyElem != null)
			    bodyElem.style.backgroundPositionY=0;
			    
			theDiv.style.display = "block";
			theDiv.style.position = "relative";
			//theDiv.style.visibility = "hidden";

            var idLength = groupBoxID.length;
            var underPos = groupBoxID.lastIndexOf("_");
            if(underPos == -1)
                underPos = idLength;
            
            var tdName = groupBoxID.substr(0,underPos);
           OnHTML_EXPANDGROUPBOX(true,tdName);       // Pass info to the wizard so we can remember the manually changed collapse state on refresh of page. SPR 478500.

			// Update the up/down arrow
			//var arrowName = groupBoxID + "Arrow";
			//document.getElementById(arrowName).src="images/expandable.jpg";
			
           action = "collapsible";


		}
		else
		{
		//	alert("current state is visible. Making hidden.");
			var bodyElem = document.getElementById(groupBoxID + "body");
			if(bodyElem != null)
			    bodyElem.style.backgroundPositionY=40;
			    
			theDiv.style.display = "none"
			theDiv.style.position = "relative";
    
            var idLength = groupBoxID.length;
            var underPos = groupBoxID.lastIndexOf("_");
            if(underPos == -1)
                underPos = idLength;
            
            var tdName = groupBoxID.substr(0,underPos);
            OnHTML_EXPANDGROUPBOX(false, tdName);       // Pass info to the wizard so we can remember the manually changed collapse state on refresh of page. SPR 478500.

			// Update the up/down arrow
			//var arrowName = groupBoxID + "Arrow";
		    //document.getElementById(arrowName).src="images/buttons/collapsible.jpg";	

            action = "expandable";

		}

	    //setCollapseState("" + groupBoxID + "");  // Write expand/collapse state to registry.

		if (action != "") {
		    var imgelem = document.getElementById(groupBoxID + "icon");
		    if (imgelem != null)
		        imgelem.src = "images/" + action + ".png";
		}

	}
//	else
//		alert("Error! Cound not find " + groupBoxID);
	showMoreBox();

}

// Change any single image on mouseover, mouseout, etc.  NOTE - element NAME must be same as the base image name.  For example,
// the NAME might be "cancel" and the images are "cancel.gif, cancel_rollover.gif", etc.
function changeToImage(newImgAppendStr)
{
    var idStr = event.srcElement.name;
    var srcName = event.srcElement.src;
    
    if(srcName == null)
        return;

    var fileExt = srcName.substr(srcName.lastIndexOf("."));

	event.srcElement.src="images/buttons/" + idStr + newImgAppendStr + fileExt;
}
// This can be called from the footer.html document. SPR 464124
function setNextButtonFocus()
{
    var nextButton = document.getElementById("next");
	if(nextButton != null && !nextButton.disabled)
	    nextButton.focus();
}
// This is called from the parent frameset.html so focus won't go to the frame element which highlights the entire frame element. SPR 464124
function setNextButtonFocusFromFrame()
{
	var footerFrame = frames['IM_frame_footer'];
	if(footerFrame)
	{
		if(footerFrame.document)
		{
			var nextButton = footerFrame.document.getElementById("Next");
	    	if(nextButton && !nextButton.disabled)
	    		nextButton.focus();
		}
	}
}

function showMoreBox() 
{
    var doc = document.body;
    var floatingbox = document.getElementById("more_box");
    if (floatingbox != null) {
        if (doc.clientHeight < doc.scrollHeight) {
            floatingbox.style.display = "block";
            if ((doc.scrollTop + doc.clientHeight + 10) < doc.scrollHeight) {
                floatingbox.style.bottom = "-" + doc.scrollTop + "px";
            }
            else {
                floatingbox.style.display = "none";
            }
        }
        else {
            floatingbox.style.display = "none";
        }
    }
}
function footerbutton_onmouseup() {
    var element = event.srcElement;
    if (element == null)
        return;
    if (element.nodeName != "DIV") {
        element = element.parentNode.parentNode;
    }
    element.style.borderColor = '';
    element.style.backgroundColor = '';
}

function footerbutton_onmousedown() {
    var element = event.srcElement;
    if (element == null)
        return;
    if (element.nodeName != "DIV") {
        element = element.parentNode.parentNode;
    }
    element.style.borderColor = 'black';
    element.style.backgroundColor = '#cccccc';
}
