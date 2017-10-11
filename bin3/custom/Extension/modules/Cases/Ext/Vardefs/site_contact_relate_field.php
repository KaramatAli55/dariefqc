<?php

$dictionary['Case']['fields']['site_contact_name'] = array(
    'required'  => false,
    'source'    => 'non-db',
    'name'      => 'site_contact_name',
    'vname'     => 'LBL_SITE_CONTACT_NAME',
    'type'      => 'relate',
    'rname'     => 'name',
    'id_name'   => 'site_contact_id',
    'join_name' => 'contacts',
    'link'      => 'contacts',
    'table'     => 'contacts',
    'isnull'    => 'true',
    'module'    => 'Contacts',
);

$dictionary['Case']['fields']['site_contact_id'] = array(
    'name'              => 'site_contact_id',
    'rname'             => 'id',
    'vname'             => 'LBL_SITE_CONTACT_ID',
    'type'              => 'id',
    'table'             => 'contacts',
    'isnull'            => 'true',
    'module'            => 'Contacts',
    'dbType'            => 'id',
    'reportable'        => false,
    'massupdate'        => false,
    'duplicate_merge'   => 'disabled',
);
