enum Days { saturDay, sunDay, monDay, tuesDay, wednesDay, thursDay, friDay }

void main(List<String> args) {
  Days today = Days.saturDay;

  if (today == Days.saturDay) {
    print("It is $today");
  }
}
