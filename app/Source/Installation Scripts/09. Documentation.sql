begin
delete from SFB_HELP_TEXT;

    insert into SFB_HELP_TEXT (HETE_ID,HETE_TEXT) values (1,' ');
    
update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'<html>
   <head>
      <meta content="text/html; charset=UTF-8" http-equiv="content-type">
   </head>
   <body class="c23 doc-content">
      <p class="c3"><span class="c5"></span></p>
      <p class="c18 title" id="h.e89bu4ma84le"><span class="c16 c20">Table of Content</span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c9"><span class="c7"><a class="c6" href="#h.rwlpv1buq7p9">Oracle APEX Field Documentation</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.fiolcc6vyx49">1. Text Input Field</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.ki96dhmahe8q">2. Number Input Field</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.2vqtn1your4w">3. E-Mail Input Field</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.lllpnhgedb72">4. Dropdown Item</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.5qrn2jdd8u5p">5. Radio Group</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.6xpvugblw2h6">6. Selectone - Dropdown Item</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.cnwwqzhvw6jk">7. Date Item</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.36356tfwg2y4">8. Combo-Box Item</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.waomq1r2o7jv">9. Checkbox - Boolean Item</a></span></p>
      <p class="c9"><span class="c7"><a class="c6" href="#h.awu1hy1u2k52">Oracle APEX Field Properties Documentation (JSON)</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.yh13hlq37kil">1. Properties: MaxLength (JSON)</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.hsohzz95ynz0">2. Properties: Url (JSON)</a></span></p>
      <p class="c9"><span class="c7"><a class="c6" href="#h.3wg4a9aa3ql9">Oracle APEX Field Properties Documentation (APEX)</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.m5ha58oa29bj">1. Properties: MaxLength (APEX)</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.e1sihkwmu4gl">2.Properties: Rating(APEX)</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.e27662pddxdg">3.Properties: Password(APEX)</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.rn7t7sqgguh2">4.Properties: Lower Textcase(APEX)</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.7wkzeaa4cf5p">5.Properties: Richtext(APEX)</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.vcy1rofkqdvn">6.Properties: Switch(APEX)</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.4jh9r83u43fx">7.Properties: CSS(APEX)</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.oh1nm9llydp2">8.Properties: TextBefore(APEX)</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.oqprkhrq4bl1">9.Properties: Align (APEX)</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.den8srxmmecj">10.Properties: Select (APEX)</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.xip0f11hp04p">11. Properties: Colspan (APEX)</a></span></p>
      <p class="c1"><span class="c5"><a class="c6" href="#h.g80pr5fd3lzf">12. Properties: Label (APEX)</a></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <hr style="page-break-before:always;display:none;">
      <p class="c3"><span class="c5"></span></p>
      <h1 class="c21" id="h.rwlpv1buq7p9"><span class="c16 c17">Oracle APEX Field Documentation</span></h1>
      <p class="c4"><span class="c5">In this section, you will find a detailed gu') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'ide on the different field types available in Oracle APEX. We will walk you through how to create, configure, and customize fields. Each section provides visual examples to help you better understand the process.</span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h2 class="c10" id="h.fiolcc6vyx49"><span class="c12">1. Text Input Field</span></h2>
      <p class="c4"><span>The </span><span class="c11">Text Input Field</span><span class="c5">&nbsp;is one of the most commonly used fields in Oracle APEX. It allows users to enter text data, which can range from simple information such as names and addresses to more complex inputs. Text fields can be customized with various properties such as length limits, validation rules, and placeholder text.</span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 566.93px; height: 93.41px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image31.png" style="width: 566.93px; height: 93.41px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 566.93px; height: 39.69px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image66.png" style="width: 566.93px; height: 39.69px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 566.93px; height: 73.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image36.png" style="width: 566.93px; height: 73.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h2 class="c10" id="h.ki96dhmahe8q"><span class="c12">2. Number Input Field</span></h2>
      <p class="c4"><span>The</span><span class="c11">&nbsp;Number Input Field</span><span class="c5">&nbsp;is commonly used in Oracle APEX for entering numeric data. It allows users to input values such as quantities, prices, or other numerical information. Number fields can be customized with properties like minimum and maximum values, validation rules, and step values.</span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p c') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'lass="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 90.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image67.png" style="width: 601.70px; height: 90.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c0">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 41.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image52.png" style="width: 601.70px; height: 41.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value. The user is required to input a minimum of 5 and a maximum of 10 digits. Otherwise, the validation will trigger an error message.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 96.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image61.png" style="width: 601.70px; height: 96.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h2 class="c10" id="h.2vqtn1your4w"><span class="c12">3. E-Mail Input Field</span></h2>
      <p class="c4"><span>The </span><span class="c11">Email Input Field</span><span class="c5">&nbsp;is commonly used in Oracle APEX for capturing email addresses. It ensures that users provide a valid email format and can be customized with properties such as validation rules and placeholder text. This field helps enforce the correct structure of an email address, improving data accuracy.</span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 82.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image47.png" style="width: 601.70px; height: 82.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field N') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'ame, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 41.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image13.png" style="width: 601.70px; height: 41.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value. The user is required to input a minimum of 5 and a maximum of 10 digits. Otherwise, the validation will trigger an error message.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 77.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image62.png" style="width: 601.70px; height: 77.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h2 class="c10" id="h.lllpnhgedb72"><span class="c12">4. Dropdown Item</span></h2>
      <p class="c8"><span>The </span><span class="c11">Dropdown Item</span><span class="c5">&nbsp;is a widely used component in Oracle APEX for selecting predefined options. It allows users to choose from a list, ensuring data consistency and accuracy. The dropdown can be customized with properties such as default values, dynamic queries, and placeholder text. This component enhances user experience by minimizing input errors and streamlining data entry, making it an essential tool for form design.</span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 174.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image7.png" style="width: 601.70px; height: 174.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 65.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image18.png" style="width: 601.70px; height: 65.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p cla') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'ss="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 124.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image4.png" style="width: 601.70px; height: 124.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <h2 class="c10" id="h.5qrn2jdd8u5p"><span class="c12">5. Radio Group</span></h2>
      <p class="c8"><span>The </span><span class="c11">Radio Group</span><span class="c5">&nbsp;is a versatile component in Oracle APEX used for selecting a single option from a set of predefined choices. It presents users with a clear and concise way to make selections, enhancing usability. The Radio Group can be customized with properties such as default selections, labels, and layout options. This component promotes data consistency by ensuring that users can only choose one option, making it an effective choice for scenarios where exclusive selections are required.</span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 122.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image28.png" style="width: 601.70px; height: 122.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 54.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image54.png" style="width: 601.70px; height: 54.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 132.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image38.png" style="width: 601.70px; height: 132.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'px);" title=""></span></p>
      <h2 class="c10" id="h.6xpvugblw2h6"><span class="c12">6. Selectone - Dropdown Item</span></h2>
      <p class="c8"><span>The </span><span class="c11">Select One - Dropdown Item</span><span class="c5">&nbsp;is a powerful component in Oracle APEX that allows users to choose a single option from a dropdown list. This element is ideal for scenarios where you want to limit user input to a specific set of choices. It can be easily customized with properties such as default selections, dynamic source queries, and placeholder text. By presenting options in a compact format, the Select One - Dropdown Item enhances the user experience while ensuring data integrity and consistency. It is particularly useful in forms where clarity and efficiency are key.</span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 201.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image25.png" style="width: 601.70px; height: 201.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 89.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image41.png" style="width: 601.70px; height: 89.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 97.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image39.png" style="width: 601.70px; height: 97.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <h2 class="c10" id="h.cnwwqzhvw6jk"><span class="c12">7. Date Item</span></h2>
      <p class="c8"><span>The </span><span class="c11">Date Item</span><span class="c5">&nbsp;is a key component in Oracle APEX used for capturing date inputs from users. It provides a user-friendly interface, often featuring a calendar picker to simplify date selection. This component can be customized with properties such as default dates, format settings, and validation rules to ensure accurate input. By standardizing date entry, the Date Item enhances data integrity and reduces the likelihood of errors, making it essential for applications that require precise date information. Its intuit') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'ive design improves user experience, allowing for seamless data entry in forms.</span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 261.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image49.png" style="width: 601.70px; height: 261.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 49.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image65.png" style="width: 601.70px; height: 49.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 68.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image8.png" style="width: 601.70px; height: 68.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <h2 class="c10" id="h.36356tfwg2y4"><span class="c12">8. Combo-Box Item</span></h2>
      <p class="c8"><span>The </span><span class="c11">Combo-Box Item</span><span class="c5">&nbsp;is a versatile component in Oracle APEX that combines the functionality of a dropdown list and a text input field. It allows users to either select an option from a predefined list or enter their own value, providing flexibility in data entry. The Combo-Box Item can be customized with properties such as default selections, dynamic source queries, and placeholder text. This feature enhances user experience by accommodating both standard options and unique inputs, making it particularly useful in scenarios where users may need to provide additional context or information. By facilitating a wider range of inputs, the Combo-Box Item promotes data accuracy and efficiency in forms.</span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 209.33px;"><img alt="" src="https://raw.githubusercon') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'tent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image35.png" style="width: 601.70px; height: 209.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 42.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image27.png" style="width: 601.70px; height: 42.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 97.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image50.png" style="width: 601.70px; height: 97.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <h2 class="c10" id="h.waomq1r2o7jv"><span class="c12">9. Checkbox - Boolean Item</span></h2>
      <p class="c8"><span>The </span><span class="c11">Checkbox - Boolean Item</span><span class="c5">&nbsp;is a straightforward component in Oracle APEX used for capturing binary choices, such as yes/no or true/false responses. This item allows users to make a simple selection with a single checkbox, which can be customized with properties such as default values and labels. Its intuitive design makes it easy for users to understand and interact with, ensuring quick and accurate data entry. The Checkbox - Boolean Item is particularly useful in forms where a clear, binary decision is required, helping to streamline workflows and maintain data integrity.</span></p>
      <p class="c8 c22"><span class="c5"></span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 52.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image45.png" style="width: 601.70px; height: 52.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c0">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform:') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||' rotate(0.00rad) translateZ(0px); width: 601.70px; height: 52.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image58.png" style="width: 601.70px; height: 52.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 69.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image63.png" style="width: 601.70px; height: 69.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <hr style="page-break-before:always;display:none;">
      <h1 class="c13" id="h.9n1upc28go4e"><span class="c16 c17"></span></h1>
      <h1 class="c21" id="h.awu1hy1u2k52"><span class="c16 c17">Oracle APEX Field Properties Documentation (JSON)</span></h1>
      <p class="c4"><span class="c5">In this section, you will find a detailed guide on the different field types available in Oracle APEX. We will walk you through how to create, configure, and customize fields. Each section provides visual examples to help you better understand the process.</span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h2 class="c10" id="h.yh13hlq37kil"><span class="c12">1. Properties: MaxLength (JSON)</span></h2>
      <p class="c8"><span>The </span><span class="c11">MaxLength</span><span class="c5">&nbsp;property in JSON is used to define the maximum number of characters that a text input can accept. This property is crucial for enforcing input constraints and ensuring data integrity in applications. By specifying a MaxLength value, developers can control the length of user inputs, preventing errors caused by excessively long entries.</span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 464.00px; height: 57.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image5.png" style="width: 464.00px; height: 57.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 69.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image57.png" style="width: 601.70px; height: 69.33px; margin-left: 0.00px; margin-') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 154.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image6.png" style="width: 601.70px; height: 154.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h2 class="c10" id="h.hsohzz95ynz0"><span class="c12">2. Properties: Url (JSON)</span></h2>
      <p class="c8"><span class="c2">The </span><span class="c2 c11">Url</span><span class="c2">&nbsp;property in JSON is used to define a string that represents a web address, allowing applications to link to external resources or navigate to different pages. This property is essential for creating hyperlinks, directing users to relevant content, or accessing APIs. By specifying a valid URL format, developers can ensure that the links function correctly, enabling smooth navigation and interaction within the application. Proper validation and formatting of the `Url` property help maintain data integrity and enhance the overall user experience.</span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 466.00px; height: 72.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image34.png" style="width: 466.00px; height: 72.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c7">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 50.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image17.png" style="width: 601.70px; height: 50.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 82.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image16.png" style="width: 601.70px; height: 82.67px; margi') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'n-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h1 class="c21" id="h.3wg4a9aa3ql9"><span class="c16 c17">Oracle APEX Field Properties Documentation (APEX)</span></h1>
      <p class="c4"><span class="c5">In this section, you will find a detailed guide on the different field types available in Oracle APEX. We will walk you through how to create, configure, and customize fields. Each section provides visual examples to help you better understand the process.</span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h2 class="c10" id="h.m5ha58oa29bj"><span class="c12">1. Properties: MaxLength (APEX)</span></h2>
      <p class="c8"><span>The </span><span class="c11">MaxLength</span><span class="c5">&nbsp;property in JSON is used to define the maximum number of characters that a text input can accept. This property is crucial for enforcing input constraints and ensuring data integrity in applications. By specifying a MaxLength value, developers can control the length of user inputs, preventing errors caused by excessively long entries.</span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 464.00px; height: 57.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image5.png" style="width: 464.00px; height: 57.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c7"></span></p>
      <p class="c4"><span class="c7">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 69.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image57.png" style="width: 601.70px; height: 69.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 154.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image6.png" style="width: 601.70px; height: 154.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h2 class="c10 c19" id="h.jbgkgwyg6b7y"><span class="c12"></span></h2>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><sp') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'an class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h2 class="c10" id="h.e1sihkwmu4gl"><span class="c12">2.Properties: Rating(APEX)</span></h2>
      <p class="c8"><span>The </span><span class="c11">StarRating</span><span class="c5">&nbsp;property in Oracle APEX is used to define the maximum number of stars a user can select in a rating item. This property is critical for setting constraints on user feedback and ensuring consistency across the application. By specifying the maximum number of stars, developers can control the rating scale, ensuring that users do not exceed the predefined rating limit, which helps standardize input and maintain data integrity.</span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 64.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image60.png" style="width: 601.70px; height: 64.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c7">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 32.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image10.png" style="width: 601.70px; height: 32.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 50.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image26.png" style="width: 601.70px; height: 50.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h2 class="c10" id="h.e27662pddxdg"><span class="c12">3.Properties: Password(APEX)</span></h2>
      <p class="c8"><span>The </span><span class="c11">Password</span><span>&nbsp;property in Oracle APEX is used to create an input area where users can securely enter sensitive information, such as passwords. The field au') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'tomatically masks the characters, ensuring that the entered information remains hidden from view. Developers can also apply validation rules, set minimum or maximum character limits, and enforce password strength requirements. This field is essential for ensuring data security and protecting user credentials in an application.</span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 447.00px; height: 75.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image14.png" style="width: 447.00px; height: 75.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c7">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 26.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image46.png" style="width: 601.70px; height: 26.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 69.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image40.png" style="width: 601.70px; height: 69.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h2 class="c10" id="h.rn7t7sqgguh2"><span class="c12">4.Properties: Lower Textcase(APEX)</span></h2>
      <p class="c8"><span class="c2">The </span><span class="c2 c11">Lowercase Text</span><span class="c2">&nbsp;property in Oracle APEX ensures that any text entered into a field is automatically converted to lowercase. This property is useful for enforcing consistent data formatting, especially in cases where case sensitivity should be ignored, such as for email addresses or identifiers. By applying this property, developers can prevent case-related discrepancies in user inputs and maintain uniformity throughout the application.</span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 459.00px; height: 53.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image2') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'3.png" style="width: 459.00px; height: 53.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c7">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 33.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image64.png" style="width: 601.70px; height: 33.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 57.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image29.png" style="width: 601.70px; height: 57.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <h2 class="c10" id="h.7wkzeaa4cf5p"><span class="c12">5.Properties: Richtext(APEX)</span></h2>
      <p class="c8"><span>The </span><span class="c11">Rich Text</span><span class="c5">&nbsp;property in Oracle APEX allows users to enter and format text with various styles, such as bold, italics, lists, and hyperlinks. This property enables a rich text editor in the input field, giving users the flexibility to format their content beyond plain text. It is particularly useful for areas where detailed content, like descriptions, comments, or blog entries, is needed. By enabling the Rich Text property, developers can enhance the user experience by providing advanced text formatting options within the application.</span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 225.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image1.png" style="width: 601.70px; height: 225.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c7">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 34.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image56.png" style="width: 601.70px;') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||' height: 34.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 78.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image44.png" style="width: 601.70px; height: 78.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <h2 class="c10" id="h.vcy1rofkqdvn"><span class="c12">6.Properties: Switch(APEX)</span></h2>
      <p class="c8"><span>The </span><span class="c11">Switch</span><span>&nbsp;property in Oracle APEX allows developers to create a toggle switch control that users can click to switch between two states, typically &quot;On&quot; and &quot;Off.&quot; This property is ideal for scenarios where users need to enable or disable a setting, select between binary options, or turn a feature on or off. The `Switch` property enhances user experience by providing a visually intuitive and interactive control, making it easy to select between two distinct choices in the application.</span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 58.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image3.png" style="width: 601.70px; height: 58.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c7">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 30.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image24.png" style="width: 601.70px; height: 30.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 54.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image48.png" style="width: 601.70px; height: 54.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0p') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'x);" title=""></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h2 class="c10" id="h.4jh9r83u43fx"><span class="c12">7.Properties: CSS(APEX)</span></h2>
      <p class="c8"><span>The </span><span class="c11">CSS</span><span class="c5">&nbsp;property in Oracle APEX allows developers to apply custom styles to elements within the application. This property is used to modify the appearance of components such as buttons, text, regions, and more by defining specific styling rules like colors, fonts, margins, and layout. By using the `CSS` property, developers can enhance the visual design and user interface of the application, ensuring a consistent and customized look that aligns with branding or aesthetic preferences.</span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 424.00px; height: 69.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image15.png" style="width: 424.00px; height: 69.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c7">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 30.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image19.png" style="width: 601.70px; height: 30.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 82.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image11.png" style="width: 601.70px; height: 82.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c5"></span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 49.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image55.png" style="width: 601.70px; height: 49.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <h2 class="c10" id="h.oh1nm9llydp2"><span class="c12">8.Properties: TextBefore(APEX) </span></h2>
      <p class="c8"><span>The </spa') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'n><span class="c11">Text Before</span><span>&nbsp;property in Oracle APEX allows developers to display custom text or labels directly before a form item or input field. This property is useful for adding context, instructions, or descriptions to help users understand the purpose of the input field. By using the `Text Before` property, developers can provide additional clarity, improving the user experience and ensuring that users enter the correct information into the form.</span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 478.00px; height: 134.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image22.png" style="width: 478.00px; height: 134.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c7">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 29.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image9.png" style="width: 601.70px; height: 29.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 78.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image53.png" style="width: 601.70px; height: 78.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h2 class="c10" id="h.oqprkhrq4bl1"><span class="c12">9.Properties: Align (APEX)</span></h2>
      <p class="c8"><span class="c2">The </span><span class="c2 c11">Align</span><span class="c2">&nbsp;</span><span class="c2">property in Oracle APEX specifies the alignment of content within a component, such as text, buttons, or regions. This property allows developers to control the positioning of elements, ensuring that they are visually organized according to the desired layout. Options typically include left, center, or right alignment. By using the Align property, developers can enhance the overall aesthetics of the application, improve readability, and create a more user-friendly interface by ensuring that elements are aligned consistently throughout the application.</span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rot') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'ate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 72.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image2.png" style="width: 601.70px; height: 72.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c7">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 30.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image32.png" style="width: 601.70px; height: 30.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 78.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image37.png" style="width: 601.70px; height: 78.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <h2 class="c10" id="h.den8srxmmecj"><span class="c12">10.Properties: Select (APEX)</span></h2>
      <p class="c8"><span class="c2">The </span><span class="c2 c11">Boolean Select</span><span class="c2">&nbsp;property in Oracle APEX is used to create a selection control that represents a true/false or yes/no choice. This property typically presents users with a simple toggle switch or checkbox, making it easy to indicate a binary state. The `Boolean Select` property is ideal for scenarios where a straightforward decision is required, such as agreeing to terms and conditions, enabling features, or confirming preferences. By utilizing this property, developers can streamline user interactions and enhance the clarity of options presented within the application.</span></p>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 142.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image51.png" style="width: 601.70px; height: 142.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c7">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px);') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||' -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 30.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image20.png" style="width: 601.70px; height: 30.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 64.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image30.png" style="width: 601.70px; height: 64.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h2 class="c10" id="h.xip0f11hp04p"><span class="c12">11. Properties: Colspan (APEX)</span></h2>
      <p class="c8"><span>In Oracle APEX, the </span><span class="c11">colspan</span><span class="c5">&nbsp;attribute is used in HTML tables to specify the number of columns a cell should span. This attribute is particularly useful when designing forms or reports where you want a single cell to extend across multiple columns, allowing for better organization and presentation of data.</span></p>
      <h3 class="c15" id="h.y2mr0l889qaz"><span class="c14"></span></h3>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 453.00px; height: 60.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image59.png" style="width: 453.00px; height: 60.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 101.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image33.png" style="width: 601.70px; height: 101.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 125.33px;"><img alt="" src="https:') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'//raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image43.png" style="width: 601.70px; height: 125.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h2 class="c10" id="h.g80pr5fd3lzf"><span class="c12">12. Properties: Label (APEX)</span></h2>
      <p class="c8"><span>In Oracle APEX, the </span><span class="c11">label </span><span class="c5">attribute is used to define descriptive text for form items, helping users understand the purpose of each field. Labels are typically displayed adjacent to their respective input fields and can be customized in terms of position and styling. By using labels, you ensure better clarity and usability in forms, guiding users through the input process effectively.</span></p>
      <h3 class="c15" id="h.836czr3w1aqh"><span class="c14"></span></h3>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 453.00px; height: 60.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image59.png" style="width: 453.00px; height: 60.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 101.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image33.png" style="width: 601.70px; height: 101.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 125.33px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image43.png" style="width: 601.70px; height: 125.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c5"></span></p>
      <h2 class="c10" id="h.5wiunt568wsp"><span class="c12">13. Properties: NewRow (APEX)</span></h2>
      <p class="c8"><span>In Oracle APEX, the </span><span class="c11">NewRow</span><span>&nbsp;property is used to control whether a form item or another UI element starts on a new line. When NewRow is set to &quot;true&quot;, the element is placed below the previous element instead of next to it, allowing for more flexible layout options. This is particularly usefu') where HETE_ID = 1 ;

