<?php
defined('BASEPATH') OR exit('No direct script access allowed');


// CLIENTS ROUTES
$route['client/create'] = 'clients/create';
$route['client/delete/(:any)'] = 'clients/delete/$1';
$route['client/update/(:any)'] = 'clients/update/$1';
$route['clients/(:any)'] = 'clients/view/$1';
$route['clients'] = 'clients/index';

// USER ROUTES
$route['user/create'] = 'users/create';
$route['user/delete/(:any)'] = 'users/delete/$1';
$route['user/(:any)'] = 'users/view/$1';
$route['user/update/(:any)'] = 'users/update/$1';
$route['users'] = 'users/index';

// TASK ROUTES

$route['task/errors'] = 'tasks/error_index';

$route['task/delete/(:any)'] = 'tasks/delete_task/$1';
$route['task/instruction/delete/(:any)'] = 'tasks/delete_task_instruction/$1';
$route['task/create/(:any)'] = 'tasks/create/$1';
$route['task/(:any)'] = 'tasks/view/$1';
$route['tasks/history'] = 'tasks/task_history';
$route['tasks'] = 'tasks/index';

// ATTENDANCE ROUTES
$route['attendance/user/(:any)'] = 'attendance/attendance_user/$1';
$route['attendance/user-list'] = 'attendance/attendance_list';
$route['attendance'] = 'attendance/index';

// TRAINING GUIDELINES ROUTES
$route['training-activity/edit/topic/(:any)'] = 'training/update_topic/$1';
$route['training-activity/edit/activity/(:any)'] = 'training/update_activity/$1';
$route['training-activity/delete/topic/(:any)'] = 'training/delete_topic/$1';
$route['training-activity/delete/day/(:any)'] = 'training/delete_activity/$1';
$route['training-activity/topic-list'] = 'training/view_topic_list';
$route['training-activity/topic/(:any)'] = 'training/view_topic/$1';
$route['training-activity/create/topic/(:any)'] = 'training/create_topic/$1';
$route['training-activity/day/(:any)'] = 'training/view_day/$1';
$route['training-activity/create'] = 'training/create_activity';
$route['training-activity'] = 'training/index';

// USER SESSIONS
$route['login'] = 'login';
$route['logout'] = 'login/logout';
$route['default_controller'] = 'main/view';
$route['(:any)'] = 'main/view/$1';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;