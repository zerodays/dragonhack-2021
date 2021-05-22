///
//  Generated code. Do not modify.
//  source: sellers.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use newPurchaseDescriptor instead')
const NewPurchase$json = const {
  '1': 'NewPurchase',
  '2': const [
    const {'1': 'nfc_id', '3': 1, '4': 1, '5': 9, '10': 'nfcId'},
    const {'1': 'product_id', '3': 2, '4': 1, '5': 9, '10': 'productId'},
    const {'1': 'weight_g', '3': 3, '4': 1, '5': 5, '10': 'weightG'},
  ],
};

/// Descriptor for `NewPurchase`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newPurchaseDescriptor = $convert.base64Decode('CgtOZXdQdXJjaGFzZRIVCgZuZmNfaWQYASABKAlSBW5mY0lkEh0KCnByb2R1Y3RfaWQYAiABKAlSCXByb2R1Y3RJZBIZCgh3ZWlnaHRfZxgDIAEoBVIHd2VpZ2h0Rw==');
@$core.Deprecated('Use loadProductListDescriptor instead')
const LoadProductList$json = const {
  '1': 'LoadProductList',
};

/// Descriptor for `LoadProductList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadProductListDescriptor = $convert.base64Decode('Cg9Mb2FkUHJvZHVjdExpc3Q=');
@$core.Deprecated('Use productListDescriptor instead')
const ProductList$json = const {
  '1': 'ProductList',
  '2': const [
    const {'1': 'products', '3': 1, '4': 3, '5': 11, '6': '.sellers.Product', '10': 'products'},
  ],
};

/// Descriptor for `ProductList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productListDescriptor = $convert.base64Decode('CgtQcm9kdWN0TGlzdBIsCghwcm9kdWN0cxgBIAMoCzIQLnNlbGxlcnMuUHJvZHVjdFIIcHJvZHVjdHM=');
@$core.Deprecated('Use productDescriptor instead')
const Product$json = const {
  '1': 'Product',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'price_per_g', '3': 3, '4': 1, '5': 2, '10': 'pricePerG'},
  ],
};

/// Descriptor for `Product`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productDescriptor = $convert.base64Decode('CgdQcm9kdWN0Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEh4KC3ByaWNlX3Blcl9nGAMgASgCUglwcmljZVBlckc=');
