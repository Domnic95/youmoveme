class UserData {
  UserData({ 
    required this.id,
    this.title,
    required this.profileEmail,
    required this.profileFirstName,
    required this.profileLastName,
    required this.designation,
    required this.deviceToken,
    required this.deviceType,
    required this.franchiseOwnerId,
    required this.teamId,
    required this.additionalTeamId,
    required this.ajs,
    required this.userImage,
    required this.totalRevenue,
    required this.completedJobs,
    this.hoursSpent,
    this.amountOfMoves,
    this.serviceScore,
    required this.status,
    required this.isAdmin,
    required this.isTeamTrainer,
    required this.teamRank,
    required this.worldRank,
    required this.npsScore,
    required this.tens,
    required this.whenIWorkId,
    required this.needAdminRes,
    required this.adminUserId,
    required this.lastModified,
    required this.startDate,
    this.mobile,
    required this.securityToken,
    required this.createdAt,
    required this.currentlyIn,
    required this.creatorId,
  });

  late int id;
  late dynamic title;
  late String profileEmail;
  late String profileFirstName;
  late String profileLastName;
  late int designation;
  late String deviceToken;
  late String deviceType;
  late int franchiseOwnerId;
  late int teamId;
  late int additionalTeamId;
  late String ajs;
  late String userImage;
  late String totalRevenue;
  late String completedJobs;
  late dynamic hoursSpent;
  late dynamic amountOfMoves;
  late dynamic serviceScore;
  late int status;
  late int isAdmin;
  late int isTeamTrainer;
  late String teamRank;
  late String worldRank;
  late String npsScore;
  late String tens;
  late String whenIWorkId;
  late int needAdminRes;
  late int adminUserId;
  late DateTime lastModified;
  late DateTime startDate;
  late dynamic mobile;
  late String securityToken;
  late DateTime createdAt;
  late int currentlyIn;
  late int creatorId;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["id"],
        title: json["title"],
        profileEmail: json["profile_email"],
        profileFirstName: json["profile_first_name"],
        profileLastName: json["profile_last_name"],
        designation: json["designation"],
        deviceToken: json["device_token"],
        deviceType: json["device_type"],
        franchiseOwnerId: json["franchise_owner_id"],
        teamId: json["team_id"],
        additionalTeamId: json["additional_team_id"],
        ajs: json["ajs"],
        userImage: json["user_image"],
        totalRevenue: json["total_revenue"],
        completedJobs: json["completed_jobs"],
        hoursSpent: json["hours_spent"],
        amountOfMoves: json["amount_of_moves"],
        serviceScore: json["service_score"],
        status: json["status"],
        isAdmin: json["is_admin"],
        isTeamTrainer: json["is_team_trainer"],
        teamRank: json["team_rank"],
        worldRank: json["world_rank"],
        npsScore: json["nps_score"],
        tens: json["tens"],
        whenIWorkId: json["whenIWorkId"],
        needAdminRes: json["need_admin_res"],
        adminUserId: json["admin_user_id"],
        lastModified: DateTime.parse(json["last_modified"]),
        startDate: DateTime.parse(json["start_date"]),
        mobile: json["mobile"],
        securityToken: json["security_token"],
        createdAt: DateTime.parse(json["created_at"]),
        currentlyIn: json["currently_in"],
        creatorId: json["creator_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "profile_email": profileEmail,
        "profile_first_name": profileFirstName,
        "profile_last_name": profileLastName,
        "designation": designation,
        "device_token": deviceToken,
        "device_type": deviceType,
        "franchise_owner_id": franchiseOwnerId,
        "team_id": teamId,
        "additional_team_id": additionalTeamId,
        "ajs": ajs,
        "user_image": userImage,
        "total_revenue": totalRevenue,
        "completed_jobs": completedJobs,
        "hours_spent": hoursSpent,
        "amount_of_moves": amountOfMoves,
        "service_score": serviceScore,
        "status": status,
        "is_admin": isAdmin,
        "is_team_trainer": isTeamTrainer,
        "team_rank": teamRank,
        "world_rank": worldRank,
        "nps_score": npsScore,
        "tens": tens,
        "whenIWorkId": whenIWorkId,
        "need_admin_res": needAdminRes,
        "admin_user_id": adminUserId,
        "last_modified": lastModified.toIso8601String(),
        "start_date": startDate.toIso8601String(),
        "mobile": mobile,
        "security_token": securityToken,
        "created_at": createdAt.toIso8601String(),
        "currently_in": currentlyIn,
        "creator_id": creatorId,
      };
}
