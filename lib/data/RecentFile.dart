class RecentFile {
  final String? id,
      courseName,
      lecturerName,
      startSchedule,
      studySchedule,
      area,
      operation;

  RecentFile(
      {this.id,
      this.courseName,
      this.lecturerName,
      this.startSchedule,
      this.studySchedule,
      this.area,
      this.operation});
}

List<RecentFile> get demoRecentFiles {
  return [
    RecentFile(
        courseName: "Java fullstack A to Z",
        lecturerName: "Nguyễn Hoài Nam",
        startSchedule: "11/04/2024",
        studySchedule: "7h - 11h t2, t4, t6",
        area: "HCM",
        operation: "Detail"),
    RecentFile(
        courseName: "Java fullstack A to Z",
        lecturerName: "Nguyễn Hoài Nam",
        startSchedule: "11/04/2024",
        studySchedule: "7h - 11h t2, t4, t6",
        area: "HCM",
        operation: "Detail"),
    RecentFile(
        courseName: "Java fullstack A to Z",
        lecturerName: "Nguyễn Hoài Nam",
        startSchedule: "11/04/2024",
        studySchedule: "7h - 11h t2, t4, t6",
        area: "HCM",
        operation: "Detail"),
    RecentFile(
        courseName: "Java fullstack A to Z",
        lecturerName: "Nguyễn Hoài Nam",
        startSchedule: "11/04/2024",
        studySchedule: "7h - 11h t2, t4, t6",
        area: "HCM",
        operation: "Detail"),
    RecentFile(
        courseName: "Java fullstack A to Z",
        lecturerName: "Nguyễn Hoài Nam",
        startSchedule: "11/04/2024",
        studySchedule: "7h - 11h t2, t4, t6",
        area: "HCM",
        operation: "Detail"),
  ];
}
