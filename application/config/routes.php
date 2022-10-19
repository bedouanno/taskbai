<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['client/create'] = 'clients/create';
$route['client/delete/(:any)'] = 'clients/delete/$1';
$route['client/update/(:any)'] = 'clients/update/$1';
$route['clients/(:any)'] = 'clients/view/$1';
$route['clients'] = 'clients/index';

$route['user/create'] = 'users/create';
$route['user/delete/(:any)'] = 'users/delete/$1';
$route['user/(:any)'] = 'users/view/$1';
$route['user/update/(:any)'] = 'users/update/$1';
$route['users'] = 'users/index';

// $route['tasks/create'] = 'clients/create';
$route['task/delete/(:any)'] = 'tasks/delete_task/$1';
$route['task/instruction/delete/(:any)'] = 'tasks/delete_task_instruction/$1';
$route['task/create/(:any)'] = 'tasks/create/$1';
// $route['task/create/instruction/(:any)'] = 'tasks/create_instruction/$1';
$route['task/(:any)'] = 'tasks/view/$1';
$route['tasks/history'] = 'tasks/task_history';
$route['tasks'] = 'tasks/index';

$route['login'] = 'login';
$route['logout'] = 'login/logout';
$route['default_controller'] = 'main/view';
$route['(:any)'] = 'main/view/$1';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;