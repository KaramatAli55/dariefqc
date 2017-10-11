<?php

$manifest = array(
    'acceptable_sugar_flavors' => array('CE','PRO','CORP','ENT','ULT'),
    'acceptable_sugar_versions' => array(
        'exact_matches' => array(),
        'regex_matches' => array('(.*?)\\.(.*?)\\.(.*?)$'),
    ),
    'author' => 'SugarCRM',
    'description' => 'Implement PST tax in line item groups of qoutes modules.',
    'icon' => '',
    'is_uninstallable' => true,
    'name' => 'Inject PST Tax.',
    'published_date' => '2017-05-29 2017 20:45:04',
    'type' => 'module',
    'version' => '1341607504',
);

$installdefs = array(
    'id' => 'package_1341607504',
    'language' => array(
	array(
		'from' => '<basepath>/Files/custom/Extension/modules/AOS_Quotes/Ext/Language/en_us.lang.php',
		'to_module' => 'AOS_Quotes',
		'language' => 'en_us'
	),
	array(
		'from' => '<basepath>/Files/custom/Extension/modules/AOS_Products_Quotes/Ext/Language/en_us.lang.php',
		'to_module' => 'AOS_Products_Quotes',
		'language' => 'en_us'
	),
	array(
		'from' => '<basepath>/Files/custom/Extension/modules/AOS_Line_Item_Groups/Ext/Language/en_us.lang.php',
		'to_module' => 'AOS_Line_Items_Groups',
		'language' => 'en_us'
	),
     ),
    'copy' => array(
        0 => array(
            'from' => '<basepath>/Files/custom/modules/AOS_Products_Quotes/metadata/editviewdefs.php',
            'to' => 'custom/modules/AOS_Products_Quotes/metadata/editviewdefs.php',
        ),
	1 => array(
            'from' => '<basepath>/Files/custom/modules/AOS_Products_Quotes/metadata/detailviewdefs.php',
            'to' => 'custom/modules/AOS_Products_Quotes/metadata/detailviewdefs.php',
        ),
	2 => array(
            'from' => '<basepath>/Files/custom/modules/AOS_Products_Quotes/line_items.js',
            'to' => 'custom/modules/AOS_Products_Quotes/line_items.js',
        ),
	3 => array(
            'from' => '<basepath>/Files/custom/modules/AOS_Products_Quotes/Line_Items.php',
            'to' => 'custom/modules/AOS_Products_Quotes/Line_Items.php',
        ),
	4 => array(
            'from' => '<basepath>/Files/custom/modules/AOS_Quotes/metadata/detailviewdefs.php',
            'to' => 'custom/modules/AOS_Quotes/metadata/detailviewdefs.php',
        ),
	5 => array(
            'from' => '<basepath>/Files/custom/modules/AOS_Quotes/metadata/editviewdefs.php',
            'to' => 'custom/modules/AOS_Quotes/metadata/editviewdefs.php',
        ),
    ),
    'vardefs' => array(
	0 => array(
	     'from' => '<basepath>/Files/custom/Extension/modules/AOS_Quotes/Ext/Vardefs/pst_tax_amount.php',
	     'to_module' => 'AOS_Quotes',
	),
	1 => array(
	     'from' => '<basepath>/Files/custom/Extension/modules/AOS_Quotes/Ext/Vardefs/override_line_item_file_path.php',
	     'to_module' => 'AOS_Quotes',
	),
	2 => array(
	     'from' => '<basepath>/Files/custom/Extension/modules/AOS_Products_Quotes/Ext/Vardefs/product_markup.php',
	     'to_module' => 'AOS_Products_Quotes',
	),
	3 => array(
	     'from' => '<basepath>/Files/custom/Extension/modules/AOS_Products_Quotes/Ext/Vardefs/pst.php',
	     'to_module' => 'AOS_Products_Quotes',
	),
	4 => array(
	     'from' => '<basepath>/Files/custom/Extension/modules/AOS_Products_Quotes/Ext/Vardefs/pst_amt.php',
	     'to_module' => 'AOS_Products_Quotes',
	),
	5 => array(
	     'from' => '<basepath>/Files/custom/Extension/modules/AOS_Line_Item_Groups/Ext/Vardefs/pst_tax_ammount.php',
	     'to_module' => 'AOS_Line_Items_Groups',
	),
	6 => array(
	     'from' => '<basepath>/Files/custom/Extension/modules/AOS_Line_Item_Groups/Ext/Vardefs/pst_tax_amount_usdollar.php',
	     'to_module' => 'AOS_Line_Items_Groups',
	),
    ),
);
