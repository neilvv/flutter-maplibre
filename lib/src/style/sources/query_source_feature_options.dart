/// Options for querying source features
class QuerySourceFeatureOptions {
  /// Options for querying source features
  const QuerySourceFeatureOptions(
      {this.filter, this.sourceLayer, this.validate});

  /// A filter to limit query results.
  final String? filter;

  /// The name of the source layer to query. For vector tile sources, this parameter is required. For GeoJSON sources, it is ignored.
  final String? sourceLayer;

  /// Whether to check if the [parameters.filter] conforms to the MapLibre Style Specification.
  /// Disabling validation is a performance optimization that should only be used if you have previously validated the values you will be passing to this function.
  final bool? validate;
}
