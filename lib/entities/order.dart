class Order {
  String id;
  String storeType;
  String custName;
  String orderStatus;
  bool paymentStatus;
  String date;
  String startTime;
  String endTime;
  int room;
  int chair;
  Map<String, int> orders;

  Order(
      {required this.id,
      required this.storeType,
      required this.custName,
      required this.orderStatus,
      required this.paymentStatus,
      required this.date,
      required this.startTime,
      required this.endTime,
      required this.room,
      required this.chair,
      required this.orders});
}

var orderList = [
  Order(
      id: "10043464289",
      storeType: "InnoCafe",
      custName: "Taylor Swift",
      orderStatus: "Booked",
      paymentStatus: true,
      date: "5 Oct 2023",
      startTime: "16.30",
      endTime: "17.30",
      room: 1,
      chair: 4,
      orders: {"Kopi": 2, "Nasi Macan": 3, "Thai Tea": 1}),
  Order(
      id: "10043464657",
      storeType: "InnoCafe",
      custName: "Budiman",
      orderStatus: "Canceled",
      paymentStatus: true,
      date: "3 Oct 2023",
      startTime: "13.30",
      endTime: "14.30",
      room: 1,
      chair: 6,
      orders: {"Kopi": 2, "Nasi Macan": 3, "Thai Tea": 1}),
];
