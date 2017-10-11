<?php

function getSubpanelQueryParts($params)
{
    $bean = $GLOBALS['app']->controller->bean;
    $getAllProjectIdsQuery = "SELECT id FROM project WHERE project_parent_id='" . $bean->id . "' AND deleted=0";
    $result = $GLOBALS['db']->query($getAllProjectIdsQuery);
    $projectIds = array();
    $projectIds[] = $bean->id;
    while ($row = $GLOBALS['db']->fetchByAssoc($result)) {
        $projectIds[] = $row['id'];
    }
    if (count($projectIds)) {
        $projectIds = implode("','", $projectIds);
        $projectIds = "'" . $projectIds . "'";
    }
    $return_array['select'] = 'SELECT aos_quotes.id';
    $return_array['from'] = 'FROM aos_quotes';
    $return_array['where'] = "WHERE aos_quotes.relate_project_id IN ($projectIds) AND aos_quotes.deleted=0";
    return $return_array;
}

function showProjectsPopupWithoutParent($params)
{
    $whereStatement = '';
    if (isset($params['project_id'])) {
        $projectBean = BeanFactory::getBean("Project", $params['project_id']);
        if (!empty($projectBean)) {
            $whereStatement = "project.id <> '" . $projectBean->project_parent_id . "'";
        }
    } else if (isset($params['request_data'])) {
        $custom_array = html_entity_decode($params['request_data']);
        $custom_array_array = json_decode($custom_array, true);

        if (isset($custom_array_array['passthru_data']) && isset($custom_array_array['passthru_data']['return_url']) && isset($custom_array_array['passthru_data']['module_name']) && $custom_array_array['passthru_data']['module_name'] == 'sub_projects') {

            $decodedURL = urldecode($custom_array_array['passthru_data']['return_url']);
            $decodedURLParts = parse_url($decodedURL);
            parse_str($decodedURLParts['query'], $query);

            if (isset($query['record'])) {
                $projectBean = BeanFactory::getBean("Project", $query['record']);
                if (!empty($projectBean)) {
                    $whereStatement = "project.id <> '" . $projectBean->project_parent_id . "'";
                }
            }
        }
    }
    return $whereStatement;
}

function showProjectTaskPopupWithoutParent($params)
{
    $whereStatement = '';
    if (isset($params['projecttask_id'])) {
        $projectBean = BeanFactory::getBean("ProjectTask", $params['projecttask_id']);
        if (!empty($projectBean)) {
            $whereStatement = "project_task.id <> '" . $projectBean->projecttask_parent_id . "'";
        }
    } else if (isset($params['request_data'])) {
        $custom_array = html_entity_decode($params['request_data']);
        $custom_array_array = json_decode($custom_array, true);

        if (isset($custom_array_array['passthru_data']) && isset($custom_array_array['passthru_data']['return_url']) && isset($custom_array_array['passthru_data']['module_name']) && $custom_array_array['passthru_data']['module_name'] == 'sub_projecttasks') {

            $decodedURL = urldecode($custom_array_array['passthru_data']['return_url']);
            $decodedURLParts = parse_url($decodedURL);
            parse_str($decodedURLParts['query'], $query);

            if (isset($query['record'])) {
                $projectBean = BeanFactory::getBean("ProjectTask", $query['record']);
                if (!empty($projectBean)) {
                    $whereStatement = "project_task.id <> '" . $projectBean->projecttask_parent_id . "'";
                }
            }
        }
    }
    return $whereStatement;
}
