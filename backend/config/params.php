<?php
return [
    'bsVersion' => '4.x',
    'adminEmail' => 'admin@example.com',
    'thanks' => true,
    'ttd-customer' => true,
    'hail812/yii2-adminlte3' => [
        'pluginMap' => [
            'sweetalert2' => [
                'css' => 'sweetalert2-theme-bootstrap-4/bootstrap-4.min.css',
                'js' => 'sweetalert2/sweetalert2.min.js'
            ],
            'toastr' => [
                'css' => ['toastr/toastr.min.css'],
                'js' => ['toastr/toastr.min.js']
            ],
            'datatables' => [
                'css' => [
                    'datatables-bs4/css/dataTables.bootstrap4.min.css',
                    'datatables-responsive/css/responsive.bootstrap4.min.css',
                    'datatables-buttons/css/buttons.bootstrap4.min.css',
                ],
                'js' => [
                    'datatables/jquery.dataTables.min.js',
                    'datatables-bs4/js/dataTables.bootstrap4.min.js',
                    'datatables-responsive/js/dataTables.responsive.min.js',
                    'datatables-buttons/js/dataTables.buttons.min.js',
                    'datatables-buttons/js/buttons.bootstrap4.min.js',
                    'datatables-buttons/js/buttons.html5.min.js',
                    'datatables-buttons/js/buttons.print.min.js',
                    'datatables-buttons/js/buttons.colVis.min.js',
                    'jszip/jszip.min.js',
                    'pdfmake/pdfmake.min.js',
                    'pdfmake/vfs_fonts.js',
                ]
            ],
            'bs-stepper' => [
                'css' => ['bs-stepper/css/bs-stepper.min.css'],
                'js' => ['bs-stepper/js/bs-stepper.min.js']
            ],
            'fullcalendar' => [
                'css' => ['fullcalendar/main.min.css'],
                'js' => ['fullcalendar/main.min.js']
            ],
            'summernote' => [
                'css' => ['summernote/summernote-bs4.min.css'],
                'js' => [
                        'summernote/summernote-bs4.min.js',
                        'summernote/plugin/specialchars/summernote-ext-specialchars.js',
                    ]
            ],
        ]
    ],
    

];



