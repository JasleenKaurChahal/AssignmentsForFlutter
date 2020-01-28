class Branch_Name{
  String branchDetails;
  String branchName;
  int branchId;
  String timeZone;
  List<String> show_branchInfo(String time){
    List branch_list;
    //logic
    if(time==timeZone){
      branch_list.add('Cambridge_us');
    }
    return branch_list;
  } 
}