class LibraryModel {
  LibraryModel({
    required this.id,
    required this.resourceTitle,
    required this.resourceDescription,
    required this.resourceVideoLink,
    required this.resourceUrl,
    required this.cloudinaryId,
    required this.cloudinaryUrl,
    required this.cloudinarySecureUrl,
    required this.cloudinaryAudioSecureUrl,
    required this.resourceType,
    required this.clientId,
    required this.resourceStatus,
    required this.adminUserId,
    required this.lastModified,
    required this.cats,
  });
  late final int id;
  late final String resourceTitle;
  late final String resourceDescription;
  late final String resourceVideoLink;
  late final String resourceUrl;
  late final String cloudinaryId;
  late final String cloudinaryUrl;
  late final String cloudinarySecureUrl;
  late final String cloudinaryAudioSecureUrl;
  late final String resourceType;
  late final int clientId;
  late final int resourceStatus;
  late final int adminUserId;
  late final String lastModified;
  late final List<String> cats;
  
  LibraryModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    resourceTitle = json['resource_title'];
    resourceDescription = json['resource_description'];
    resourceVideoLink = json['resource_video_link'];
    resourceUrl = json['resource_url'];
    cloudinaryId = json['cloudinaryId'];
    cloudinaryUrl = json['cloudinaryUrl'];
    cloudinarySecureUrl = json['cloudinarySecureUrl'];
    cloudinaryAudioSecureUrl = json['cloudinaryAudioSecureUrl'];
    resourceType = json['resource_type'];
    clientId = json['client_id'];
    resourceStatus = json['resource_status'];
    adminUserId = json['admin_user_id'];
    lastModified = json['last_modified'];
    cats = List.castFrom<dynamic, String>(json['cats']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['resource_title'] = resourceTitle;
    _data['resource_description'] = resourceDescription;
    _data['resource_video_link'] = resourceVideoLink;
    _data['resource_url'] = resourceUrl;
    _data['cloudinaryId'] = cloudinaryId;
    _data['cloudinaryUrl'] = cloudinaryUrl;
    _data['cloudinarySecureUrl'] = cloudinarySecureUrl;
    _data['cloudinaryAudioSecureUrl'] = cloudinaryAudioSecureUrl;
    _data['resource_type'] = resourceType;
    _data['client_id'] = clientId;
    _data['resource_status'] = resourceStatus;
    _data['admin_user_id'] = adminUserId;
    _data['last_modified'] = lastModified;
    _data['cats'] = cats;
    return _data;
  }
}