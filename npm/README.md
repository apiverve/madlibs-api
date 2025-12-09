# Mad Libs Generator API

Mad Libs Generator creates fill-in-the-blank story templates with prompts for nouns, verbs, adjectives, and more.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Javascript Wrapper for the [Mad Libs Generator API](https://apiverve.com/marketplace/madlibs)

---

## Installation

Using npm:
```shell
npm install @apiverve/madlibs
```

Using yarn:
```shell
yarn add @apiverve/madlibs
```

---

## Configuration

Before using the Mad Libs Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart)

The Mad Libs Generator API documentation is found here: [https://docs.apiverve.com/ref/madlibs](https://docs.apiverve.com/ref/madlibs).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const madlibsAPI = require('@apiverve/madlibs');
const api = new madlibsAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  category: "funny",
  count: 1
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  category: "funny",
  count: 1
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  category: "funny",
  count: 1
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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
    "html": "<html><head><title>Mad Libs</title><style>body {font-family: Arial, sans-serif; padding: 20px; max-width: 800px; margin: 0 auto;}h1 {text-align: center; color: #E91E63;}.story-card {background: #fff; border: 2px solid #E91E63; padding: 25px; margin: 25px 0; border-radius: 15px;}.title {font-size: 24px; font-weight: bold; color: #E91E63; margin-bottom: 20px;}.blanks-section {background: #FCE4EC; padding: 20px; border-radius: 10px; margin-bottom: 20px;}.blanks-section h3 {margin-top: 0;}.blank-item {margin: 10px 0; display: flex; align-items: center;}.blank-label {min-width: 50px; font-weight: bold;}.blank-type {color: #666; margin-left: 10px;}.blank-input {flex: 1; padding: 8px; border: 1px solid #E91E63; border-radius: 5px; margin-left: 10px;}.story-template {line-height: 2; font-size: 16px;}.blank-marker {background: #E91E63; color: white; padding: 2px 8px; border-radius: 3px; font-weight: bold;}</style></head><body><h1>Mad Libs</h1><div class='story-card'><div class='title'>Restaurant Disaster</div><div class='blanks-section'><h3>Fill in the blanks:</h3><div class='blank-item'><span class='blank-label'>1.</span><span class='blank-type'>Adjective</span><input type='text' class='blank-input' placeholder='Enter adjective'></div><div class='blank-item'><span class='blank-label'>2.</span><span class='blank-type'>Adjective</span><input type='text' class='blank-input' placeholder='Enter adjective'></div><div class='blank-item'><span class='blank-label'>3.</span><span class='blank-type'>Noun</span><input type='text' class='blank-input' placeholder='Enter noun'></div><div class='blank-item'><span class='blank-label'>4.</span><span class='blank-type'>Adjective</span><input type='text' class='blank-input' placeholder='Enter adjective'></div><div class='blank-item'><span class='blank-label'>5.</span><span class='blank-type'>Animal</span><input type='text' class='blank-input' placeholder='Enter animal'></div><div class='blank-item'><span class='blank-label'>6.</span><span class='blank-type'>Verb ending in -ing</span><input type='text' class='blank-input' placeholder='Enter verb ending in -ing'></div><div class='blank-item'><span class='blank-label'>7.</span><span class='blank-type'>Number</span><input type='text' class='blank-input' placeholder='Enter number'></div><div class='blank-item'><span class='blank-label'>8.</span><span class='blank-type'>Adjective</span><input type='text' class='blank-input' placeholder='Enter adjective'></div><div class='blank-item'><span class='blank-label'>9.</span><span class='blank-type'>Plural Noun</span><input type='text' class='blank-input' placeholder='Enter plural noun'></div><div class='blank-item'><span class='blank-label'>10.</span><span class='blank-type'>Adjective</span><input type='text' class='blank-input' placeholder='Enter adjective'></div><div class='blank-item'><span class='blank-label'>11.</span><span class='blank-type'>Noun</span><input type='text' class='blank-input' placeholder='Enter noun'></div><div class='blank-item'><span class='blank-label'>12.</span><span class='blank-type'>Number</span><input type='text' class='blank-input' placeholder='Enter number'></div><div class='blank-item'><span class='blank-label'>13.</span><span class='blank-type'>Plural Noun</span><input type='text' class='blank-input' placeholder='Enter plural noun'></div></div><div class='story-template'>I went to a <span class='blank-marker'>1</span> restaurant called The <span class='blank-marker'>2</span> <span class='blank-marker'>3</span>. The waiter was a <span class='blank-marker'>4</span> <span class='blank-marker'>5</span> who kept <span class='blank-marker'>6</span> on the tables. I ordered <span class='blank-marker'>7</span> <span class='blank-marker'>8</span> <span class='blank-marker'>9</span> with a side of <span class='blank-marker'>10</span> <span class='blank-marker'>11</span>. When the bill came, it said I owed <span class='blank-marker'>12</span> <span class='blank-marker'>13</span>!</div></div></body></html>"
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2025 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
