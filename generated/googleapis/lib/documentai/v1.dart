// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Cloud Document AI API - v1
///
/// Service to parse structured information from unstructured or semi-structured
/// documents using state-of-the-art Google AI such as natural language,
/// computer vision, translation, and AutoML.
///
/// For more information, see <https://cloud.google.com/document-ai/docs/>
///
/// Create an instance of [DocumentApi] to access these resources:
///
/// - [OperationsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsProcessorsResource]
///       - [ProjectsLocationsProcessorsHumanReviewConfigResource]
///       - [ProjectsLocationsProcessorsProcessorVersionsResource]
///   - [ProjectsOperationsResource]
/// - [Uiv1beta3Resource]
///   - [Uiv1beta3ProjectsResource]
///     - [Uiv1beta3ProjectsLocationsResource]
///       - [Uiv1beta3ProjectsLocationsOperationsResource]
library documentai.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Service to parse structured information from unstructured or semi-structured
/// documents using state-of-the-art Google AI such as natural language,
/// computer vision, translation, and AutoML.
class DocumentApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OperationsResource get operations => OperationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  Uiv1beta3Resource get uiv1beta3 => Uiv1beta3Resource(_requester);

  DocumentApi(http.Client client,
      {core.String rootUrl = 'https://documentai.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern `^operations/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsProcessorsResource get processors =>
      ProjectsLocationsProcessorsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Fetches processor types.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project of processor type to list. The available
  /// processor types may depend on the whitelisting on projects. Format:
  /// projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1FetchProcessorTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1FetchProcessorTypesResponse>
      fetchProcessorTypes(
    core.String parent, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + ':fetchProcessorTypes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDocumentaiV1FetchProcessorTypesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudLocationLocation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationLocation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudLocationLocation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like "displayName=tokyo", and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudLocationListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationListLocationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudLocationListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> cancel(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/operations$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProcessorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessorsHumanReviewConfigResource get humanReviewConfig =>
      ProjectsLocationsProcessorsHumanReviewConfigResource(_requester);
  ProjectsLocationsProcessorsProcessorVersionsResource get processorVersions =>
      ProjectsLocationsProcessorsProcessorVersionsResource(_requester);

  ProjectsLocationsProcessorsResource(commons.ApiRequester client)
      : _requester = client;

  /// LRO endpoint to batch process many documents.
  ///
  /// The output is written to Cloud Storage as JSON in the \[Document\] format.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of Processor or ProcessorVersion.
  /// Format: projects/{project}/locations/{location}/processors/{processor}, or
  /// projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> batchProcess(
    GoogleCloudDocumentaiV1BatchProcessRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':batchProcess';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a processor from the type processor that the user chose.
  ///
  /// The processor will be at "ENABLED" state by default after its creation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) under which to
  /// create the processor. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1Processor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1Processor> create(
    GoogleCloudDocumentaiV1Processor request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/processors';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDocumentaiV1Processor.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the processor, unloads all deployed model artifacts if it was
  /// enabled and then deletes all artifacts associated with this processor.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor resource name to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Disables a processor
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor resource name to be disabled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> disable(
    GoogleCloudDocumentaiV1DisableProcessorRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':disable';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Enables a processor
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor resource name to be enabled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> enable(
    GoogleCloudDocumentaiV1EnableProcessorRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':enable';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a processor detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1Processor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1Processor> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDocumentaiV1Processor.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all processors which belong to this project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) which owns this
  /// collection of Processors. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of processors to return. If unspecified,
  /// at most 50 processors will be returned. The maximum value is 100; values
  /// above 100 will be coerced to 100.
  ///
  /// [pageToken] - We will return the processors sorted by creation time. The
  /// page token will point to the next processor.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1ListProcessorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1ListProcessorsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/processors';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDocumentaiV1ListProcessorsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Processes a single document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Processor or ProcessorVersion
  /// to use for processing. If a Processor is specified, the server will use
  /// its default version. Format:
  /// projects/{project}/locations/{location}/processors/{processor}, or
  /// projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1ProcessResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1ProcessResponse> process(
    GoogleCloudDocumentaiV1ProcessRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':process';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDocumentaiV1ProcessResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Set the default (active) version of a Processor that will be used in
  /// ProcessDocument and BatchProcessDocuments.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [processor] - Required. The resource name of the Processor to change
  /// default version.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> setDefaultProcessorVersion(
    GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest request,
    core.String processor, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$processor') +
        ':setDefaultProcessorVersion';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProcessorsHumanReviewConfigResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessorsHumanReviewConfigResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Send a document for Human Review.
  ///
  /// The input document should be processed by the specified processor.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [humanReviewConfig] - Required. The resource name of the HumanReviewConfig
  /// that the document will be reviewed with.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/humanReviewConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> reviewDocument(
    GoogleCloudDocumentaiV1ReviewDocumentRequest request,
    core.String humanReviewConfig, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$humanReviewConfig') + ':reviewDocument';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProcessorsProcessorVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessorsProcessorVersionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// LRO endpoint to batch process many documents.
  ///
  /// The output is written to Cloud Storage as JSON in the \[Document\] format.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of Processor or ProcessorVersion.
  /// Format: projects/{project}/locations/{location}/processors/{processor}, or
  /// projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/processorVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> batchProcess(
    GoogleCloudDocumentaiV1BatchProcessRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':batchProcess';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the processor version, all artifacts under the processor version
  /// will be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor version resource name to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/processorVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deploys the processor version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor version resource name to be deployed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/processorVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> deploy(
    GoogleCloudDocumentaiV1DeployProcessorVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':deploy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a processor version detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/processorVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1ProcessorVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1ProcessorVersion> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDocumentaiV1ProcessorVersion.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all versions of a processor.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project, location and processor) to list
  /// all versions. Format:
  /// projects/{project}/locations/{location}/processors/{processor}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of processor versions to return. If
  /// unspecified, at most 10 processor versions will be returned. The maximum
  /// value is 20; values above 20 will be coerced to 20.
  ///
  /// [pageToken] - We will return the processor versions sorted by creation
  /// time. The page token will point to the next processor version.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1ListProcessorVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1ListProcessorVersionsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/processorVersions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDocumentaiV1ListProcessorVersionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Processes a single document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Processor or ProcessorVersion
  /// to use for processing. If a Processor is specified, the server will use
  /// its default version. Format:
  /// projects/{project}/locations/{location}/processors/{processor}, or
  /// projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/processorVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1ProcessResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1ProcessResponse> process(
    GoogleCloudDocumentaiV1ProcessRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':process';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDocumentaiV1ProcessResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Undeploys the processor version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor version resource name to be undeployed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/processorVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> undeploy(
    GoogleCloudDocumentaiV1UndeployProcessorVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':undeploy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class Uiv1beta3Resource {
  final commons.ApiRequester _requester;

  Uiv1beta3ProjectsResource get projects =>
      Uiv1beta3ProjectsResource(_requester);

  Uiv1beta3Resource(commons.ApiRequester client) : _requester = client;
}

class Uiv1beta3ProjectsResource {
  final commons.ApiRequester _requester;

  Uiv1beta3ProjectsLocationsResource get locations =>
      Uiv1beta3ProjectsLocationsResource(_requester);

  Uiv1beta3ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class Uiv1beta3ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  Uiv1beta3ProjectsLocationsOperationsResource get operations =>
      Uiv1beta3ProjectsLocationsOperationsResource(_requester);

  Uiv1beta3ProjectsLocationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudLocationLocation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationLocation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'uiv1beta3/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudLocationLocation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like "displayName=tokyo", and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudLocationListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationListLocationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'uiv1beta3/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudLocationListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class Uiv1beta3ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  Uiv1beta3ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> cancel(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'uiv1beta3/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'uiv1beta3/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/operations$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'uiv1beta3/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// The common config to specify a set of documents used as input.
class GoogleCloudDocumentaiV1BatchDocumentsInputConfig {
  /// The set of documents individually specified on Cloud Storage.
  GoogleCloudDocumentaiV1GcsDocuments? gcsDocuments;

  /// The set of documents that match the specified Cloud Storage
  /// \[gcs_prefix\].
  GoogleCloudDocumentaiV1GcsPrefix? gcsPrefix;

  GoogleCloudDocumentaiV1BatchDocumentsInputConfig({
    this.gcsDocuments,
    this.gcsPrefix,
  });

  GoogleCloudDocumentaiV1BatchDocumentsInputConfig.fromJson(core.Map _json)
      : this(
          gcsDocuments: _json.containsKey('gcsDocuments')
              ? GoogleCloudDocumentaiV1GcsDocuments.fromJson(
                  _json['gcsDocuments'] as core.Map<core.String, core.dynamic>)
              : null,
          gcsPrefix: _json.containsKey('gcsPrefix')
              ? GoogleCloudDocumentaiV1GcsPrefix.fromJson(
                  _json['gcsPrefix'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDocuments != null) 'gcsDocuments': gcsDocuments!,
        if (gcsPrefix != null) 'gcsPrefix': gcsPrefix!,
      };
}

/// Request message for batch process document method.
class GoogleCloudDocumentaiV1BatchProcessRequest {
  /// The overall output config for batch process.
  GoogleCloudDocumentaiV1DocumentOutputConfig? documentOutputConfig;

  /// The input documents for batch process.
  GoogleCloudDocumentaiV1BatchDocumentsInputConfig? inputDocuments;

  /// Whether Human Review feature should be skipped for this request.
  ///
  /// Default to false.
  core.bool? skipHumanReview;

  GoogleCloudDocumentaiV1BatchProcessRequest({
    this.documentOutputConfig,
    this.inputDocuments,
    this.skipHumanReview,
  });

  GoogleCloudDocumentaiV1BatchProcessRequest.fromJson(core.Map _json)
      : this(
          documentOutputConfig: _json.containsKey('documentOutputConfig')
              ? GoogleCloudDocumentaiV1DocumentOutputConfig.fromJson(
                  _json['documentOutputConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          inputDocuments: _json.containsKey('inputDocuments')
              ? GoogleCloudDocumentaiV1BatchDocumentsInputConfig.fromJson(
                  _json['inputDocuments']
                      as core.Map<core.String, core.dynamic>)
              : null,
          skipHumanReview: _json.containsKey('skipHumanReview')
              ? _json['skipHumanReview'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentOutputConfig != null)
          'documentOutputConfig': documentOutputConfig!,
        if (inputDocuments != null) 'inputDocuments': inputDocuments!,
        if (skipHumanReview != null) 'skipHumanReview': skipHumanReview!,
      };
}

/// A bounding polygon for the detected image annotation.
class GoogleCloudDocumentaiV1BoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<GoogleCloudDocumentaiV1NormalizedVertex>? normalizedVertices;

  /// The bounding polygon vertices.
  core.List<GoogleCloudDocumentaiV1Vertex>? vertices;

  GoogleCloudDocumentaiV1BoundingPoly({
    this.normalizedVertices,
    this.vertices,
  });

  GoogleCloudDocumentaiV1BoundingPoly.fromJson(core.Map _json)
      : this(
          normalizedVertices: _json.containsKey('normalizedVertices')
              ? (_json['normalizedVertices'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1NormalizedVertex.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vertices: _json.containsKey('vertices')
              ? (_json['vertices'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1Vertex.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (normalizedVertices != null)
          'normalizedVertices': normalizedVertices!,
        if (vertices != null) 'vertices': vertices!,
      };
}

/// Request message for the deploy processor version method.
typedef GoogleCloudDocumentaiV1DeployProcessorVersionRequest = $Empty;

/// Request message for the disable processor method.
typedef GoogleCloudDocumentaiV1DisableProcessorRequest = $Empty;

/// Document represents the canonical document resource in Document
/// Understanding AI.
///
/// It is an interchange format that provides insights into documents and allows
/// for collaboration between users and Document Understanding AI to iterate and
/// optimize for quality.
class GoogleCloudDocumentaiV1Document {
  /// Inline document content, represented as a stream of bytes.
  ///
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64.
  ///
  /// Optional.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A list of entities detected on Document.text.
  ///
  /// For document shards, entities in this list may cross shard boundaries.
  core.List<GoogleCloudDocumentaiV1DocumentEntity>? entities;

  /// Relationship among Document.entities.
  core.List<GoogleCloudDocumentaiV1DocumentEntityRelation>? entityRelations;

  /// Any error that occurred while processing this document.
  GoogleRpcStatus? error;

  /// An IANA published MIME type (also referred to as media type).
  ///
  /// For more information, see
  /// https://www.iana.org/assignments/media-types/media-types.xhtml.
  core.String? mimeType;

  /// Visual page layout for the Document.
  core.List<GoogleCloudDocumentaiV1DocumentPage>? pages;

  /// Revision history of this document.
  core.List<GoogleCloudDocumentaiV1DocumentRevision>? revisions;

  /// Information about the sharding if this document is sharded part of a
  /// larger document.
  ///
  /// If the document is not sharded, this message is not specified.
  GoogleCloudDocumentaiV1DocumentShardInfo? shardInfo;

  /// UTF-8 encoded text in reading order from the document.
  ///
  /// Optional.
  core.String? text;

  /// A list of text corrections made to \[Document.text\].
  ///
  /// This is usually used for annotating corrections to OCR mistakes. Text
  /// changes for a given revision may not overlap with each other.
  core.List<GoogleCloudDocumentaiV1DocumentTextChange>? textChanges;

  /// Styles for the Document.text.
  core.List<GoogleCloudDocumentaiV1DocumentStyle>? textStyles;

  /// Currently supports Google Cloud Storage URI of the form
  /// `gs://bucket_name/object_name`.
  ///
  /// Object versioning is not supported. See
  /// [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris)
  /// for more info.
  ///
  /// Optional.
  core.String? uri;

  GoogleCloudDocumentaiV1Document({
    this.content,
    this.entities,
    this.entityRelations,
    this.error,
    this.mimeType,
    this.pages,
    this.revisions,
    this.shardInfo,
    this.text,
    this.textChanges,
    this.textStyles,
    this.uri,
  });

  GoogleCloudDocumentaiV1Document.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          entities: _json.containsKey('entities')
              ? (_json['entities'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          entityRelations: _json.containsKey('entityRelations')
              ? (_json['entityRelations'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentEntityRelation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          error: _json.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          pages: _json.containsKey('pages')
              ? (_json['pages'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1DocumentPage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          revisions: _json.containsKey('revisions')
              ? (_json['revisions'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentRevision.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shardInfo: _json.containsKey('shardInfo')
              ? GoogleCloudDocumentaiV1DocumentShardInfo.fromJson(
                  _json['shardInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
          textChanges: _json.containsKey('textChanges')
              ? (_json['textChanges'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentTextChange.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          textStyles: _json.containsKey('textStyles')
              ? (_json['textStyles'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1DocumentStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (entities != null) 'entities': entities!,
        if (entityRelations != null) 'entityRelations': entityRelations!,
        if (error != null) 'error': error!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (pages != null) 'pages': pages!,
        if (revisions != null) 'revisions': revisions!,
        if (shardInfo != null) 'shardInfo': shardInfo!,
        if (text != null) 'text': text!,
        if (textChanges != null) 'textChanges': textChanges!,
        if (textStyles != null) 'textStyles': textStyles!,
        if (uri != null) 'uri': uri!,
      };
}

/// An entity that could be a phrase in the text or a property belongs to the
/// document.
///
/// It is a known entity type, such as a person, an organization, or location.
class GoogleCloudDocumentaiV1DocumentEntity {
  /// Confidence of detected Schema entity.
  ///
  /// Range \[0, 1\].
  ///
  /// Optional.
  core.double? confidence;

  /// Canonical id.
  ///
  /// This will be a unique value in the entity list for this document.
  ///
  /// Optional.
  core.String? id;

  /// Use `id` field instead.
  ///
  /// Optional. Deprecated.
  core.String? mentionId;

  /// Text value in the document e.g. `1600 Amphitheatre Pkwy`.
  ///
  /// If the entity is not present in the document, this field will be empty.
  ///
  /// Optional.
  core.String? mentionText;

  /// Normalized entity value.
  ///
  /// Absent if the extracted value could not be converted or the type (e.g.
  /// address) is not supported for certain parsers. This field is also only
  /// populated for certain supported document types.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1DocumentEntityNormalizedValue? normalizedValue;

  /// Represents the provenance of this entity wrt.
  ///
  /// the location on the page where it was found.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1DocumentPageAnchor? pageAnchor;

  /// Entities can be nested to form a hierarchical data structure representing
  /// the content in the document.
  ///
  /// Optional.
  core.List<GoogleCloudDocumentaiV1DocumentEntity>? properties;

  /// The history of this annotation.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  /// Whether the entity will be redacted for de-identification purposes.
  ///
  /// Optional.
  core.bool? redacted;

  /// Provenance of the entity.
  ///
  /// Text anchor indexing into the Document.text.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;

  /// Entity type from a schema e.g. `Address`.
  core.String? type;

  GoogleCloudDocumentaiV1DocumentEntity({
    this.confidence,
    this.id,
    this.mentionId,
    this.mentionText,
    this.normalizedValue,
    this.pageAnchor,
    this.properties,
    this.provenance,
    this.redacted,
    this.textAnchor,
    this.type,
  });

  GoogleCloudDocumentaiV1DocumentEntity.fromJson(core.Map _json)
      : this(
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          mentionId: _json.containsKey('mentionId')
              ? _json['mentionId'] as core.String
              : null,
          mentionText: _json.containsKey('mentionText')
              ? _json['mentionText'] as core.String
              : null,
          normalizedValue: _json.containsKey('normalizedValue')
              ? GoogleCloudDocumentaiV1DocumentEntityNormalizedValue.fromJson(
                  _json['normalizedValue']
                      as core.Map<core.String, core.dynamic>)
              : null,
          pageAnchor: _json.containsKey('pageAnchor')
              ? GoogleCloudDocumentaiV1DocumentPageAnchor.fromJson(
                  _json['pageAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          redacted: _json.containsKey('redacted')
              ? _json['redacted'] as core.bool
              : null,
          textAnchor: _json.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
                  _json['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (id != null) 'id': id!,
        if (mentionId != null) 'mentionId': mentionId!,
        if (mentionText != null) 'mentionText': mentionText!,
        if (normalizedValue != null) 'normalizedValue': normalizedValue!,
        if (pageAnchor != null) 'pageAnchor': pageAnchor!,
        if (properties != null) 'properties': properties!,
        if (provenance != null) 'provenance': provenance!,
        if (redacted != null) 'redacted': redacted!,
        if (textAnchor != null) 'textAnchor': textAnchor!,
        if (type != null) 'type': type!,
      };
}

/// Parsed and normalized entity value.
class GoogleCloudDocumentaiV1DocumentEntityNormalizedValue {
  /// Postal address.
  ///
  /// See also:
  /// https://github.com/googleapis/googleapis/blob/master/google/type/postal_address.proto
  GoogleTypePostalAddress? addressValue;

  /// Boolean value.
  ///
  /// Can be used for entities with binary values, or for checkboxes.
  core.bool? booleanValue;

  /// Date value.
  ///
  /// Includes year, month, day. See also:
  /// https://github.com/googleapis/googleapis/blob/master/google/type/date.proto
  GoogleTypeDate? dateValue;

  /// DateTime value.
  ///
  /// Includes date, time, and timezone. See also:
  /// https://github.com/googleapis/googleapis/blob/master/google/type/datetime.proto
  GoogleTypeDateTime? datetimeValue;

  /// Float value.
  core.double? floatValue;

  /// Integer value.
  core.int? integerValue;

  /// Money value.
  ///
  /// See also:
  /// https://github.com/googleapis/googleapis/blob/master/google/type/money.proto
  GoogleTypeMoney? moneyValue;

  /// An optional field to store a normalized string.
  ///
  /// For some entity types, one of respective 'structured_value' fields may
  /// also be populated. Also not all the types of 'structured_value' will be
  /// normalized. For example, some processors may not generate float or int
  /// normalized text by default. Below are sample formats mapped to structured
  /// values. - Money/Currency type (`money_value`) is in the ISO 4217 text
  /// format. - Date type (`date_value`) is in the ISO 8601 text format. -
  /// Datetime type (`datetime_value`) is in the ISO 8601 text format.
  ///
  /// Optional.
  core.String? text;

  GoogleCloudDocumentaiV1DocumentEntityNormalizedValue({
    this.addressValue,
    this.booleanValue,
    this.dateValue,
    this.datetimeValue,
    this.floatValue,
    this.integerValue,
    this.moneyValue,
    this.text,
  });

  GoogleCloudDocumentaiV1DocumentEntityNormalizedValue.fromJson(core.Map _json)
      : this(
          addressValue: _json.containsKey('addressValue')
              ? GoogleTypePostalAddress.fromJson(
                  _json['addressValue'] as core.Map<core.String, core.dynamic>)
              : null,
          booleanValue: _json.containsKey('booleanValue')
              ? _json['booleanValue'] as core.bool
              : null,
          dateValue: _json.containsKey('dateValue')
              ? GoogleTypeDate.fromJson(
                  _json['dateValue'] as core.Map<core.String, core.dynamic>)
              : null,
          datetimeValue: _json.containsKey('datetimeValue')
              ? GoogleTypeDateTime.fromJson(
                  _json['datetimeValue'] as core.Map<core.String, core.dynamic>)
              : null,
          floatValue: _json.containsKey('floatValue')
              ? (_json['floatValue'] as core.num).toDouble()
              : null,
          integerValue: _json.containsKey('integerValue')
              ? _json['integerValue'] as core.int
              : null,
          moneyValue: _json.containsKey('moneyValue')
              ? GoogleTypeMoney.fromJson(
                  _json['moneyValue'] as core.Map<core.String, core.dynamic>)
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressValue != null) 'addressValue': addressValue!,
        if (booleanValue != null) 'booleanValue': booleanValue!,
        if (dateValue != null) 'dateValue': dateValue!,
        if (datetimeValue != null) 'datetimeValue': datetimeValue!,
        if (floatValue != null) 'floatValue': floatValue!,
        if (integerValue != null) 'integerValue': integerValue!,
        if (moneyValue != null) 'moneyValue': moneyValue!,
        if (text != null) 'text': text!,
      };
}

/// Relationship between Entities.
typedef GoogleCloudDocumentaiV1DocumentEntityRelation = $DocumentEntityRelation;

/// Config that controls the output of documents.
///
/// All documents will be written as a JSON file.
class GoogleCloudDocumentaiV1DocumentOutputConfig {
  /// Output config to write the results to Cloud Storage.
  GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig? gcsOutputConfig;

  GoogleCloudDocumentaiV1DocumentOutputConfig({
    this.gcsOutputConfig,
  });

  GoogleCloudDocumentaiV1DocumentOutputConfig.fromJson(core.Map _json)
      : this(
          gcsOutputConfig: _json.containsKey('gcsOutputConfig')
              ? GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig
                  .fromJson(_json['gcsOutputConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsOutputConfig != null) 'gcsOutputConfig': gcsOutputConfig!,
      };
}

/// The configuration used when outputting documents.
class GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig {
  /// The Cloud Storage uri (a directory) of the output.
  core.String? gcsUri;

  GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig({
    this.gcsUri,
  });

  GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig.fromJson(
      core.Map _json)
      : this(
          gcsUri: _json.containsKey('gcsUri')
              ? _json['gcsUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsUri != null) 'gcsUri': gcsUri!,
      };
}

/// A page in a Document.
class GoogleCloudDocumentaiV1DocumentPage {
  /// A list of visually detected text blocks on the page.
  ///
  /// A block has a set of lines (collected into paragraphs) that have a common
  /// line-spacing and orientation.
  core.List<GoogleCloudDocumentaiV1DocumentPageBlock>? blocks;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Physical dimension of the page.
  GoogleCloudDocumentaiV1DocumentPageDimension? dimension;

  /// A list of visually detected form fields on the page.
  core.List<GoogleCloudDocumentaiV1DocumentPageFormField>? formFields;

  /// Rendered image for this page.
  ///
  /// This image is preprocessed to remove any skew, rotation, and distortions
  /// such that the annotation bounding boxes can be upright and axis-aligned.
  GoogleCloudDocumentaiV1DocumentPageImage? image;

  /// Layout for the page.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// A list of visually detected text lines on the page.
  ///
  /// A collection of tokens that a human would perceive as a line.
  core.List<GoogleCloudDocumentaiV1DocumentPageLine>? lines;

  /// 1-based index for current Page in a parent Document.
  ///
  /// Useful when a page is taken out of a Document for individual processing.
  core.int? pageNumber;

  /// A list of visually detected text paragraphs on the page.
  ///
  /// A collection of lines that a human would perceive as a paragraph.
  core.List<GoogleCloudDocumentaiV1DocumentPageParagraph>? paragraphs;

  /// The history of this page.
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  /// A list of visually detected tables on the page.
  core.List<GoogleCloudDocumentaiV1DocumentPageTable>? tables;

  /// A list of visually detected tokens on the page.
  core.List<GoogleCloudDocumentaiV1DocumentPageToken>? tokens;

  /// Transformation matrices that were applied to the original document image
  /// to produce Page.image.
  core.List<GoogleCloudDocumentaiV1DocumentPageMatrix>? transforms;

  /// A list of detected non-text visual elements e.g. checkbox, signature etc.
  ///
  /// on the page.
  core.List<GoogleCloudDocumentaiV1DocumentPageVisualElement>? visualElements;

  GoogleCloudDocumentaiV1DocumentPage({
    this.blocks,
    this.detectedLanguages,
    this.dimension,
    this.formFields,
    this.image,
    this.layout,
    this.lines,
    this.pageNumber,
    this.paragraphs,
    this.provenance,
    this.tables,
    this.tokens,
    this.transforms,
    this.visualElements,
  });

  GoogleCloudDocumentaiV1DocumentPage.fromJson(core.Map _json)
      : this(
          blocks: _json.containsKey('blocks')
              ? (_json['blocks'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageBlock.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimension: _json.containsKey('dimension')
              ? GoogleCloudDocumentaiV1DocumentPageDimension.fromJson(
                  _json['dimension'] as core.Map<core.String, core.dynamic>)
              : null,
          formFields: _json.containsKey('formFields')
              ? (_json['formFields'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageFormField.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image: _json.containsKey('image')
              ? GoogleCloudDocumentaiV1DocumentPageImage.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          lines: _json.containsKey('lines')
              ? (_json['lines'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageLine.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pageNumber: _json.containsKey('pageNumber')
              ? _json['pageNumber'] as core.int
              : null,
          paragraphs: _json.containsKey('paragraphs')
              ? (_json['paragraphs'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageParagraph.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          tables: _json.containsKey('tables')
              ? (_json['tables'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageTable.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tokens: _json.containsKey('tokens')
              ? (_json['tokens'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageToken.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          transforms: _json.containsKey('transforms')
              ? (_json['transforms'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageMatrix.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          visualElements: _json.containsKey('visualElements')
              ? (_json['visualElements'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageVisualElement.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blocks != null) 'blocks': blocks!,
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (dimension != null) 'dimension': dimension!,
        if (formFields != null) 'formFields': formFields!,
        if (image != null) 'image': image!,
        if (layout != null) 'layout': layout!,
        if (lines != null) 'lines': lines!,
        if (pageNumber != null) 'pageNumber': pageNumber!,
        if (paragraphs != null) 'paragraphs': paragraphs!,
        if (provenance != null) 'provenance': provenance!,
        if (tables != null) 'tables': tables!,
        if (tokens != null) 'tokens': tokens!,
        if (transforms != null) 'transforms': transforms!,
        if (visualElements != null) 'visualElements': visualElements!,
      };
}

/// Referencing the visual context of the entity in the Document.pages.
///
/// Page anchors can be cross-page, consist of multiple bounding polygons and
/// optionally reference specific layout element types.
class GoogleCloudDocumentaiV1DocumentPageAnchor {
  /// One or more references to visual page elements
  core.List<GoogleCloudDocumentaiV1DocumentPageAnchorPageRef>? pageRefs;

  GoogleCloudDocumentaiV1DocumentPageAnchor({
    this.pageRefs,
  });

  GoogleCloudDocumentaiV1DocumentPageAnchor.fromJson(core.Map _json)
      : this(
          pageRefs: _json.containsKey('pageRefs')
              ? (_json['pageRefs'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageAnchorPageRef.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageRefs != null) 'pageRefs': pageRefs!,
      };
}

/// Represents a weak reference to a page element within a document.
class GoogleCloudDocumentaiV1DocumentPageAnchorPageRef {
  /// Identifies the bounding polygon of a layout element on the page.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1BoundingPoly? boundingPoly;

  /// Confidence of detected page element, if applicable.
  ///
  /// Range \[0, 1\].
  ///
  /// Optional.
  core.double? confidence;

  /// Use PageRef.bounding_poly instead.
  ///
  /// Optional. Deprecated.
  core.String? layoutId;

  /// The type of the layout element that is being referenced if any.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "LAYOUT_TYPE_UNSPECIFIED" : Layout Unspecified.
  /// - "BLOCK" : References a Page.blocks element.
  /// - "PARAGRAPH" : References a Page.paragraphs element.
  /// - "LINE" : References a Page.lines element.
  /// - "TOKEN" : References a Page.tokens element.
  /// - "VISUAL_ELEMENT" : References a Page.visual_elements element.
  /// - "TABLE" : Refrrences a Page.tables element.
  /// - "FORM_FIELD" : References a Page.form_fields element.
  core.String? layoutType;

  /// Index into the Document.pages element, for example using Document.pages to
  /// locate the related page element.
  ///
  /// This field is skipped when its value is the default 0. See
  /// https://developers.google.com/protocol-buffers/docs/proto3#json.
  ///
  /// Required.
  core.String? page;

  GoogleCloudDocumentaiV1DocumentPageAnchorPageRef({
    this.boundingPoly,
    this.confidence,
    this.layoutId,
    this.layoutType,
    this.page,
  });

  GoogleCloudDocumentaiV1DocumentPageAnchorPageRef.fromJson(core.Map _json)
      : this(
          boundingPoly: _json.containsKey('boundingPoly')
              ? GoogleCloudDocumentaiV1BoundingPoly.fromJson(
                  _json['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          layoutId: _json.containsKey('layoutId')
              ? _json['layoutId'] as core.String
              : null,
          layoutType: _json.containsKey('layoutType')
              ? _json['layoutType'] as core.String
              : null,
          page: _json.containsKey('page') ? _json['page'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!,
        if (confidence != null) 'confidence': confidence!,
        if (layoutId != null) 'layoutId': layoutId!,
        if (layoutType != null) 'layoutType': layoutType!,
        if (page != null) 'page': page!,
      };
}

/// A block has a set of lines (collected into paragraphs) that have a common
/// line-spacing and orientation.
class GoogleCloudDocumentaiV1DocumentPageBlock {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Block.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageBlock({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1DocumentPageBlock.fromJson(core.Map _json)
      : this(
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (provenance != null) 'provenance': provenance!,
      };
}

/// Detected language for a structural component.
typedef GoogleCloudDocumentaiV1DocumentPageDetectedLanguage = $DetectedLanguage;

/// Dimension for the page.
typedef GoogleCloudDocumentaiV1DocumentPageDimension = $DocumentPageDimension;

/// A form field detected on the page.
class GoogleCloudDocumentaiV1DocumentPageFormField {
  /// Created for Labeling UI to export key text.
  ///
  /// If corrections were made to the text identified by the
  /// `field_name.text_anchor`, this field will contain the correction.
  core.String? correctedKeyText;

  /// Created for Labeling UI to export value text.
  ///
  /// If corrections were made to the text identified by the
  /// `field_value.text_anchor`, this field will contain the correction.
  core.String? correctedValueText;

  /// Layout for the FormField name.
  ///
  /// e.g. `Address`, `Email`, `Grand total`, `Phone number`, etc.
  GoogleCloudDocumentaiV1DocumentPageLayout? fieldName;

  /// Layout for the FormField value.
  GoogleCloudDocumentaiV1DocumentPageLayout? fieldValue;

  /// A list of detected languages for name together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      nameDetectedLanguages;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  /// A list of detected languages for value together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      valueDetectedLanguages;

  /// If the value is non-textual, this field represents the type.
  ///
  /// Current valid values are: - blank (this indicates the field_value is
  /// normal text) - "unfilled_checkbox" - "filled_checkbox"
  core.String? valueType;

  GoogleCloudDocumentaiV1DocumentPageFormField({
    this.correctedKeyText,
    this.correctedValueText,
    this.fieldName,
    this.fieldValue,
    this.nameDetectedLanguages,
    this.provenance,
    this.valueDetectedLanguages,
    this.valueType,
  });

  GoogleCloudDocumentaiV1DocumentPageFormField.fromJson(core.Map _json)
      : this(
          correctedKeyText: _json.containsKey('correctedKeyText')
              ? _json['correctedKeyText'] as core.String
              : null,
          correctedValueText: _json.containsKey('correctedValueText')
              ? _json['correctedValueText'] as core.String
              : null,
          fieldName: _json.containsKey('fieldName')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['fieldName'] as core.Map<core.String, core.dynamic>)
              : null,
          fieldValue: _json.containsKey('fieldValue')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['fieldValue'] as core.Map<core.String, core.dynamic>)
              : null,
          nameDetectedLanguages: _json.containsKey('nameDetectedLanguages')
              ? (_json['nameDetectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          valueDetectedLanguages: _json.containsKey('valueDetectedLanguages')
              ? (_json['valueDetectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          valueType: _json.containsKey('valueType')
              ? _json['valueType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (correctedKeyText != null) 'correctedKeyText': correctedKeyText!,
        if (correctedValueText != null)
          'correctedValueText': correctedValueText!,
        if (fieldName != null) 'fieldName': fieldName!,
        if (fieldValue != null) 'fieldValue': fieldValue!,
        if (nameDetectedLanguages != null)
          'nameDetectedLanguages': nameDetectedLanguages!,
        if (provenance != null) 'provenance': provenance!,
        if (valueDetectedLanguages != null)
          'valueDetectedLanguages': valueDetectedLanguages!,
        if (valueType != null) 'valueType': valueType!,
      };
}

/// Rendered image contents for this page.
typedef GoogleCloudDocumentaiV1DocumentPageImage = $DocumentPageImage;

/// Visual element describing a layout unit on a page.
class GoogleCloudDocumentaiV1DocumentPageLayout {
  /// The bounding polygon for the Layout.
  GoogleCloudDocumentaiV1BoundingPoly? boundingPoly;

  /// Confidence of the current Layout within context of the object this layout
  /// is for.
  ///
  /// e.g. confidence can be for a single token, a table, a visual element, etc.
  /// depending on context. Range \[0, 1\].
  core.double? confidence;

  /// Detected orientation for the Layout.
  /// Possible string values are:
  /// - "ORIENTATION_UNSPECIFIED" : Unspecified orientation.
  /// - "PAGE_UP" : Orientation is aligned with page up.
  /// - "PAGE_RIGHT" : Orientation is aligned with page right. Turn the head 90
  /// degrees clockwise from upright to read.
  /// - "PAGE_DOWN" : Orientation is aligned with page down. Turn the head 180
  /// degrees from upright to read.
  /// - "PAGE_LEFT" : Orientation is aligned with page left. Turn the head 90
  /// degrees counterclockwise from upright to read.
  core.String? orientation;

  /// Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;

  GoogleCloudDocumentaiV1DocumentPageLayout({
    this.boundingPoly,
    this.confidence,
    this.orientation,
    this.textAnchor,
  });

  GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(core.Map _json)
      : this(
          boundingPoly: _json.containsKey('boundingPoly')
              ? GoogleCloudDocumentaiV1BoundingPoly.fromJson(
                  _json['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          orientation: _json.containsKey('orientation')
              ? _json['orientation'] as core.String
              : null,
          textAnchor: _json.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
                  _json['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!,
        if (confidence != null) 'confidence': confidence!,
        if (orientation != null) 'orientation': orientation!,
        if (textAnchor != null) 'textAnchor': textAnchor!,
      };
}

/// A collection of tokens that a human would perceive as a line.
///
/// Does not cross column boundaries, can be horizontal, vertical, etc.
class GoogleCloudDocumentaiV1DocumentPageLine {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Line.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageLine({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1DocumentPageLine.fromJson(core.Map _json)
      : this(
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (provenance != null) 'provenance': provenance!,
      };
}

/// Representation for transformation matrix, intended to be compatible and used
/// with OpenCV format for image manipulation.
typedef GoogleCloudDocumentaiV1DocumentPageMatrix = $DocumentPageMatrix;

/// A collection of lines that a human would perceive as a paragraph.
class GoogleCloudDocumentaiV1DocumentPageParagraph {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Paragraph.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageParagraph({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1DocumentPageParagraph.fromJson(core.Map _json)
      : this(
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (provenance != null) 'provenance': provenance!,
      };
}

/// A table representation similar to HTML table structure.
class GoogleCloudDocumentaiV1DocumentPageTable {
  /// Body rows of the table.
  core.List<GoogleCloudDocumentaiV1DocumentPageTableTableRow>? bodyRows;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Header rows of the table.
  core.List<GoogleCloudDocumentaiV1DocumentPageTableTableRow>? headerRows;

  /// Layout for Table.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  GoogleCloudDocumentaiV1DocumentPageTable({
    this.bodyRows,
    this.detectedLanguages,
    this.headerRows,
    this.layout,
  });

  GoogleCloudDocumentaiV1DocumentPageTable.fromJson(core.Map _json)
      : this(
          bodyRows: _json.containsKey('bodyRows')
              ? (_json['bodyRows'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          headerRows: _json.containsKey('headerRows')
              ? (_json['headerRows'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bodyRows != null) 'bodyRows': bodyRows!,
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (headerRows != null) 'headerRows': headerRows!,
        if (layout != null) 'layout': layout!,
      };
}

/// A cell representation inside the table.
class GoogleCloudDocumentaiV1DocumentPageTableTableCell {
  /// How many columns this cell spans.
  core.int? colSpan;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for TableCell.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// How many rows this cell spans.
  core.int? rowSpan;

  GoogleCloudDocumentaiV1DocumentPageTableTableCell({
    this.colSpan,
    this.detectedLanguages,
    this.layout,
    this.rowSpan,
  });

  GoogleCloudDocumentaiV1DocumentPageTableTableCell.fromJson(core.Map _json)
      : this(
          colSpan: _json.containsKey('colSpan')
              ? _json['colSpan'] as core.int
              : null,
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          rowSpan: _json.containsKey('rowSpan')
              ? _json['rowSpan'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (colSpan != null) 'colSpan': colSpan!,
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (rowSpan != null) 'rowSpan': rowSpan!,
      };
}

/// A row of table cells.
class GoogleCloudDocumentaiV1DocumentPageTableTableRow {
  /// Cells that make up this row.
  core.List<GoogleCloudDocumentaiV1DocumentPageTableTableCell>? cells;

  GoogleCloudDocumentaiV1DocumentPageTableTableRow({
    this.cells,
  });

  GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromJson(core.Map _json)
      : this(
          cells: _json.containsKey('cells')
              ? (_json['cells'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageTableTableCell
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cells != null) 'cells': cells!,
      };
}

/// A detected token.
class GoogleCloudDocumentaiV1DocumentPageToken {
  /// Detected break at the end of a Token.
  GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak? detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Token.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageToken({
    this.detectedBreak,
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1DocumentPageToken.fromJson(core.Map _json)
      : this(
          detectedBreak: _json.containsKey('detectedBreak')
              ? GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak.fromJson(
                  _json['detectedBreak'] as core.Map<core.String, core.dynamic>)
              : null,
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedBreak != null) 'detectedBreak': detectedBreak!,
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (provenance != null) 'provenance': provenance!,
      };
}

/// Detected break at the end of a Token.
typedef GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak
    = $DocumentPageTokenDetectedBreak;

/// Detected non-text visual elements e.g. checkbox, signature etc.
///
/// on the page.
class GoogleCloudDocumentaiV1DocumentPageVisualElement {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for VisualElement.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// Type of the VisualElement.
  core.String? type;

  GoogleCloudDocumentaiV1DocumentPageVisualElement({
    this.detectedLanguages,
    this.layout,
    this.type,
  });

  GoogleCloudDocumentaiV1DocumentPageVisualElement.fromJson(core.Map _json)
      : this(
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (type != null) 'type': type!,
      };
}

/// Structure to identify provenance relationships between annotations in
/// different revisions.
class GoogleCloudDocumentaiV1DocumentProvenance {
  /// The Id of this operation.
  ///
  /// Needs to be unique within the scope of the revision.
  core.int? id;

  /// References to the original elements that are replaced.
  core.List<GoogleCloudDocumentaiV1DocumentProvenanceParent>? parents;

  /// The index of the revision that produced this element.
  core.int? revision;

  /// The type of provenance operation.
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED" : Operation type unspecified.
  /// - "ADD" : Add an element. Implicit if no `parents` are set for the
  /// provenance.
  /// - "REMOVE" : The element is removed. No `parents` should be set.
  /// - "REPLACE" : Explicitly replaces the element(s) identified by `parents`.
  /// - "EVAL_REQUESTED" : Element is requested for human review.
  /// - "EVAL_APPROVED" : Element is reviewed and approved at human review,
  /// confidence will be set to 1.0.
  /// - "EVAL_SKIPPED" : Element is skipped in the validation process.
  core.String? type;

  GoogleCloudDocumentaiV1DocumentProvenance({
    this.id,
    this.parents,
    this.revision,
    this.type,
  });

  GoogleCloudDocumentaiV1DocumentProvenance.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.int : null,
          parents: _json.containsKey('parents')
              ? (_json['parents'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentProvenanceParent.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.int
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (parents != null) 'parents': parents!,
        if (revision != null) 'revision': revision!,
        if (type != null) 'type': type!,
      };
}

/// Structure for referencing parent provenances.
///
/// When an element replaces one of more other elements parent references
/// identify the elements that are replaced.
typedef GoogleCloudDocumentaiV1DocumentProvenanceParent
    = $DocumentProvenanceParent;

/// Contains past or forward revisions of this document.
class GoogleCloudDocumentaiV1DocumentRevision {
  /// If the change was made by a person specify the name or id of that person.
  core.String? agent;

  /// The time that the revision was created.
  core.String? createTime;

  /// Human Review information of this revision.
  GoogleCloudDocumentaiV1DocumentRevisionHumanReview? humanReview;

  /// Id of the revision.
  ///
  /// Unique within the context of the document.
  core.String? id;

  /// The revisions that this revision is based on.
  ///
  /// This can include one or more parent (when documents are merged.) This
  /// field represents the index into the `revisions` field.
  core.List<core.int>? parent;

  /// If the annotation was made by processor identify the processor by its
  /// resource name.
  core.String? processor;

  GoogleCloudDocumentaiV1DocumentRevision({
    this.agent,
    this.createTime,
    this.humanReview,
    this.id,
    this.parent,
    this.processor,
  });

  GoogleCloudDocumentaiV1DocumentRevision.fromJson(core.Map _json)
      : this(
          agent:
              _json.containsKey('agent') ? _json['agent'] as core.String : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          humanReview: _json.containsKey('humanReview')
              ? GoogleCloudDocumentaiV1DocumentRevisionHumanReview.fromJson(
                  _json['humanReview'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          parent: _json.containsKey('parent')
              ? (_json['parent'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          processor: _json.containsKey('processor')
              ? _json['processor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agent != null) 'agent': agent!,
        if (createTime != null) 'createTime': createTime!,
        if (humanReview != null) 'humanReview': humanReview!,
        if (id != null) 'id': id!,
        if (parent != null) 'parent': parent!,
        if (processor != null) 'processor': processor!,
      };
}

/// Human Review information of the document.
typedef GoogleCloudDocumentaiV1DocumentRevisionHumanReview
    = $DocumentRevisionHumanReview;

/// For a large document, sharding may be performed to produce several document
/// shards.
///
/// Each document shard contains this field to detail which shard it is.
typedef GoogleCloudDocumentaiV1DocumentShardInfo = $DocumentShardInfo;

/// Annotation for common text style attributes.
///
/// This adheres to CSS conventions as much as possible.
class GoogleCloudDocumentaiV1DocumentStyle {
  /// Text background color.
  GoogleTypeColor? backgroundColor;

  /// Text color.
  GoogleTypeColor? color;

  /// Font size.
  GoogleCloudDocumentaiV1DocumentStyleFontSize? fontSize;

  /// Font weight.
  ///
  /// Possible values are normal, bold, bolder, and lighter.
  /// https://www.w3schools.com/cssref/pr_font_weight.asp
  core.String? fontWeight;

  /// Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;

  /// Text decoration.
  ///
  /// Follows CSS standard.
  /// https://www.w3schools.com/cssref/pr_text_text-decoration.asp
  core.String? textDecoration;

  /// Text style.
  ///
  /// Possible values are normal, italic, and oblique.
  /// https://www.w3schools.com/cssref/pr_font_font-style.asp
  core.String? textStyle;

  GoogleCloudDocumentaiV1DocumentStyle({
    this.backgroundColor,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAnchor,
    this.textDecoration,
    this.textStyle,
  });

  GoogleCloudDocumentaiV1DocumentStyle.fromJson(core.Map _json)
      : this(
          backgroundColor: _json.containsKey('backgroundColor')
              ? GoogleTypeColor.fromJson(_json['backgroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          color: _json.containsKey('color')
              ? GoogleTypeColor.fromJson(
                  _json['color'] as core.Map<core.String, core.dynamic>)
              : null,
          fontSize: _json.containsKey('fontSize')
              ? GoogleCloudDocumentaiV1DocumentStyleFontSize.fromJson(
                  _json['fontSize'] as core.Map<core.String, core.dynamic>)
              : null,
          fontWeight: _json.containsKey('fontWeight')
              ? _json['fontWeight'] as core.String
              : null,
          textAnchor: _json.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
                  _json['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          textDecoration: _json.containsKey('textDecoration')
              ? _json['textDecoration'] as core.String
              : null,
          textStyle: _json.containsKey('textStyle')
              ? _json['textStyle'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundColor != null) 'backgroundColor': backgroundColor!,
        if (color != null) 'color': color!,
        if (fontSize != null) 'fontSize': fontSize!,
        if (fontWeight != null) 'fontWeight': fontWeight!,
        if (textAnchor != null) 'textAnchor': textAnchor!,
        if (textDecoration != null) 'textDecoration': textDecoration!,
        if (textStyle != null) 'textStyle': textStyle!,
      };
}

/// Font size with unit.
typedef GoogleCloudDocumentaiV1DocumentStyleFontSize = $DocumentStyleFontSize;

/// Text reference indexing into the Document.text.
class GoogleCloudDocumentaiV1DocumentTextAnchor {
  /// Contains the content of the text span so that users do not have to look it
  /// up in the text_segments.
  core.String? content;

  /// The text segments from the Document.text.
  core.List<GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>? textSegments;

  GoogleCloudDocumentaiV1DocumentTextAnchor({
    this.content,
    this.textSegments,
  });

  GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          textSegments: _json.containsKey('textSegments')
              ? (_json['textSegments'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (textSegments != null) 'textSegments': textSegments!,
      };
}

/// A text segment in the Document.text.
///
/// The indices may be out of bounds which indicate that the text extends into
/// another document shard for large sharded documents. See
/// ShardInfo.text_offset
typedef GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
    = $DocumentTextAnchorTextSegment;

/// This message is used for text changes aka.
///
/// OCR corrections.
class GoogleCloudDocumentaiV1DocumentTextChange {
  /// The text that replaces the text identified in the `text_anchor`.
  core.String? changedText;

  /// The history of this annotation.
  core.List<GoogleCloudDocumentaiV1DocumentProvenance>? provenance;

  /// Provenance of the correction.
  ///
  /// Text anchor indexing into the Document.text. There can only be a single
  /// `TextAnchor.text_segments` element. If the start and end index of the text
  /// segment are the same, the text change is inserted before that index.
  GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;

  GoogleCloudDocumentaiV1DocumentTextChange({
    this.changedText,
    this.provenance,
    this.textAnchor,
  });

  GoogleCloudDocumentaiV1DocumentTextChange.fromJson(core.Map _json)
      : this(
          changedText: _json.containsKey('changedText')
              ? _json['changedText'] as core.String
              : null,
          provenance: _json.containsKey('provenance')
              ? (_json['provenance'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          textAnchor: _json.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
                  _json['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changedText != null) 'changedText': changedText!,
        if (provenance != null) 'provenance': provenance!,
        if (textAnchor != null) 'textAnchor': textAnchor!,
      };
}

/// Request message for the enable processor method.
typedef GoogleCloudDocumentaiV1EnableProcessorRequest = $Empty;

/// Evaluation metrics, either in aggregate or about a specific entity.
class GoogleCloudDocumentaiV1EvaluationMetrics {
  /// The calculated f1 score.
  core.double? f1Score;

  /// The amount of false negatives.
  core.int? falseNegativesCount;

  /// The amount of false positives.
  core.int? falsePositivesCount;

  /// The amount of occurrences in ground truth documents.
  core.int? groundTruthOccurrencesCount;

  /// The calculated precision.
  core.double? precision;

  /// The amount of occurrences in predicted documents.
  core.int? predictedOccurrencesCount;

  /// The calculated recall.
  core.double? recall;

  /// The amount of documents that had an occurrence of this label.
  core.int? totalDocumentsCount;

  /// The amount of true positives.
  core.int? truePositivesCount;

  GoogleCloudDocumentaiV1EvaluationMetrics({
    this.f1Score,
    this.falseNegativesCount,
    this.falsePositivesCount,
    this.groundTruthOccurrencesCount,
    this.precision,
    this.predictedOccurrencesCount,
    this.recall,
    this.totalDocumentsCount,
    this.truePositivesCount,
  });

  GoogleCloudDocumentaiV1EvaluationMetrics.fromJson(core.Map _json)
      : this(
          f1Score: _json.containsKey('f1Score')
              ? (_json['f1Score'] as core.num).toDouble()
              : null,
          falseNegativesCount: _json.containsKey('falseNegativesCount')
              ? _json['falseNegativesCount'] as core.int
              : null,
          falsePositivesCount: _json.containsKey('falsePositivesCount')
              ? _json['falsePositivesCount'] as core.int
              : null,
          groundTruthOccurrencesCount:
              _json.containsKey('groundTruthOccurrencesCount')
                  ? _json['groundTruthOccurrencesCount'] as core.int
                  : null,
          precision: _json.containsKey('precision')
              ? (_json['precision'] as core.num).toDouble()
              : null,
          predictedOccurrencesCount:
              _json.containsKey('predictedOccurrencesCount')
                  ? _json['predictedOccurrencesCount'] as core.int
                  : null,
          recall: _json.containsKey('recall')
              ? (_json['recall'] as core.num).toDouble()
              : null,
          totalDocumentsCount: _json.containsKey('totalDocumentsCount')
              ? _json['totalDocumentsCount'] as core.int
              : null,
          truePositivesCount: _json.containsKey('truePositivesCount')
              ? _json['truePositivesCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (f1Score != null) 'f1Score': f1Score!,
        if (falseNegativesCount != null)
          'falseNegativesCount': falseNegativesCount!,
        if (falsePositivesCount != null)
          'falsePositivesCount': falsePositivesCount!,
        if (groundTruthOccurrencesCount != null)
          'groundTruthOccurrencesCount': groundTruthOccurrencesCount!,
        if (precision != null) 'precision': precision!,
        if (predictedOccurrencesCount != null)
          'predictedOccurrencesCount': predictedOccurrencesCount!,
        if (recall != null) 'recall': recall!,
        if (totalDocumentsCount != null)
          'totalDocumentsCount': totalDocumentsCount!,
        if (truePositivesCount != null)
          'truePositivesCount': truePositivesCount!,
      };
}

/// Gives a short summary of an evaluation, and links to the evaluation itself.
class GoogleCloudDocumentaiV1EvaluationReference {
  /// An aggregate of the statistics for the evaluation.
  GoogleCloudDocumentaiV1EvaluationMetrics? aggregateMetrics;

  /// The resource name of the evaluation.
  core.String? evaluation;

  /// The resource name of the Long Running Operation for the evaluation.
  core.String? operation;

  GoogleCloudDocumentaiV1EvaluationReference({
    this.aggregateMetrics,
    this.evaluation,
    this.operation,
  });

  GoogleCloudDocumentaiV1EvaluationReference.fromJson(core.Map _json)
      : this(
          aggregateMetrics: _json.containsKey('aggregateMetrics')
              ? GoogleCloudDocumentaiV1EvaluationMetrics.fromJson(
                  _json['aggregateMetrics']
                      as core.Map<core.String, core.dynamic>)
              : null,
          evaluation: _json.containsKey('evaluation')
              ? _json['evaluation'] as core.String
              : null,
          operation: _json.containsKey('operation')
              ? _json['operation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregateMetrics != null) 'aggregateMetrics': aggregateMetrics!,
        if (evaluation != null) 'evaluation': evaluation!,
        if (operation != null) 'operation': operation!,
      };
}

/// Response message for fetch processor types.
class GoogleCloudDocumentaiV1FetchProcessorTypesResponse {
  /// The list of processor types.
  core.List<GoogleCloudDocumentaiV1ProcessorType>? processorTypes;

  GoogleCloudDocumentaiV1FetchProcessorTypesResponse({
    this.processorTypes,
  });

  GoogleCloudDocumentaiV1FetchProcessorTypesResponse.fromJson(core.Map _json)
      : this(
          processorTypes: _json.containsKey('processorTypes')
              ? (_json['processorTypes'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1ProcessorType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (processorTypes != null) 'processorTypes': processorTypes!,
      };
}

/// Specifies a document stored on Cloud Storage.
class GoogleCloudDocumentaiV1GcsDocument {
  /// The Cloud Storage object uri.
  core.String? gcsUri;

  /// An IANA MIME type (RFC6838) of the content.
  core.String? mimeType;

  GoogleCloudDocumentaiV1GcsDocument({
    this.gcsUri,
    this.mimeType,
  });

  GoogleCloudDocumentaiV1GcsDocument.fromJson(core.Map _json)
      : this(
          gcsUri: _json.containsKey('gcsUri')
              ? _json['gcsUri'] as core.String
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsUri != null) 'gcsUri': gcsUri!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// Specifies a set of documents on Cloud Storage.
class GoogleCloudDocumentaiV1GcsDocuments {
  /// The list of documents.
  core.List<GoogleCloudDocumentaiV1GcsDocument>? documents;

  GoogleCloudDocumentaiV1GcsDocuments({
    this.documents,
  });

  GoogleCloudDocumentaiV1GcsDocuments.fromJson(core.Map _json)
      : this(
          documents: _json.containsKey('documents')
              ? (_json['documents'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1GcsDocument.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documents != null) 'documents': documents!,
      };
}

/// Specifies all documents on Cloud Storage with a common prefix.
class GoogleCloudDocumentaiV1GcsPrefix {
  /// The URI prefix.
  core.String? gcsUriPrefix;

  GoogleCloudDocumentaiV1GcsPrefix({
    this.gcsUriPrefix,
  });

  GoogleCloudDocumentaiV1GcsPrefix.fromJson(core.Map _json)
      : this(
          gcsUriPrefix: _json.containsKey('gcsUriPrefix')
              ? _json['gcsUriPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsUriPrefix != null) 'gcsUriPrefix': gcsUriPrefix!,
      };
}

/// The status of human review on a processed document.
typedef GoogleCloudDocumentaiV1HumanReviewStatus = $HumanReviewStatus;

/// Response message for list processors.
class GoogleCloudDocumentaiV1ListProcessorVersionsResponse {
  /// Points to the next processor, otherwise empty.
  core.String? nextPageToken;

  /// The list of processors.
  core.List<GoogleCloudDocumentaiV1ProcessorVersion>? processorVersions;

  GoogleCloudDocumentaiV1ListProcessorVersionsResponse({
    this.nextPageToken,
    this.processorVersions,
  });

  GoogleCloudDocumentaiV1ListProcessorVersionsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          processorVersions: _json.containsKey('processorVersions')
              ? (_json['processorVersions'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1ProcessorVersion.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (processorVersions != null) 'processorVersions': processorVersions!,
      };
}

/// Response message for list processors.
class GoogleCloudDocumentaiV1ListProcessorsResponse {
  /// Points to the next processor, otherwise empty.
  core.String? nextPageToken;

  /// The list of processors.
  core.List<GoogleCloudDocumentaiV1Processor>? processors;

  GoogleCloudDocumentaiV1ListProcessorsResponse({
    this.nextPageToken,
    this.processors,
  });

  GoogleCloudDocumentaiV1ListProcessorsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          processors: _json.containsKey('processors')
              ? (_json['processors'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1Processor.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (processors != null) 'processors': processors!,
      };
}

/// A vertex represents a 2D point in the image.
///
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
typedef GoogleCloudDocumentaiV1NormalizedVertex = $NormalizedVertex01;

/// Request message for the process document method.
class GoogleCloudDocumentaiV1ProcessRequest {
  /// An inline document proto.
  GoogleCloudDocumentaiV1Document? inlineDocument;

  /// A raw document content (bytes).
  GoogleCloudDocumentaiV1RawDocument? rawDocument;

  /// Whether Human Review feature should be skipped for this request.
  ///
  /// Default to false.
  core.bool? skipHumanReview;

  GoogleCloudDocumentaiV1ProcessRequest({
    this.inlineDocument,
    this.rawDocument,
    this.skipHumanReview,
  });

  GoogleCloudDocumentaiV1ProcessRequest.fromJson(core.Map _json)
      : this(
          inlineDocument: _json.containsKey('inlineDocument')
              ? GoogleCloudDocumentaiV1Document.fromJson(_json['inlineDocument']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rawDocument: _json.containsKey('rawDocument')
              ? GoogleCloudDocumentaiV1RawDocument.fromJson(
                  _json['rawDocument'] as core.Map<core.String, core.dynamic>)
              : null,
          skipHumanReview: _json.containsKey('skipHumanReview')
              ? _json['skipHumanReview'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inlineDocument != null) 'inlineDocument': inlineDocument!,
        if (rawDocument != null) 'rawDocument': rawDocument!,
        if (skipHumanReview != null) 'skipHumanReview': skipHumanReview!,
      };
}

/// Response message for the process document method.
class GoogleCloudDocumentaiV1ProcessResponse {
  /// The document payload, will populate fields based on the processor's
  /// behavior.
  GoogleCloudDocumentaiV1Document? document;

  /// The status of human review on the processed document.
  GoogleCloudDocumentaiV1HumanReviewStatus? humanReviewStatus;

  GoogleCloudDocumentaiV1ProcessResponse({
    this.document,
    this.humanReviewStatus,
  });

  GoogleCloudDocumentaiV1ProcessResponse.fromJson(core.Map _json)
      : this(
          document: _json.containsKey('document')
              ? GoogleCloudDocumentaiV1Document.fromJson(
                  _json['document'] as core.Map<core.String, core.dynamic>)
              : null,
          humanReviewStatus: _json.containsKey('humanReviewStatus')
              ? GoogleCloudDocumentaiV1HumanReviewStatus.fromJson(
                  _json['humanReviewStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (humanReviewStatus != null) 'humanReviewStatus': humanReviewStatus!,
      };
}

/// The first-class citizen for DAI.
///
/// Each processor defines how to extract structural information from a
/// document.
class GoogleCloudDocumentaiV1Processor {
  /// The time the processor was created.
  core.String? createTime;

  /// The default processor version.
  core.String? defaultProcessorVersion;

  /// The display name of the processor.
  core.String? displayName;

  /// The KMS key used for encryption/decryption in CMEK scenarios.
  ///
  /// See https://cloud.google.com/security-key-management.
  core.String? kmsKeyName;

  /// The resource name of the processor.
  ///
  /// Format: projects/{project}/locations/{location}/processors/{processor}
  ///
  /// Output only. Immutable.
  core.String? name;

  /// The http endpoint that can be called to invoke processing.
  ///
  /// Output only. Immutable.
  core.String? processEndpoint;

  /// The state of the processor.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The processor is in an unspecified state.
  /// - "ENABLED" : The processor is enabled, i.e, has an enabled version which
  /// can currently serve processing requests and all the feature dependencies
  /// have been successfully initialized.
  /// - "DISABLED" : The processor is disabled.
  /// - "ENABLING" : The processor is being enabled, will become ENABLED if
  /// successful.
  /// - "DISABLING" : The processor is being disabled, will become DISABLED if
  /// successful.
  /// - "CREATING" : The processor is being created, will become either ENABLED
  /// (for successful creation) or FAILED (for failed ones). Once a processor is
  /// in this state, it can then be used for document processing, but the
  /// feature dependencies of the processor might not be fully created yet.
  /// - "FAILED" : The processor failed during creation or initialization of
  /// feature dependencies. The user should delete the processor and recreate
  /// one as all the functionalities of the processor are disabled.
  /// - "DELETING" : The processor is being deleted, will be removed if
  /// successful.
  core.String? state;

  /// The processor type, e.g., INVOICE_PARSING, W2_PARSING, etc.
  core.String? type;

  GoogleCloudDocumentaiV1Processor({
    this.createTime,
    this.defaultProcessorVersion,
    this.displayName,
    this.kmsKeyName,
    this.name,
    this.processEndpoint,
    this.state,
    this.type,
  });

  GoogleCloudDocumentaiV1Processor.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          defaultProcessorVersion: _json.containsKey('defaultProcessorVersion')
              ? _json['defaultProcessorVersion'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          kmsKeyName: _json.containsKey('kmsKeyName')
              ? _json['kmsKeyName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          processEndpoint: _json.containsKey('processEndpoint')
              ? _json['processEndpoint'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (defaultProcessorVersion != null)
          'defaultProcessorVersion': defaultProcessorVersion!,
        if (displayName != null) 'displayName': displayName!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (name != null) 'name': name!,
        if (processEndpoint != null) 'processEndpoint': processEndpoint!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
      };
}

/// A processor type is responsible for performing a certain document
/// understanding task on a certain type of document.
///
/// All processor types are created by the documentai service internally. User
/// will only list all available processor types via UI. For different users
/// (projects), the available processor types may be different since we'll
/// expose the access of some types via EAP whitelisting. We make the
/// ProcessorType a resource under location so we have a unified API and keep
/// the possibility that UI will load different available processor types from
/// different regions. But for alpha the behavior is that the user will always
/// get the union of all available processor types among all regions no matter
/// which regionalized endpoint is called, and then we use the
/// 'available_locations' field to show under which regions a processor type is
/// available. For example, users can call either the 'US' or 'EU' endpoint to
/// feach processor types. In the return, we will have an 'invoice parsing'
/// processor with 'available_locations' field only containing 'US'. So the user
/// can try to create an 'invoice parsing' processor under the location 'US'.
/// Such attempt of creating under the location 'EU' will fail. Next ID: 9.
class GoogleCloudDocumentaiV1ProcessorType {
  /// Whether the processor type allows creation.
  ///
  /// If yes, user can create a processor of this processor type. Otherwise,
  /// user needs to request access.
  core.bool? allowCreation;

  /// The locations in which this processor is available.
  core.List<GoogleCloudDocumentaiV1ProcessorTypeLocationInfo>?
      availableLocations;

  /// The processor category, used by UI to group processor types.
  core.String? category;

  /// Launch stage of the processor type
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "UNIMPLEMENTED" : The feature is not yet implemented. Users can not use
  /// it.
  /// - "PRELAUNCH" : Prelaunch features are hidden from users and are only
  /// visible internally.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects allowlisted. Alpha releases don’t have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the “Deprecation Policy” section of our
  /// [Terms of Service](https://cloud.google.com/terms/) and the
  /// [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation)
  /// documentation.
  core.String? launchStage;

  /// The resource name of the processor type.
  ///
  /// Format: projects/{project}/processorTypes/{processor_type}
  core.String? name;

  /// The type of the processor, e.g., "invoice_parsing".
  core.String? type;

  GoogleCloudDocumentaiV1ProcessorType({
    this.allowCreation,
    this.availableLocations,
    this.category,
    this.launchStage,
    this.name,
    this.type,
  });

  GoogleCloudDocumentaiV1ProcessorType.fromJson(core.Map _json)
      : this(
          allowCreation: _json.containsKey('allowCreation')
              ? _json['allowCreation'] as core.bool
              : null,
          availableLocations: _json.containsKey('availableLocations')
              ? (_json['availableLocations'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1ProcessorTypeLocationInfo.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          category: _json.containsKey('category')
              ? _json['category'] as core.String
              : null,
          launchStage: _json.containsKey('launchStage')
              ? _json['launchStage'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowCreation != null) 'allowCreation': allowCreation!,
        if (availableLocations != null)
          'availableLocations': availableLocations!,
        if (category != null) 'category': category!,
        if (launchStage != null) 'launchStage': launchStage!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// The location information about where the processor is available.
class GoogleCloudDocumentaiV1ProcessorTypeLocationInfo {
  /// The location id, currently must be one of \[us, eu\].
  core.String? locationId;

  GoogleCloudDocumentaiV1ProcessorTypeLocationInfo({
    this.locationId,
  });

  GoogleCloudDocumentaiV1ProcessorTypeLocationInfo.fromJson(core.Map _json)
      : this(
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locationId != null) 'locationId': locationId!,
      };
}

/// A processor version is an implementation of a processor.
///
/// Each processor can have multiple versions, pre-trained by Google internally
/// or up-trained by the customer. At a time, a processor can only have one
/// default version version. So the processor's behavior (when processing
/// documents) is defined by a default version.
class GoogleCloudDocumentaiV1ProcessorVersion {
  /// The time the processor version was created.
  core.String? createTime;

  /// The display name of the processor version.
  core.String? displayName;

  /// The most recently invoked evaluation for the processor version.
  GoogleCloudDocumentaiV1EvaluationReference? latestEvaluation;

  /// The resource name of the processor version.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processor_version}
  core.String? name;

  /// The schema of the processor version.
  ///
  /// Describes the output.
  GoogleCloudDocumentaiV1Schema? schema;

  /// The state of the processor version.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The processor version is in an unspecified state.
  /// - "DEPLOYED" : The processor version is deployed and can be used for
  /// processing.
  /// - "DEPLOYING" : The processor version is being deployed.
  /// - "UNDEPLOYED" : The processor version is not deployed and cannot be used
  /// for processing.
  /// - "UNDEPLOYING" : The processor version is being undeployed.
  /// - "CREATING" : The processor version is being created.
  /// - "DELETING" : The processor version is being deleted.
  /// - "FAILED" : The processor version failed and is in an indeterminate
  /// state.
  core.String? state;

  GoogleCloudDocumentaiV1ProcessorVersion({
    this.createTime,
    this.displayName,
    this.latestEvaluation,
    this.name,
    this.schema,
    this.state,
  });

  GoogleCloudDocumentaiV1ProcessorVersion.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          latestEvaluation: _json.containsKey('latestEvaluation')
              ? GoogleCloudDocumentaiV1EvaluationReference.fromJson(
                  _json['latestEvaluation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          schema: _json.containsKey('schema')
              ? GoogleCloudDocumentaiV1Schema.fromJson(
                  _json['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (latestEvaluation != null) 'latestEvaluation': latestEvaluation!,
        if (name != null) 'name': name!,
        if (schema != null) 'schema': schema!,
        if (state != null) 'state': state!,
      };
}

/// Payload message of raw document content (bytes).
class GoogleCloudDocumentaiV1RawDocument {
  /// Inline document content.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// An IANA MIME type (RFC6838) indicating the nature and format of the
  /// \[content\].
  core.String? mimeType;

  GoogleCloudDocumentaiV1RawDocument({
    this.content,
    this.mimeType,
  });

  GoogleCloudDocumentaiV1RawDocument.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// Request message for review document method.
///
/// Next Id: 6.
class GoogleCloudDocumentaiV1ReviewDocumentRequest {
  /// Whether the validation should be performed on the ad-hoc review request.
  core.bool? enableSchemaValidation;

  /// An inline document proto.
  GoogleCloudDocumentaiV1Document? inlineDocument;

  /// The priority of the human review task.
  /// Possible string values are:
  /// - "DEFAULT" : The default priority level.
  /// - "URGENT" : The urgent priority level. The labeling manager should
  /// allocate labeler resource to the urgent task queue to respect this
  /// priority level.
  core.String? priority;

  GoogleCloudDocumentaiV1ReviewDocumentRequest({
    this.enableSchemaValidation,
    this.inlineDocument,
    this.priority,
  });

  GoogleCloudDocumentaiV1ReviewDocumentRequest.fromJson(core.Map _json)
      : this(
          enableSchemaValidation: _json.containsKey('enableSchemaValidation')
              ? _json['enableSchemaValidation'] as core.bool
              : null,
          inlineDocument: _json.containsKey('inlineDocument')
              ? GoogleCloudDocumentaiV1Document.fromJson(_json['inlineDocument']
                  as core.Map<core.String, core.dynamic>)
              : null,
          priority: _json.containsKey('priority')
              ? _json['priority'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableSchemaValidation != null)
          'enableSchemaValidation': enableSchemaValidation!,
        if (inlineDocument != null) 'inlineDocument': inlineDocument!,
        if (priority != null) 'priority': priority!,
      };
}

/// The schema defines the output of the processed document by a processor.
class GoogleCloudDocumentaiV1Schema {
  /// Description of the schema.
  core.String? description;

  /// Display name to show to users.
  core.String? displayName;

  /// Entity types of the schema.
  core.List<GoogleCloudDocumentaiV1SchemaEntityType>? entityTypes;

  GoogleCloudDocumentaiV1Schema({
    this.description,
    this.displayName,
    this.entityTypes,
  });

  GoogleCloudDocumentaiV1Schema.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          entityTypes: _json.containsKey('entityTypes')
              ? (_json['entityTypes'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1SchemaEntityType.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (entityTypes != null) 'entityTypes': entityTypes!,
      };
}

/// EntityType is the wrapper of a label of the corresponding model with
/// detailed attributes and limitations for entity-based processors.
///
/// Multiple types can also compose a dependency tree to represent nested types.
class GoogleCloudDocumentaiV1SchemaEntityType {
  /// Type of the entity.
  ///
  /// It must be one of the following: `document` - the entity represents a
  /// classification of a logical document. `object` - if the entity has
  /// properties it is likely an object (or or a document.) `datetime` - the
  /// entity is a date or time value. `money` - the entity represents a money
  /// value amount. `number` - the entity is a number - integer or floating
  /// point. `string` - the entity is a string value. `boolean` - the entity is
  /// a boolean value. `address` - the entity is a location address. `duration`
  /// - the entity is a duration.
  core.String? baseType;

  /// Description of the entity type.
  core.String? description;

  /// If specified, lists all the possible values for this entity.
  core.List<core.String>? enumValues;

  /// Occurrence type limits the number of times an entity type appears in the
  /// document.
  /// Possible string values are:
  /// - "OCCURRENCE_TYPE_UNSPECIFIED" : Unspecified occurrence type.
  /// - "OPTIONAL_ONCE" : The entity type will appear zero times or once.
  /// - "OPTIONAL_MULTIPLE" : The entity type will appear zero or multiple
  /// times.
  /// - "REQUIRED_ONCE" : The entity type will only appear exactly once.
  /// - "REQUIRED_MULTIPLE" : The entity type will appear once or more times.
  core.String? occurrenceType;

  /// Describing the nested structure of an entity.
  ///
  /// An EntityType may consist of several other EntityTypes. For example, in a
  /// document there can be an EntityType 'ID', which consists of EntityType
  /// 'name' and 'address', with corresponding attributes, such as TEXT for both
  /// types and ONCE for occurrence types.
  core.List<GoogleCloudDocumentaiV1SchemaEntityType>? properties;

  /// Source of this entity type.
  /// Possible string values are:
  /// - "SOURCE_UNSPECIFIED" : Unspecified source.
  /// - "PREDEFINED" : The entity type is in the predefined schema of a
  /// pretrained version of a processor.
  /// - "USER_INPUT" : The entity type is added by the users either: - during an
  /// uptraining of an existing processor, or - during the process of creating a
  /// customized processor.
  core.String? source;

  /// Name of the type.
  ///
  /// It must satisfy the following constraints: 1. Must be unique within the
  /// set of same level types (with case-insensitive match). 2. Maximum 50
  /// characters. 3. Must start with a letter. 4. Allowed characters: ASCII
  /// letters \[a-zA-Z\], ASCII digits \[0-9\], or one of the following
  /// punctuation characters: * underscore '_' (recommended) * hyphen '-'
  /// (allowed, not recommended) * colon ':' (allowed, not recommended) NOTE:
  /// Whitespace characters are not allowed. 5. Cannot end with a punctuation
  /// character. 6. Cannot contain the following restricted strings: "google",
  /// "DocumentAI" (case-insensitive match). 7. A slash character '/' is
  /// reserved as a separator in flattened representations of nested entity
  /// types (e.g., "line_item/amount") in which case each part (e.g.,
  /// "line_item", "amount") must comply with the rules defined above. We
  /// recommend using the snake case ("snake_case") in entity type names.
  core.String? type;

  GoogleCloudDocumentaiV1SchemaEntityType({
    this.baseType,
    this.description,
    this.enumValues,
    this.occurrenceType,
    this.properties,
    this.source,
    this.type,
  });

  GoogleCloudDocumentaiV1SchemaEntityType.fromJson(core.Map _json)
      : this(
          baseType: _json.containsKey('baseType')
              ? _json['baseType'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          enumValues: _json.containsKey('enumValues')
              ? (_json['enumValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          occurrenceType: _json.containsKey('occurrenceType')
              ? _json['occurrenceType'] as core.String
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1SchemaEntityType.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          source: _json.containsKey('source')
              ? _json['source'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseType != null) 'baseType': baseType!,
        if (description != null) 'description': description!,
        if (enumValues != null) 'enumValues': enumValues!,
        if (occurrenceType != null) 'occurrenceType': occurrenceType!,
        if (properties != null) 'properties': properties!,
        if (source != null) 'source': source!,
        if (type != null) 'type': type!,
      };
}

/// Request message for the set default processor version method.
class GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest {
  /// The resource name of child ProcessorVersion to use as default.
  ///
  /// Required.
  core.String? defaultProcessorVersion;

  GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest({
    this.defaultProcessorVersion,
  });

  GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest.fromJson(
      core.Map _json)
      : this(
          defaultProcessorVersion: _json.containsKey('defaultProcessorVersion')
              ? _json['defaultProcessorVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultProcessorVersion != null)
          'defaultProcessorVersion': defaultProcessorVersion!,
      };
}

/// Request message for the undeploy processor version method.
typedef GoogleCloudDocumentaiV1UndeployProcessorVersionRequest = $Empty;

/// A vertex represents a 2D point in the image.
///
/// NOTE: the vertex coordinates are in the same scale as the original image.
typedef GoogleCloudDocumentaiV1Vertex = $Vertex01;

/// The response message for Locations.ListLocations.
class GoogleCloudLocationListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<GoogleCloudLocationLocation>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  GoogleCloudLocationListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  GoogleCloudLocationListLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => GoogleCloudLocationLocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef GoogleCloudLocationLocation = $Location00;

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation>? operations;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map((value) => GoogleLongrunningOperation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;

/// Represents a color in the RGBA color space.
///
/// This representation is designed for simplicity of conversion to/from color
/// representations in various languages over compactness. For example, the
/// fields of this representation can be trivially provided to the constructor
/// of `java.awt.Color` in Java; it can also be trivially provided to UIColor's
/// `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little
/// work, it can be easily formatted into a CSS `rgba()` string in JavaScript.
/// This reference page doesn't carry information about the absolute color space
/// that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB,
/// DCI-P3, BT.2020, etc.). By default, applications should assume the sRGB
/// color space. When color equality needs to be decided, implementations,
/// unless documented otherwise, treat two colors as equal if all their red,
/// green, blue, and alpha values each differ by at most 1e-5. Example (Java):
/// import com.google.type.Color; // ... public static java.awt.Color
/// fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ?
/// protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color(
/// protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); }
/// public static Color toProto(java.awt.Color color) { float red = (float)
/// color.getRed(); float green = (float) color.getGreen(); float blue = (float)
/// color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder =
/// Color .newBuilder() .setRed(red / denominator) .setGreen(green /
/// denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if
/// (alpha != 255) { result.setAlpha( FloatValue .newBuilder()
/// .setValue(((float) alpha) / denominator) .build()); } return
/// resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static
/// UIColor* fromProto(Color* protocolor) { float red = \[protocolor red\];
/// float green = \[protocolor green\]; float blue = \[protocolor blue\];
/// FloatValue* alpha_wrapper = \[protocolor alpha\]; float alpha = 1.0; if
/// (alpha_wrapper != nil) { alpha = \[alpha_wrapper value\]; } return \[UIColor
/// colorWithRed:red green:green blue:blue alpha:alpha\]; } static Color*
/// toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (!\[color
/// getRed:&red green:&green blue:&blue alpha:&alpha\]) { return nil; } Color*
/// result = \[\[Color alloc\] init\]; \[result setRed:red\]; \[result
/// setGreen:green\]; \[result setBlue:blue\]; if (alpha \<= 0.9999) { \[result
/// setAlpha:floatWrapperWithValue(alpha)\]; } \[result autorelease\]; return
/// result; } // ... Example (JavaScript): // ... var protoToCssColor =
/// function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac =
/// rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red =
/// Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue
/// = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return
/// rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value ||
/// 0.0; var rgbParams = \[red, green, blue\].join(','); return \['rgba(',
/// rgbParams, ',', alphaFrac, ')'\].join(''); }; var rgbToCssColor =
/// function(red, green, blue) { var rgbNumber = new Number((red \<\< 16) |
/// (green \<\< 8) | blue); var hexString = rgbNumber.toString(16); var
/// missingZeros = 6 - hexString.length; var resultBuilder = \['#'\]; for (var i
/// = 0; i \< missingZeros; i++) { resultBuilder.push('0'); }
/// resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...
typedef GoogleTypeColor = $Color;

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values * A month and day value, with a zero year, such as an
/// anniversary * A year on its own, with zero month and day values * A year and
/// month value, with a zero day, such as a credit card expiration date Related
/// types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
typedef GoogleTypeDate = $Date;

/// Represents civil time (or occasionally physical time).
///
/// This type can represent a civil time in one of a few possible ways: * When
/// utc_offset is set and time_zone is unset: a civil time on a calendar day
/// with a particular offset from UTC. * When time_zone is set and utc_offset is
/// unset: a civil time on a calendar day in a particular time zone. * When
/// neither time_zone nor utc_offset is set: a civil time on a calendar day in
/// local time. The date is relative to the Proleptic Gregorian Calendar. If
/// year is 0, the DateTime is considered not to have a specific year. month and
/// day must have valid, non-zero values. This type may also be used to
/// represent a physical time if all the date and time fields are set and either
/// case of the `time_offset` oneof is set. Consider using `Timestamp` message
/// for physical time instead. If your use case also would like to store the
/// user's timezone, that can be done in another field. This type is more
/// flexible than some applications may want. Make sure to document and validate
/// your application's limitations.
class GoogleTypeDateTime {
  /// Day of month.
  ///
  /// Must be from 1 to 31 and valid for the year and month.
  ///
  /// Required.
  core.int? day;

  /// Hours of day in 24 hour format.
  ///
  /// Should be from 0 to 23. An API may choose to allow the value "24:00:00"
  /// for scenarios like business closing time.
  ///
  /// Required.
  core.int? hours;

  /// Minutes of hour of day.
  ///
  /// Must be from 0 to 59.
  ///
  /// Required.
  core.int? minutes;

  /// Month of year.
  ///
  /// Must be from 1 to 12.
  ///
  /// Required.
  core.int? month;

  /// Fractions of seconds in nanoseconds.
  ///
  /// Must be from 0 to 999,999,999.
  ///
  /// Required.
  core.int? nanos;

  /// Seconds of minutes of the time.
  ///
  /// Must normally be from 0 to 59. An API may allow the value 60 if it allows
  /// leap-seconds.
  ///
  /// Required.
  core.int? seconds;

  /// Time zone.
  GoogleTypeTimeZone? timeZone;

  /// UTC offset.
  ///
  /// Must be whole seconds, between -18 hours and +18 hours. For example, a UTC
  /// offset of -4:00 would be represented as { seconds: -14400 }.
  core.String? utcOffset;

  /// Year of date.
  ///
  /// Must be from 1 to 9999, or 0 if specifying a datetime without a year.
  ///
  /// Optional.
  core.int? year;

  GoogleTypeDateTime({
    this.day,
    this.hours,
    this.minutes,
    this.month,
    this.nanos,
    this.seconds,
    this.timeZone,
    this.utcOffset,
    this.year,
  });

  GoogleTypeDateTime.fromJson(core.Map _json)
      : this(
          day: _json.containsKey('day') ? _json['day'] as core.int : null,
          hours: _json.containsKey('hours') ? _json['hours'] as core.int : null,
          minutes: _json.containsKey('minutes')
              ? _json['minutes'] as core.int
              : null,
          month: _json.containsKey('month') ? _json['month'] as core.int : null,
          nanos: _json.containsKey('nanos') ? _json['nanos'] as core.int : null,
          seconds: _json.containsKey('seconds')
              ? _json['seconds'] as core.int
              : null,
          timeZone: _json.containsKey('timeZone')
              ? GoogleTypeTimeZone.fromJson(
                  _json['timeZone'] as core.Map<core.String, core.dynamic>)
              : null,
          utcOffset: _json.containsKey('utcOffset')
              ? _json['utcOffset'] as core.String
              : null,
          year: _json.containsKey('year') ? _json['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (hours != null) 'hours': hours!,
        if (minutes != null) 'minutes': minutes!,
        if (month != null) 'month': month!,
        if (nanos != null) 'nanos': nanos!,
        if (seconds != null) 'seconds': seconds!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (utcOffset != null) 'utcOffset': utcOffset!,
        if (year != null) 'year': year!,
      };
}

/// Represents an amount of money with its currency type.
typedef GoogleTypeMoney = $Money;

/// Represents a postal address, e.g. for postal delivery or payments addresses.
///
/// Given a postal address, a postal service can deliver items to a premise,
/// P.O. Box or similar. It is not intended to model geographical locations
/// (roads, towns, mountains). In typical usage an address would be created via
/// user input or from importing existing data, depending on the type of
/// process. Advice on address input / editing: - Use an i18n-ready address
/// widget such as https://github.com/google/libaddressinput) - Users should not
/// be presented with UI elements for input or editing of fields outside
/// countries where that field is used. For more guidance on how to use this
/// schema, please see: https://support.google.com/business/answer/6397478
typedef GoogleTypePostalAddress = $PostalAddress;

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef GoogleTypeTimeZone = $TimeZone;
