/// Response models for the Mad Libs Generator API.

/// API Response wrapper.
class MadlibsResponse {
  final String status;
  final dynamic error;
  final MadlibsData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  MadlibsResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory MadlibsResponse.fromJson(Map<String, dynamic> json) => MadlibsResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? MadlibsData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Mad Libs Generator API.

class MadlibsData {
  List<MadlibsDataStoriesItem>? stories;
  num? count;
  String? category;
  String? html;
  MadlibsDataImage? image;

  MadlibsData({
    this.stories,
    this.count,
    this.category,
    this.html,
    this.image,
  });

  factory MadlibsData.fromJson(Map<String, dynamic> json) => MadlibsData(
      stories: (json['stories'] as List?)?.map((e) => MadlibsDataStoriesItem.fromJson(e)).toList(),
      count: json['count'],
      category: json['category'],
      html: json['html'],
      image: json['image'] != null ? MadlibsDataImage.fromJson(json['image']) : null,
    );
}

class MadlibsDataStoriesItem {
  String? title;
  String? template;
  List<MadlibsDataStoriesItemBlanksItem>? blanks;
  num? blankCount;
  String? category;

  MadlibsDataStoriesItem({
    this.title,
    this.template,
    this.blanks,
    this.blankCount,
    this.category,
  });

  factory MadlibsDataStoriesItem.fromJson(Map<String, dynamic> json) => MadlibsDataStoriesItem(
      title: json['title'],
      template: json['template'],
      blanks: (json['blanks'] as List?)?.map((e) => MadlibsDataStoriesItemBlanksItem.fromJson(e)).toList(),
      blankCount: json['blankCount'],
      category: json['category'],
    );
}

class MadlibsDataStoriesItemBlanksItem {
  num? id;
  String? type;
  String? label;

  MadlibsDataStoriesItemBlanksItem({
    this.id,
    this.type,
    this.label,
  });

  factory MadlibsDataStoriesItemBlanksItem.fromJson(Map<String, dynamic> json) => MadlibsDataStoriesItemBlanksItem(
      id: json['id'],
      type: json['type'],
      label: json['label'],
    );
}

class MadlibsDataImage {
  String? imageName;
  String? format;
  String? downloadURL;
  num? expires;

  MadlibsDataImage({
    this.imageName,
    this.format,
    this.downloadURL,
    this.expires,
  });

  factory MadlibsDataImage.fromJson(Map<String, dynamic> json) => MadlibsDataImage(
      imageName: json['imageName'],
      format: json['format'],
      downloadURL: json['downloadURL'],
      expires: json['expires'],
    );
}

class MadlibsRequest {
  String? category;
  int? count;

  MadlibsRequest({
    this.category,
    this.count,
  });

  Map<String, dynamic> toJson() => {
      if (category != null) 'category': category,
      if (count != null) 'count': count,
    };
}
