<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2017-03-04 17:51:56
$dictionary['AOS_Products_Quotes']['fields']['vat_amt']['inline_edit']=true;
$dictionary['AOS_Products_Quotes']['fields']['vat_amt']['merge_filter']='disabled';
$dictionary['AOS_Products_Quotes']['fields']['vat_amt']['enable_range_search']=false;

 

 // created: 2017-03-04 17:52:08
$dictionary['AOS_Products_Quotes']['fields']['vat']['inline_edit']=true;
$dictionary['AOS_Products_Quotes']['fields']['vat']['merge_filter']='disabled';

 

 // created: 2017-03-04 17:54:03
$dictionary['AOS_Products_Quotes']['fields']['pst_percent_c']['inline_edit']='1';
$dictionary['AOS_Products_Quotes']['fields']['pst_percent_c']['labelValue']='PST';

 

 // created: 2017-03-04 17:55:44
$dictionary['AOS_Products_Quotes']['fields']['pst_amt_c']['inline_edit']='1';
$dictionary['AOS_Products_Quotes']['fields']['pst_amt_c']['labelValue']='PST Amount';

 

 // created: 2017-03-04 18:06:15
$dictionary['AOS_Products_Quotes']['fields']['description']['inline_edit']=true;
$dictionary['AOS_Products_Quotes']['fields']['description']['comments']='Full text of the note';
$dictionary['AOS_Products_Quotes']['fields']['description']['merge_filter']='disabled';

 

$dictionary['AOS_Products_Quotes']['fields']['product_markup'] = array(
    'required' => false,
    'name' => 'product_markup',
    'vname' => 'LBL_MARKUP_AMT',
    'type' => 'varchar',
    'massupdate' => 0,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => 1,
    'reportable' => true,
    'len' => '10'
);


$dictionary['AOS_Products_Quotes']['fields']['pst'] = array (
    'required' => false,
    'name' => 'pst',
    'vname' => 'LBL_PST',
    'type' => 'enum',
    'massupdate' => 0,
    'default' => '0.0',
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => 0,
    'reportable' => true,
    'len' => 100,
    'options' => 'pst_list',
    'studio' => 'visible',
);

$dictionary['AOS_Products_Quotes']['fields']['pst_amt'] = array (
    'required' => '1',
    'name' => 'pst_amt',
    'vname' => 'LBL_PST_AMT',
    'type' => 'currency',
    'massupdate' => 0,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => 1,
    'reportable' => true,
    'len' => '26,6',
);
?>