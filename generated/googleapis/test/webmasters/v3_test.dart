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
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.webmasters.v3.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/webmasters/v3.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.List<core.String> buildUnnamed2741() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2741(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApiDataRow = 0;
api.ApiDataRow buildApiDataRow() {
  var o = api.ApiDataRow();
  buildCounterApiDataRow++;
  if (buildCounterApiDataRow < 3) {
    o.clicks = 42.0;
    o.ctr = 42.0;
    o.impressions = 42.0;
    o.keys = buildUnnamed2741();
    o.position = 42.0;
  }
  buildCounterApiDataRow--;
  return o;
}

void checkApiDataRow(api.ApiDataRow o) {
  buildCounterApiDataRow++;
  if (buildCounterApiDataRow < 3) {
    unittest.expect(o.clicks, unittest.equals(42.0));
    unittest.expect(o.ctr, unittest.equals(42.0));
    unittest.expect(o.impressions, unittest.equals(42.0));
    checkUnnamed2741(o.keys);
    unittest.expect(o.position, unittest.equals(42.0));
  }
  buildCounterApiDataRow--;
}

core.int buildCounterApiDimensionFilter = 0;
api.ApiDimensionFilter buildApiDimensionFilter() {
  var o = api.ApiDimensionFilter();
  buildCounterApiDimensionFilter++;
  if (buildCounterApiDimensionFilter < 3) {
    o.dimension = 'foo';
    o.expression = 'foo';
    o.operator = 'foo';
  }
  buildCounterApiDimensionFilter--;
  return o;
}

void checkApiDimensionFilter(api.ApiDimensionFilter o) {
  buildCounterApiDimensionFilter++;
  if (buildCounterApiDimensionFilter < 3) {
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.operator, unittest.equals('foo'));
  }
  buildCounterApiDimensionFilter--;
}

core.List<api.ApiDimensionFilter> buildUnnamed2742() {
  var o = <api.ApiDimensionFilter>[];
  o.add(buildApiDimensionFilter());
  o.add(buildApiDimensionFilter());
  return o;
}

void checkUnnamed2742(core.List<api.ApiDimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDimensionFilter(o[0]);
  checkApiDimensionFilter(o[1]);
}

core.int buildCounterApiDimensionFilterGroup = 0;
api.ApiDimensionFilterGroup buildApiDimensionFilterGroup() {
  var o = api.ApiDimensionFilterGroup();
  buildCounterApiDimensionFilterGroup++;
  if (buildCounterApiDimensionFilterGroup < 3) {
    o.filters = buildUnnamed2742();
    o.groupType = 'foo';
  }
  buildCounterApiDimensionFilterGroup--;
  return o;
}

void checkApiDimensionFilterGroup(api.ApiDimensionFilterGroup o) {
  buildCounterApiDimensionFilterGroup++;
  if (buildCounterApiDimensionFilterGroup < 3) {
    checkUnnamed2742(o.filters);
    unittest.expect(o.groupType, unittest.equals('foo'));
  }
  buildCounterApiDimensionFilterGroup--;
}

core.List<api.ApiDimensionFilterGroup> buildUnnamed2743() {
  var o = <api.ApiDimensionFilterGroup>[];
  o.add(buildApiDimensionFilterGroup());
  o.add(buildApiDimensionFilterGroup());
  return o;
}

void checkUnnamed2743(core.List<api.ApiDimensionFilterGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDimensionFilterGroup(o[0]);
  checkApiDimensionFilterGroup(o[1]);
}

