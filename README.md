# Clash-of-Clans-Swagger
Using a tool like [OpenApi Generator](https://github.com/OpenAPITools/openapi-generator) you can use this to automatically produce methods to query the API.
File `swagger-source.yml` is whatever SuperCell gives us currently.
File `swagger-3.0.yml` is a rewrite in a newer OpenAPI version. This allows us to fix bugs in what SuperCell provides and use some OpenAPI 3.0 features such as enums.

C#
```
-jar pathToOpenApiGenerator.jar generate `
  -g csharp `
  -i pathToSwagger.yml `
  -c pathToGeneratorConfig.json `
  -o pathToOutputDirectory `
  -t pathToTemplatesIfDesired
```

## Disclaimer
This content is not affiliated with, endorsed, sponsored, or specifically approved by Supercell and Supercell is not responsible for it. For more information see [Supercell's Fan Content Policy](https://supercell.com/en/fan-content-policy/).
