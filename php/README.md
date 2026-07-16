# Mad Libs Generator API - PHP Package

Mad Libs Generator creates fill-in-the-blank story templates with prompts for nouns, verbs, adjectives, and more.

## Installation

Install via Composer:

```bash
composer require apiverve/madlibs
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Madlibs\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'category' => 'random',
    'count' => 1
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Madlibs\Client;
use APIVerve\Madlibs\Exceptions\APIException;
use APIVerve\Madlibs\Exceptions\ValidationException;

try {
    $response = $client->execute(['category' => 'random', 'count' => 1]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "stories": [
      {
        "title": "Restaurant Disaster",
        "template": "I went to a {adjective} restaurant called The {adjective} {noun}. The waiter was a {adjective} {animal} who kept {verb_ing} on the tables. I ordered {number} {adjective} {plural_noun} with a side of {adjective} {noun}. When the bill came, it said I owed {number} {plural_noun}!",
        "blanks": [
          {
            "id": 1,
            "type": "adjective",
            "label": "Adjective"
          },
          {
            "id": 2,
            "type": "adjective",
            "label": "Adjective"
          },
          {
            "id": 3,
            "type": "noun",
            "label": "Noun"
          },
          {
            "id": 4,
            "type": "adjective",
            "label": "Adjective"
          },
          {
            "id": 5,
            "type": "animal",
            "label": "Animal"
          },
          {
            "id": 6,
            "type": "verb_ing",
            "label": "Verb ending in -ing"
          },
          {
            "id": 7,
            "type": "number",
            "label": "Number"
          },
          {
            "id": 8,
            "type": "adjective",
            "label": "Adjective"
          },
          {
            "id": 9,
            "type": "plural_noun",
            "label": "Plural Noun"
          },
          {
            "id": 10,
            "type": "adjective",
            "label": "Adjective"
          },
          {
            "id": 11,
            "type": "noun",
            "label": "Noun"
          },
          {
            "id": 12,
            "type": "number",
            "label": "Number"
          },
          {
            "id": 13,
            "type": "plural_noun",
            "label": "Plural Noun"
          }
        ],
        "blankCount": 13,
        "category": "funny"
      }
    ],
    "count": 1,
    "category": "funny",
    "html": "<html><head><title>Mad Libs</title><style>body {font-family: Arial, sans-serif; padding: 20px; max-width: 800px; margin: 0 auto;}h1 {text-align: center; color: #E91E63;}.story-card {background: #fff; border: 2px solid #E91E63; padding: 25px; margin: 25px 0; border-radius: 15px;}.title {font-size: 24px; font-weight: bold; color: #E91E63; margin-bottom: 20px;}.blanks-section {background: #FCE4EC; padding: 20px; border-radius: 10px; margin-bottom: 20px;}.blanks-section h3 {margin-top: 0;}.blank-item {margin: 10px 0; display: flex; align-items: center;}.blank-label {min-width: 50px; font-weight: bold;}.blank-type {color: #666; margin-left: 10px;}.blank-input {flex: 1; padding: 8px; border: 1px solid #E91E63; border-radius: 5px; margin-left: 10px;}.story-template {line-height: 2; font-size: 16px;}.blank-marker {background: #E91E63; color: white; padding: 2px 8px; border-radius: 3px; font-weight: bold;}</style></head><body><h1>Mad Libs</h1><div class='story-card'><div class='title'>Restaurant Disaster</div><div class='blanks-section'><h3>Fill in the blanks:</h3><div class='blank-item'><span class='blank-label'>1.</span><span class='blank-type'>Adjective</span><input type='text' class='blank-input' placeholder='Enter adjective'></div><div class='blank-item'><span class='blank-label'>2.</span><span class='blank-type'>Adjective</span><input type='text' class='blank-input' placeholder='Enter adjective'></div><div class='blank-item'><span class='blank-label'>3.</span><span class='blank-type'>Noun</span><input type='text' class='blank-input' placeholder='Enter noun'></div><div class='blank-item'><span class='blank-label'>4.</span><span class='blank-type'>Adjective</span><input type='text' class='blank-input' placeholder='Enter adjective'></div><div class='blank-item'><span class='blank-label'>5.</span><span class='blank-type'>Animal</span><input type='text' class='blank-input' placeholder='Enter animal'></div><div class='blank-item'><span class='blank-label'>6.</span><span class='blank-type'>Verb ending in -ing</span><input type='text' class='blank-input' placeholder='Enter verb ending in -ing'></div><div class='blank-item'><span class='blank-label'>7.</span><span class='blank-type'>Number</span><input type='text' class='blank-input' placeholder='Enter number'></div><div class='blank-item'><span class='blank-label'>8.</span><span class='blank-type'>Adjective</span><input type='text' class='blank-input' placeholder='Enter adjective'></div><div class='blank-item'><span class='blank-label'>9.</span><span class='blank-type'>Plural Noun</span><input type='text' class='blank-input' placeholder='Enter plural noun'></div><div class='blank-item'><span class='blank-label'>10.</span><span class='blank-type'>Adjective</span><input type='text' class='blank-input' placeholder='Enter adjective'></div><div class='blank-item'><span class='blank-label'>11.</span><span class='blank-type'>Noun</span><input type='text' class='blank-input' placeholder='Enter noun'></div><div class='blank-item'><span class='blank-label'>12.</span><span class='blank-type'>Number</span><input type='text' class='blank-input' placeholder='Enter number'></div><div class='blank-item'><span class='blank-label'>13.</span><span class='blank-type'>Plural Noun</span><input type='text' class='blank-input' placeholder='Enter plural noun'></div></div><div class='story-template'>I went to a <span class='blank-marker'>1</span> restaurant called The <span class='blank-marker'>2</span> <span class='blank-marker'>3</span>. The waiter was a <span class='blank-marker'>4</span> <span class='blank-marker'>5</span> who kept <span class='blank-marker'>6</span> on the tables. I ordered <span class='blank-marker'>7</span> <span class='blank-marker'>8</span> <span class='blank-marker'>9</span> with a side of <span class='blank-marker'>10</span> <span class='blank-marker'>11</span>. When the bill came, it said I owed <span class='blank-marker'>12</span> <span class='blank-marker'>13</span>!</div></div></body></html>",
    "image": {
      "imageName": "25d0dd78-3ad1-4f14-a30f-f8bdd8ebcc33_madlibs.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve/APIData/madlibs/25d0dd78-3ad1-4f14-a30f-f8bdd8ebcc33_madlibs.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1766010349&Signature=e4owJidlQu2GZKe1GSuClCNSpOX1UQkxdweeS08IVOxkNscZGNr33BdYhNSG%2BuVIZ2XdEeAc3o2%2BY2hxP01APjgqMgCe4QvHRBgbCLPUiueHaczDJ1m1ZBI41aRaYjM8kdB7M0iYLNhdgqogXTYs9Zc%2FaRj9a6txpLz7fb2YexgG0fXhkcZuGeCb1haQlMTHL1YZbh9zJIKgHSqMhKK3jqhf0stuIDXIWkWdiK6fbP1B2aZkomqwpbx3iQKwbhca8rwFMWjUMRN5fspY%2FRtNbS7kIWaznc07VaBloITlQktm%2FMMojDc6QSanGeegRKealslcO53diZRsdLTZvB3wAQ%3D%3D",
      "expires": 1766010349930
    }
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/madlibs?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/madlibs?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/madlibs?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