core.List<core.String> buildUnnamed2744() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2744(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchAnalyticsQueryRequest = 0;
api.SearchAnalyticsQueryRequest buildSearchAnalyticsQueryRequest() {
  var o = api.SearchAnalyticsQueryRequest();
  buildCounterSearchAnalyticsQueryRequest++;
  if (buildCounterSearchAnalyticsQueryRequest < 3) {
    o.aggregationType = 'foo';
    o.dimensionFilterGroups = buildUnnamed2743();
    o.dimensions = buildUnnamed2744();
    o.endDate = 'foo';
    o.rowLimit = 42;
    o.searchType = 'foo';
    o.startDate = 'foo';
    o.startRow = 42;
  }
  buildCounterSearchAnalyticsQueryRequest--;
  return o;
}

void checkSearchAnalyticsQueryRequest(api.SearchAnalyticsQueryRequest o) {
  buildCounterSearchAnalyticsQueryRequest++;
  if (buildCounterSearchAnalyticsQueryRequest < 3) {
    unittest.expect(o.aggregationType, unittest.equals('foo'));
    checkUnnamed2743(o.dimensionFilterGroups);
    checkUnnamed2744(o.dimensions);
    unittest.expect(o.endDate, unittest.equals('foo'));
    unittest.expect(o.rowLimit, unittest.equals(42));
    unittest.expect(o.searchType, unittest.equals('foo'));
    unittest.expect(o.startDate, unittest.equals('foo'));
    unittest.expect(o.startRow, unittest.equals(42));
  }
  buildCounterSearchAnalyticsQueryRequest--;
}

core.List<api.ApiDataRow> buildUnnamed2745() {
  var o = <api.ApiDataRow>[];
  o.add(buildApiDataRow());
  o.add(buildApiDataRow());
  return o;
}

void checkUnnamed2745(core.List<api.ApiDataRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDataRow(o[0]);
  checkApiDataRow(o[1]);
}

core.int buildCounterSearchAnalyticsQueryResponse = 0;
api.SearchAnalyticsQueryResponse buildSearchAnalyticsQueryResponse() {
  var o = api.SearchAnalyticsQueryResponse();
  buildCounterSearchAnalyticsQueryResponse++;
  if (buildCounterSearchAnalyticsQueryResponse < 3) {
    o.responseAggregationType = 'foo';
    o.rows = buildUnnamed2745();
  }
  buildCounterSearchAnalyticsQueryResponse--;
  return o;
}

void checkSearchAnalyticsQueryResponse(api.SearchAnalyticsQueryResponse o) {
  buildCounterSearchAnalyticsQueryResponse++;
  if (buildCounterSearchAnalyticsQueryResponse < 3) {
    unittest.expect(o.responseAggregationType, unittest.equals('foo'));
    checkUnnamed2745(o.rows);
  }
  buildCounterSearchAnalyticsQueryResponse--;
}

core.List<api.WmxSitemap> buildUnnamed2746() {
  var o = <api.WmxSitemap>[];
  o.add(buildWmxSitemap());
  o.add(buildWmxSitemap());
  return o;
}

void checkUnnamed2746(core.List<api.WmxSitemap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSitemap(o[0]);
  checkWmxSitemap(o[1]);
}

core.int buildCounterSitemapsListResponse = 0;
api.SitemapsListResponse buildSitemapsListResponse() {
  var o = api.SitemapsListResponse();
  buildCounterSitemapsListResponse++;
  if (buildCounterSitemapsListResponse < 3) {
    o.sitemap = buildUnnamed2746();
  }
  buildCounterSitemapsListResponse--;
  return o;
}

void checkSitemapsListResponse(api.SitemapsListResponse o) {
  buildCounterSitemapsListResponse++;
  if (buildCounterSitemapsListResponse < 3) {
    checkUnnamed2746(o.sitemap);
  }
  buildCounterSitemapsListResponse--;
}

core.List<api.WmxSite> buildUnnamed2747() {
  var o = <api.WmxSite>[];
  o.add(buildWmxSite());
  o.add(buildWmxSite());
  return o;
}

void checkUnnamed2747(core.List<api.WmxSite> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSite(o[0]);
  checkWmxSite(o[1]);
}

core.int buildCounterSitesListResponse = 0;
api.SitesListResponse buildSitesListResponse() {
  var o = api.SitesListResponse();
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    o.siteEntry = buildUnnamed2747();
  }
  buildCounterSitesListResponse--;
  return o;
}

void checkSitesListResponse(api.SitesListResponse o) {
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    checkUnnamed2747(o.siteEntry);
  }
  buildCounterSitesListResponse--;
}

