# Codegen Playground

Experimenting on OpenAPI codegen, using the [OpenAPI Generator](https://openapi-generator.tech/) under the hood to generate clients to the [Pet Store](https://petstore.swagger.io/) sample api

---

## Usage

To generate a typescript client, run:

```
  make codegen/ts
```

All files will be available under `/generated/ts`

To check if the generated client is working, run the sample as:

```
  make run/node
```

To generate all implemented clients, do:

```
  make codegen
```

Check them out with:

```
  make run
```
