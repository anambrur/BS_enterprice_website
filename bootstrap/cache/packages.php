<?php return array (
  'barryvdh/laravel-dompdf' => 
  array (
    'providers' => 
    array (
      0 => 'Barryvdh\\DomPDF\\ServiceProvider',
    ),
    'aliases' => 
    array (
      'PDF' => 'Barryvdh\\DomPDF\\Facade',
    ),
  ),
  'barryvdh/laravel-ide-helper' => 
  array (
    'providers' => 
    array (
      0 => 'Barryvdh\\LaravelIdeHelper\\IdeHelperServiceProvider',
    ),
  ),
  'buzz/laravel-google-captcha' => 
  array (
    'providers' => 
    array (
      0 => 'Buzz\\LaravelGoogleCaptcha\\CaptchaServiceProvider',
    ),
    'aliases' => 
    array (
      'Captcha' => 'Buzz\\LaravelGoogleCaptcha\\CaptchaFacade',
    ),
  ),
  'intervention/image' => 
  array (
    'providers' => 
    array (
      0 => 'Intervention\\Image\\ImageServiceProvider',
    ),
    'aliases' => 
    array (
      'Image' => 'Intervention\\Image\\Facades\\Image',
    ),
  ),
  'laravel/tinker' => 
  array (
    'providers' => 
    array (
      0 => 'Laravel\\Tinker\\TinkerServiceProvider',
    ),
  ),
  'laravelcollective/html' => 
  array (
    'providers' => 
    array (
      0 => 'Collective\\Html\\HtmlServiceProvider',
    ),
    'aliases' => 
    array (
      'Form' => 'Collective\\Html\\FormFacade',
      'Html' => 'Collective\\Html\\HtmlFacade',
    ),
  ),
  'maatwebsite/excel' => 
  array (
    'providers' => 
    array (
      0 => 'Maatwebsite\\Excel\\ExcelServiceProvider',
    ),
    'aliases' => 
    array (
      'Excel' => 'Maatwebsite\\Excel\\Facades\\Excel',
    ),
  ),
  'nesbot/carbon' => 
  array (
    'providers' => 
    array (
      0 => 'Carbon\\Laravel\\ServiceProvider',
    ),
  ),
  'spatie/laravel-db-snapshots' => 
  array (
    'providers' => 
    array (
      0 => 'Spatie\\DbSnapshots\\DbSnapshotsServiceProvider',
    ),
  ),
  'spatie/laravel-image-optimizer' => 
  array (
    'providers' => 
    array (
      0 => 'Spatie\\LaravelImageOptimizer\\ImageOptimizerServiceProvider',
    ),
    'aliases' => 
    array (
      'ImageOptimizer' => 'Spatie\\LaravelImageOptimizer\\Facades\\ImageOptimizer',
    ),
  ),
);