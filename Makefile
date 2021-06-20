GENERATED_ROOT:=generated
LOCAL_PATH:=${PWD}/$(GENERATED_ROOT)
SPEC_URL:=https://petstore3.swagger.io/api/v3/openapi.json

generate:
	docker run --rm -u 1000:1000 -v $(LOCAL_PATH):/$(GENERATED_ROOT) \
	openapitools/openapi-generator-cli generate -i $(SPEC_URL) -g $(GENERATOR) -o $(GENERATED_ROOT)/$(OUTPUT_PATH) -p $(PARAMS)

generate/ts: 
	make generate GENERATOR=typescript-axios OUTPUT_PATH=ts PARAMS="npmName=pet-store-api-client"
	npm --prefix=$(LOCAL_PATH)/ts install
	npm --prefix=$(LOCAL_PATH)/ts run build

generate/dotnet:
	make generate GENERATOR=csharp-netcore OUTPUT_PATH=dotnet PARAMS="packageName=PetStore.Api.Client,targetFramework=net5.0"
	dotnet build $(LOCAL_PATH)/dotnet/PetStore.Api.Client.sln -c Release

generate/all:
	make generate/ts
	make generate/dotnet