# HttpRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**httpContext** | [**HttpContext**](HttpContext.md) |  | [optional] [default to null]
**method** | **string** |  | [optional] [default to null]
**scheme** | **string** |  | [optional] [default to null]
**isHttps** | **boolean** |  | [optional] [default to null]
**host** | [**HostString**](HostString.md) |  | [optional] [default to null]
**pathBase** | [**PathString**](PathString.md) |  | [optional] [default to null]
**path** | [**PathString**](PathString.md) |  | [optional] [default to null]
**queryString** | [**QueryString**](QueryString.md) |  | [optional] [default to null]
**query** | [**array[StringStringValuesKeyValuePair]**](StringStringValuesKeyValuePair.md) |  | [optional] [default to null]
**protocol** | **string** |  | [optional] [default to null]
**headers** | **map[String, array[string]]** |  | [optional] [readonly] [default to null]
**cookies** | [**array[StringStringKeyValuePair]**](StringStringKeyValuePair.md) |  | [optional] [default to null]
**contentLength** | **integer** |  | [optional] [default to null]
**contentType** | **string** |  | [optional] [default to null]
**body** | **binary** |  | [optional] [default to null]
**bodyReader** | **binary** |  | [optional] [readonly] [default to null]
**hasFormContentType** | **boolean** |  | [optional] [readonly] [default to null]
**form** | [**array[StringStringValuesKeyValuePair]**](StringStringValuesKeyValuePair.md) |  | [optional] [default to null]
**routeValues** | [**map[String, AnyType]**](AnyType.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


