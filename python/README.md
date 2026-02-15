Mad Libs Generator API
============

Mad Libs Generator creates fill-in-the-blank story templates with prompts for nouns, verbs, adjectives, and more.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [Mad Libs Generator API](https://apiverve.com/marketplace/madlibs?utm_source=pypi&utm_medium=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-madlibsgenerator
```

Using `pip3`:

```bash
pip3 install apiverve-madlibsgenerator
```

---

## Configuration

Before using the madlibs API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_madlibsgenerator.apiClient import MadlibsAPIClient

# Initialize the client with your APIVerve API key
api = MadlibsAPIClient("[YOUR_API_KEY]")

query = { "category": "random", "count": 1 }

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Mad Libs Generator API documentation is found here: [https://docs.apiverve.com/ref/madlibs](https://docs.apiverve.com/ref/madlibs?utm_source=pypi&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_madlibsgenerator.apiClient import MadlibsAPIClient

# Initialize the client with your APIVerve API key
api = MadlibsAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = { "category": "random", "count": 1 }
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

## Error Handling

The API client provides comprehensive error handling through the `MadlibsAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_madlibsgenerator.apiClient import MadlibsAPIClient, MadlibsAPIClientError

api = MadlibsAPIClient("[YOUR_API_KEY]")

query = { "category": "random", "count": 1 }

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except MadlibsAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_madlibsgenerator.apiClient import MadlibsAPIClient, MadlibsAPIClientError

api = MadlibsAPIClient("[YOUR_API_KEY]")

query = { "category": "random", "count": 1 }

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except MadlibsAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_madlibsgenerator.apiClient import MadlibsAPIClient, MadlibsAPIClientError

query = { "category": "random", "count": 1 }

# Using context manager ensures proper cleanup
with MadlibsAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except MadlibsAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_madlibsgenerator.apiClient import MadlibsAPIClient

# Enable debug mode
api = MadlibsAPIClient("[YOUR_API_KEY]", debug=True)

query = { "category": "random", "count": 1 }

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_madlibsgenerator.apiClient import MadlibsAPIClient

api = MadlibsAPIClient("[YOUR_API_KEY]")

try:
    query = { "category": "random", "count": 1 }
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