core.int buildCounterWmxSite = 0;
api.WmxSite buildWmxSite() {
  var o = api.WmxSite();
  buildCounterWmxSite++;
  if (buildCounterWmxSite < 3) {
    o.permissionLevel = 'foo';
    o.siteUrl = 'foo';
  }
  buildCounterWmxSite--;
  return o;
}

void checkWmxSite(api.WmxSite o) {
  buildCounterWmxSite++;
  if (buildCounterWmxSite < 3) {
    unittest.expect(o.permissionLevel, unittest.equals('foo'));
    unittest.expect(o.siteUrl, unittest.equals('foo'));
  }
  buildCounterWmxSite--;
}

core.List<api.WmxSitemapContent> buildUnnamed2748() {
  var o = <api.WmxSitemapContent>[];
  o.add(buildWmxSitemapContent());
  o.add(buildWmxSitemapContent());
  return o;
}

void checkUnnamed2748(core.List<api.WmxSitemapContent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSitemapContent(o[0]);
  checkWmxSitemapContent(o[1]);
}

core.int buildCounterWmxSitemap = 0;
api.WmxSitemap buildWmxSitemap() {
  var o = api.WmxSitemap();
  buildCounterWmxSitemap++;
  if (buildCounterWmxSitemap < 3) {
    o.contents = buildUnnamed2748();
    o.errors = 'foo';
    o.isPending = true;
    o.isSitemapsIndex = true;
    o.lastDownloaded = core.DateTime.parse("2002-02-27T14:01:02");
    o.lastSubmitted = core.DateTime.parse("2002-02-27T14:01:02");
    o.path = 'foo';
    o.type = 'foo';
    o.warnings = 'foo';
  }
  buildCounterWmxSitemap--;
  return o;
}

void checkWmxSitemap(api.WmxSitemap o) {
  buildCounterWmxSitemap++;
  if (buildCounterWmxSitemap < 3) {
    checkUnnamed2748(o.contents);
    unittest.expect(o.errors, unittest.equals('foo'));
    unittest.expect(o.isPending, unittest.isTrue);
    unittest.expect(o.isSitemapsIndex, unittest.isTrue);
    unittest.expect(o.lastDownloaded,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.lastSubmitted,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.warnings, unittest.equals('foo'));
  }
  buildCounterWmxSitemap--;
}

core.int buildCounterWmxSitemapContent = 0;
api.WmxSitemapContent buildWmxSitemapContent() {
  var o = api.WmxSitemapContent();
  buildCounterWmxSitemapContent++;
  if (buildCounterWmxSitemapContent < 3) {
    o.indexed = 'foo';
    o.submitted = 'foo';
    o.type = 'foo';
  }
  buildCounterWmxSitemapContent--;
  return o;
}

