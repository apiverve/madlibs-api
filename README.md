# [Mad Libs Generator API](https://apiverve.com/marketplace/madlibs?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)

Mad Libs Generator creates fill-in-the-blank story templates with prompts for nouns, verbs, adjectives, and more.

The Mad Libs Generator API provides a simple, reliable way to integrate mad libs generator functionality into your applications. Built for developers who need production-ready mad libs generator capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/madlibs?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/madlibs?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/madlibs)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.MadLibsGenerator)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-madlibs/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_madlibs)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/madlibs)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_madlibs)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callMadLibsGeneratorAPI() {
    try {
        const response = await fetch('https://api.apiverve.com/v1/madlibs', {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callMadLibsGeneratorAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/madlibs" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/madlibs
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/madlibs) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.MadLibsGenerator
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.MadLibsGenerator) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-madlibs
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-madlibs/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_madlibs
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_madlibs) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/madlibs
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/madlibs) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_madlibs
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_madlibs) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:madlibs-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/madlibs-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Mad Libs Generator API](https://apiverve.com/marketplace/madlibs?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/madlibs](https://docs.apiverve.com/ref/madlibs)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Mad Libs Generator API is commonly used for:

- **Web Applications** - Add mad libs generator features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with mad libs generator capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Mad Libs Generator API:

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

---

## Support & Community

- 🏠 **API Home**: [Mad Libs Generator API](https://apiverve.com/marketplace/madlibs?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
