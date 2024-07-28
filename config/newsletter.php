<?php

return [

    /*
     * The default driver you would like to use for the newsletter functionality.
     * This should be the name of a key in the "drivers" array below.
     */
    'default' => 'mailchimp',

    /*
     * Here you can define settings for multiple drivers.
     */
    'drivers' => [
        'mailchimp' => [
            'apiKey' => env('MAILCHIMP_APIKEY'),
            'serverPrefix' => env('MAILCHIMP_SERVER_PREFIX', 'us1'), // e.g., 'us6'
            'defaultListName' => 'subscribers',
            'lists' => [
                'subscribers' => [
                    'id' => env('MAILCHIMP_LIST_ID'),
                ],
            ],
        ],
    ],

    /*
     * Define here the class that should be used to convert your models to
     * a valid form to be submitted to the email marketing service.
     *
     * By default, we will use a class called "DefaultSubscriptionPayload".
     */
    'payload_transformers' => [
        'default' => \Spatie\Newsletter\SubscriptionPayload\DefaultSubscriptionPayload::class,
    ],
];