update SFB_HELP_TEXT set HETE_TEXT = ( HETE_TEXT||'l when you want to create a clear and organized structure for your forms and pages by ensuring that specific elements start on a new line. The </span><span class="c11">NewRow</span><span class="c5">&nbsp;property helps improve the layout and readability of forms.</span></p>
      <h3 class="c15" id="h.345o5w70h31s"><span class="c14"></span></h3>
      <p class="c4"><span class="c0">Field Preview</span></p>
      <p class="c4"><span class="c5">Here is a preview of how it looks in a form</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 50.67px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image42.png" style="width: 601.70px; height: 50.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Defining Field Name and Type</span></p>
      <p class="c4"><span class="c5">Enter the Field Name, choose the Field Type, and check &quot;Required&quot; for validation if needed.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 44.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image21.png" style="width: 601.70px; height: 44.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <p class="c3"><span class="c0"></span></p>
      <p class="c4"><span class="c0">Setting Properties and Values</span></p>
      <p class="c4"><span class="c5">Select the Property from the dropdown and manually enter the Property Value.</span></p>
      <p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 84.00px;"><img alt="" src="https://raw.githubusercontent.com/mt-ag/apex-simple-form-builder/refs/heads/main/documentation/images/image12.png" style="width: 601.70px; height: 84.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p>
      <div>
         <p class="c3"><span class="c5"></span></p>
      </div>
   </body>
</html>') where HETE_ID = 1 ;

end;