void checkWmxSitemapContent(api.WmxSitemapContent o) {
  buildCounterWmxSitemapContent++;
  if (buildCounterWmxSitemapContent < 3) {
    unittest.expect(o.indexed, unittest.equals('foo'));
    unittest.expect(o.submitted, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterWmxSitemapContent--;
}

void main() {
  unittest.group('obj-schema-ApiDataRow', () {
    unittest.test('to-json--from-json', () {
      var o = buildApiDataRow();
      var od = api.ApiDataRow.fromJson(o.toJson());
      checkApiDataRow(od);
    });
  });

  unittest.group('obj-schema-ApiDimensionFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildApiDimensionFilter();
      var od = api.ApiDimensionFilter.fromJson(o.toJson());
      checkApiDimensionFilter(od);
    });
  });

  unittest.group('obj-schema-ApiDimensionFilterGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildApiDimensionFilterGroup();
      var od = api.ApiDimensionFilterGroup.fromJson(o.toJson());
      checkApiDimensionFilterGroup(od);
    });
  });

  unittest.group('obj-schema-SearchAnalyticsQueryRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchAnalyticsQueryRequest();
      var od = api.SearchAnalyticsQueryRequest.fromJson(o.toJson());
      checkSearchAnalyticsQueryRequest(od);
    });
  });

  unittest.group('obj-schema-SearchAnalyticsQueryResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchAnalyticsQueryResponse();
      var od = api.SearchAnalyticsQueryResponse.fromJson(o.toJson());
      checkSearchAnalyticsQueryResponse(od);
    });
  });

  unittest.group('obj-schema-SitemapsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSitemapsListResponse();
      var od = api.SitemapsListResponse.fromJson(o.toJson());
      checkSitemapsListResponse(od);
    });
  });

  unittest.group('obj-schema-SitesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSitesListResponse();
      var od = api.SitesListResponse.fromJson(o.toJson());
      checkSitesListResponse(od);
    });
  });

  unittest.group('obj-schema-WmxSite', () {
    unittest.test('to-json--from-json', () {
      var o = buildWmxSite();
      var od = api.WmxSite.fromJson(o.toJson());
      checkWmxSite(od);
    });
  });

  unittest.group('obj-schema-WmxSitemap', () {
    unittest.test('to-json--from-json', () {
      var o = buildWmxSitemap();
      var od = api.WmxSitemap.fromJson(o.toJson());
      checkWmxSitemap(od);
    });
  });

  unittest.group('obj-schema-WmxSitemapContent', () {
    unittest.test('to-json--from-json', () {
      var o = buildWmxSitemapContent();
      var od = api.WmxSitemapContent.fromJson(o.toJson());
      checkWmxSitemapContent(od);
    });
  });

  unittest.group('resource-SearchanalyticsResourceApi', () {
    unittest.test('method--query', () {
      var mock = HttpServerMock();
      api.SearchanalyticsResourceApi res =
          api.WebmastersApi(mock).searchanalytics;
      var arg_request = buildSearchAnalyticsQueryRequest();
      var arg_siteUrl = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SearchAnalyticsQueryRequest.fromJson(json);
        checkSearchAnalyticsQueryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf('/searchAnalytics/query', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/searchAnalytics/query"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearchAnalyticsQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(arg_request, arg_siteUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchAnalyticsQueryResponse(response);
      })));
    });
  });

  unittest.group('resource-SitemapsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.SitemapsResourceApi res = api.WebmastersApi(mock).sitemaps;
      var arg_siteUrl = 'foo';
      var arg_feedpath = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf('/sitemaps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/sitemaps/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_feedpath'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_siteUrl, arg_feedpath, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.SitemapsResourceApi res = api.WebmastersApi(mock).sitemaps;
      var arg_siteUrl = 'foo';
      var arg_feedpath = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf('/sitemaps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/sitemaps/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_feedpath'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildWmxSitemap());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_siteUrl, arg_feedpath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWmxSitemap(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.SitemapsResourceApi res = api.WebmastersApi(mock).sitemaps;
      var arg_siteUrl = 'foo';
      var arg_sitemapIndex = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf('/sitemaps', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/sitemaps"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["sitemapIndex"].first, unittest.equals(arg_sitemapIndex));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSitemapsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_siteUrl,
              sitemapIndex: arg_sitemapIndex, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSitemapsListResponse(response);
      })));
    });

    unittest.test('method--submit', () {
      var mock = HttpServerMock();
      api.SitemapsResourceApi res = api.WebmastersApi(mock).sitemaps;
      var arg_siteUrl = 'foo';
      var arg_feedpath = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf('/sitemaps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/sitemaps/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_feedpath'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .submit(arg_siteUrl, arg_feedpath, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group('resource-SitesResourceApi', () {
    unittest.test('method--add', () {
      var mock = HttpServerMock();
      api.SitesResourceApi res = api.WebmastersApi(mock).sites;
      var arg_siteUrl = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .add(arg_siteUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.SitesResourceApi res = api.WebmastersApi(mock).sites;
      var arg_siteUrl = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_siteUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.SitesResourceApi res = api.WebmastersApi(mock).sites;
      var arg_siteUrl = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildWmxSite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_siteUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWmxSite(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.SitesResourceApi res = api.WebmastersApi(mock).sites;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("sites"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSitesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkSitesListResponse(response);
      })));
    });
  });
}
