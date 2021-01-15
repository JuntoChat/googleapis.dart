// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import

library googleapis.container.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client container/v1';

/// Builds and manages container-based applications, powered by the open source
/// Kubernetes technology.
class ContainerApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);

  ContainerApi(http.Client client,
      {core.String rootUrl = 'https://container.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAggregatedResourceApi get aggregated =>
      ProjectsAggregatedResourceApi(_requester);
  ProjectsLocationsResourceApi get locations =>
      ProjectsLocationsResourceApi(_requester);
  ProjectsZonesResourceApi get zones => ProjectsZonesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsAggregatedResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAggregatedUsableSubnetworksResourceApi get usableSubnetworks =>
      ProjectsAggregatedUsableSubnetworksResourceApi(_requester);

  ProjectsAggregatedResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsAggregatedUsableSubnetworksResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAggregatedUsableSubnetworksResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists subnetworks that are usable for creating clusters in a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent project where subnetworks are usable. Specified in
  /// the format `projects / * `.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - Specifies a page token to use. Set this to the nextPageToken
  /// returned by previous list requests to get the next page of results.
  ///
  /// [pageSize] - The max number of results per page that should be returned.
  /// If the number of available results is larger than `page_size`, a
  /// `next_page_token` is returned which can be used to get the next page of
  /// results in subsequent requests. Acceptable values are 0 to 500, inclusive.
  /// (Default: 500)
  ///
  /// [filter] - Filtering currently only supports equality on the
  /// networkProjectId and must be in the form: "networkProjectId=[PROJECTID]",
  /// where `networkProjectId` is the project which owns the listed subnetworks.
  /// This defaults to the parent project ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUsableSubnetworksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUsableSubnetworksResponse> list(
    core.String parent, {
    core.String pageToken,
    core.int pageSize,
    core.String filter,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/aggregated/usableSubnetworks';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => ListUsableSubnetworksResponse.fromJson(data));
  }
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersResourceApi get clusters =>
      ProjectsLocationsClustersResourceApi(_requester);
  ProjectsLocationsOperationsResourceApi get operations =>
      ProjectsLocationsOperationsResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Returns configuration info about the Google Kubernetes Engine service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project and location) of the server config to get,
  /// specified in the format `projects / * /locations / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) to return
  /// operations for. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServerConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServerConfig> getServerConfig(
    core.String name, {
    core.String projectId,
    core.String zone,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (projectId != null) {
      _queryParams['projectId'] = [projectId];
    }
    if (zone != null) {
      _queryParams['zone'] = [zone];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/serverConfig';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ServerConfig.fromJson(data));
  }
}

class ProjectsLocationsClustersResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersNodePoolsResourceApi get nodePools =>
      ProjectsLocationsClustersNodePoolsResourceApi(_requester);
  ProjectsLocationsClustersWell_knownResourceApi get well_known =>
      ProjectsLocationsClustersWell_knownResourceApi(_requester);

  ProjectsLocationsClustersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Completes master IP rotation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster id) of the cluster to
  /// complete IP rotation. Specified in the format `projects / * /locations / *
  /// /clusters / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> completeIpRotation(
    CompleteIPRotationRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':completeIpRotation';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Creates a cluster, consisting of the specified number and type of Google
  /// Compute Engine instances. By default, the cluster is created in the
  /// project's [default
  /// network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks).
  /// One firewall is added for the cluster. After cluster creation, the Kubelet
  /// creates routes for each node to allow the containers on that node to
  /// communicate with all other instances in the cluster. Finally, an entry is
  /// added to the project's global metadata indicating which CIDR range the
  /// cluster is using.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project and location) where the cluster will be
  /// created. Specified in the format `projects / * /locations / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    CreateClusterRequest request,
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/clusters';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Deletes the cluster, including the Kubernetes endpoint and all worker
  /// nodes. Firewalls and routes that were configured during cluster creation
  /// are also deleted. Other Google Compute Engine resources that might be in
  /// use by the cluster, such as load balancer resources, are not deleted if
  /// they weren't present when the cluster was initially created.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to delete.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [clusterId] - Deprecated. The name of the cluster to delete. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String clusterId,
    core.String projectId,
    core.String zone,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (clusterId != null) {
      _queryParams['clusterId'] = [clusterId];
    }
    if (projectId != null) {
      _queryParams['projectId'] = [projectId];
    }
    if (zone != null) {
      _queryParams['zone'] = [zone];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Gets the details of a specific cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to retrieve.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to retrieve. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Cluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Cluster> get(
    core.String name, {
    core.String zone,
    core.String clusterId,
    core.String projectId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (zone != null) {
      _queryParams['zone'] = [zone];
    }
    if (clusterId != null) {
      _queryParams['clusterId'] = [clusterId];
    }
    if (projectId != null) {
      _queryParams['projectId'] = [projectId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Cluster.fromJson(data));
  }

  /// Gets the public component of the cluster signing keys in JSON Web Key
  /// format. This API is not yet intended for general use, and is not available
  /// for all clusters.
  ///
  /// Request parameters:
  ///
  /// [parent] - The cluster (project, location, cluster id) to get keys for.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetJSONWebKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetJSONWebKeysResponse> getJwks(
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/jwks';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GetJSONWebKeysResponse.fromJson(data));
  }

  /// Lists all clusters owned by a project in either the specified zone or all
  /// zones.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project and location) where the clusters will be
  /// listed. Specified in the format `projects / * /locations / * `. Location
  /// "-" matches all zones and all regions.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides, or "-" for all zones. This field has been deprecated and
  /// replaced by the parent field.
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the parent field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClustersResponse> list(
    core.String parent, {
    core.String zone,
    core.String projectId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (zone != null) {
      _queryParams['zone'] = [zone];
    }
    if (projectId != null) {
      _queryParams['projectId'] = [projectId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/clusters';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListClustersResponse.fromJson(data));
  }

  /// Sets the addons for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to set
  /// addons. Specified in the format `projects / * /locations / * /clusters / *
  /// `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setAddons(
    SetAddonsConfigRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':setAddons';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Enables or disables the ABAC authorization mechanism on a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster id) of the cluster to set
  /// legacy abac. Specified in the format `projects / * /locations / *
  /// /clusters / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setLegacyAbac(
    SetLegacyAbacRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setLegacyAbac';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sets the locations for a specific cluster. Deprecated. Use
  /// [projects.locations.clusters.update](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/update)
  /// instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to set
  /// locations. Specified in the format `projects / * /locations / * /clusters
  /// / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setLocations(
    SetLocationsRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setLocations';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sets the logging service for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to set
  /// logging. Specified in the format `projects / * /locations / * /clusters /
  /// * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setLogging(
    SetLoggingServiceRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':setLogging';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sets the maintenance policy for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster id) of the cluster to set
  /// maintenance policy. Specified in the format `projects / * /locations / *
  /// /clusters / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setMaintenancePolicy(
    SetMaintenancePolicyRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setMaintenancePolicy';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sets master auth materials. Currently supports changing the admin password
  /// or a specific cluster, either via password generation or explicitly
  /// setting the password.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to set auth.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setMasterAuth(
    SetMasterAuthRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setMasterAuth';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sets the monitoring service for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to set
  /// monitoring. Specified in the format `projects / * /locations / * /clusters
  /// / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setMonitoring(
    SetMonitoringServiceRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setMonitoring';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Enables or disables Network Policy for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster id) of the cluster to set
  /// networking policy. Specified in the format `projects / * /locations / *
  /// /clusters / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setNetworkPolicy(
    SetNetworkPolicyRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setNetworkPolicy';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sets labels on a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster id) of the cluster to set
  /// labels. Specified in the format `projects / * /locations / * /clusters / *
  /// `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setResourceLabels(
    SetLabelsRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setResourceLabels';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Starts master IP rotation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster id) of the cluster to start
  /// IP rotation. Specified in the format `projects / * /locations / *
  /// /clusters / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> startIpRotation(
    StartIPRotationRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':startIpRotation';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Updates the settings of a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to update.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> update(
    UpdateClusterRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Updates the master for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster) of the cluster to update.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> updateMaster(
    UpdateMasterRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':updateMaster';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }
}

class ProjectsLocationsClustersNodePoolsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersNodePoolsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a node pool for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project, location, cluster id) where the node pool
  /// will be created. Specified in the format `projects / * /locations / *
  /// /clusters / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    CreateNodePoolRequest request,
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/nodePools';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Deletes a node pool from a cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to delete. Specified in the format `projects / * /locations / *
  /// /clusters / * /nodePools / * `.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$".
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to delete. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String clusterId,
    core.String zone,
    core.String projectId,
    core.String nodePoolId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (clusterId != null) {
      _queryParams['clusterId'] = [clusterId];
    }
    if (zone != null) {
      _queryParams['zone'] = [zone];
    }
    if (projectId != null) {
      _queryParams['projectId'] = [projectId];
    }
    if (nodePoolId != null) {
      _queryParams['nodePoolId'] = [nodePoolId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Retrieves the requested node pool.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to get. Specified in the format `projects / * /locations / *
  /// /clusters / * /nodePools / * `.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$".
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool. This field has been
  /// deprecated and replaced by the name field.
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NodePool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NodePool> get(
    core.String name, {
    core.String clusterId,
    core.String zone,
    core.String nodePoolId,
    core.String projectId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (clusterId != null) {
      _queryParams['clusterId'] = [clusterId];
    }
    if (zone != null) {
      _queryParams['zone'] = [zone];
    }
    if (nodePoolId != null) {
      _queryParams['nodePoolId'] = [nodePoolId];
    }
    if (projectId != null) {
      _queryParams['projectId'] = [projectId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => NodePool.fromJson(data));
  }

  /// Lists the node pools for a cluster.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project, location, cluster id) where the node pools
  /// will be listed. Specified in the format `projects / * /locations / *
  /// /clusters / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the parent
  /// field.
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the parent field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNodePoolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNodePoolsResponse> list(
    core.String parent, {
    core.String zone,
    core.String projectId,
    core.String clusterId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (zone != null) {
      _queryParams['zone'] = [zone];
    }
    if (projectId != null) {
      _queryParams['projectId'] = [projectId];
    }
    if (clusterId != null) {
      _queryParams['clusterId'] = [clusterId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/nodePools';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListNodePoolsResponse.fromJson(data));
  }

  /// Rolls back a previously Aborted or Failed NodePool upgrade. This makes no
  /// changes if the last upgrade successfully completed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// poll to rollback upgrade. Specified in the format `projects / * /locations
  /// / * /clusters / * /nodePools / * `.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> rollback(
    RollbackNodePoolUpgradeRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':rollback';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sets the autoscaling settings for the specified node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool) of the node pool
  /// to set autoscaler settings. Specified in the format `projects / *
  /// /locations / * /clusters / * /nodePools / * `.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setAutoscaling(
    SetNodePoolAutoscalingRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setAutoscaling';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sets the NodeManagement options for a node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to set management properties. Specified in the format `projects / *
  /// /locations / * /clusters / * /nodePools / * `.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setManagement(
    SetNodePoolManagementRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':setManagement';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sets the size for a specific node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to set size. Specified in the format `projects / * /locations / *
  /// /clusters / * /nodePools / * `.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setSize(
    SetNodePoolSizeRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':setSize';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Updates the version and/or image type for the specified node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, cluster, node pool) of the node pool
  /// to update. Specified in the format `projects / * /locations / * /clusters
  /// / * /nodePools / * `.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> update(
    UpdateNodePoolRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }
}

class ProjectsLocationsClustersWell_knownResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersWell_knownResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the OIDC discovery document for the cluster. See the [OpenID Connect
  /// Discovery 1.0
  /// specification](https://openid.net/specs/openid-connect-discovery-1_0.html)
  /// for details. This API is not yet intended for general use, and is not
  /// available for all clusters.
  ///
  /// Request parameters:
  ///
  /// [parent] - The cluster (project, location, cluster id) to get the
  /// discovery document for. Specified in the format `projects / * /locations /
  /// * /clusters / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetOpenIDConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetOpenIDConfigResponse> getOpenid_configuration(
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/.well-known/openid-configuration';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GetOpenIDConfigResponse.fromJson(data));
  }
}

class ProjectsLocationsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Cancels the specified operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, operation id) of the operation to
  /// cancel. Specified in the format `projects / * /locations / * /operations /
  /// * `.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/operations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }

  /// Gets the specified operation.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (project, location, operation id) of the operation to
  /// get. Specified in the format `projects / * /locations / * /operations / *
  /// `.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/operations/[^/]+$".
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [operationId] - Deprecated. The server-assigned `name` of the operation.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String zone,
    core.String projectId,
    core.String operationId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (zone != null) {
      _queryParams['zone'] = [zone];
    }
    if (projectId != null) {
      _queryParams['projectId'] = [projectId];
    }
    if (operationId != null) {
      _queryParams['operationId'] = [operationId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Lists all operations in a project in a specific zone or all zones.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent (project and location) where the operations will be
  /// listed. Specified in the format `projects / * /locations / * `. Location
  /// "-" matches all zones and all regions.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) to return
  /// operations for, or `-` for all zones. This field has been deprecated and
  /// replaced by the parent field.
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the parent field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
    core.String parent, {
    core.String zone,
    core.String projectId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (zone != null) {
      _queryParams['zone'] = [zone];
    }
    if (projectId != null) {
      _queryParams['projectId'] = [projectId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/operations';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListOperationsResponse.fromJson(data));
  }
}

class ProjectsZonesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsZonesClustersResourceApi get clusters =>
      ProjectsZonesClustersResourceApi(_requester);
  ProjectsZonesOperationsResourceApi get operations =>
      ProjectsZonesOperationsResourceApi(_requester);

  ProjectsZonesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Returns configuration info about the Google Kubernetes Engine service.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) to return
  /// operations for. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [name] - The name (project and location) of the server config to get,
  /// specified in the format `projects / * /locations / * `.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServerConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServerConfig> getServerconfig(
    core.String projectId,
    core.String zone, {
    core.String name,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (name != null) {
      _queryParams['name'] = [name];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/serverconfig';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ServerConfig.fromJson(data));
  }
}

class ProjectsZonesClustersResourceApi {
  final commons.ApiRequester _requester;

  ProjectsZonesClustersNodePoolsResourceApi get nodePools =>
      ProjectsZonesClustersNodePoolsResourceApi(_requester);

  ProjectsZonesClustersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Sets the addons for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> addons(
    SetAddonsConfigRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/addons';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Completes master IP rotation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> completeIpRotation(
    CompleteIPRotationRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        ':completeIpRotation';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Creates a cluster, consisting of the specified number and type of Google
  /// Compute Engine instances. By default, the cluster is created in the
  /// project's [default
  /// network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks).
  /// One firewall is added for the cluster. After cluster creation, the Kubelet
  /// creates routes for each node to allow the containers on that node to
  /// communicate with all other instances in the cluster. Finally, an entry is
  /// added to the project's global metadata indicating which CIDR range the
  /// cluster is using.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the parent
  /// field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    CreateClusterRequest request,
    core.String projectId,
    core.String zone, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Deletes the cluster, including the Kubernetes endpoint and all worker
  /// nodes. Firewalls and routes that were configured during cluster creation
  /// are also deleted. Other Google Compute Engine resources that might be in
  /// use by the cluster, such as load balancer resources, are not deleted if
  /// they weren't present when the cluster was initially created.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to delete. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [name] - The name (project, location, cluster) of the cluster to delete.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String name,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if (name != null) {
      _queryParams['name'] = [name];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Gets the details of a specific cluster.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to retrieve. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [name] - The name (project, location, cluster) of the cluster to retrieve.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Cluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Cluster> get(
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String name,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if (name != null) {
      _queryParams['name'] = [name];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Cluster.fromJson(data));
  }

  /// Enables or disables the ABAC authorization mechanism on a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to update. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> legacyAbac(
    SetLegacyAbacRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/legacyAbac';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Lists all clusters owned by a project in either the specified zone or all
  /// zones.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides, or "-" for all zones. This field has been deprecated and
  /// replaced by the parent field.
  ///
  /// [parent] - The parent (project and location) where the clusters will be
  /// listed. Specified in the format `projects / * /locations / * `. Location
  /// "-" matches all zones and all regions.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClustersResponse> list(
    core.String projectId,
    core.String zone, {
    core.String parent,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (parent != null) {
      _queryParams['parent'] = [parent];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListClustersResponse.fromJson(data));
  }

  /// Sets the locations for a specific cluster. Deprecated. Use
  /// [projects.locations.clusters.update](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/update)
  /// instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> locations(
    SetLocationsRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/locations';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sets the logging service for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> logging(
    SetLoggingServiceRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/logging';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Updates the master for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> master(
    UpdateMasterRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/master';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sets the monitoring service for a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> monitoring(
    SetMonitoringServiceRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/monitoring';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sets labels on a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> resourceLabels(
    SetLabelsRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/resourceLabels';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sets the maintenance policy for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840).
  ///
  /// [zone] - Required. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  ///
  /// [clusterId] - Required. The name of the cluster to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setMaintenancePolicy(
    SetMaintenancePolicyRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        ':setMaintenancePolicy';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sets master auth materials. Currently supports changing the admin password
  /// or a specific cluster, either via password generation or explicitly
  /// setting the password.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setMasterAuth(
    SetMasterAuthRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        ':setMasterAuth';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Enables or disables Network Policy for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setNetworkPolicy(
    SetNetworkPolicyRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        ':setNetworkPolicy';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Starts master IP rotation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> startIpRotation(
    StartIPRotationRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        ':startIpRotation';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Updates the settings of a specific cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> update(
    UpdateClusterRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }
}

class ProjectsZonesClustersNodePoolsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsZonesClustersNodePoolsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Sets the autoscaling settings for the specified node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to upgrade. This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> autoscaling(
    SetNodePoolAutoscalingRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId,
    core.String nodePoolId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if (nodePoolId == null) {
      throw core.ArgumentError('Parameter nodePoolId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools/' +
        commons.Escaper.ecapeVariable('$nodePoolId') +
        '/autoscaling';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Creates a node pool for a cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the parent
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the parent field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    CreateNodePoolRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Deletes a node pool from a cluster.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to delete. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to delete. Specified in the format `projects / * /locations / *
  /// /clusters / * /nodePools / * `.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String projectId,
    core.String zone,
    core.String clusterId,
    core.String nodePoolId, {
    core.String name,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if (nodePoolId == null) {
      throw core.ArgumentError('Parameter nodePoolId is required.');
    }
    if (name != null) {
      _queryParams['name'] = [name];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools/' +
        commons.Escaper.ecapeVariable('$nodePoolId');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Retrieves the requested node pool.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool. This field has been
  /// deprecated and replaced by the name field.
  ///
  /// [name] - The name (project, location, cluster, node pool id) of the node
  /// pool to get. Specified in the format `projects / * /locations / *
  /// /clusters / * /nodePools / * `.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NodePool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NodePool> get(
    core.String projectId,
    core.String zone,
    core.String clusterId,
    core.String nodePoolId, {
    core.String name,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if (nodePoolId == null) {
      throw core.ArgumentError('Parameter nodePoolId is required.');
    }
    if (name != null) {
      _queryParams['name'] = [name];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools/' +
        commons.Escaper.ecapeVariable('$nodePoolId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => NodePool.fromJson(data));
  }

  /// Lists the node pools for a cluster.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the parent
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster. This field has been
  /// deprecated and replaced by the parent field.
  ///
  /// [parent] - The parent (project, location, cluster id) where the node pools
  /// will be listed. Specified in the format `projects / * /locations / *
  /// /clusters / * `.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNodePoolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNodePoolsResponse> list(
    core.String projectId,
    core.String zone,
    core.String clusterId, {
    core.String parent,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if (parent != null) {
      _queryParams['parent'] = [parent];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListNodePoolsResponse.fromJson(data));
  }

  /// Rolls back a previously Aborted or Failed NodePool upgrade. This makes no
  /// changes if the last upgrade successfully completed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to rollback. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to rollback. This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> rollback(
    RollbackNodePoolUpgradeRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId,
    core.String nodePoolId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if (nodePoolId == null) {
      throw core.ArgumentError('Parameter nodePoolId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools/' +
        commons.Escaper.ecapeVariable('$nodePoolId') +
        ':rollback';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sets the NodeManagement options for a node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to update. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to update. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setManagement(
    SetNodePoolManagementRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId,
    core.String nodePoolId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if (nodePoolId == null) {
      throw core.ArgumentError('Parameter nodePoolId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools/' +
        commons.Escaper.ecapeVariable('$nodePoolId') +
        '/setManagement';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Sets the size for a specific node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to update. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to update. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> setSize(
    SetNodePoolSizeRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId,
    core.String nodePoolId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if (nodePoolId == null) {
      throw core.ArgumentError('Parameter nodePoolId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools/' +
        commons.Escaper.ecapeVariable('$nodePoolId') +
        '/setSize';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Updates the version and/or image type for the specified node pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [clusterId] - Deprecated. The name of the cluster to upgrade. This field
  /// has been deprecated and replaced by the name field.
  ///
  /// [nodePoolId] - Deprecated. The name of the node pool to upgrade. This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> update(
    UpdateNodePoolRequest request,
    core.String projectId,
    core.String zone,
    core.String clusterId,
    core.String nodePoolId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (clusterId == null) {
      throw core.ArgumentError('Parameter clusterId is required.');
    }
    if (nodePoolId == null) {
      throw core.ArgumentError('Parameter nodePoolId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/clusters/' +
        commons.Escaper.ecapeVariable('$clusterId') +
        '/nodePools/' +
        commons.Escaper.ecapeVariable('$nodePoolId') +
        '/update';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }
}

class ProjectsZonesOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsZonesOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Cancels the specified operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// operation resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [operationId] - Deprecated. The server-assigned `name` of the operation.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String projectId,
    core.String zone,
    core.String operationId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (operationId == null) {
      throw core.ArgumentError('Parameter operationId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/operations/' +
        commons.Escaper.ecapeVariable('$operationId') +
        ':cancel';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }

  /// Gets the specified operation.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the name field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  ///
  /// [operationId] - Deprecated. The server-assigned `name` of the operation.
  /// This field has been deprecated and replaced by the name field.
  ///
  /// [name] - The name (project, location, operation id) of the operation to
  /// get. Specified in the format `projects / * /locations / * /operations / *
  /// `.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String projectId,
    core.String zone,
    core.String operationId, {
    core.String name,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (operationId == null) {
      throw core.ArgumentError('Parameter operationId is required.');
    }
    if (name != null) {
      _queryParams['name'] = [name];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/operations/' +
        commons.Escaper.ecapeVariable('$operationId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Lists all operations in a project in a specific zone or all zones.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Deprecated. The Google Developers Console [project ID or
  /// project number](https://support.google.com/cloud/answer/6158840). This
  /// field has been deprecated and replaced by the parent field.
  ///
  /// [zone] - Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) to return
  /// operations for, or `-` for all zones. This field has been deprecated and
  /// replaced by the parent field.
  ///
  /// [parent] - The parent (project and location) where the operations will be
  /// listed. Specified in the format `projects / * /locations / * `. Location
  /// "-" matches all zones and all regions.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
    core.String projectId,
    core.String zone, {
    core.String parent,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (projectId == null) {
      throw core.ArgumentError('Parameter projectId is required.');
    }
    if (zone == null) {
      throw core.ArgumentError('Parameter zone is required.');
    }
    if (parent != null) {
      _queryParams['parent'] = [parent];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/zones/' +
        commons.Escaper.ecapeVariable('$zone') +
        '/operations';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListOperationsResponse.fromJson(data));
  }
}

/// AcceleratorConfig represents a Hardware Accelerator request.
class AcceleratorConfig {
  /// The number of the accelerator cards exposed to an instance.
  core.String acceleratorCount;

  /// The accelerator type resource name. List of supported accelerators
  /// [here](https://cloud.google.com/compute/docs/gpus)
  core.String acceleratorType;

  AcceleratorConfig();

  AcceleratorConfig.fromJson(core.Map _json) {
    if (_json.containsKey('acceleratorCount')) {
      acceleratorCount = _json['acceleratorCount'];
    }
    if (_json.containsKey('acceleratorType')) {
      acceleratorType = _json['acceleratorType'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (acceleratorCount != null) {
      _json['acceleratorCount'] = acceleratorCount;
    }
    if (acceleratorType != null) {
      _json['acceleratorType'] = acceleratorType;
    }
    return _json;
  }
}

/// Configuration for the addons that can be automatically spun up in the
/// cluster, enabling additional functionality.
class AddonsConfig {
  /// Configuration for the Cloud Run addon, which allows the user to use a
  /// managed Knative service.
  CloudRunConfig cloudRunConfig;

  /// Configuration for the ConfigConnector add-on, a Kubernetes extension to
  /// manage hosted GCP services through the Kubernetes API
  ConfigConnectorConfig configConnectorConfig;

  /// Configuration for NodeLocalDNS, a dns cache running on cluster nodes
  DnsCacheConfig dnsCacheConfig;

  /// Configuration for the horizontal pod autoscaling feature, which increases
  /// or decreases the number of replica pods a replication controller has based
  /// on the resource usage of the existing pods.
  HorizontalPodAutoscaling horizontalPodAutoscaling;

  /// Configuration for the HTTP (L7) load balancing controller addon, which
  /// makes it easy to set up HTTP load balancers for services in a cluster.
  HttpLoadBalancing httpLoadBalancing;

  /// Configuration for the Kubernetes Dashboard. This addon is deprecated, and
  /// will be disabled in 1.15. It is recommended to use the Cloud Console to
  /// manage and monitor your Kubernetes clusters, workloads and applications.
  /// For more information, see:
  /// https://cloud.google.com/kubernetes-engine/docs/concepts/dashboards
  KubernetesDashboard kubernetesDashboard;

  /// Configuration for NetworkPolicy. This only tracks whether the addon is
  /// enabled or not on the Master, it does not track whether network policy is
  /// enabled for the nodes.
  NetworkPolicyConfig networkPolicyConfig;

  AddonsConfig();

  AddonsConfig.fromJson(core.Map _json) {
    if (_json.containsKey('cloudRunConfig')) {
      cloudRunConfig = CloudRunConfig.fromJson(_json['cloudRunConfig']);
    }
    if (_json.containsKey('configConnectorConfig')) {
      configConnectorConfig =
          ConfigConnectorConfig.fromJson(_json['configConnectorConfig']);
    }
    if (_json.containsKey('dnsCacheConfig')) {
      dnsCacheConfig = DnsCacheConfig.fromJson(_json['dnsCacheConfig']);
    }
    if (_json.containsKey('horizontalPodAutoscaling')) {
      horizontalPodAutoscaling =
          HorizontalPodAutoscaling.fromJson(_json['horizontalPodAutoscaling']);
    }
    if (_json.containsKey('httpLoadBalancing')) {
      httpLoadBalancing =
          HttpLoadBalancing.fromJson(_json['httpLoadBalancing']);
    }
    if (_json.containsKey('kubernetesDashboard')) {
      kubernetesDashboard =
          KubernetesDashboard.fromJson(_json['kubernetesDashboard']);
    }
    if (_json.containsKey('networkPolicyConfig')) {
      networkPolicyConfig =
          NetworkPolicyConfig.fromJson(_json['networkPolicyConfig']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (cloudRunConfig != null) {
      _json['cloudRunConfig'] = cloudRunConfig.toJson();
    }
    if (configConnectorConfig != null) {
      _json['configConnectorConfig'] = configConnectorConfig.toJson();
    }
    if (dnsCacheConfig != null) {
      _json['dnsCacheConfig'] = dnsCacheConfig.toJson();
    }
    if (horizontalPodAutoscaling != null) {
      _json['horizontalPodAutoscaling'] = horizontalPodAutoscaling.toJson();
    }
    if (httpLoadBalancing != null) {
      _json['httpLoadBalancing'] = httpLoadBalancing.toJson();
    }
    if (kubernetesDashboard != null) {
      _json['kubernetesDashboard'] = kubernetesDashboard.toJson();
    }
    if (networkPolicyConfig != null) {
      _json['networkPolicyConfig'] = networkPolicyConfig.toJson();
    }
    return _json;
  }
}

/// Configuration for returning group information from authenticators.
class AuthenticatorGroupsConfig {
  /// Whether this cluster should return group membership lookups during
  /// authentication using a group of security groups.
  core.bool enabled;

  /// The name of the security group-of-groups to be used. Only relevant if
  /// enabled = true.
  core.String securityGroup;

  AuthenticatorGroupsConfig();

  AuthenticatorGroupsConfig.fromJson(core.Map _json) {
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'];
    }
    if (_json.containsKey('securityGroup')) {
      securityGroup = _json['securityGroup'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    if (securityGroup != null) {
      _json['securityGroup'] = securityGroup;
    }
    return _json;
  }
}

/// AutoUpgradeOptions defines the set of options for the user to control how
/// the Auto Upgrades will proceed.
class AutoUpgradeOptions {
  /// [Output only] This field is set when upgrades are about to commence with
  /// the approximate start time for the upgrades, in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  core.String autoUpgradeStartTime;

  /// [Output only] This field is set when upgrades are about to commence with
  /// the description of the upgrade.
  core.String description;

  AutoUpgradeOptions();

  AutoUpgradeOptions.fromJson(core.Map _json) {
    if (_json.containsKey('autoUpgradeStartTime')) {
      autoUpgradeStartTime = _json['autoUpgradeStartTime'];
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (autoUpgradeStartTime != null) {
      _json['autoUpgradeStartTime'] = autoUpgradeStartTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    return _json;
  }
}

/// AutoprovisioningNodePoolDefaults contains defaults for a node pool created
/// by NAP.
class AutoprovisioningNodePoolDefaults {
  /// The Customer Managed Encryption Key used to encrypt the boot disk attached
  /// to each node in the node pool. This should be of the form
  /// projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME].
  /// For more information about protecting resources with Cloud KMS Keys please
  /// see:
  /// https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  core.String bootDiskKmsKey;

  /// Size of the disk attached to each node, specified in GB. The smallest
  /// allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  core.int diskSizeGb;

  /// Type of the disk attached to each node (e.g. 'pd-standard' or 'pd-ssd') If
  /// unspecified, the default disk type is 'pd-standard'
  core.String diskType;

  /// Specifies the node management options for NAP created node-pools.
  NodeManagement management;

  /// Minimum CPU platform to be used for NAP created node pools. The instance
  /// may be scheduled on the specified or newer CPU platform. Applicable values
  /// are the friendly names of CPU platforms, such as minCpuPlatform: Intel
  /// Haswell or minCpuPlatform: Intel Sandy Bridge. For more information, read
  /// [how to specify min CPU
  /// platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  /// To unset the min cpu platform field pass "automatic" as field value.
  core.String minCpuPlatform;

  /// Scopes that are used by NAP when creating node pools.
  core.List<core.String> oauthScopes;

  /// The Google Cloud Platform Service Account to be used by the node VMs.
  core.String serviceAccount;

  /// Shielded Instance options.
  ShieldedInstanceConfig shieldedInstanceConfig;

  /// Specifies the upgrade settings for NAP created node pools
  UpgradeSettings upgradeSettings;

  AutoprovisioningNodePoolDefaults();

  AutoprovisioningNodePoolDefaults.fromJson(core.Map _json) {
    if (_json.containsKey('bootDiskKmsKey')) {
      bootDiskKmsKey = _json['bootDiskKmsKey'];
    }
    if (_json.containsKey('diskSizeGb')) {
      diskSizeGb = _json['diskSizeGb'];
    }
    if (_json.containsKey('diskType')) {
      diskType = _json['diskType'];
    }
    if (_json.containsKey('management')) {
      management = NodeManagement.fromJson(_json['management']);
    }
    if (_json.containsKey('minCpuPlatform')) {
      minCpuPlatform = _json['minCpuPlatform'];
    }
    if (_json.containsKey('oauthScopes')) {
      oauthScopes = (_json['oauthScopes'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('serviceAccount')) {
      serviceAccount = _json['serviceAccount'];
    }
    if (_json.containsKey('shieldedInstanceConfig')) {
      shieldedInstanceConfig =
          ShieldedInstanceConfig.fromJson(_json['shieldedInstanceConfig']);
    }
    if (_json.containsKey('upgradeSettings')) {
      upgradeSettings = UpgradeSettings.fromJson(_json['upgradeSettings']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (bootDiskKmsKey != null) {
      _json['bootDiskKmsKey'] = bootDiskKmsKey;
    }
    if (diskSizeGb != null) {
      _json['diskSizeGb'] = diskSizeGb;
    }
    if (diskType != null) {
      _json['diskType'] = diskType;
    }
    if (management != null) {
      _json['management'] = management.toJson();
    }
    if (minCpuPlatform != null) {
      _json['minCpuPlatform'] = minCpuPlatform;
    }
    if (oauthScopes != null) {
      _json['oauthScopes'] = oauthScopes;
    }
    if (serviceAccount != null) {
      _json['serviceAccount'] = serviceAccount;
    }
    if (shieldedInstanceConfig != null) {
      _json['shieldedInstanceConfig'] = shieldedInstanceConfig.toJson();
    }
    if (upgradeSettings != null) {
      _json['upgradeSettings'] = upgradeSettings.toJson();
    }
    return _json;
  }
}

/// Parameters for using BigQuery as the destination of resource usage export.
class BigQueryDestination {
  /// The ID of a BigQuery Dataset.
  core.String datasetId;

  BigQueryDestination();

  BigQueryDestination.fromJson(core.Map _json) {
    if (_json.containsKey('datasetId')) {
      datasetId = _json['datasetId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (datasetId != null) {
      _json['datasetId'] = datasetId;
    }
    return _json;
  }
}

/// Configuration for Binary Authorization.
class BinaryAuthorization {
  /// Enable Binary Authorization for this cluster. If enabled, all container
  /// images will be validated by Binary Authorization.
  core.bool enabled;

  BinaryAuthorization();

  BinaryAuthorization.fromJson(core.Map _json) {
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    return _json;
  }
}

/// CancelOperationRequest cancels a single operation.
class CancelOperationRequest {
  /// The name (project, location, operation id) of the operation to cancel.
  /// Specified in the format `projects / * /locations / * /operations / * `.
  core.String name;

  /// Deprecated. The server-assigned `name` of the operation. This field has
  /// been deprecated and replaced by the name field.
  core.String operationId;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840). This field has
  /// been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// operation resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  CancelOperationRequest();

  CancelOperationRequest.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('operationId')) {
      operationId = _json['operationId'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (operationId != null) {
      _json['operationId'] = operationId;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// CidrBlock contains an optional name and one CIDR block.
class CidrBlock {
  /// cidr_block must be specified in CIDR notation.
  core.String cidrBlock;

  /// display_name is an optional field for users to identify CIDR blocks.
  core.String displayName;

  CidrBlock();

  CidrBlock.fromJson(core.Map _json) {
    if (_json.containsKey('cidrBlock')) {
      cidrBlock = _json['cidrBlock'];
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (cidrBlock != null) {
      _json['cidrBlock'] = cidrBlock;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    return _json;
  }
}

/// Configuration for client certificates on the cluster.
class ClientCertificateConfig {
  /// Issue a client certificate.
  core.bool issueClientCertificate;

  ClientCertificateConfig();

  ClientCertificateConfig.fromJson(core.Map _json) {
    if (_json.containsKey('issueClientCertificate')) {
      issueClientCertificate = _json['issueClientCertificate'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (issueClientCertificate != null) {
      _json['issueClientCertificate'] = issueClientCertificate;
    }
    return _json;
  }
}

/// Configuration options for the Cloud Run feature.
class CloudRunConfig {
  /// Whether Cloud Run addon is enabled for this cluster.
  core.bool disabled;

  /// Which load balancer type is installed for Cloud Run.
  /// Possible string values are:
  /// - "LOAD_BALANCER_TYPE_UNSPECIFIED" : Load balancer type for Cloud Run is
  /// unspecified.
  /// - "LOAD_BALANCER_TYPE_EXTERNAL" : Install external load balancer for Cloud
  /// Run.
  /// - "LOAD_BALANCER_TYPE_INTERNAL" : Install internal load balancer for Cloud
  /// Run.
  core.String loadBalancerType;

  CloudRunConfig();

  CloudRunConfig.fromJson(core.Map _json) {
    if (_json.containsKey('disabled')) {
      disabled = _json['disabled'];
    }
    if (_json.containsKey('loadBalancerType')) {
      loadBalancerType = _json['loadBalancerType'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (disabled != null) {
      _json['disabled'] = disabled;
    }
    if (loadBalancerType != null) {
      _json['loadBalancerType'] = loadBalancerType;
    }
    return _json;
  }
}

/// A Google Kubernetes Engine cluster.
class Cluster {
  /// Configurations for the various addons available to run in the cluster.
  AddonsConfig addonsConfig;

  /// Configuration controlling RBAC group membership information.
  AuthenticatorGroupsConfig authenticatorGroupsConfig;

  /// Cluster-level autoscaling configuration.
  ClusterAutoscaling autoscaling;

  /// Configuration for Binary Authorization.
  BinaryAuthorization binaryAuthorization;

  /// The IP address range of the container pods in this cluster, in
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `10.96.0.0/14`). Leave blank to have one automatically
  /// chosen or specify a `/14` block in `10.0.0.0/8`.
  core.String clusterIpv4Cidr;

  /// Which conditions caused the current cluster state.
  core.List<StatusCondition> conditions;

  /// [Output only] The time the cluster was created, in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  core.String createTime;

  /// [Output only] The current software version of the master endpoint.
  core.String currentMasterVersion;

  /// [Output only] The number of nodes currently in the cluster. Deprecated.
  /// Call Kubernetes API directly to retrieve node information.
  core.int currentNodeCount;

  /// [Output only] Deprecated, use
  /// [NodePools.version](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools)
  /// instead. The current version of the node software components. If they are
  /// currently at multiple versions because they're in the process of being
  /// upgraded, this reflects the minimum version of all nodes.
  core.String currentNodeVersion;

  /// Configuration of etcd encryption.
  DatabaseEncryption databaseEncryption;

  /// The default constraint on the maximum number of pods that can be run
  /// simultaneously on a node in the node pool of this cluster. Only honored if
  /// cluster created with IP Alias support.
  MaxPodsConstraint defaultMaxPodsConstraint;

  /// An optional description of this cluster.
  core.String description;

  /// Kubernetes alpha features are enabled on this cluster. This includes alpha
  /// API groups (e.g. v1alpha1) and features that may not be production ready
  /// in the kubernetes version of the master and nodes. The cluster has no SLA
  /// for uptime and master/node upgrades are disabled. Alpha enabled clusters
  /// are automatically deleted thirty days after creation.
  core.bool enableKubernetesAlpha;

  /// Enable the ability to use Cloud TPUs in this cluster.
  core.bool enableTpu;

  /// [Output only] The IP address of this cluster's master endpoint. The
  /// endpoint can be accessed from the internet at
  /// `https://username:password@endpoint/`. See the `masterAuth` property of
  /// this resource for username and password information.
  core.String endpoint;

  /// [Output only] The time the cluster will be automatically deleted in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  core.String expireTime;

  /// The initial Kubernetes version for this cluster. Valid versions are those
  /// found in validMasterVersions returned by getServerConfig. The version can
  /// be upgraded over time; such upgrades are reflected in currentMasterVersion
  /// and currentNodeVersion. Users may specify either explicit versions offered
  /// by Kubernetes Engine or version aliases, which have the following
  /// behavior: - "latest": picks the highest valid Kubernetes version - "1.X":
  /// picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y":
  /// picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N":
  /// picks an explicit Kubernetes version - "","-": picks the default
  /// Kubernetes version
  core.String initialClusterVersion;

  /// The number of nodes to create in this cluster. You must ensure that your
  /// Compute Engine [resource quota](https://cloud.google.com/compute/quotas)
  /// is sufficient for this number of instances. You must also have available
  /// firewall and routes quota. For requests, this field should only be used in
  /// lieu of a "node_pool" object, since this configuration (along with the
  /// "node_config") will be used to create a "NodePool" object with an
  /// auto-generated name. Do not use this and a node_pool at the same time.
  /// This field is deprecated, use node_pool.initial_node_count instead.
  core.int initialNodeCount;

  /// Deprecated. Use node_pools.instance_group_urls.
  core.List<core.String> instanceGroupUrls;

  /// Configuration for cluster IP allocation.
  IPAllocationPolicy ipAllocationPolicy;

  /// The fingerprint of the set of labels for this cluster.
  core.String labelFingerprint;

  /// Configuration for the legacy ABAC authorization mode.
  LegacyAbac legacyAbac;

  /// [Output only] The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available)
  /// or
  /// [region](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available)
  /// in which the cluster resides.
  core.String location;

  /// The list of Google Compute Engine
  /// [zones](https://cloud.google.com/compute/docs/zones#available) in which
  /// the cluster's nodes should be located.
  core.List<core.String> locations;

  /// The logging service the cluster should use to write logs. Currently
  /// available options: * `logging.googleapis.com/kubernetes` - The Cloud
  /// Logging service with a Kubernetes-native resource model *
  /// `logging.googleapis.com` - The legacy Cloud Logging service (no longer
  /// available as of GKE 1.15). * `none` - no logs will be exported from the
  /// cluster. If left as an empty string,`logging.googleapis.com/kubernetes`
  /// will be used for GKE 1.14+ or `logging.googleapis.com` for earlier
  /// versions.
  core.String loggingService;

  /// Configure the maintenance policy for this cluster.
  MaintenancePolicy maintenancePolicy;

  /// The authentication information for accessing the master endpoint. If
  /// unspecified, the defaults are used: For clusters before v1.12, if
  /// master_auth is unspecified, `username` will be set to "admin", a random
  /// password will be generated, and a client certificate will be issued.
  MasterAuth masterAuth;

  /// The configuration options for master authorized networks feature.
  MasterAuthorizedNetworksConfig masterAuthorizedNetworksConfig;

  /// The monitoring service the cluster should use to write metrics. Currently
  /// available options: * "monitoring.googleapis.com/kubernetes" - The Cloud
  /// Monitoring service with a Kubernetes-native resource model *
  /// `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no
  /// longer available as of GKE 1.15). * `none` - No metrics will be exported
  /// from the cluster. If left as an empty
  /// string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+
  /// or `monitoring.googleapis.com` for earlier versions.
  core.String monitoringService;

  /// The name of this cluster. The name must be unique within this project and
  /// location (e.g. zone or region), and can be up to 40 characters with the
  /// following restrictions: * Lowercase letters, numbers, and hyphens only. *
  /// Must start with a letter. * Must end with a number or a letter.
  core.String name;

  /// The name of the Google Compute Engine
  /// [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks)
  /// to which the cluster is connected. If left unspecified, the `default`
  /// network will be used.
  core.String network;

  /// Configuration for cluster networking.
  NetworkConfig networkConfig;

  /// Configuration options for the NetworkPolicy feature.
  NetworkPolicy networkPolicy;

  /// Parameters used in creating the cluster's nodes. For requests, this field
  /// should only be used in lieu of a "node_pool" object, since this
  /// configuration (along with the "initial_node_count") will be used to create
  /// a "NodePool" object with an auto-generated name. Do not use this and a
  /// node_pool at the same time. For responses, this field will be populated
  /// with the node configuration of the first node pool. (For configuration of
  /// each node pool, see `node_pool.config`) If unspecified, the defaults are
  /// used. This field is deprecated, use node_pool.config instead.
  NodeConfig nodeConfig;

  /// [Output only] The size of the address space on each node for hosting
  /// containers. This is provisioned from within the `container_ipv4_cidr`
  /// range. This field will only be set when cluster is in route-based network
  /// mode.
  core.int nodeIpv4CidrSize;

  /// The node pools associated with this cluster. This field should not be set
  /// if "node_config" or "initial_node_count" are specified.
  core.List<NodePool> nodePools;

  /// Configuration for private cluster.
  PrivateClusterConfig privateClusterConfig;

  /// Release channel configuration.
  ReleaseChannel releaseChannel;

  /// The resource labels for the cluster to use to annotate any related Google
  /// Compute Engine resources.
  core.Map<core.String, core.String> resourceLabels;

  /// Configuration for exporting resource usages. Resource usage export is
  /// disabled when this config is unspecified.
  ResourceUsageExportConfig resourceUsageExportConfig;

  /// [Output only] Server-defined URL for the resource.
  core.String selfLink;

  /// [Output only] The IP address range of the Kubernetes services in this
  /// cluster, in
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the
  /// last `/16` from the container CIDR.
  core.String servicesIpv4Cidr;

  /// Shielded Nodes configuration.
  ShieldedNodes shieldedNodes;

  /// [Output only] The current status of this cluster.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Not set.
  /// - "PROVISIONING" : The PROVISIONING state indicates the cluster is being
  /// created.
  /// - "RUNNING" : The RUNNING state indicates the cluster has been created and
  /// is fully usable.
  /// - "RECONCILING" : The RECONCILING state indicates that some work is
  /// actively being done on the cluster, such as upgrading the master or node
  /// software. Details can be found in the `statusMessage` field.
  /// - "STOPPING" : The STOPPING state indicates the cluster is being deleted.
  /// - "ERROR" : The ERROR state indicates the cluster is unusable. It will be
  /// automatically deleted. Details can be found in the `statusMessage` field.
  /// - "DEGRADED" : The DEGRADED state indicates the cluster requires user
  /// action to restore full functionality. Details can be found in the
  /// `statusMessage` field.
  core.String status;

  /// [Output only] Additional information about the current status of this
  /// cluster, if available.
  core.String statusMessage;

  /// The name of the Google Compute Engine
  /// [subnetwork](https://cloud.google.com/compute/docs/subnetworks) to which
  /// the cluster is connected.
  core.String subnetwork;

  /// [Output only] The IP address range of the Cloud TPUs in this cluster, in
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `1.2.3.4/29`).
  core.String tpuIpv4CidrBlock;

  /// Cluster-level Vertical Pod Autoscaling configuration.
  VerticalPodAutoscaling verticalPodAutoscaling;

  /// Configuration for the use of Kubernetes Service Accounts in GCP IAM
  /// policies.
  WorkloadIdentityConfig workloadIdentityConfig;

  /// [Output only] The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field is deprecated, use location instead.
  core.String zone;

  Cluster();

  Cluster.fromJson(core.Map _json) {
    if (_json.containsKey('addonsConfig')) {
      addonsConfig = AddonsConfig.fromJson(_json['addonsConfig']);
    }
    if (_json.containsKey('authenticatorGroupsConfig')) {
      authenticatorGroupsConfig = AuthenticatorGroupsConfig.fromJson(
          _json['authenticatorGroupsConfig']);
    }
    if (_json.containsKey('autoscaling')) {
      autoscaling = ClusterAutoscaling.fromJson(_json['autoscaling']);
    }
    if (_json.containsKey('binaryAuthorization')) {
      binaryAuthorization =
          BinaryAuthorization.fromJson(_json['binaryAuthorization']);
    }
    if (_json.containsKey('clusterIpv4Cidr')) {
      clusterIpv4Cidr = _json['clusterIpv4Cidr'];
    }
    if (_json.containsKey('conditions')) {
      conditions = (_json['conditions'] as core.List)
          .map<StatusCondition>((value) => StatusCondition.fromJson(value))
          .toList();
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('currentMasterVersion')) {
      currentMasterVersion = _json['currentMasterVersion'];
    }
    if (_json.containsKey('currentNodeCount')) {
      currentNodeCount = _json['currentNodeCount'];
    }
    if (_json.containsKey('currentNodeVersion')) {
      currentNodeVersion = _json['currentNodeVersion'];
    }
    if (_json.containsKey('databaseEncryption')) {
      databaseEncryption =
          DatabaseEncryption.fromJson(_json['databaseEncryption']);
    }
    if (_json.containsKey('defaultMaxPodsConstraint')) {
      defaultMaxPodsConstraint =
          MaxPodsConstraint.fromJson(_json['defaultMaxPodsConstraint']);
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('enableKubernetesAlpha')) {
      enableKubernetesAlpha = _json['enableKubernetesAlpha'];
    }
    if (_json.containsKey('enableTpu')) {
      enableTpu = _json['enableTpu'];
    }
    if (_json.containsKey('endpoint')) {
      endpoint = _json['endpoint'];
    }
    if (_json.containsKey('expireTime')) {
      expireTime = _json['expireTime'];
    }
    if (_json.containsKey('initialClusterVersion')) {
      initialClusterVersion = _json['initialClusterVersion'];
    }
    if (_json.containsKey('initialNodeCount')) {
      initialNodeCount = _json['initialNodeCount'];
    }
    if (_json.containsKey('instanceGroupUrls')) {
      instanceGroupUrls =
          (_json['instanceGroupUrls'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('ipAllocationPolicy')) {
      ipAllocationPolicy =
          IPAllocationPolicy.fromJson(_json['ipAllocationPolicy']);
    }
    if (_json.containsKey('labelFingerprint')) {
      labelFingerprint = _json['labelFingerprint'];
    }
    if (_json.containsKey('legacyAbac')) {
      legacyAbac = LegacyAbac.fromJson(_json['legacyAbac']);
    }
    if (_json.containsKey('location')) {
      location = _json['location'];
    }
    if (_json.containsKey('locations')) {
      locations = (_json['locations'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('loggingService')) {
      loggingService = _json['loggingService'];
    }
    if (_json.containsKey('maintenancePolicy')) {
      maintenancePolicy =
          MaintenancePolicy.fromJson(_json['maintenancePolicy']);
    }
    if (_json.containsKey('masterAuth')) {
      masterAuth = MasterAuth.fromJson(_json['masterAuth']);
    }
    if (_json.containsKey('masterAuthorizedNetworksConfig')) {
      masterAuthorizedNetworksConfig = MasterAuthorizedNetworksConfig.fromJson(
          _json['masterAuthorizedNetworksConfig']);
    }
    if (_json.containsKey('monitoringService')) {
      monitoringService = _json['monitoringService'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('network')) {
      network = _json['network'];
    }
    if (_json.containsKey('networkConfig')) {
      networkConfig = NetworkConfig.fromJson(_json['networkConfig']);
    }
    if (_json.containsKey('networkPolicy')) {
      networkPolicy = NetworkPolicy.fromJson(_json['networkPolicy']);
    }
    if (_json.containsKey('nodeConfig')) {
      nodeConfig = NodeConfig.fromJson(_json['nodeConfig']);
    }
    if (_json.containsKey('nodeIpv4CidrSize')) {
      nodeIpv4CidrSize = _json['nodeIpv4CidrSize'];
    }
    if (_json.containsKey('nodePools')) {
      nodePools = (_json['nodePools'] as core.List)
          .map<NodePool>((value) => NodePool.fromJson(value))
          .toList();
    }
    if (_json.containsKey('privateClusterConfig')) {
      privateClusterConfig =
          PrivateClusterConfig.fromJson(_json['privateClusterConfig']);
    }
    if (_json.containsKey('releaseChannel')) {
      releaseChannel = ReleaseChannel.fromJson(_json['releaseChannel']);
    }
    if (_json.containsKey('resourceLabels')) {
      resourceLabels = (_json['resourceLabels'] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey('resourceUsageExportConfig')) {
      resourceUsageExportConfig = ResourceUsageExportConfig.fromJson(
          _json['resourceUsageExportConfig']);
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'];
    }
    if (_json.containsKey('servicesIpv4Cidr')) {
      servicesIpv4Cidr = _json['servicesIpv4Cidr'];
    }
    if (_json.containsKey('shieldedNodes')) {
      shieldedNodes = ShieldedNodes.fromJson(_json['shieldedNodes']);
    }
    if (_json.containsKey('status')) {
      status = _json['status'];
    }
    if (_json.containsKey('statusMessage')) {
      statusMessage = _json['statusMessage'];
    }
    if (_json.containsKey('subnetwork')) {
      subnetwork = _json['subnetwork'];
    }
    if (_json.containsKey('tpuIpv4CidrBlock')) {
      tpuIpv4CidrBlock = _json['tpuIpv4CidrBlock'];
    }
    if (_json.containsKey('verticalPodAutoscaling')) {
      verticalPodAutoscaling =
          VerticalPodAutoscaling.fromJson(_json['verticalPodAutoscaling']);
    }
    if (_json.containsKey('workloadIdentityConfig')) {
      workloadIdentityConfig =
          WorkloadIdentityConfig.fromJson(_json['workloadIdentityConfig']);
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (addonsConfig != null) {
      _json['addonsConfig'] = addonsConfig.toJson();
    }
    if (authenticatorGroupsConfig != null) {
      _json['authenticatorGroupsConfig'] = authenticatorGroupsConfig.toJson();
    }
    if (autoscaling != null) {
      _json['autoscaling'] = autoscaling.toJson();
    }
    if (binaryAuthorization != null) {
      _json['binaryAuthorization'] = binaryAuthorization.toJson();
    }
    if (clusterIpv4Cidr != null) {
      _json['clusterIpv4Cidr'] = clusterIpv4Cidr;
    }
    if (conditions != null) {
      _json['conditions'] = conditions.map((value) => value.toJson()).toList();
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (currentMasterVersion != null) {
      _json['currentMasterVersion'] = currentMasterVersion;
    }
    if (currentNodeCount != null) {
      _json['currentNodeCount'] = currentNodeCount;
    }
    if (currentNodeVersion != null) {
      _json['currentNodeVersion'] = currentNodeVersion;
    }
    if (databaseEncryption != null) {
      _json['databaseEncryption'] = databaseEncryption.toJson();
    }
    if (defaultMaxPodsConstraint != null) {
      _json['defaultMaxPodsConstraint'] = defaultMaxPodsConstraint.toJson();
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (enableKubernetesAlpha != null) {
      _json['enableKubernetesAlpha'] = enableKubernetesAlpha;
    }
    if (enableTpu != null) {
      _json['enableTpu'] = enableTpu;
    }
    if (endpoint != null) {
      _json['endpoint'] = endpoint;
    }
    if (expireTime != null) {
      _json['expireTime'] = expireTime;
    }
    if (initialClusterVersion != null) {
      _json['initialClusterVersion'] = initialClusterVersion;
    }
    if (initialNodeCount != null) {
      _json['initialNodeCount'] = initialNodeCount;
    }
    if (instanceGroupUrls != null) {
      _json['instanceGroupUrls'] = instanceGroupUrls;
    }
    if (ipAllocationPolicy != null) {
      _json['ipAllocationPolicy'] = ipAllocationPolicy.toJson();
    }
    if (labelFingerprint != null) {
      _json['labelFingerprint'] = labelFingerprint;
    }
    if (legacyAbac != null) {
      _json['legacyAbac'] = legacyAbac.toJson();
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (locations != null) {
      _json['locations'] = locations;
    }
    if (loggingService != null) {
      _json['loggingService'] = loggingService;
    }
    if (maintenancePolicy != null) {
      _json['maintenancePolicy'] = maintenancePolicy.toJson();
    }
    if (masterAuth != null) {
      _json['masterAuth'] = masterAuth.toJson();
    }
    if (masterAuthorizedNetworksConfig != null) {
      _json['masterAuthorizedNetworksConfig'] =
          masterAuthorizedNetworksConfig.toJson();
    }
    if (monitoringService != null) {
      _json['monitoringService'] = monitoringService;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (network != null) {
      _json['network'] = network;
    }
    if (networkConfig != null) {
      _json['networkConfig'] = networkConfig.toJson();
    }
    if (networkPolicy != null) {
      _json['networkPolicy'] = networkPolicy.toJson();
    }
    if (nodeConfig != null) {
      _json['nodeConfig'] = nodeConfig.toJson();
    }
    if (nodeIpv4CidrSize != null) {
      _json['nodeIpv4CidrSize'] = nodeIpv4CidrSize;
    }
    if (nodePools != null) {
      _json['nodePools'] = nodePools.map((value) => value.toJson()).toList();
    }
    if (privateClusterConfig != null) {
      _json['privateClusterConfig'] = privateClusterConfig.toJson();
    }
    if (releaseChannel != null) {
      _json['releaseChannel'] = releaseChannel.toJson();
    }
    if (resourceLabels != null) {
      _json['resourceLabels'] = resourceLabels;
    }
    if (resourceUsageExportConfig != null) {
      _json['resourceUsageExportConfig'] = resourceUsageExportConfig.toJson();
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (servicesIpv4Cidr != null) {
      _json['servicesIpv4Cidr'] = servicesIpv4Cidr;
    }
    if (shieldedNodes != null) {
      _json['shieldedNodes'] = shieldedNodes.toJson();
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (statusMessage != null) {
      _json['statusMessage'] = statusMessage;
    }
    if (subnetwork != null) {
      _json['subnetwork'] = subnetwork;
    }
    if (tpuIpv4CidrBlock != null) {
      _json['tpuIpv4CidrBlock'] = tpuIpv4CidrBlock;
    }
    if (verticalPodAutoscaling != null) {
      _json['verticalPodAutoscaling'] = verticalPodAutoscaling.toJson();
    }
    if (workloadIdentityConfig != null) {
      _json['workloadIdentityConfig'] = workloadIdentityConfig.toJson();
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// ClusterAutoscaling contains global, per-cluster information required by
/// Cluster Autoscaler to automatically adjust the size of the cluster and
/// create/delete node pools based on the current needs.
class ClusterAutoscaling {
  /// The list of Google Compute Engine
  /// [zones](https://cloud.google.com/compute/docs/zones#available) in which
  /// the NodePool's nodes can be created by NAP.
  core.List<core.String> autoprovisioningLocations;

  /// AutoprovisioningNodePoolDefaults contains defaults for a node pool created
  /// by NAP.
  AutoprovisioningNodePoolDefaults autoprovisioningNodePoolDefaults;

  /// Enables automatic node pool creation and deletion.
  core.bool enableNodeAutoprovisioning;

  /// Contains global constraints regarding minimum and maximum amount of
  /// resources in the cluster.
  core.List<ResourceLimit> resourceLimits;

  ClusterAutoscaling();

  ClusterAutoscaling.fromJson(core.Map _json) {
    if (_json.containsKey('autoprovisioningLocations')) {
      autoprovisioningLocations =
          (_json['autoprovisioningLocations'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('autoprovisioningNodePoolDefaults')) {
      autoprovisioningNodePoolDefaults =
          AutoprovisioningNodePoolDefaults.fromJson(
              _json['autoprovisioningNodePoolDefaults']);
    }
    if (_json.containsKey('enableNodeAutoprovisioning')) {
      enableNodeAutoprovisioning = _json['enableNodeAutoprovisioning'];
    }
    if (_json.containsKey('resourceLimits')) {
      resourceLimits = (_json['resourceLimits'] as core.List)
          .map<ResourceLimit>((value) => ResourceLimit.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (autoprovisioningLocations != null) {
      _json['autoprovisioningLocations'] = autoprovisioningLocations;
    }
    if (autoprovisioningNodePoolDefaults != null) {
      _json['autoprovisioningNodePoolDefaults'] =
          autoprovisioningNodePoolDefaults.toJson();
    }
    if (enableNodeAutoprovisioning != null) {
      _json['enableNodeAutoprovisioning'] = enableNodeAutoprovisioning;
    }
    if (resourceLimits != null) {
      _json['resourceLimits'] =
          resourceLimits.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// ClusterUpdate describes an update to the cluster. Exactly one update can be
/// applied to a cluster with each request, so at most one field can be
/// provided.
class ClusterUpdate {
  /// Configurations for the various addons available to run in the cluster.
  AddonsConfig desiredAddonsConfig;

  /// The desired configuration options for the Binary Authorization feature.
  BinaryAuthorization desiredBinaryAuthorization;

  /// Cluster-level autoscaling configuration.
  ClusterAutoscaling desiredClusterAutoscaling;

  /// Configuration of etcd encryption.
  DatabaseEncryption desiredDatabaseEncryption;

  /// The desired status of whether to disable default sNAT for this cluster.
  DefaultSnatStatus desiredDefaultSnatStatus;

  /// The desired image type for the node pool. NOTE: Set the
  /// "desired_node_pool" field as well.
  core.String desiredImageType;

  /// The desired config of Intra-node visibility.
  IntraNodeVisibilityConfig desiredIntraNodeVisibilityConfig;

  /// The desired list of Google Compute Engine
  /// [zones](https://cloud.google.com/compute/docs/zones#available) in which
  /// the cluster's nodes should be located. Changing the locations a cluster is
  /// in will result in nodes being either created or removed from the cluster,
  /// depending on whether locations are being added or removed. This list must
  /// always include the cluster's primary zone.
  core.List<core.String> desiredLocations;

  /// The logging service the cluster should use to write logs. Currently
  /// available options: * `logging.googleapis.com/kubernetes` - The Cloud
  /// Logging service with a Kubernetes-native resource model *
  /// `logging.googleapis.com` - The legacy Cloud Logging service (no longer
  /// available as of GKE 1.15). * `none` - no logs will be exported from the
  /// cluster. If left as an empty string,`logging.googleapis.com/kubernetes`
  /// will be used for GKE 1.14+ or `logging.googleapis.com` for earlier
  /// versions.
  core.String desiredLoggingService;

  /// The desired configuration options for master authorized networks feature.
  MasterAuthorizedNetworksConfig desiredMasterAuthorizedNetworksConfig;

  /// The Kubernetes version to change the master to. Users may specify either
  /// explicit versions offered by Kubernetes Engine or version aliases, which
  /// have the following behavior: - "latest": picks the highest valid
  /// Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in
  /// the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the
  /// 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-":
  /// picks the default Kubernetes version
  core.String desiredMasterVersion;

  /// The monitoring service the cluster should use to write metrics. Currently
  /// available options: * "monitoring.googleapis.com/kubernetes" - The Cloud
  /// Monitoring service with a Kubernetes-native resource model *
  /// `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no
  /// longer available as of GKE 1.15). * `none` - No metrics will be exported
  /// from the cluster. If left as an empty
  /// string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+
  /// or `monitoring.googleapis.com` for earlier versions.
  core.String desiredMonitoringService;

  /// Autoscaler configuration for the node pool specified in
  /// desired_node_pool_id. If there is only one pool in the cluster and
  /// desired_node_pool_id is not provided then the change applies to that
  /// single node pool.
  NodePoolAutoscaling desiredNodePoolAutoscaling;

  /// The node pool to be upgraded. This field is mandatory if
  /// "desired_node_version", "desired_image_family" or
  /// "desired_node_pool_autoscaling" is specified and there is more than one
  /// node pool on the cluster.
  core.String desiredNodePoolId;

  /// The Kubernetes version to change the nodes to (typically an upgrade).
  /// Users may specify either explicit versions offered by Kubernetes Engine or
  /// version aliases, which have the following behavior: - "latest": picks the
  /// highest valid Kubernetes version - "1.X": picks the highest valid
  /// patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid
  /// gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit
  /// Kubernetes version - "-": picks the Kubernetes master version
  core.String desiredNodeVersion;

  /// The desired private cluster configuration.
  PrivateClusterConfig desiredPrivateClusterConfig;

  /// The desired release channel configuration.
  ReleaseChannel desiredReleaseChannel;

  /// The desired configuration for exporting resource usage.
  ResourceUsageExportConfig desiredResourceUsageExportConfig;

  /// Configuration for Shielded Nodes.
  ShieldedNodes desiredShieldedNodes;

  /// Cluster-level Vertical Pod Autoscaling configuration.
  VerticalPodAutoscaling desiredVerticalPodAutoscaling;

  /// Configuration for Workload Identity.
  WorkloadIdentityConfig desiredWorkloadIdentityConfig;

  ClusterUpdate();

  ClusterUpdate.fromJson(core.Map _json) {
    if (_json.containsKey('desiredAddonsConfig')) {
      desiredAddonsConfig = AddonsConfig.fromJson(_json['desiredAddonsConfig']);
    }
    if (_json.containsKey('desiredBinaryAuthorization')) {
      desiredBinaryAuthorization =
          BinaryAuthorization.fromJson(_json['desiredBinaryAuthorization']);
    }
    if (_json.containsKey('desiredClusterAutoscaling')) {
      desiredClusterAutoscaling =
          ClusterAutoscaling.fromJson(_json['desiredClusterAutoscaling']);
    }
    if (_json.containsKey('desiredDatabaseEncryption')) {
      desiredDatabaseEncryption =
          DatabaseEncryption.fromJson(_json['desiredDatabaseEncryption']);
    }
    if (_json.containsKey('desiredDefaultSnatStatus')) {
      desiredDefaultSnatStatus =
          DefaultSnatStatus.fromJson(_json['desiredDefaultSnatStatus']);
    }
    if (_json.containsKey('desiredImageType')) {
      desiredImageType = _json['desiredImageType'];
    }
    if (_json.containsKey('desiredIntraNodeVisibilityConfig')) {
      desiredIntraNodeVisibilityConfig = IntraNodeVisibilityConfig.fromJson(
          _json['desiredIntraNodeVisibilityConfig']);
    }
    if (_json.containsKey('desiredLocations')) {
      desiredLocations =
          (_json['desiredLocations'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('desiredLoggingService')) {
      desiredLoggingService = _json['desiredLoggingService'];
    }
    if (_json.containsKey('desiredMasterAuthorizedNetworksConfig')) {
      desiredMasterAuthorizedNetworksConfig =
          MasterAuthorizedNetworksConfig.fromJson(
              _json['desiredMasterAuthorizedNetworksConfig']);
    }
    if (_json.containsKey('desiredMasterVersion')) {
      desiredMasterVersion = _json['desiredMasterVersion'];
    }
    if (_json.containsKey('desiredMonitoringService')) {
      desiredMonitoringService = _json['desiredMonitoringService'];
    }
    if (_json.containsKey('desiredNodePoolAutoscaling')) {
      desiredNodePoolAutoscaling =
          NodePoolAutoscaling.fromJson(_json['desiredNodePoolAutoscaling']);
    }
    if (_json.containsKey('desiredNodePoolId')) {
      desiredNodePoolId = _json['desiredNodePoolId'];
    }
    if (_json.containsKey('desiredNodeVersion')) {
      desiredNodeVersion = _json['desiredNodeVersion'];
    }
    if (_json.containsKey('desiredPrivateClusterConfig')) {
      desiredPrivateClusterConfig =
          PrivateClusterConfig.fromJson(_json['desiredPrivateClusterConfig']);
    }
    if (_json.containsKey('desiredReleaseChannel')) {
      desiredReleaseChannel =
          ReleaseChannel.fromJson(_json['desiredReleaseChannel']);
    }
    if (_json.containsKey('desiredResourceUsageExportConfig')) {
      desiredResourceUsageExportConfig = ResourceUsageExportConfig.fromJson(
          _json['desiredResourceUsageExportConfig']);
    }
    if (_json.containsKey('desiredShieldedNodes')) {
      desiredShieldedNodes =
          ShieldedNodes.fromJson(_json['desiredShieldedNodes']);
    }
    if (_json.containsKey('desiredVerticalPodAutoscaling')) {
      desiredVerticalPodAutoscaling = VerticalPodAutoscaling.fromJson(
          _json['desiredVerticalPodAutoscaling']);
    }
    if (_json.containsKey('desiredWorkloadIdentityConfig')) {
      desiredWorkloadIdentityConfig = WorkloadIdentityConfig.fromJson(
          _json['desiredWorkloadIdentityConfig']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (desiredAddonsConfig != null) {
      _json['desiredAddonsConfig'] = desiredAddonsConfig.toJson();
    }
    if (desiredBinaryAuthorization != null) {
      _json['desiredBinaryAuthorization'] = desiredBinaryAuthorization.toJson();
    }
    if (desiredClusterAutoscaling != null) {
      _json['desiredClusterAutoscaling'] = desiredClusterAutoscaling.toJson();
    }
    if (desiredDatabaseEncryption != null) {
      _json['desiredDatabaseEncryption'] = desiredDatabaseEncryption.toJson();
    }
    if (desiredDefaultSnatStatus != null) {
      _json['desiredDefaultSnatStatus'] = desiredDefaultSnatStatus.toJson();
    }
    if (desiredImageType != null) {
      _json['desiredImageType'] = desiredImageType;
    }
    if (desiredIntraNodeVisibilityConfig != null) {
      _json['desiredIntraNodeVisibilityConfig'] =
          desiredIntraNodeVisibilityConfig.toJson();
    }
    if (desiredLocations != null) {
      _json['desiredLocations'] = desiredLocations;
    }
    if (desiredLoggingService != null) {
      _json['desiredLoggingService'] = desiredLoggingService;
    }
    if (desiredMasterAuthorizedNetworksConfig != null) {
      _json['desiredMasterAuthorizedNetworksConfig'] =
          desiredMasterAuthorizedNetworksConfig.toJson();
    }
    if (desiredMasterVersion != null) {
      _json['desiredMasterVersion'] = desiredMasterVersion;
    }
    if (desiredMonitoringService != null) {
      _json['desiredMonitoringService'] = desiredMonitoringService;
    }
    if (desiredNodePoolAutoscaling != null) {
      _json['desiredNodePoolAutoscaling'] = desiredNodePoolAutoscaling.toJson();
    }
    if (desiredNodePoolId != null) {
      _json['desiredNodePoolId'] = desiredNodePoolId;
    }
    if (desiredNodeVersion != null) {
      _json['desiredNodeVersion'] = desiredNodeVersion;
    }
    if (desiredPrivateClusterConfig != null) {
      _json['desiredPrivateClusterConfig'] =
          desiredPrivateClusterConfig.toJson();
    }
    if (desiredReleaseChannel != null) {
      _json['desiredReleaseChannel'] = desiredReleaseChannel.toJson();
    }
    if (desiredResourceUsageExportConfig != null) {
      _json['desiredResourceUsageExportConfig'] =
          desiredResourceUsageExportConfig.toJson();
    }
    if (desiredShieldedNodes != null) {
      _json['desiredShieldedNodes'] = desiredShieldedNodes.toJson();
    }
    if (desiredVerticalPodAutoscaling != null) {
      _json['desiredVerticalPodAutoscaling'] =
          desiredVerticalPodAutoscaling.toJson();
    }
    if (desiredWorkloadIdentityConfig != null) {
      _json['desiredWorkloadIdentityConfig'] =
          desiredWorkloadIdentityConfig.toJson();
    }
    return _json;
  }
}

/// CompleteIPRotationRequest moves the cluster master back into single-IP mode.
class CompleteIPRotationRequest {
  /// Deprecated. The name of the cluster. This field has been deprecated and
  /// replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster id) of the cluster to complete IP
  /// rotation. Specified in the format `projects / * /locations / * /clusters /
  /// * `.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  CompleteIPRotationRequest();

  CompleteIPRotationRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// Configuration options for the Config Connector add-on.
class ConfigConnectorConfig {
  /// Whether Cloud Connector is enabled for this cluster.
  core.bool enabled;

  ConfigConnectorConfig();

  ConfigConnectorConfig.fromJson(core.Map _json) {
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    return _json;
  }
}

/// Parameters for controlling consumption metering.
class ConsumptionMeteringConfig {
  /// Whether to enable consumption metering for this cluster. If enabled, a
  /// second BigQuery table will be created to hold resource consumption
  /// records.
  core.bool enabled;

  ConsumptionMeteringConfig();

  ConsumptionMeteringConfig.fromJson(core.Map _json) {
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    return _json;
  }
}

/// CreateClusterRequest creates a cluster.
class CreateClusterRequest {
  /// Required. A [cluster
  /// resource](https://cloud.google.com/container-engine/reference/rest/v1/projects.locations.clusters)
  Cluster cluster;

  /// The parent (project and location) where the cluster will be created.
  /// Specified in the format `projects / * /locations / * `.
  core.String parent;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840). This field has
  /// been deprecated and replaced by the parent field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the parent
  /// field.
  core.String zone;

  CreateClusterRequest();

  CreateClusterRequest.fromJson(core.Map _json) {
    if (_json.containsKey('cluster')) {
      cluster = Cluster.fromJson(_json['cluster']);
    }
    if (_json.containsKey('parent')) {
      parent = _json['parent'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (cluster != null) {
      _json['cluster'] = cluster.toJson();
    }
    if (parent != null) {
      _json['parent'] = parent;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// CreateNodePoolRequest creates a node pool for a cluster.
class CreateNodePoolRequest {
  /// Deprecated. The name of the cluster. This field has been deprecated and
  /// replaced by the parent field.
  core.String clusterId;

  /// Required. The node pool to create.
  NodePool nodePool;

  /// The parent (project, location, cluster id) where the node pool will be
  /// created. Specified in the format `projects / * /locations / * /clusters /
  /// * `.
  core.String parent;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the parent field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the parent
  /// field.
  core.String zone;

  CreateNodePoolRequest();

  CreateNodePoolRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('nodePool')) {
      nodePool = NodePool.fromJson(_json['nodePool']);
    }
    if (_json.containsKey('parent')) {
      parent = _json['parent'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (nodePool != null) {
      _json['nodePool'] = nodePool.toJson();
    }
    if (parent != null) {
      _json['parent'] = parent;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// Time window specified for daily maintenance operations.
class DailyMaintenanceWindow {
  /// [Output only] Duration of the time window, automatically chosen to be
  /// smallest possible in the given scenario. Duration will be in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format "PTnHnMnS".
  core.String duration;

  /// Time within the maintenance window to start the maintenance operations.
  /// Time format should be in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt)
  /// format "HH:MM", where HH : [00-23] and MM : [00-59] GMT.
  core.String startTime;

  DailyMaintenanceWindow();

  DailyMaintenanceWindow.fromJson(core.Map _json) {
    if (_json.containsKey('duration')) {
      duration = _json['duration'];
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (duration != null) {
      _json['duration'] = duration;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    return _json;
  }
}

/// Configuration of etcd encryption.
class DatabaseEncryption {
  /// Name of CloudKMS key to use for the encryption of secrets in etcd. Ex.
  /// projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  core.String keyName;

  /// Denotes the state of etcd encryption.
  /// Possible string values are:
  /// - "UNKNOWN" : Should never be set
  /// - "ENCRYPTED" : Secrets in etcd are encrypted.
  /// - "DECRYPTED" : Secrets in etcd are stored in plain text (at etcd level) -
  /// this is unrelated to Compute Engine level full disk encryption.
  core.String state;

  DatabaseEncryption();

  DatabaseEncryption.fromJson(core.Map _json) {
    if (_json.containsKey('keyName')) {
      keyName = _json['keyName'];
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (keyName != null) {
      _json['keyName'] = keyName;
    }
    if (state != null) {
      _json['state'] = state;
    }
    return _json;
  }
}

/// DefaultSnatStatus contains the desired state of whether default sNAT should
/// be disabled on the cluster.
class DefaultSnatStatus {
  /// Disables cluster default sNAT rules.
  core.bool disabled;

  DefaultSnatStatus();

  DefaultSnatStatus.fromJson(core.Map _json) {
    if (_json.containsKey('disabled')) {
      disabled = _json['disabled'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (disabled != null) {
      _json['disabled'] = disabled;
    }
    return _json;
  }
}

/// Configuration for NodeLocal DNSCache
class DnsCacheConfig {
  /// Whether NodeLocal DNSCache is enabled for this cluster.
  core.bool enabled;

  DnsCacheConfig();

  DnsCacheConfig.fromJson(core.Map _json) {
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// GetJSONWebKeysResponse is a valid JSON Web Key Set as specififed in rfc 7517
class GetJSONWebKeysResponse {
  /// OnePlatform automatically extracts this field and uses it to set the HTTP
  /// Cache-Control header.
  HttpCacheControlResponseHeader cacheHeader;

  /// The public component of the keys used by the cluster to sign token
  /// requests.
  core.List<Jwk> keys;

  GetJSONWebKeysResponse();

  GetJSONWebKeysResponse.fromJson(core.Map _json) {
    if (_json.containsKey('cacheHeader')) {
      cacheHeader =
          HttpCacheControlResponseHeader.fromJson(_json['cacheHeader']);
    }
    if (_json.containsKey('keys')) {
      keys = (_json['keys'] as core.List)
          .map<Jwk>((value) => Jwk.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (cacheHeader != null) {
      _json['cacheHeader'] = cacheHeader.toJson();
    }
    if (keys != null) {
      _json['keys'] = keys.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// GetOpenIDConfigResponse is an OIDC discovery document for the cluster. See
/// the OpenID Connect Discovery 1.0 specification for details.
class GetOpenIDConfigResponse {
  /// OnePlatform automatically extracts this field and uses it to set the HTTP
  /// Cache-Control header.
  HttpCacheControlResponseHeader cacheHeader;

  /// Supported claims.
  core.List<core.String> claimsSupported;

  /// Supported grant types.
  core.List<core.String> grantTypes;

  /// supported ID Token signing Algorithms.
  core.List<core.String> idTokenSigningAlgValuesSupported;

  /// OIDC Issuer.
  core.String issuer;

  /// JSON Web Key uri.
  core.String jwksUri;

  /// Supported response types.
  core.List<core.String> responseTypesSupported;

  /// Supported subject types.
  core.List<core.String> subjectTypesSupported;

  GetOpenIDConfigResponse();

  GetOpenIDConfigResponse.fromJson(core.Map _json) {
    if (_json.containsKey('cacheHeader')) {
      cacheHeader =
          HttpCacheControlResponseHeader.fromJson(_json['cacheHeader']);
    }
    if (_json.containsKey('claims_supported')) {
      claimsSupported =
          (_json['claims_supported'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('grant_types')) {
      grantTypes = (_json['grant_types'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('id_token_signing_alg_values_supported')) {
      idTokenSigningAlgValuesSupported =
          (_json['id_token_signing_alg_values_supported'] as core.List)
              .cast<core.String>();
    }
    if (_json.containsKey('issuer')) {
      issuer = _json['issuer'];
    }
    if (_json.containsKey('jwks_uri')) {
      jwksUri = _json['jwks_uri'];
    }
    if (_json.containsKey('response_types_supported')) {
      responseTypesSupported =
          (_json['response_types_supported'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('subject_types_supported')) {
      subjectTypesSupported =
          (_json['subject_types_supported'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (cacheHeader != null) {
      _json['cacheHeader'] = cacheHeader.toJson();
    }
    if (claimsSupported != null) {
      _json['claims_supported'] = claimsSupported;
    }
    if (grantTypes != null) {
      _json['grant_types'] = grantTypes;
    }
    if (idTokenSigningAlgValuesSupported != null) {
      _json['id_token_signing_alg_values_supported'] =
          idTokenSigningAlgValuesSupported;
    }
    if (issuer != null) {
      _json['issuer'] = issuer;
    }
    if (jwksUri != null) {
      _json['jwks_uri'] = jwksUri;
    }
    if (responseTypesSupported != null) {
      _json['response_types_supported'] = responseTypesSupported;
    }
    if (subjectTypesSupported != null) {
      _json['subject_types_supported'] = subjectTypesSupported;
    }
    return _json;
  }
}

/// Configuration options for the horizontal pod autoscaling feature, which
/// increases or decreases the number of replica pods a replication controller
/// has based on the resource usage of the existing pods.
class HorizontalPodAutoscaling {
  /// Whether the Horizontal Pod Autoscaling feature is enabled in the cluster.
  /// When enabled, it ensures that metrics are collected into Stackdriver
  /// Monitoring.
  core.bool disabled;

  HorizontalPodAutoscaling();

  HorizontalPodAutoscaling.fromJson(core.Map _json) {
    if (_json.containsKey('disabled')) {
      disabled = _json['disabled'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (disabled != null) {
      _json['disabled'] = disabled;
    }
    return _json;
  }
}

/// RFC-2616: cache control support
class HttpCacheControlResponseHeader {
  /// 14.6 response cache age, in seconds since the response is generated
  core.String age;

  /// 14.9 request and response directives
  core.String directive;

  /// 14.21 response cache expires, in RFC 1123 date format
  core.String expires;

  HttpCacheControlResponseHeader();

  HttpCacheControlResponseHeader.fromJson(core.Map _json) {
    if (_json.containsKey('age')) {
      age = _json['age'];
    }
    if (_json.containsKey('directive')) {
      directive = _json['directive'];
    }
    if (_json.containsKey('expires')) {
      expires = _json['expires'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (age != null) {
      _json['age'] = age;
    }
    if (directive != null) {
      _json['directive'] = directive;
    }
    if (expires != null) {
      _json['expires'] = expires;
    }
    return _json;
  }
}

/// Configuration options for the HTTP (L7) load balancing controller addon,
/// which makes it easy to set up HTTP load balancers for services in a cluster.
class HttpLoadBalancing {
  /// Whether the HTTP Load Balancing controller is enabled in the cluster. When
  /// enabled, it runs a small pod in the cluster that manages the load
  /// balancers.
  core.bool disabled;

  HttpLoadBalancing();

  HttpLoadBalancing.fromJson(core.Map _json) {
    if (_json.containsKey('disabled')) {
      disabled = _json['disabled'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (disabled != null) {
      _json['disabled'] = disabled;
    }
    return _json;
  }
}

/// Configuration for controlling how IPs are allocated in the cluster.
class IPAllocationPolicy {
  /// This field is deprecated, use cluster_ipv4_cidr_block.
  core.String clusterIpv4Cidr;

  /// The IP address range for the cluster pod IPs. If this field is set, then
  /// `cluster.cluster_ipv4_cidr` must be left blank. This field is only
  /// applicable when `use_ip_aliases` is true. Set to blank to have a range
  /// chosen with the default size. Set to /netmask (e.g. `/14`) to have a range
  /// chosen with a specific netmask. Set to a
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g.
  /// `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range
  /// to use.
  core.String clusterIpv4CidrBlock;

  /// The name of the secondary range to be used for the cluster CIDR block. The
  /// secondary range will be used for pod IP addresses. This must be an
  /// existing secondary range associated with the cluster subnetwork. This
  /// field is only applicable with use_ip_aliases is true and create_subnetwork
  /// is false.
  core.String clusterSecondaryRangeName;

  /// Whether a new subnetwork will be created automatically for the cluster.
  /// This field is only applicable when `use_ip_aliases` is true.
  core.bool createSubnetwork;

  /// This field is deprecated, use node_ipv4_cidr_block.
  core.String nodeIpv4Cidr;

  /// The IP address range of the instance IPs in this cluster. This is
  /// applicable only if `create_subnetwork` is true. Set to blank to have a
  /// range chosen with the default size. Set to /netmask (e.g. `/14`) to have a
  /// range chosen with a specific netmask. Set to a
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g.
  /// `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range
  /// to use.
  core.String nodeIpv4CidrBlock;

  /// This field is deprecated, use services_ipv4_cidr_block.
  core.String servicesIpv4Cidr;

  /// The IP address range of the services IPs in this cluster. If blank, a
  /// range will be automatically chosen with the default size. This field is
  /// only applicable when `use_ip_aliases` is true. Set to blank to have a
  /// range chosen with the default size. Set to /netmask (e.g. `/14`) to have a
  /// range chosen with a specific netmask. Set to a
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g.
  /// `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range
  /// to use.
  core.String servicesIpv4CidrBlock;

  /// The name of the secondary range to be used as for the services CIDR block.
  /// The secondary range will be used for service ClusterIPs. This must be an
  /// existing secondary range associated with the cluster subnetwork. This
  /// field is only applicable with use_ip_aliases is true and create_subnetwork
  /// is false.
  core.String servicesSecondaryRangeName;

  /// A custom subnetwork name to be used if `create_subnetwork` is true. If
  /// this field is empty, then an automatic name will be chosen for the new
  /// subnetwork.
  core.String subnetworkName;

  /// The IP address range of the Cloud TPUs in this cluster. If unspecified, a
  /// range will be automatically chosen with the default size. This field is
  /// only applicable when `use_ip_aliases` is true. If unspecified, the range
  /// will use the default size. Set to /netmask (e.g. `/14`) to have a range
  /// chosen with a specific netmask. Set to a
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g.
  /// `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range
  /// to use.
  core.String tpuIpv4CidrBlock;

  /// Whether alias IPs will be used for pod IPs in the cluster. This is used in
  /// conjunction with use_routes. It cannot be true if use_routes is true. If
  /// both use_ip_aliases and use_routes are false, then the server picks the
  /// default IP allocation mode
  core.bool useIpAliases;

  /// Whether routes will be used for pod IPs in the cluster. This is used in
  /// conjunction with use_ip_aliases. It cannot be true if use_ip_aliases is
  /// true. If both use_ip_aliases and use_routes are false, then the server
  /// picks the default IP allocation mode
  core.bool useRoutes;

  IPAllocationPolicy();

  IPAllocationPolicy.fromJson(core.Map _json) {
    if (_json.containsKey('clusterIpv4Cidr')) {
      clusterIpv4Cidr = _json['clusterIpv4Cidr'];
    }
    if (_json.containsKey('clusterIpv4CidrBlock')) {
      clusterIpv4CidrBlock = _json['clusterIpv4CidrBlock'];
    }
    if (_json.containsKey('clusterSecondaryRangeName')) {
      clusterSecondaryRangeName = _json['clusterSecondaryRangeName'];
    }
    if (_json.containsKey('createSubnetwork')) {
      createSubnetwork = _json['createSubnetwork'];
    }
    if (_json.containsKey('nodeIpv4Cidr')) {
      nodeIpv4Cidr = _json['nodeIpv4Cidr'];
    }
    if (_json.containsKey('nodeIpv4CidrBlock')) {
      nodeIpv4CidrBlock = _json['nodeIpv4CidrBlock'];
    }
    if (_json.containsKey('servicesIpv4Cidr')) {
      servicesIpv4Cidr = _json['servicesIpv4Cidr'];
    }
    if (_json.containsKey('servicesIpv4CidrBlock')) {
      servicesIpv4CidrBlock = _json['servicesIpv4CidrBlock'];
    }
    if (_json.containsKey('servicesSecondaryRangeName')) {
      servicesSecondaryRangeName = _json['servicesSecondaryRangeName'];
    }
    if (_json.containsKey('subnetworkName')) {
      subnetworkName = _json['subnetworkName'];
    }
    if (_json.containsKey('tpuIpv4CidrBlock')) {
      tpuIpv4CidrBlock = _json['tpuIpv4CidrBlock'];
    }
    if (_json.containsKey('useIpAliases')) {
      useIpAliases = _json['useIpAliases'];
    }
    if (_json.containsKey('useRoutes')) {
      useRoutes = _json['useRoutes'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterIpv4Cidr != null) {
      _json['clusterIpv4Cidr'] = clusterIpv4Cidr;
    }
    if (clusterIpv4CidrBlock != null) {
      _json['clusterIpv4CidrBlock'] = clusterIpv4CidrBlock;
    }
    if (clusterSecondaryRangeName != null) {
      _json['clusterSecondaryRangeName'] = clusterSecondaryRangeName;
    }
    if (createSubnetwork != null) {
      _json['createSubnetwork'] = createSubnetwork;
    }
    if (nodeIpv4Cidr != null) {
      _json['nodeIpv4Cidr'] = nodeIpv4Cidr;
    }
    if (nodeIpv4CidrBlock != null) {
      _json['nodeIpv4CidrBlock'] = nodeIpv4CidrBlock;
    }
    if (servicesIpv4Cidr != null) {
      _json['servicesIpv4Cidr'] = servicesIpv4Cidr;
    }
    if (servicesIpv4CidrBlock != null) {
      _json['servicesIpv4CidrBlock'] = servicesIpv4CidrBlock;
    }
    if (servicesSecondaryRangeName != null) {
      _json['servicesSecondaryRangeName'] = servicesSecondaryRangeName;
    }
    if (subnetworkName != null) {
      _json['subnetworkName'] = subnetworkName;
    }
    if (tpuIpv4CidrBlock != null) {
      _json['tpuIpv4CidrBlock'] = tpuIpv4CidrBlock;
    }
    if (useIpAliases != null) {
      _json['useIpAliases'] = useIpAliases;
    }
    if (useRoutes != null) {
      _json['useRoutes'] = useRoutes;
    }
    return _json;
  }
}

/// IntraNodeVisibilityConfig contains the desired config of the intra-node
/// visibility on this cluster.
class IntraNodeVisibilityConfig {
  /// Enables intra node visibility for this cluster.
  core.bool enabled;

  IntraNodeVisibilityConfig();

  IntraNodeVisibilityConfig.fromJson(core.Map _json) {
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    return _json;
  }
}

/// Jwk is a JSON Web Key as specified in RFC 7517
class Jwk {
  /// Algorithm.
  core.String alg;

  /// Used for ECDSA keys.
  core.String crv;

  /// Used for RSA keys.
  core.String e;

  /// Key ID.
  core.String kid;

  /// Key Type.
  core.String kty;

  /// Used for RSA keys.
  core.String n;

  /// Permitted uses for the public keys.
  core.String use;

  /// Used for ECDSA keys.
  core.String x;

  /// Used for ECDSA keys.
  core.String y;

  Jwk();

  Jwk.fromJson(core.Map _json) {
    if (_json.containsKey('alg')) {
      alg = _json['alg'];
    }
    if (_json.containsKey('crv')) {
      crv = _json['crv'];
    }
    if (_json.containsKey('e')) {
      e = _json['e'];
    }
    if (_json.containsKey('kid')) {
      kid = _json['kid'];
    }
    if (_json.containsKey('kty')) {
      kty = _json['kty'];
    }
    if (_json.containsKey('n')) {
      n = _json['n'];
    }
    if (_json.containsKey('use')) {
      use = _json['use'];
    }
    if (_json.containsKey('x')) {
      x = _json['x'];
    }
    if (_json.containsKey('y')) {
      y = _json['y'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (alg != null) {
      _json['alg'] = alg;
    }
    if (crv != null) {
      _json['crv'] = crv;
    }
    if (e != null) {
      _json['e'] = e;
    }
    if (kid != null) {
      _json['kid'] = kid;
    }
    if (kty != null) {
      _json['kty'] = kty;
    }
    if (n != null) {
      _json['n'] = n;
    }
    if (use != null) {
      _json['use'] = use;
    }
    if (x != null) {
      _json['x'] = x;
    }
    if (y != null) {
      _json['y'] = y;
    }
    return _json;
  }
}

/// Configuration for the Kubernetes Dashboard.
class KubernetesDashboard {
  /// Whether the Kubernetes Dashboard is enabled for this cluster.
  core.bool disabled;

  KubernetesDashboard();

  KubernetesDashboard.fromJson(core.Map _json) {
    if (_json.containsKey('disabled')) {
      disabled = _json['disabled'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (disabled != null) {
      _json['disabled'] = disabled;
    }
    return _json;
  }
}

/// Configuration for the legacy Attribute Based Access Control authorization
/// mode.
class LegacyAbac {
  /// Whether the ABAC authorizer is enabled for this cluster. When enabled,
  /// identities in the system, including service accounts, nodes, and
  /// controllers, will have statically granted permissions beyond those
  /// provided by the RBAC configuration or IAM.
  core.bool enabled;

  LegacyAbac();

  LegacyAbac.fromJson(core.Map _json) {
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    return _json;
  }
}

/// ListClustersResponse is the result of ListClustersRequest.
class ListClustersResponse {
  /// A list of clusters in the project in the specified zone, or across all
  /// ones.
  core.List<Cluster> clusters;

  /// If any zones are listed here, the list of clusters returned may be missing
  /// those zones.
  core.List<core.String> missingZones;

  ListClustersResponse();

  ListClustersResponse.fromJson(core.Map _json) {
    if (_json.containsKey('clusters')) {
      clusters = (_json['clusters'] as core.List)
          .map<Cluster>((value) => Cluster.fromJson(value))
          .toList();
    }
    if (_json.containsKey('missingZones')) {
      missingZones = (_json['missingZones'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusters != null) {
      _json['clusters'] = clusters.map((value) => value.toJson()).toList();
    }
    if (missingZones != null) {
      _json['missingZones'] = missingZones;
    }
    return _json;
  }
}

/// ListNodePoolsResponse is the result of ListNodePoolsRequest.
class ListNodePoolsResponse {
  /// A list of node pools for a cluster.
  core.List<NodePool> nodePools;

  ListNodePoolsResponse();

  ListNodePoolsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nodePools')) {
      nodePools = (_json['nodePools'] as core.List)
          .map<NodePool>((value) => NodePool.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (nodePools != null) {
      _json['nodePools'] = nodePools.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// ListOperationsResponse is the result of ListOperationsRequest.
class ListOperationsResponse {
  /// If any zones are listed here, the list of operations returned may be
  /// missing the operations from those zones.
  core.List<core.String> missingZones;

  /// A list of operations in the project in the specified zone.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('missingZones')) {
      missingZones = (_json['missingZones'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<Operation>((value) => Operation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (missingZones != null) {
      _json['missingZones'] = missingZones;
    }
    if (operations != null) {
      _json['operations'] = operations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// ListUsableSubnetworksResponse is the response of
/// ListUsableSubnetworksRequest.
class ListUsableSubnetworksResponse {
  /// This token allows you to get the next page of results for list requests.
  /// If the number of results is larger than `page_size`, use the
  /// `next_page_token` as a value for the query parameter `page_token` in the
  /// next request. The value will become empty when there are no more pages.
  core.String nextPageToken;

  /// A list of usable subnetworks in the specified network project.
  core.List<UsableSubnetwork> subnetworks;

  ListUsableSubnetworksResponse();

  ListUsableSubnetworksResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('subnetworks')) {
      subnetworks = (_json['subnetworks'] as core.List)
          .map<UsableSubnetwork>((value) => UsableSubnetwork.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (subnetworks != null) {
      _json['subnetworks'] =
          subnetworks.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// MaintenancePolicy defines the maintenance policy to be used for the cluster.
class MaintenancePolicy {
  /// A hash identifying the version of this policy, so that updates to fields
  /// of the policy won't accidentally undo intermediate changes (and so that
  /// users of the API unaware of some fields won't accidentally remove other
  /// fields). Make a `get()` request to the cluster to get the current resource
  /// version and include it with requests to set the policy.
  core.String resourceVersion;

  /// Specifies the maintenance window in which maintenance may be performed.
  MaintenanceWindow window;

  MaintenancePolicy();

  MaintenancePolicy.fromJson(core.Map _json) {
    if (_json.containsKey('resourceVersion')) {
      resourceVersion = _json['resourceVersion'];
    }
    if (_json.containsKey('window')) {
      window = MaintenanceWindow.fromJson(_json['window']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (resourceVersion != null) {
      _json['resourceVersion'] = resourceVersion;
    }
    if (window != null) {
      _json['window'] = window.toJson();
    }
    return _json;
  }
}

/// MaintenanceWindow defines the maintenance window to be used for the cluster.
class MaintenanceWindow {
  /// DailyMaintenanceWindow specifies a daily maintenance operation window.
  DailyMaintenanceWindow dailyMaintenanceWindow;

  /// Exceptions to maintenance window. Non-emergency maintenance should not
  /// occur in these windows.
  core.Map<core.String, TimeWindow> maintenanceExclusions;

  /// RecurringWindow specifies some number of recurring time periods for
  /// maintenance to occur. The time windows may be overlapping. If no
  /// maintenance windows are set, maintenance can occur at any time.
  RecurringTimeWindow recurringWindow;

  MaintenanceWindow();

  MaintenanceWindow.fromJson(core.Map _json) {
    if (_json.containsKey('dailyMaintenanceWindow')) {
      dailyMaintenanceWindow =
          DailyMaintenanceWindow.fromJson(_json['dailyMaintenanceWindow']);
    }
    if (_json.containsKey('maintenanceExclusions')) {
      maintenanceExclusions = commons.mapMap<core.Map, TimeWindow>(
          _json['maintenanceExclusions'].cast<core.String, core.Map>(),
          (core.Map item) => TimeWindow.fromJson(item));
    }
    if (_json.containsKey('recurringWindow')) {
      recurringWindow = RecurringTimeWindow.fromJson(_json['recurringWindow']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (dailyMaintenanceWindow != null) {
      _json['dailyMaintenanceWindow'] = dailyMaintenanceWindow.toJson();
    }
    if (maintenanceExclusions != null) {
      _json['maintenanceExclusions'] =
          commons.mapMap<TimeWindow, core.Map<core.String, core.Object>>(
              maintenanceExclusions, (TimeWindow item) => item.toJson());
    }
    if (recurringWindow != null) {
      _json['recurringWindow'] = recurringWindow.toJson();
    }
    return _json;
  }
}

/// The authentication information for accessing the master endpoint.
/// Authentication can be done using HTTP basic auth or using client
/// certificates.
class MasterAuth {
  /// [Output only] Base64-encoded public certificate used by clients to
  /// authenticate to the cluster endpoint.
  core.String clientCertificate;

  /// Configuration for client certificate authentication on the cluster. For
  /// clusters before v1.12, if no configuration is specified, a client
  /// certificate is issued.
  ClientCertificateConfig clientCertificateConfig;

  /// [Output only] Base64-encoded private key used by clients to authenticate
  /// to the cluster endpoint.
  core.String clientKey;

  /// [Output only] Base64-encoded public certificate that is the root of trust
  /// for the cluster.
  core.String clusterCaCertificate;

  /// The password to use for HTTP basic authentication to the master endpoint.
  /// Because the master endpoint is open to the Internet, you should create a
  /// strong password. If a password is provided for cluster creation, username
  /// must be non-empty. Warning: basic authentication is deprecated, and will
  /// be removed in GKE control plane versions 1.19 and newer. For a list of
  /// recommended authentication methods, see:
  /// https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  core.String password;

  /// The username to use for HTTP basic authentication to the master endpoint.
  /// For clusters v1.6.0 and later, basic authentication can be disabled by
  /// leaving username unspecified (or setting it to the empty string). Warning:
  /// basic authentication is deprecated, and will be removed in GKE control
  /// plane versions 1.19 and newer. For a list of recommended authentication
  /// methods, see:
  /// https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  core.String username;

  MasterAuth();

  MasterAuth.fromJson(core.Map _json) {
    if (_json.containsKey('clientCertificate')) {
      clientCertificate = _json['clientCertificate'];
    }
    if (_json.containsKey('clientCertificateConfig')) {
      clientCertificateConfig =
          ClientCertificateConfig.fromJson(_json['clientCertificateConfig']);
    }
    if (_json.containsKey('clientKey')) {
      clientKey = _json['clientKey'];
    }
    if (_json.containsKey('clusterCaCertificate')) {
      clusterCaCertificate = _json['clusterCaCertificate'];
    }
    if (_json.containsKey('password')) {
      password = _json['password'];
    }
    if (_json.containsKey('username')) {
      username = _json['username'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clientCertificate != null) {
      _json['clientCertificate'] = clientCertificate;
    }
    if (clientCertificateConfig != null) {
      _json['clientCertificateConfig'] = clientCertificateConfig.toJson();
    }
    if (clientKey != null) {
      _json['clientKey'] = clientKey;
    }
    if (clusterCaCertificate != null) {
      _json['clusterCaCertificate'] = clusterCaCertificate;
    }
    if (password != null) {
      _json['password'] = password;
    }
    if (username != null) {
      _json['username'] = username;
    }
    return _json;
  }
}

/// Configuration options for the master authorized networks feature. Enabled
/// master authorized networks will disallow all external traffic to access
/// Kubernetes master through HTTPS except traffic from the given CIDR blocks,
/// Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfig {
  /// cidr_blocks define up to 50 external networks that could access Kubernetes
  /// master through HTTPS.
  core.List<CidrBlock> cidrBlocks;

  /// Whether or not master authorized networks is enabled.
  core.bool enabled;

  MasterAuthorizedNetworksConfig();

  MasterAuthorizedNetworksConfig.fromJson(core.Map _json) {
    if (_json.containsKey('cidrBlocks')) {
      cidrBlocks = (_json['cidrBlocks'] as core.List)
          .map<CidrBlock>((value) => CidrBlock.fromJson(value))
          .toList();
    }
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (cidrBlocks != null) {
      _json['cidrBlocks'] = cidrBlocks.map((value) => value.toJson()).toList();
    }
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    return _json;
  }
}

/// Constraints applied to pods.
class MaxPodsConstraint {
  /// Constraint enforced on the max num of pods per node.
  core.String maxPodsPerNode;

  MaxPodsConstraint();

  MaxPodsConstraint.fromJson(core.Map _json) {
    if (_json.containsKey('maxPodsPerNode')) {
      maxPodsPerNode = _json['maxPodsPerNode'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (maxPodsPerNode != null) {
      _json['maxPodsPerNode'] = maxPodsPerNode;
    }
    return _json;
  }
}

/// Progress metric is (string, int|float|string) pair.
class Metric {
  /// For metrics with floating point value.
  core.double doubleValue;

  /// For metrics with integer value.
  core.String intValue;

  /// Required. Metric name, e.g., "nodes total", "percent done".
  core.String name;

  /// For metrics with custom values (ratios, visual progress, etc.).
  core.String stringValue;

  Metric();

  Metric.fromJson(core.Map _json) {
    if (_json.containsKey('doubleValue')) {
      doubleValue = _json['doubleValue'].toDouble();
    }
    if (_json.containsKey('intValue')) {
      intValue = _json['intValue'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('stringValue')) {
      stringValue = _json['stringValue'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (doubleValue != null) {
      _json['doubleValue'] = doubleValue;
    }
    if (intValue != null) {
      _json['intValue'] = intValue;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (stringValue != null) {
      _json['stringValue'] = stringValue;
    }
    return _json;
  }
}

/// NetworkConfig reports the relative names of network & subnetwork.
class NetworkConfig {
  /// Whether the cluster disables default in-node sNAT rules. In-node sNAT
  /// rules will be disabled when default_snat_status is disabled. When disabled
  /// is set to false, default IP masquerade rules will be applied to the nodes
  /// to prevent sNAT on cluster internal traffic.
  DefaultSnatStatus defaultSnatStatus;

  /// Whether Intra-node visibility is enabled for this cluster. This makes same
  /// node pod to pod traffic visible for VPC network.
  core.bool enableIntraNodeVisibility;

  /// Output only. The relative name of the Google Compute Engine
  /// network(https://cloud.google.com/compute/docs/networks-and-firewalls#networks)
  /// to which the cluster is connected. Example:
  /// projects/my-project/global/networks/my-network
  core.String network;

  /// Output only. The relative name of the Google Compute Engine
  /// [subnetwork](https://cloud.google.com/compute/docs/vpc) to which the
  /// cluster is connected. Example:
  /// projects/my-project/regions/us-central1/subnetworks/my-subnet
  core.String subnetwork;

  NetworkConfig();

  NetworkConfig.fromJson(core.Map _json) {
    if (_json.containsKey('defaultSnatStatus')) {
      defaultSnatStatus =
          DefaultSnatStatus.fromJson(_json['defaultSnatStatus']);
    }
    if (_json.containsKey('enableIntraNodeVisibility')) {
      enableIntraNodeVisibility = _json['enableIntraNodeVisibility'];
    }
    if (_json.containsKey('network')) {
      network = _json['network'];
    }
    if (_json.containsKey('subnetwork')) {
      subnetwork = _json['subnetwork'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (defaultSnatStatus != null) {
      _json['defaultSnatStatus'] = defaultSnatStatus.toJson();
    }
    if (enableIntraNodeVisibility != null) {
      _json['enableIntraNodeVisibility'] = enableIntraNodeVisibility;
    }
    if (network != null) {
      _json['network'] = network;
    }
    if (subnetwork != null) {
      _json['subnetwork'] = subnetwork;
    }
    return _json;
  }
}

/// Configuration options for the NetworkPolicy feature.
/// https://kubernetes.io/docs/concepts/services-networking/networkpolicies/
class NetworkPolicy {
  /// Whether network policy is enabled on the cluster.
  core.bool enabled;

  /// The selected network policy provider.
  /// Possible string values are:
  /// - "PROVIDER_UNSPECIFIED" : Not set
  /// - "CALICO" : Tigera (Calico Felix).
  core.String provider;

  NetworkPolicy();

  NetworkPolicy.fromJson(core.Map _json) {
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'];
    }
    if (_json.containsKey('provider')) {
      provider = _json['provider'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    if (provider != null) {
      _json['provider'] = provider;
    }
    return _json;
  }
}

/// Configuration for NetworkPolicy. This only tracks whether the addon is
/// enabled or not on the Master, it does not track whether network policy is
/// enabled for the nodes.
class NetworkPolicyConfig {
  /// Whether NetworkPolicy is enabled for this cluster.
  core.bool disabled;

  NetworkPolicyConfig();

  NetworkPolicyConfig.fromJson(core.Map _json) {
    if (_json.containsKey('disabled')) {
      disabled = _json['disabled'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (disabled != null) {
      _json['disabled'] = disabled;
    }
    return _json;
  }
}

/// Parameters that describe the nodes in a cluster.
class NodeConfig {
  /// A list of hardware accelerators to be attached to each node. See
  /// https://cloud.google.com/compute/docs/gpus for more information about
  /// support for GPUs.
  core.List<AcceleratorConfig> accelerators;

  /// The Customer Managed Encryption Key used to encrypt the boot disk attached
  /// to each node in the node pool. This should be of the form
  /// projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME].
  /// For more information about protecting resources with Cloud KMS Keys please
  /// see:
  /// https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  core.String bootDiskKmsKey;

  /// Size of the disk attached to each node, specified in GB. The smallest
  /// allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  core.int diskSizeGb;

  /// Type of the disk attached to each node (e.g. 'pd-standard' or 'pd-ssd') If
  /// unspecified, the default disk type is 'pd-standard'
  core.String diskType;

  /// The image type to use for this node. Note that for a given image type, the
  /// latest version of it will be used.
  core.String imageType;

  /// The map of Kubernetes labels (key/value pairs) to be applied to each node.
  /// These will added in addition to any default label(s) that Kubernetes may
  /// apply to the node. In case of conflict in label keys, the applied set may
  /// differ depending on the Kubernetes version -- it's best to assume the
  /// behavior is undefined and conflicts should be avoided. For more
  /// information, including usage and the valid values, see:
  /// https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  core.Map<core.String, core.String> labels;

  /// The number of local SSD disks to be attached to the node. The limit for
  /// this value is dependent upon the maximum number of disks available on a
  /// machine per zone. See:
  /// https://cloud.google.com/compute/docs/disks/local-ssd for more
  /// information.
  core.int localSsdCount;

  /// The name of a Google Compute Engine [machine
  /// type](https://cloud.google.com/compute/docs/machine-types) If unspecified,
  /// the default machine type is `e2-medium`.
  core.String machineType;

  /// The metadata key/value pairs assigned to instances in the cluster. Keys
  /// must conform to the regexp `[a-zA-Z0-9-_]+` and be less than 128 bytes in
  /// length. These are reflected as part of a URL in the metadata server.
  /// Additionally, to avoid ambiguity, keys must not conflict with any other
  /// metadata keys for the project or be one of the reserved keys: -
  /// "cluster-location" - "cluster-name" - "cluster-uid" - "configure-sh" -
  /// "containerd-configure-sh" - "enable-os-login" - "gci-ensure-gke-docker" -
  /// "gci-metrics-enabled" - "gci-update-strategy" - "instance-template" -
  /// "kube-env" - "startup-script" - "user-data" - "disable-address-manager" -
  /// "windows-startup-script-ps1" - "common-psm1" - "k8s-node-setup-psm1" -
  /// "install-ssh-psm1" - "user-profile-psm1" - "serial-port-logging-enable"
  /// Values are free-form strings, and only have meaning as interpreted by the
  /// image running in the instance. The only restriction placed on them is that
  /// each value's size must be less than or equal to 32 KB. The total size of
  /// all keys and values must be less than 512 KB.
  core.Map<core.String, core.String> metadata;

  /// Minimum CPU platform to be used by this instance. The instance may be
  /// scheduled on the specified or newer CPU platform. Applicable values are
  /// the friendly names of CPU platforms, such as `minCpuPlatform: "Intel
  /// Haswell"` or `minCpuPlatform: "Intel Sandy Bridge"`. For more information,
  /// read [how to specify min CPU
  /// platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  core.String minCpuPlatform;

  /// Setting this field will assign instances of this pool to run on the
  /// specified node group. This is useful for running workloads on [sole tenant
  /// nodes](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes).
  core.String nodeGroup;

  /// The set of Google API scopes to be made available on all of the node VMs
  /// under the "default" service account. The following scopes are recommended,
  /// but not required, and by default are not included: *
  /// `https://www.googleapis.com/auth/compute` is required for mounting
  /// persistent storage on your nodes. *
  /// `https://www.googleapis.com/auth/devstorage.read_only` is required for
  /// communicating with **gcr.io** (the [Google Container
  /// Registry](https://cloud.google.com/container-registry/)). If unspecified,
  /// no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled,
  /// in which case their required scopes will be added.
  core.List<core.String> oauthScopes;

  /// Whether the nodes are created as preemptible VM instances. See:
  /// https://cloud.google.com/compute/docs/instances/preemptible for more
  /// information about preemptible VM instances.
  core.bool preemptible;

  /// The optional reservation affinity. Setting this field will apply the
  /// specified [Zonal Compute
  /// Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources)
  /// to this node pool.
  ReservationAffinity reservationAffinity;

  /// Sandbox configuration for this node.
  SandboxConfig sandboxConfig;

  /// The Google Cloud Platform Service Account to be used by the node VMs.
  /// Specify the email address of the Service Account; otherwise, if no Service
  /// Account is specified, the "default" service account is used.
  core.String serviceAccount;

  /// Shielded Instance options.
  ShieldedInstanceConfig shieldedInstanceConfig;

  /// The list of instance tags applied to all nodes. Tags are used to identify
  /// valid sources or targets for network firewalls and are specified by the
  /// client during cluster or node pool creation. Each tag within the list must
  /// comply with RFC1035.
  core.List<core.String> tags;

  /// List of kubernetes taints to be applied to each node. For more
  /// information, including usage and the valid values, see:
  /// https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/
  core.List<NodeTaint> taints;

  /// The workload metadata configuration for this node.
  WorkloadMetadataConfig workloadMetadataConfig;

  NodeConfig();

  NodeConfig.fromJson(core.Map _json) {
    if (_json.containsKey('accelerators')) {
      accelerators = (_json['accelerators'] as core.List)
          .map<AcceleratorConfig>((value) => AcceleratorConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey('bootDiskKmsKey')) {
      bootDiskKmsKey = _json['bootDiskKmsKey'];
    }
    if (_json.containsKey('diskSizeGb')) {
      diskSizeGb = _json['diskSizeGb'];
    }
    if (_json.containsKey('diskType')) {
      diskType = _json['diskType'];
    }
    if (_json.containsKey('imageType')) {
      imageType = _json['imageType'];
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey('localSsdCount')) {
      localSsdCount = _json['localSsdCount'];
    }
    if (_json.containsKey('machineType')) {
      machineType = _json['machineType'];
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey('minCpuPlatform')) {
      minCpuPlatform = _json['minCpuPlatform'];
    }
    if (_json.containsKey('nodeGroup')) {
      nodeGroup = _json['nodeGroup'];
    }
    if (_json.containsKey('oauthScopes')) {
      oauthScopes = (_json['oauthScopes'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('preemptible')) {
      preemptible = _json['preemptible'];
    }
    if (_json.containsKey('reservationAffinity')) {
      reservationAffinity =
          ReservationAffinity.fromJson(_json['reservationAffinity']);
    }
    if (_json.containsKey('sandboxConfig')) {
      sandboxConfig = SandboxConfig.fromJson(_json['sandboxConfig']);
    }
    if (_json.containsKey('serviceAccount')) {
      serviceAccount = _json['serviceAccount'];
    }
    if (_json.containsKey('shieldedInstanceConfig')) {
      shieldedInstanceConfig =
          ShieldedInstanceConfig.fromJson(_json['shieldedInstanceConfig']);
    }
    if (_json.containsKey('tags')) {
      tags = (_json['tags'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('taints')) {
      taints = (_json['taints'] as core.List)
          .map<NodeTaint>((value) => NodeTaint.fromJson(value))
          .toList();
    }
    if (_json.containsKey('workloadMetadataConfig')) {
      workloadMetadataConfig =
          WorkloadMetadataConfig.fromJson(_json['workloadMetadataConfig']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (accelerators != null) {
      _json['accelerators'] =
          accelerators.map((value) => value.toJson()).toList();
    }
    if (bootDiskKmsKey != null) {
      _json['bootDiskKmsKey'] = bootDiskKmsKey;
    }
    if (diskSizeGb != null) {
      _json['diskSizeGb'] = diskSizeGb;
    }
    if (diskType != null) {
      _json['diskType'] = diskType;
    }
    if (imageType != null) {
      _json['imageType'] = imageType;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (localSsdCount != null) {
      _json['localSsdCount'] = localSsdCount;
    }
    if (machineType != null) {
      _json['machineType'] = machineType;
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (minCpuPlatform != null) {
      _json['minCpuPlatform'] = minCpuPlatform;
    }
    if (nodeGroup != null) {
      _json['nodeGroup'] = nodeGroup;
    }
    if (oauthScopes != null) {
      _json['oauthScopes'] = oauthScopes;
    }
    if (preemptible != null) {
      _json['preemptible'] = preemptible;
    }
    if (reservationAffinity != null) {
      _json['reservationAffinity'] = reservationAffinity.toJson();
    }
    if (sandboxConfig != null) {
      _json['sandboxConfig'] = sandboxConfig.toJson();
    }
    if (serviceAccount != null) {
      _json['serviceAccount'] = serviceAccount;
    }
    if (shieldedInstanceConfig != null) {
      _json['shieldedInstanceConfig'] = shieldedInstanceConfig.toJson();
    }
    if (tags != null) {
      _json['tags'] = tags;
    }
    if (taints != null) {
      _json['taints'] = taints.map((value) => value.toJson()).toList();
    }
    if (workloadMetadataConfig != null) {
      _json['workloadMetadataConfig'] = workloadMetadataConfig.toJson();
    }
    return _json;
  }
}

/// NodeManagement defines the set of node management services turned on for the
/// node pool.
class NodeManagement {
  /// A flag that specifies whether the node auto-repair is enabled for the node
  /// pool. If enabled, the nodes in this node pool will be monitored and, if
  /// they fail health checks too many times, an automatic repair action will be
  /// triggered.
  core.bool autoRepair;

  /// A flag that specifies whether node auto-upgrade is enabled for the node
  /// pool. If enabled, node auto-upgrade helps keep the nodes in your node pool
  /// up to date with the latest release version of Kubernetes.
  core.bool autoUpgrade;

  /// Specifies the Auto Upgrade knobs for the node pool.
  AutoUpgradeOptions upgradeOptions;

  NodeManagement();

  NodeManagement.fromJson(core.Map _json) {
    if (_json.containsKey('autoRepair')) {
      autoRepair = _json['autoRepair'];
    }
    if (_json.containsKey('autoUpgrade')) {
      autoUpgrade = _json['autoUpgrade'];
    }
    if (_json.containsKey('upgradeOptions')) {
      upgradeOptions = AutoUpgradeOptions.fromJson(_json['upgradeOptions']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (autoRepair != null) {
      _json['autoRepair'] = autoRepair;
    }
    if (autoUpgrade != null) {
      _json['autoUpgrade'] = autoUpgrade;
    }
    if (upgradeOptions != null) {
      _json['upgradeOptions'] = upgradeOptions.toJson();
    }
    return _json;
  }
}

/// NodePool contains the name and configuration for a cluster's node pool. Node
/// pools are a set of nodes (i.e. VM's), with a common configuration and
/// specification, under the control of the cluster master. They may have a set
/// of Kubernetes labels applied to them, which may be used to reference them
/// during pod scheduling. They may also be resized up or down, to accommodate
/// the workload.
class NodePool {
  /// Autoscaler configuration for this NodePool. Autoscaler is enabled only if
  /// a valid configuration is present.
  NodePoolAutoscaling autoscaling;

  /// Which conditions caused the current node pool state.
  core.List<StatusCondition> conditions;

  /// The node configuration of the pool.
  NodeConfig config;

  /// The initial node count for the pool. You must ensure that your Compute
  /// Engine [resource quota](https://cloud.google.com/compute/quotas) is
  /// sufficient for this number of instances. You must also have available
  /// firewall and routes quota.
  core.int initialNodeCount;

  /// [Output only] The resource URLs of the [managed instance
  /// groups](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances)
  /// associated with this node pool.
  core.List<core.String> instanceGroupUrls;

  /// The list of Google Compute Engine
  /// [zones](https://cloud.google.com/compute/docs/zones#available) in which
  /// the NodePool's nodes should be located.
  core.List<core.String> locations;

  /// NodeManagement configuration for this NodePool.
  NodeManagement management;

  /// The constraint on the maximum number of pods that can be run
  /// simultaneously on a node in the node pool.
  MaxPodsConstraint maxPodsConstraint;

  /// The name of the node pool.
  core.String name;

  /// [Output only] The pod CIDR block size per node in this node pool.
  core.int podIpv4CidrSize;

  /// [Output only] Server-defined URL for the resource.
  core.String selfLink;

  /// [Output only] The status of the nodes in this pool instance.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Not set.
  /// - "PROVISIONING" : The PROVISIONING state indicates the node pool is being
  /// created.
  /// - "RUNNING" : The RUNNING state indicates the node pool has been created
  /// and is fully usable.
  /// - "RUNNING_WITH_ERROR" : The RUNNING_WITH_ERROR state indicates the node
  /// pool has been created and is partially usable. Some error state has
  /// occurred and some functionality may be impaired. Customer may need to
  /// reissue a request or trigger a new update.
  /// - "RECONCILING" : The RECONCILING state indicates that some work is
  /// actively being done on the node pool, such as upgrading node software.
  /// Details can be found in the `statusMessage` field.
  /// - "STOPPING" : The STOPPING state indicates the node pool is being
  /// deleted.
  /// - "ERROR" : The ERROR state indicates the node pool may be unusable.
  /// Details can be found in the `statusMessage` field.
  core.String status;

  /// [Output only] Additional information about the current status of this node
  /// pool instance, if available.
  core.String statusMessage;

  /// Upgrade settings control disruption and speed of the upgrade.
  UpgradeSettings upgradeSettings;

  /// The version of the Kubernetes of this node.
  core.String version;

  NodePool();

  NodePool.fromJson(core.Map _json) {
    if (_json.containsKey('autoscaling')) {
      autoscaling = NodePoolAutoscaling.fromJson(_json['autoscaling']);
    }
    if (_json.containsKey('conditions')) {
      conditions = (_json['conditions'] as core.List)
          .map<StatusCondition>((value) => StatusCondition.fromJson(value))
          .toList();
    }
    if (_json.containsKey('config')) {
      config = NodeConfig.fromJson(_json['config']);
    }
    if (_json.containsKey('initialNodeCount')) {
      initialNodeCount = _json['initialNodeCount'];
    }
    if (_json.containsKey('instanceGroupUrls')) {
      instanceGroupUrls =
          (_json['instanceGroupUrls'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('locations')) {
      locations = (_json['locations'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('management')) {
      management = NodeManagement.fromJson(_json['management']);
    }
    if (_json.containsKey('maxPodsConstraint')) {
      maxPodsConstraint =
          MaxPodsConstraint.fromJson(_json['maxPodsConstraint']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('podIpv4CidrSize')) {
      podIpv4CidrSize = _json['podIpv4CidrSize'];
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'];
    }
    if (_json.containsKey('status')) {
      status = _json['status'];
    }
    if (_json.containsKey('statusMessage')) {
      statusMessage = _json['statusMessage'];
    }
    if (_json.containsKey('upgradeSettings')) {
      upgradeSettings = UpgradeSettings.fromJson(_json['upgradeSettings']);
    }
    if (_json.containsKey('version')) {
      version = _json['version'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (autoscaling != null) {
      _json['autoscaling'] = autoscaling.toJson();
    }
    if (conditions != null) {
      _json['conditions'] = conditions.map((value) => value.toJson()).toList();
    }
    if (config != null) {
      _json['config'] = config.toJson();
    }
    if (initialNodeCount != null) {
      _json['initialNodeCount'] = initialNodeCount;
    }
    if (instanceGroupUrls != null) {
      _json['instanceGroupUrls'] = instanceGroupUrls;
    }
    if (locations != null) {
      _json['locations'] = locations;
    }
    if (management != null) {
      _json['management'] = management.toJson();
    }
    if (maxPodsConstraint != null) {
      _json['maxPodsConstraint'] = maxPodsConstraint.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (podIpv4CidrSize != null) {
      _json['podIpv4CidrSize'] = podIpv4CidrSize;
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (statusMessage != null) {
      _json['statusMessage'] = statusMessage;
    }
    if (upgradeSettings != null) {
      _json['upgradeSettings'] = upgradeSettings.toJson();
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// NodePoolAutoscaling contains information required by cluster autoscaler to
/// adjust the size of the node pool to the current cluster usage.
class NodePoolAutoscaling {
  /// Can this node pool be deleted automatically.
  core.bool autoprovisioned;

  /// Is autoscaling enabled for this node pool.
  core.bool enabled;

  /// Maximum number of nodes in the NodePool. Must be >= min_node_count. There
  /// has to enough quota to scale up the cluster.
  core.int maxNodeCount;

  /// Minimum number of nodes in the NodePool. Must be >= 1 and <=
  /// max_node_count.
  core.int minNodeCount;

  NodePoolAutoscaling();

  NodePoolAutoscaling.fromJson(core.Map _json) {
    if (_json.containsKey('autoprovisioned')) {
      autoprovisioned = _json['autoprovisioned'];
    }
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'];
    }
    if (_json.containsKey('maxNodeCount')) {
      maxNodeCount = _json['maxNodeCount'];
    }
    if (_json.containsKey('minNodeCount')) {
      minNodeCount = _json['minNodeCount'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (autoprovisioned != null) {
      _json['autoprovisioned'] = autoprovisioned;
    }
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    if (maxNodeCount != null) {
      _json['maxNodeCount'] = maxNodeCount;
    }
    if (minNodeCount != null) {
      _json['minNodeCount'] = minNodeCount;
    }
    return _json;
  }
}

/// Kubernetes taint is comprised of three fields: key, value, and effect.
/// Effect can only be one of three types: NoSchedule, PreferNoSchedule or
/// NoExecute. See
/// [here](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration)
/// for more information, including usage and the valid values.
class NodeTaint {
  /// Effect for taint.
  /// Possible string values are:
  /// - "EFFECT_UNSPECIFIED" : Not set
  /// - "NO_SCHEDULE" : NoSchedule
  /// - "PREFER_NO_SCHEDULE" : PreferNoSchedule
  /// - "NO_EXECUTE" : NoExecute
  core.String effect;

  /// Key for taint.
  core.String key;

  /// Value for taint.
  core.String value;

  NodeTaint();

  NodeTaint.fromJson(core.Map _json) {
    if (_json.containsKey('effect')) {
      effect = _json['effect'];
    }
    if (_json.containsKey('key')) {
      key = _json['key'];
    }
    if (_json.containsKey('value')) {
      value = _json['value'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (effect != null) {
      _json['effect'] = effect;
    }
    if (key != null) {
      _json['key'] = key;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// This operation resource represents operations that may have happened or are
/// happening on the cluster. All fields are output only.
class Operation {
  /// Which conditions caused the current cluster state.
  core.List<StatusCondition> clusterConditions;

  /// Detailed operation progress, if available.
  core.String detail;

  /// [Output only] The time the operation completed, in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  core.String endTime;

  /// [Output only] The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available)
  /// or
  /// [region](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available)
  /// in which the cluster resides.
  core.String location;

  /// The server-assigned ID for the operation.
  core.String name;

  /// Which conditions caused the current node pool state.
  core.List<StatusCondition> nodepoolConditions;

  /// The operation type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Not set.
  /// - "CREATE_CLUSTER" : Cluster create.
  /// - "DELETE_CLUSTER" : Cluster delete.
  /// - "UPGRADE_MASTER" : A master upgrade.
  /// - "UPGRADE_NODES" : A node upgrade.
  /// - "REPAIR_CLUSTER" : Cluster repair.
  /// - "UPDATE_CLUSTER" : Cluster update.
  /// - "CREATE_NODE_POOL" : Node pool create.
  /// - "DELETE_NODE_POOL" : Node pool delete.
  /// - "SET_NODE_POOL_MANAGEMENT" : Set node pool management.
  /// - "AUTO_REPAIR_NODES" : Automatic node pool repair.
  /// - "AUTO_UPGRADE_NODES" : Automatic node upgrade.
  /// - "SET_LABELS" : Set labels.
  /// - "SET_MASTER_AUTH" : Set/generate master auth materials
  /// - "SET_NODE_POOL_SIZE" : Set node pool size.
  /// - "SET_NETWORK_POLICY" : Updates network policy for a cluster.
  /// - "SET_MAINTENANCE_POLICY" : Set the maintenance policy.
  core.String operationType;

  /// Output only. [Output only] Progress information for an operation.
  OperationProgress progress;

  /// Server-defined URL for the resource.
  core.String selfLink;

  /// [Output only] The time the operation started, in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  core.String startTime;

  /// The current status of the operation.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Not set.
  /// - "PENDING" : The operation has been created.
  /// - "RUNNING" : The operation is currently running.
  /// - "DONE" : The operation is done, either cancelled or completed.
  /// - "ABORTING" : The operation is aborting.
  core.String status;

  /// Output only. If an error has occurred, a textual description of the error.
  core.String statusMessage;

  /// Server-defined URL for the target of the operation.
  core.String targetLink;

  /// The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// operation is taking place. This field is deprecated, use location instead.
  core.String zone;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('clusterConditions')) {
      clusterConditions = (_json['clusterConditions'] as core.List)
          .map<StatusCondition>((value) => StatusCondition.fromJson(value))
          .toList();
    }
    if (_json.containsKey('detail')) {
      detail = _json['detail'];
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'];
    }
    if (_json.containsKey('location')) {
      location = _json['location'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('nodepoolConditions')) {
      nodepoolConditions = (_json['nodepoolConditions'] as core.List)
          .map<StatusCondition>((value) => StatusCondition.fromJson(value))
          .toList();
    }
    if (_json.containsKey('operationType')) {
      operationType = _json['operationType'];
    }
    if (_json.containsKey('progress')) {
      progress = OperationProgress.fromJson(_json['progress']);
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'];
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'];
    }
    if (_json.containsKey('status')) {
      status = _json['status'];
    }
    if (_json.containsKey('statusMessage')) {
      statusMessage = _json['statusMessage'];
    }
    if (_json.containsKey('targetLink')) {
      targetLink = _json['targetLink'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterConditions != null) {
      _json['clusterConditions'] =
          clusterConditions.map((value) => value.toJson()).toList();
    }
    if (detail != null) {
      _json['detail'] = detail;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (nodepoolConditions != null) {
      _json['nodepoolConditions'] =
          nodepoolConditions.map((value) => value.toJson()).toList();
    }
    if (operationType != null) {
      _json['operationType'] = operationType;
    }
    if (progress != null) {
      _json['progress'] = progress.toJson();
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (statusMessage != null) {
      _json['statusMessage'] = statusMessage;
    }
    if (targetLink != null) {
      _json['targetLink'] = targetLink;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// Information about operation (or operation stage) progress.
class OperationProgress {
  /// Progress metric bundle, for example: metrics: [{name: "nodes done",
  /// int_value: 15}, {name: "nodes total", int_value: 32}] or metrics: [{name:
  /// "progress", double_value: 0.56}, {name: "progress scale", double_value:
  /// 1.0}]
  core.List<Metric> metrics;

  /// A non-parameterized string describing an operation stage. Unset for
  /// single-stage operations.
  core.String name;

  /// Substages of an operation or a stage.
  core.List<OperationProgress> stages;

  /// Status of an operation stage. Unset for single-stage operations.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Not set.
  /// - "PENDING" : The operation has been created.
  /// - "RUNNING" : The operation is currently running.
  /// - "DONE" : The operation is done, either cancelled or completed.
  /// - "ABORTING" : The operation is aborting.
  core.String status;

  OperationProgress();

  OperationProgress.fromJson(core.Map _json) {
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<Metric>((value) => Metric.fromJson(value))
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('stages')) {
      stages = (_json['stages'] as core.List)
          .map<OperationProgress>((value) => OperationProgress.fromJson(value))
          .toList();
    }
    if (_json.containsKey('status')) {
      status = _json['status'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (metrics != null) {
      _json['metrics'] = metrics.map((value) => value.toJson()).toList();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (stages != null) {
      _json['stages'] = stages.map((value) => value.toJson()).toList();
    }
    if (status != null) {
      _json['status'] = status;
    }
    return _json;
  }
}

/// Configuration options for private clusters.
class PrivateClusterConfig {
  /// Whether the master's internal IP address is used as the cluster endpoint.
  core.bool enablePrivateEndpoint;

  /// Whether nodes have internal IP addresses only. If enabled, all nodes are
  /// given only RFC 1918 private addresses and communicate with the master via
  /// private networking.
  core.bool enablePrivateNodes;

  /// Controls master global access settings.
  PrivateClusterMasterGlobalAccessConfig masterGlobalAccessConfig;

  /// The IP range in CIDR notation to use for the hosted master network. This
  /// range will be used for assigning internal IP addresses to the master or
  /// set of masters, as well as the ILB VIP. This range must not overlap with
  /// any other ranges in use within the cluster's network.
  core.String masterIpv4CidrBlock;

  /// Output only. The peering name in the customer VPC used by this cluster.
  core.String peeringName;

  /// Output only. The internal IP address of this cluster's master endpoint.
  core.String privateEndpoint;

  /// Output only. The external IP address of this cluster's master endpoint.
  core.String publicEndpoint;

  PrivateClusterConfig();

  PrivateClusterConfig.fromJson(core.Map _json) {
    if (_json.containsKey('enablePrivateEndpoint')) {
      enablePrivateEndpoint = _json['enablePrivateEndpoint'];
    }
    if (_json.containsKey('enablePrivateNodes')) {
      enablePrivateNodes = _json['enablePrivateNodes'];
    }
    if (_json.containsKey('masterGlobalAccessConfig')) {
      masterGlobalAccessConfig =
          PrivateClusterMasterGlobalAccessConfig.fromJson(
              _json['masterGlobalAccessConfig']);
    }
    if (_json.containsKey('masterIpv4CidrBlock')) {
      masterIpv4CidrBlock = _json['masterIpv4CidrBlock'];
    }
    if (_json.containsKey('peeringName')) {
      peeringName = _json['peeringName'];
    }
    if (_json.containsKey('privateEndpoint')) {
      privateEndpoint = _json['privateEndpoint'];
    }
    if (_json.containsKey('publicEndpoint')) {
      publicEndpoint = _json['publicEndpoint'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (enablePrivateEndpoint != null) {
      _json['enablePrivateEndpoint'] = enablePrivateEndpoint;
    }
    if (enablePrivateNodes != null) {
      _json['enablePrivateNodes'] = enablePrivateNodes;
    }
    if (masterGlobalAccessConfig != null) {
      _json['masterGlobalAccessConfig'] = masterGlobalAccessConfig.toJson();
    }
    if (masterIpv4CidrBlock != null) {
      _json['masterIpv4CidrBlock'] = masterIpv4CidrBlock;
    }
    if (peeringName != null) {
      _json['peeringName'] = peeringName;
    }
    if (privateEndpoint != null) {
      _json['privateEndpoint'] = privateEndpoint;
    }
    if (publicEndpoint != null) {
      _json['publicEndpoint'] = publicEndpoint;
    }
    return _json;
  }
}

/// Configuration for controlling master global access settings.
class PrivateClusterMasterGlobalAccessConfig {
  /// Whenever master is accessible globally or not.
  core.bool enabled;

  PrivateClusterMasterGlobalAccessConfig();

  PrivateClusterMasterGlobalAccessConfig.fromJson(core.Map _json) {
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    return _json;
  }
}

/// Represents an arbitrary window of time that recurs.
class RecurringTimeWindow {
  /// An RRULE (https://tools.ietf.org/html/rfc5545#section-3.8.5.3) for how
  /// this window reccurs. They go on for the span of time between the start and
  /// end time. For example, to have something repeat every weekday, you'd use:
  /// `FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR` To repeat some window daily (equivalent
  /// to the DailyMaintenanceWindow): `FREQ=DAILY` For the first weekend of
  /// every month: `FREQ=MONTHLY;BYSETPOS=1;BYDAY=SA,SU` This specifies how
  /// frequently the window starts. Eg, if you wanted to have a 9-5 UTC-4 window
  /// every weekday, you'd use something like: ``` start time =
  /// 2019-01-01T09:00:00-0400 end time = 2019-01-01T17:00:00-0400 recurrence =
  /// FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR ``` Windows can span multiple days. Eg,
  /// to make the window encompass every weekend from midnight Saturday till the
  /// last minute of Sunday UTC: ``` start time = 2019-01-05T00:00:00Z end time
  /// = 2019-01-07T23:59:00Z recurrence = FREQ=WEEKLY;BYDAY=SA ``` Note the
  /// start and end time's specific dates are largely arbitrary except to
  /// specify duration of the window and when it first starts. The FREQ values
  /// of HOURLY, MINUTELY, and SECONDLY are not supported.
  core.String recurrence;

  /// The window of the first recurrence.
  TimeWindow window;

  RecurringTimeWindow();

  RecurringTimeWindow.fromJson(core.Map _json) {
    if (_json.containsKey('recurrence')) {
      recurrence = _json['recurrence'];
    }
    if (_json.containsKey('window')) {
      window = TimeWindow.fromJson(_json['window']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (recurrence != null) {
      _json['recurrence'] = recurrence;
    }
    if (window != null) {
      _json['window'] = window.toJson();
    }
    return _json;
  }
}

/// ReleaseChannel indicates which release channel a cluster is subscribed to.
/// Release channels are arranged in order of risk. When a cluster is subscribed
/// to a release channel, Google maintains both the master version and the node
/// version. Node auto-upgrade defaults to true and cannot be disabled.
class ReleaseChannel {
  /// channel specifies which release channel the cluster is subscribed to.
  /// Possible string values are:
  /// - "UNSPECIFIED" : No channel specified.
  /// - "RAPID" : RAPID channel is offered on an early access basis for
  /// customers who want to test new releases. WARNING: Versions available in
  /// the RAPID Channel may be subject to unresolved issues with no known
  /// workaround and are not subject to any SLAs.
  /// - "REGULAR" : Clusters subscribed to REGULAR receive versions that are
  /// considered GA quality. REGULAR is intended for production users who want
  /// to take advantage of new features.
  /// - "STABLE" : Clusters subscribed to STABLE receive versions that are known
  /// to be stable and reliable in production.
  core.String channel;

  ReleaseChannel();

  ReleaseChannel.fromJson(core.Map _json) {
    if (_json.containsKey('channel')) {
      channel = _json['channel'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (channel != null) {
      _json['channel'] = channel;
    }
    return _json;
  }
}

/// ReleaseChannelConfig exposes configuration for a release channel.
class ReleaseChannelConfig {
  /// The release channel this configuration applies to.
  /// Possible string values are:
  /// - "UNSPECIFIED" : No channel specified.
  /// - "RAPID" : RAPID channel is offered on an early access basis for
  /// customers who want to test new releases. WARNING: Versions available in
  /// the RAPID Channel may be subject to unresolved issues with no known
  /// workaround and are not subject to any SLAs.
  /// - "REGULAR" : Clusters subscribed to REGULAR receive versions that are
  /// considered GA quality. REGULAR is intended for production users who want
  /// to take advantage of new features.
  /// - "STABLE" : Clusters subscribed to STABLE receive versions that are known
  /// to be stable and reliable in production.
  core.String channel;

  /// The default version for newly created clusters on the channel.
  core.String defaultVersion;

  /// List of valid versions for the channel.
  core.List<core.String> validVersions;

  ReleaseChannelConfig();

  ReleaseChannelConfig.fromJson(core.Map _json) {
    if (_json.containsKey('channel')) {
      channel = _json['channel'];
    }
    if (_json.containsKey('defaultVersion')) {
      defaultVersion = _json['defaultVersion'];
    }
    if (_json.containsKey('validVersions')) {
      validVersions = (_json['validVersions'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (channel != null) {
      _json['channel'] = channel;
    }
    if (defaultVersion != null) {
      _json['defaultVersion'] = defaultVersion;
    }
    if (validVersions != null) {
      _json['validVersions'] = validVersions;
    }
    return _json;
  }
}

/// [ReservationAffinity](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources)
/// is the configuration of desired reservation which instances could take
/// capacity from.
class ReservationAffinity {
  /// Corresponds to the type of reservation consumption.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Default value. This should not be used.
  /// - "NO_RESERVATION" : Do not consume from any reserved capacity.
  /// - "ANY_RESERVATION" : Consume any reservation available.
  /// - "SPECIFIC_RESERVATION" : Must consume from a specific reservation. Must
  /// specify key value fields for specifying the reservations.
  core.String consumeReservationType;

  /// Corresponds to the label key of a reservation resource. To target a
  /// SPECIFIC_RESERVATION by name, specify "googleapis.com/reservation-name" as
  /// the key and specify the name of your reservation as its value.
  core.String key;

  /// Corresponds to the label value(s) of reservation resource(s).
  core.List<core.String> values;

  ReservationAffinity();

  ReservationAffinity.fromJson(core.Map _json) {
    if (_json.containsKey('consumeReservationType')) {
      consumeReservationType = _json['consumeReservationType'];
    }
    if (_json.containsKey('key')) {
      key = _json['key'];
    }
    if (_json.containsKey('values')) {
      values = (_json['values'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (consumeReservationType != null) {
      _json['consumeReservationType'] = consumeReservationType;
    }
    if (key != null) {
      _json['key'] = key;
    }
    if (values != null) {
      _json['values'] = values;
    }
    return _json;
  }
}

/// Contains information about amount of some resource in the cluster. For
/// memory, value should be in GB.
class ResourceLimit {
  /// Maximum amount of the resource in the cluster.
  core.String maximum;

  /// Minimum amount of the resource in the cluster.
  core.String minimum;

  /// Resource name "cpu", "memory" or gpu-specific string.
  core.String resourceType;

  ResourceLimit();

  ResourceLimit.fromJson(core.Map _json) {
    if (_json.containsKey('maximum')) {
      maximum = _json['maximum'];
    }
    if (_json.containsKey('minimum')) {
      minimum = _json['minimum'];
    }
    if (_json.containsKey('resourceType')) {
      resourceType = _json['resourceType'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (maximum != null) {
      _json['maximum'] = maximum;
    }
    if (minimum != null) {
      _json['minimum'] = minimum;
    }
    if (resourceType != null) {
      _json['resourceType'] = resourceType;
    }
    return _json;
  }
}

/// Configuration for exporting cluster resource usages.
class ResourceUsageExportConfig {
  /// Configuration to use BigQuery as usage export destination.
  BigQueryDestination bigqueryDestination;

  /// Configuration to enable resource consumption metering.
  ConsumptionMeteringConfig consumptionMeteringConfig;

  /// Whether to enable network egress metering for this cluster. If enabled, a
  /// daemonset will be created in the cluster to meter network egress traffic.
  core.bool enableNetworkEgressMetering;

  ResourceUsageExportConfig();

  ResourceUsageExportConfig.fromJson(core.Map _json) {
    if (_json.containsKey('bigqueryDestination')) {
      bigqueryDestination =
          BigQueryDestination.fromJson(_json['bigqueryDestination']);
    }
    if (_json.containsKey('consumptionMeteringConfig')) {
      consumptionMeteringConfig = ConsumptionMeteringConfig.fromJson(
          _json['consumptionMeteringConfig']);
    }
    if (_json.containsKey('enableNetworkEgressMetering')) {
      enableNetworkEgressMetering = _json['enableNetworkEgressMetering'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (bigqueryDestination != null) {
      _json['bigqueryDestination'] = bigqueryDestination.toJson();
    }
    if (consumptionMeteringConfig != null) {
      _json['consumptionMeteringConfig'] = consumptionMeteringConfig.toJson();
    }
    if (enableNetworkEgressMetering != null) {
      _json['enableNetworkEgressMetering'] = enableNetworkEgressMetering;
    }
    return _json;
  }
}

/// RollbackNodePoolUpgradeRequest rollbacks the previously Aborted or Failed
/// NodePool upgrade. This will be an no-op if the last upgrade successfully
/// completed.
class RollbackNodePoolUpgradeRequest {
  /// Deprecated. The name of the cluster to rollback. This field has been
  /// deprecated and replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster, node pool id) of the node poll to
  /// rollback upgrade. Specified in the format `projects / * /locations / *
  /// /clusters / * /nodePools / * `.
  core.String name;

  /// Deprecated. The name of the node pool to rollback. This field has been
  /// deprecated and replaced by the name field.
  core.String nodePoolId;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840). This field has
  /// been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  RollbackNodePoolUpgradeRequest();

  RollbackNodePoolUpgradeRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('nodePoolId')) {
      nodePoolId = _json['nodePoolId'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (nodePoolId != null) {
      _json['nodePoolId'] = nodePoolId;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// SandboxConfig contains configurations of the sandbox to use for the node.
class SandboxConfig {
  /// Type of the sandbox to use for the node.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Default value. This should not be used.
  /// - "GVISOR" : Run sandbox using gvisor.
  core.String type;

  SandboxConfig();

  SandboxConfig.fromJson(core.Map _json) {
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Kubernetes Engine service configuration.
class ServerConfig {
  /// List of release channel configurations.
  core.List<ReleaseChannelConfig> channels;

  /// Version of Kubernetes the service deploys by default.
  core.String defaultClusterVersion;

  /// Default image type.
  core.String defaultImageType;

  /// List of valid image types.
  core.List<core.String> validImageTypes;

  /// List of valid master versions, in descending order.
  core.List<core.String> validMasterVersions;

  /// List of valid node upgrade target versions, in descending order.
  core.List<core.String> validNodeVersions;

  ServerConfig();

  ServerConfig.fromJson(core.Map _json) {
    if (_json.containsKey('channels')) {
      channels = (_json['channels'] as core.List)
          .map<ReleaseChannelConfig>(
              (value) => ReleaseChannelConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey('defaultClusterVersion')) {
      defaultClusterVersion = _json['defaultClusterVersion'];
    }
    if (_json.containsKey('defaultImageType')) {
      defaultImageType = _json['defaultImageType'];
    }
    if (_json.containsKey('validImageTypes')) {
      validImageTypes =
          (_json['validImageTypes'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('validMasterVersions')) {
      validMasterVersions =
          (_json['validMasterVersions'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('validNodeVersions')) {
      validNodeVersions =
          (_json['validNodeVersions'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (channels != null) {
      _json['channels'] = channels.map((value) => value.toJson()).toList();
    }
    if (defaultClusterVersion != null) {
      _json['defaultClusterVersion'] = defaultClusterVersion;
    }
    if (defaultImageType != null) {
      _json['defaultImageType'] = defaultImageType;
    }
    if (validImageTypes != null) {
      _json['validImageTypes'] = validImageTypes;
    }
    if (validMasterVersions != null) {
      _json['validMasterVersions'] = validMasterVersions;
    }
    if (validNodeVersions != null) {
      _json['validNodeVersions'] = validNodeVersions;
    }
    return _json;
  }
}

/// SetAddonsConfigRequest sets the addons associated with the cluster.
class SetAddonsConfigRequest {
  /// Required. The desired configurations for the various addons available to
  /// run in the cluster.
  AddonsConfig addonsConfig;

  /// Deprecated. The name of the cluster to upgrade. This field has been
  /// deprecated and replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster) of the cluster to set addons.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840). This field has
  /// been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  SetAddonsConfigRequest();

  SetAddonsConfigRequest.fromJson(core.Map _json) {
    if (_json.containsKey('addonsConfig')) {
      addonsConfig = AddonsConfig.fromJson(_json['addonsConfig']);
    }
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (addonsConfig != null) {
      _json['addonsConfig'] = addonsConfig.toJson();
    }
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// SetLabelsRequest sets the Google Cloud Platform labels on a Google Container
/// Engine cluster, which will in turn set them for Google Compute Engine
/// resources used by that cluster
class SetLabelsRequest {
  /// Deprecated. The name of the cluster. This field has been deprecated and
  /// replaced by the name field.
  core.String clusterId;

  /// Required. The fingerprint of the previous set of labels for this resource,
  /// used to detect conflicts. The fingerprint is initially generated by
  /// Kubernetes Engine and changes after every request to modify or update
  /// labels. You must always provide an up-to-date fingerprint hash when
  /// updating or changing labels. Make a `get()` request to the resource to get
  /// the latest fingerprint.
  core.String labelFingerprint;

  /// The name (project, location, cluster id) of the cluster to set labels.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Required. The labels to set for that cluster.
  core.Map<core.String, core.String> resourceLabels;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  SetLabelsRequest();

  SetLabelsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('labelFingerprint')) {
      labelFingerprint = _json['labelFingerprint'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('resourceLabels')) {
      resourceLabels = (_json['resourceLabels'] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (labelFingerprint != null) {
      _json['labelFingerprint'] = labelFingerprint;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (resourceLabels != null) {
      _json['resourceLabels'] = resourceLabels;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// SetLegacyAbacRequest enables or disables the ABAC authorization mechanism
/// for a cluster.
class SetLegacyAbacRequest {
  /// Deprecated. The name of the cluster to update. This field has been
  /// deprecated and replaced by the name field.
  core.String clusterId;

  /// Required. Whether ABAC authorization will be enabled in the cluster.
  core.bool enabled;

  /// The name (project, location, cluster id) of the cluster to set legacy
  /// abac. Specified in the format `projects / * /locations / * /clusters / *
  /// `.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840). This field has
  /// been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  SetLegacyAbacRequest();

  SetLegacyAbacRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// SetLocationsRequest sets the locations of the cluster.
class SetLocationsRequest {
  /// Deprecated. The name of the cluster to upgrade. This field has been
  /// deprecated and replaced by the name field.
  core.String clusterId;

  /// Required. The desired list of Google Compute Engine
  /// [zones](https://cloud.google.com/compute/docs/zones#available) in which
  /// the cluster's nodes should be located. Changing the locations a cluster is
  /// in will result in nodes being either created or removed from the cluster,
  /// depending on whether locations are being added or removed. This list must
  /// always include the cluster's primary zone.
  core.List<core.String> locations;

  /// The name (project, location, cluster) of the cluster to set locations.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840). This field has
  /// been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  SetLocationsRequest();

  SetLocationsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('locations')) {
      locations = (_json['locations'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (locations != null) {
      _json['locations'] = locations;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// SetLoggingServiceRequest sets the logging service of a cluster.
class SetLoggingServiceRequest {
  /// Deprecated. The name of the cluster to upgrade. This field has been
  /// deprecated and replaced by the name field.
  core.String clusterId;

  /// Required. The logging service the cluster should use to write logs.
  /// Currently available options: * `logging.googleapis.com/kubernetes` - The
  /// Cloud Logging service with a Kubernetes-native resource model *
  /// `logging.googleapis.com` - The legacy Cloud Logging service (no longer
  /// available as of GKE 1.15). * `none` - no logs will be exported from the
  /// cluster. If left as an empty string,`logging.googleapis.com/kubernetes`
  /// will be used for GKE 1.14+ or `logging.googleapis.com` for earlier
  /// versions.
  core.String loggingService;

  /// The name (project, location, cluster) of the cluster to set logging.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840). This field has
  /// been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  SetLoggingServiceRequest();

  SetLoggingServiceRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('loggingService')) {
      loggingService = _json['loggingService'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (loggingService != null) {
      _json['loggingService'] = loggingService;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// SetMaintenancePolicyRequest sets the maintenance policy for a cluster.
class SetMaintenancePolicyRequest {
  /// Required. The name of the cluster to update.
  core.String clusterId;

  /// Required. The maintenance policy to be set for the cluster. An empty field
  /// clears the existing maintenance policy.
  MaintenancePolicy maintenancePolicy;

  /// The name (project, location, cluster id) of the cluster to set maintenance
  /// policy. Specified in the format `projects / * /locations / * /clusters / *
  /// `.
  core.String name;

  /// Required. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840).
  core.String projectId;

  /// Required. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides.
  core.String zone;

  SetMaintenancePolicyRequest();

  SetMaintenancePolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('maintenancePolicy')) {
      maintenancePolicy =
          MaintenancePolicy.fromJson(_json['maintenancePolicy']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (maintenancePolicy != null) {
      _json['maintenancePolicy'] = maintenancePolicy.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// SetMasterAuthRequest updates the admin password of a cluster.
class SetMasterAuthRequest {
  /// Required. The exact form of action to be taken on the master auth.
  /// Possible string values are:
  /// - "UNKNOWN" : Operation is unknown and will error out.
  /// - "SET_PASSWORD" : Set the password to a user generated value.
  /// - "GENERATE_PASSWORD" : Generate a new password and set it to that.
  /// - "SET_USERNAME" : Set the username. If an empty username is provided,
  /// basic authentication is disabled for the cluster. If a non-empty username
  /// is provided, basic authentication is enabled, with either a provided
  /// password or a generated one.
  core.String action;

  /// Deprecated. The name of the cluster to upgrade. This field has been
  /// deprecated and replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster) of the cluster to set auth.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840). This field has
  /// been deprecated and replaced by the name field.
  core.String projectId;

  /// Required. A description of the update.
  MasterAuth update;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  SetMasterAuthRequest();

  SetMasterAuthRequest.fromJson(core.Map _json) {
    if (_json.containsKey('action')) {
      action = _json['action'];
    }
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('update')) {
      update = MasterAuth.fromJson(_json['update']);
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (action != null) {
      _json['action'] = action;
    }
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (update != null) {
      _json['update'] = update.toJson();
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// SetMonitoringServiceRequest sets the monitoring service of a cluster.
class SetMonitoringServiceRequest {
  /// Deprecated. The name of the cluster to upgrade. This field has been
  /// deprecated and replaced by the name field.
  core.String clusterId;

  /// Required. The monitoring service the cluster should use to write metrics.
  /// Currently available options: * "monitoring.googleapis.com/kubernetes" -
  /// The Cloud Monitoring service with a Kubernetes-native resource model *
  /// `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no
  /// longer available as of GKE 1.15). * `none` - No metrics will be exported
  /// from the cluster. If left as an empty
  /// string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+
  /// or `monitoring.googleapis.com` for earlier versions.
  core.String monitoringService;

  /// The name (project, location, cluster) of the cluster to set monitoring.
  /// Specified in the format `projects / * /locations / * /clusters / * `.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840). This field has
  /// been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  SetMonitoringServiceRequest();

  SetMonitoringServiceRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('monitoringService')) {
      monitoringService = _json['monitoringService'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (monitoringService != null) {
      _json['monitoringService'] = monitoringService;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// SetNetworkPolicyRequest enables/disables network policy for a cluster.
class SetNetworkPolicyRequest {
  /// Deprecated. The name of the cluster. This field has been deprecated and
  /// replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster id) of the cluster to set networking
  /// policy. Specified in the format `projects / * /locations / * /clusters / *
  /// `.
  core.String name;

  /// Required. Configuration options for the NetworkPolicy feature.
  NetworkPolicy networkPolicy;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  SetNetworkPolicyRequest();

  SetNetworkPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('networkPolicy')) {
      networkPolicy = NetworkPolicy.fromJson(_json['networkPolicy']);
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (networkPolicy != null) {
      _json['networkPolicy'] = networkPolicy.toJson();
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// SetNodePoolAutoscalingRequest sets the autoscaler settings of a node pool.
class SetNodePoolAutoscalingRequest {
  /// Required. Autoscaling configuration for the node pool.
  NodePoolAutoscaling autoscaling;

  /// Deprecated. The name of the cluster to upgrade. This field has been
  /// deprecated and replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster, node pool) of the node pool to set
  /// autoscaler settings. Specified in the format `projects / * /locations / *
  /// /clusters / * /nodePools / * `.
  core.String name;

  /// Deprecated. The name of the node pool to upgrade. This field has been
  /// deprecated and replaced by the name field.
  core.String nodePoolId;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840). This field has
  /// been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  SetNodePoolAutoscalingRequest();

  SetNodePoolAutoscalingRequest.fromJson(core.Map _json) {
    if (_json.containsKey('autoscaling')) {
      autoscaling = NodePoolAutoscaling.fromJson(_json['autoscaling']);
    }
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('nodePoolId')) {
      nodePoolId = _json['nodePoolId'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (autoscaling != null) {
      _json['autoscaling'] = autoscaling.toJson();
    }
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (nodePoolId != null) {
      _json['nodePoolId'] = nodePoolId;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// SetNodePoolManagementRequest sets the node management properties of a node
/// pool.
class SetNodePoolManagementRequest {
  /// Deprecated. The name of the cluster to update. This field has been
  /// deprecated and replaced by the name field.
  core.String clusterId;

  /// Required. NodeManagement configuration for the node pool.
  NodeManagement management;

  /// The name (project, location, cluster, node pool id) of the node pool to
  /// set management properties. Specified in the format `projects / *
  /// /locations / * /clusters / * /nodePools / * `.
  core.String name;

  /// Deprecated. The name of the node pool to update. This field has been
  /// deprecated and replaced by the name field.
  core.String nodePoolId;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840). This field has
  /// been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  SetNodePoolManagementRequest();

  SetNodePoolManagementRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('management')) {
      management = NodeManagement.fromJson(_json['management']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('nodePoolId')) {
      nodePoolId = _json['nodePoolId'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (management != null) {
      _json['management'] = management.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (nodePoolId != null) {
      _json['nodePoolId'] = nodePoolId;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// SetNodePoolSizeRequest sets the size a node pool.
class SetNodePoolSizeRequest {
  /// Deprecated. The name of the cluster to update. This field has been
  /// deprecated and replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster, node pool id) of the node pool to
  /// set size. Specified in the format `projects / * /locations / * /clusters /
  /// * /nodePools / * `.
  core.String name;

  /// Required. The desired node count for the pool.
  core.int nodeCount;

  /// Deprecated. The name of the node pool to update. This field has been
  /// deprecated and replaced by the name field.
  core.String nodePoolId;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840). This field has
  /// been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  SetNodePoolSizeRequest();

  SetNodePoolSizeRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('nodeCount')) {
      nodeCount = _json['nodeCount'];
    }
    if (_json.containsKey('nodePoolId')) {
      nodePoolId = _json['nodePoolId'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (nodeCount != null) {
      _json['nodeCount'] = nodeCount;
    }
    if (nodePoolId != null) {
      _json['nodePoolId'] = nodePoolId;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// A set of Shielded Instance options.
class ShieldedInstanceConfig {
  /// Defines whether the instance has integrity monitoring enabled. Enables
  /// monitoring and attestation of the boot integrity of the instance. The
  /// attestation is performed against the integrity policy baseline. This
  /// baseline is initially derived from the implicitly trusted boot image when
  /// the instance is created.
  core.bool enableIntegrityMonitoring;

  /// Defines whether the instance has Secure Boot enabled. Secure Boot helps
  /// ensure that the system only runs authentic software by verifying the
  /// digital signature of all boot components, and halting the boot process if
  /// signature verification fails.
  core.bool enableSecureBoot;

  ShieldedInstanceConfig();

  ShieldedInstanceConfig.fromJson(core.Map _json) {
    if (_json.containsKey('enableIntegrityMonitoring')) {
      enableIntegrityMonitoring = _json['enableIntegrityMonitoring'];
    }
    if (_json.containsKey('enableSecureBoot')) {
      enableSecureBoot = _json['enableSecureBoot'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (enableIntegrityMonitoring != null) {
      _json['enableIntegrityMonitoring'] = enableIntegrityMonitoring;
    }
    if (enableSecureBoot != null) {
      _json['enableSecureBoot'] = enableSecureBoot;
    }
    return _json;
  }
}

/// Configuration of Shielded Nodes feature.
class ShieldedNodes {
  /// Whether Shielded Nodes features are enabled on all nodes in this cluster.
  core.bool enabled;

  ShieldedNodes();

  ShieldedNodes.fromJson(core.Map _json) {
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    return _json;
  }
}

/// StartIPRotationRequest creates a new IP for the cluster and then performs a
/// node upgrade on each node pool to point to the new IP.
class StartIPRotationRequest {
  /// Deprecated. The name of the cluster. This field has been deprecated and
  /// replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster id) of the cluster to start IP
  /// rotation. Specified in the format `projects / * /locations / * /clusters /
  /// * `.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://developers.google.com/console/help/new/#projectnumber).
  /// This field has been deprecated and replaced by the name field.
  core.String projectId;

  /// Whether to rotate credentials during IP rotation.
  core.bool rotateCredentials;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  StartIPRotationRequest();

  StartIPRotationRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('rotateCredentials')) {
      rotateCredentials = _json['rotateCredentials'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (rotateCredentials != null) {
      _json['rotateCredentials'] = rotateCredentials;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// StatusCondition describes why a cluster or a node pool has a certain status
/// (e.g., ERROR or DEGRADED).
class StatusCondition {
  /// Machine-friendly representation of the condition
  /// Possible string values are:
  /// - "UNKNOWN" : UNKNOWN indicates a generic condition.
  /// - "GCE_STOCKOUT" : GCE_STOCKOUT indicates that Google Compute Engine
  /// resources are temporarily unavailable.
  /// - "GKE_SERVICE_ACCOUNT_DELETED" : GKE_SERVICE_ACCOUNT_DELETED indicates
  /// that the user deleted their robot service account.
  /// - "GCE_QUOTA_EXCEEDED" : Google Compute Engine quota was exceeded.
  /// - "SET_BY_OPERATOR" : Cluster state was manually changed by an SRE due to
  /// a system logic error.
  /// - "CLOUD_KMS_KEY_ERROR" : Unable to perform an encrypt operation against
  /// the CloudKMS key used for etcd level encryption. More codes TBA
  core.String code;

  /// Human-friendly representation of the condition
  core.String message;

  StatusCondition();

  StatusCondition.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'];
    }
    if (_json.containsKey('message')) {
      message = _json['message'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// Represents an arbitrary window of time.
class TimeWindow {
  /// The time that the window ends. The end time should take place after the
  /// start time.
  core.String endTime;

  /// The time that the window first starts.
  core.String startTime;

  TimeWindow();

  TimeWindow.fromJson(core.Map _json) {
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'];
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    return _json;
  }
}

/// UpdateClusterRequest updates the settings of a cluster.
class UpdateClusterRequest {
  /// Deprecated. The name of the cluster to upgrade. This field has been
  /// deprecated and replaced by the name field.
  core.String clusterId;

  /// The name (project, location, cluster) of the cluster to update. Specified
  /// in the format `projects / * /locations / * /clusters / * `.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840). This field has
  /// been deprecated and replaced by the name field.
  core.String projectId;

  /// Required. A description of the update.
  ClusterUpdate update;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  UpdateClusterRequest();

  UpdateClusterRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('update')) {
      update = ClusterUpdate.fromJson(_json['update']);
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (update != null) {
      _json['update'] = update.toJson();
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// UpdateMasterRequest updates the master of the cluster.
class UpdateMasterRequest {
  /// Deprecated. The name of the cluster to upgrade. This field has been
  /// deprecated and replaced by the name field.
  core.String clusterId;

  /// Required. The Kubernetes version to change the master to. Users may
  /// specify either explicit versions offered by Kubernetes Engine or version
  /// aliases, which have the following behavior: - "latest": picks the highest
  /// valid Kubernetes version - "1.X": picks the highest valid patch+gke.N
  /// patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in
  /// the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version -
  /// "-": picks the default Kubernetes version
  core.String masterVersion;

  /// The name (project, location, cluster) of the cluster to update. Specified
  /// in the format `projects / * /locations / * /clusters / * `.
  core.String name;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840). This field has
  /// been deprecated and replaced by the name field.
  core.String projectId;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  UpdateMasterRequest();

  UpdateMasterRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('masterVersion')) {
      masterVersion = _json['masterVersion'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (masterVersion != null) {
      _json['masterVersion'] = masterVersion;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// UpdateNodePoolRequests update a node pool's image and/or version.
class UpdateNodePoolRequest {
  /// Deprecated. The name of the cluster to upgrade. This field has been
  /// deprecated and replaced by the name field.
  core.String clusterId;

  /// Required. The desired image type for the node pool.
  core.String imageType;

  /// The desired list of Google Compute Engine
  /// [zones](https://cloud.google.com/compute/docs/zones#available) in which
  /// the node pool's nodes should be located. Changing the locations for a node
  /// pool will result in nodes being either created or removed from the node
  /// pool, depending on whether locations are being added or removed.
  core.List<core.String> locations;

  /// The name (project, location, cluster, node pool) of the node pool to
  /// update. Specified in the format `projects / * /locations / * /clusters / *
  /// /nodePools / * `.
  core.String name;

  /// Deprecated. The name of the node pool to upgrade. This field has been
  /// deprecated and replaced by the name field.
  core.String nodePoolId;

  /// Required. The Kubernetes version to change the nodes to (typically an
  /// upgrade). Users may specify either explicit versions offered by Kubernetes
  /// Engine or version aliases, which have the following behavior: - "latest":
  /// picks the highest valid Kubernetes version - "1.X": picks the highest
  /// valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest
  /// valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit
  /// Kubernetes version - "-": picks the Kubernetes master version
  core.String nodeVersion;

  /// Deprecated. The Google Developers Console [project ID or project
  /// number](https://support.google.com/cloud/answer/6158840). This field has
  /// been deprecated and replaced by the name field.
  core.String projectId;

  /// Upgrade settings control disruption and speed of the upgrade.
  UpgradeSettings upgradeSettings;

  /// The desired workload metadata config for the node pool.
  WorkloadMetadataConfig workloadMetadataConfig;

  /// Deprecated. The name of the Google Compute Engine
  /// [zone](https://cloud.google.com/compute/docs/zones#available) in which the
  /// cluster resides. This field has been deprecated and replaced by the name
  /// field.
  core.String zone;

  UpdateNodePoolRequest();

  UpdateNodePoolRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'];
    }
    if (_json.containsKey('imageType')) {
      imageType = _json['imageType'];
    }
    if (_json.containsKey('locations')) {
      locations = (_json['locations'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('nodePoolId')) {
      nodePoolId = _json['nodePoolId'];
    }
    if (_json.containsKey('nodeVersion')) {
      nodeVersion = _json['nodeVersion'];
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'];
    }
    if (_json.containsKey('upgradeSettings')) {
      upgradeSettings = UpgradeSettings.fromJson(_json['upgradeSettings']);
    }
    if (_json.containsKey('workloadMetadataConfig')) {
      workloadMetadataConfig =
          WorkloadMetadataConfig.fromJson(_json['workloadMetadataConfig']);
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (imageType != null) {
      _json['imageType'] = imageType;
    }
    if (locations != null) {
      _json['locations'] = locations;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (nodePoolId != null) {
      _json['nodePoolId'] = nodePoolId;
    }
    if (nodeVersion != null) {
      _json['nodeVersion'] = nodeVersion;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (upgradeSettings != null) {
      _json['upgradeSettings'] = upgradeSettings.toJson();
    }
    if (workloadMetadataConfig != null) {
      _json['workloadMetadataConfig'] = workloadMetadataConfig.toJson();
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// UpgradeEvent is a notification sent to customers by the cluster server when
/// a resource is upgrading.
class UpgradeEvent {
  /// Required. The current version before the upgrade.
  core.String currentVersion;

  /// Required. The operation associated with this upgrade.
  core.String operation;

  /// Required. The time when the operation was started.
  core.String operationStartTime;

  /// Optional. Optional relative path to the resource. For example in node pool
  /// upgrades, the relative path of the node pool.
  core.String resource;

  /// Required. The resource type that is upgrading.
  /// Possible string values are:
  /// - "UPGRADE_RESOURCE_TYPE_UNSPECIFIED" : Default value. This shouldn't be
  /// used.
  /// - "MASTER" : Master / control plane
  /// - "NODE_POOL" : Node pool
  core.String resourceType;

  /// Required. The target version for the upgrade.
  core.String targetVersion;

  UpgradeEvent();

  UpgradeEvent.fromJson(core.Map _json) {
    if (_json.containsKey('currentVersion')) {
      currentVersion = _json['currentVersion'];
    }
    if (_json.containsKey('operation')) {
      operation = _json['operation'];
    }
    if (_json.containsKey('operationStartTime')) {
      operationStartTime = _json['operationStartTime'];
    }
    if (_json.containsKey('resource')) {
      resource = _json['resource'];
    }
    if (_json.containsKey('resourceType')) {
      resourceType = _json['resourceType'];
    }
    if (_json.containsKey('targetVersion')) {
      targetVersion = _json['targetVersion'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (currentVersion != null) {
      _json['currentVersion'] = currentVersion;
    }
    if (operation != null) {
      _json['operation'] = operation;
    }
    if (operationStartTime != null) {
      _json['operationStartTime'] = operationStartTime;
    }
    if (resource != null) {
      _json['resource'] = resource;
    }
    if (resourceType != null) {
      _json['resourceType'] = resourceType;
    }
    if (targetVersion != null) {
      _json['targetVersion'] = targetVersion;
    }
    return _json;
  }
}

/// These upgrade settings control the level of parallelism and the level of
/// disruption caused by an upgrade. maxUnavailable controls the number of nodes
/// that can be simultaneously unavailable. maxSurge controls the number of
/// additional nodes that can be added to the node pool temporarily for the time
/// of the upgrade to increase the number of available nodes. (maxUnavailable +
/// maxSurge) determines the level of parallelism (how many nodes are being
/// upgraded at the same time). Note: upgrades inevitably introduce some
/// disruption since workloads need to be moved from old nodes to new, upgraded
/// ones. Even if maxUnavailable=0, this holds true. (Disruption stays within
/// the limits of PodDisruptionBudget, if it is configured.) Consider a
/// hypothetical node pool with 5 nodes having maxSurge=2, maxUnavailable=1.
/// This means the upgrade process upgrades 3 nodes simultaneously. It creates 2
/// additional (upgraded) nodes, then it brings down 3 old (not yet upgraded)
/// nodes at the same time. This ensures that there are always at least 4 nodes
/// available.
class UpgradeSettings {
  /// The maximum number of nodes that can be created beyond the current size of
  /// the node pool during the upgrade process.
  core.int maxSurge;

  /// The maximum number of nodes that can be simultaneously unavailable during
  /// the upgrade process. A node is considered available if its status is
  /// Ready.
  core.int maxUnavailable;

  UpgradeSettings();

  UpgradeSettings.fromJson(core.Map _json) {
    if (_json.containsKey('maxSurge')) {
      maxSurge = _json['maxSurge'];
    }
    if (_json.containsKey('maxUnavailable')) {
      maxUnavailable = _json['maxUnavailable'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (maxSurge != null) {
      _json['maxSurge'] = maxSurge;
    }
    if (maxUnavailable != null) {
      _json['maxUnavailable'] = maxUnavailable;
    }
    return _json;
  }
}

/// UsableSubnetwork resource returns the subnetwork name, its associated
/// network and the primary CIDR range.
class UsableSubnetwork {
  /// The range of internal addresses that are owned by this subnetwork.
  core.String ipCidrRange;

  /// Network Name. Example: projects/my-project/global/networks/my-network
  core.String network;

  /// Secondary IP ranges.
  core.List<UsableSubnetworkSecondaryRange> secondaryIpRanges;

  /// A human readable status message representing the reasons for cases where
  /// the caller cannot use the secondary ranges under the subnet. For example
  /// if the secondary_ip_ranges is empty due to a permission issue, an
  /// insufficient permission message will be given by status_message.
  core.String statusMessage;

  /// Subnetwork Name. Example:
  /// projects/my-project/regions/us-central1/subnetworks/my-subnet
  core.String subnetwork;

  UsableSubnetwork();

  UsableSubnetwork.fromJson(core.Map _json) {
    if (_json.containsKey('ipCidrRange')) {
      ipCidrRange = _json['ipCidrRange'];
    }
    if (_json.containsKey('network')) {
      network = _json['network'];
    }
    if (_json.containsKey('secondaryIpRanges')) {
      secondaryIpRanges = (_json['secondaryIpRanges'] as core.List)
          .map<UsableSubnetworkSecondaryRange>(
              (value) => UsableSubnetworkSecondaryRange.fromJson(value))
          .toList();
    }
    if (_json.containsKey('statusMessage')) {
      statusMessage = _json['statusMessage'];
    }
    if (_json.containsKey('subnetwork')) {
      subnetwork = _json['subnetwork'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (ipCidrRange != null) {
      _json['ipCidrRange'] = ipCidrRange;
    }
    if (network != null) {
      _json['network'] = network;
    }
    if (secondaryIpRanges != null) {
      _json['secondaryIpRanges'] =
          secondaryIpRanges.map((value) => value.toJson()).toList();
    }
    if (statusMessage != null) {
      _json['statusMessage'] = statusMessage;
    }
    if (subnetwork != null) {
      _json['subnetwork'] = subnetwork;
    }
    return _json;
  }
}

/// Secondary IP range of a usable subnetwork.
class UsableSubnetworkSecondaryRange {
  /// The range of IP addresses belonging to this subnetwork secondary range.
  core.String ipCidrRange;

  /// The name associated with this subnetwork secondary range, used when adding
  /// an alias IP range to a VM instance.
  core.String rangeName;

  /// This field is to determine the status of the secondary range programmably.
  /// Possible string values are:
  /// - "UNKNOWN" : UNKNOWN is the zero value of the Status enum. It's not a
  /// valid status.
  /// - "UNUSED" : UNUSED denotes that this range is unclaimed by any cluster.
  /// - "IN_USE_SERVICE" : IN_USE_SERVICE denotes that this range is claimed by
  /// a cluster for services. It cannot be used for other clusters.
  /// - "IN_USE_SHAREABLE_POD" : IN_USE_SHAREABLE_POD denotes this range was
  /// created by the network admin and is currently claimed by a cluster for
  /// pods. It can only be used by other clusters as a pod range.
  /// - "IN_USE_MANAGED_POD" : IN_USE_MANAGED_POD denotes this range was created
  /// by GKE and is claimed for pods. It cannot be used for other clusters.
  core.String status;

  UsableSubnetworkSecondaryRange();

  UsableSubnetworkSecondaryRange.fromJson(core.Map _json) {
    if (_json.containsKey('ipCidrRange')) {
      ipCidrRange = _json['ipCidrRange'];
    }
    if (_json.containsKey('rangeName')) {
      rangeName = _json['rangeName'];
    }
    if (_json.containsKey('status')) {
      status = _json['status'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (ipCidrRange != null) {
      _json['ipCidrRange'] = ipCidrRange;
    }
    if (rangeName != null) {
      _json['rangeName'] = rangeName;
    }
    if (status != null) {
      _json['status'] = status;
    }
    return _json;
  }
}

/// VerticalPodAutoscaling contains global, per-cluster information required by
/// Vertical Pod Autoscaler to automatically adjust the resources of pods
/// controlled by it.
class VerticalPodAutoscaling {
  /// Enables vertical pod autoscaling.
  core.bool enabled;

  VerticalPodAutoscaling();

  VerticalPodAutoscaling.fromJson(core.Map _json) {
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    return _json;
  }
}

/// Configuration for the use of Kubernetes Service Accounts in GCP IAM
/// policies.
class WorkloadIdentityConfig {
  /// The workload pool to attach all Kubernetes service accounts to.
  core.String workloadPool;

  WorkloadIdentityConfig();

  WorkloadIdentityConfig.fromJson(core.Map _json) {
    if (_json.containsKey('workloadPool')) {
      workloadPool = _json['workloadPool'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (workloadPool != null) {
      _json['workloadPool'] = workloadPool;
    }
    return _json;
  }
}

/// WorkloadMetadataConfig defines the metadata configuration to expose to
/// workloads on the node pool.
class WorkloadMetadataConfig {
  /// Mode is the configuration for how to expose metadata to workloads running
  /// on the node pool.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Not set.
  /// - "GCE_METADATA" : Expose all Compute Engine metadata to pods.
  /// - "GKE_METADATA" : Run the GKE Metadata Server on this node. The GKE
  /// Metadata Server exposes a metadata API to workloads that is compatible
  /// with the V1 Compute Metadata APIs exposed by the Compute Engine and App
  /// Engine Metadata Servers. This feature can only be enabled if Workload
  /// Identity is enabled at the cluster level.
  core.String mode;

  WorkloadMetadataConfig();

  WorkloadMetadataConfig.fromJson(core.Map _json) {
    if (_json.containsKey('mode')) {
      mode = _json['mode'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (mode != null) {
      _json['mode'] = mode;
    }
    return _json;
  }
}
