// Container(
// padding: EdgeInsets.only(left: 20, right: 50, top: 20),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Text(
// "Currently looking for a job",
// style: TextStyle(
// color: colors.primary, fontSize: 16),
// ),
// ToggleSwitch(
// minWidth: 15,
// minHeight: 10,
// cornerRadius: 20.0,
// activeBgColors: [
// [colors.primary],
// [colors.primary]
// ],
// activeFgColor: colors.primary,
// inactiveBgColor: colors.secondary,
// // inactiveFgColor: colors.primary,
// initialLabelIndex: 1,
// totalSwitches: 2,
// labels: ['No', 'Yes'],
// radiusStyle: true,
// borderWidth: 1,
// customTextStyles: [
// TextStyle(
// color: colors.primary,
// fontSize: 4.0,
// ),
// TextStyle(
// color: Colors.black,
// fontSize: 5.0,
// )
// ],
// borderColor: [colors.primary],
// onToggle: (index) {
// print('switched to: $index');
// },
// ),
// ],
// ),
// SizedBox(
// height: 20,
// ),
// Container(
// padding: EdgeInsets.only(left: 25, right: 50, top: 0),
// alignment: Alignment.centerLeft,
// child: Text(
// "Personal Details",
// style:
// TextStyle(color: colors.primary, fontSize: 15),
// ),
// ),
// SizedBox(
// height: 20,
// ),
// Container(
// margin: EdgeInsets.only(left: 25),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'First Name* ',
// children: <InlineSpan>[],
// style: TextStyle(
// color: colors.hinttext, fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// margin: EdgeInsets.only(left: 15),
// width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height / 13,
// child: Card(
// elevation: 2,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(14),
// ),
// child: TextFormField(
// controller: firstj,
// // keyboardType: TextInputType.text,
// // maxLength: widget.length,
// // controller: widget.controller,
// decoration: InputDecoration(
// contentPadding:
// EdgeInsets.only(top: 20, left: 20),
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide:
// BorderSide(color: Colors.transparent),
// ),
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide: BorderSide(color: Colors.white),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide: BorderSide(color: Colors.white),
// ),
// filled: true,
// fillColor: Colors.white,
// ),
// ),
// ),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// margin: EdgeInsets.only(left: 15),
// child: Column(
// children: [
// Container(
// margin: EdgeInsets.only(left: 10),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'Last Name ',
// children: <InlineSpan>[
// TextSpan(
// text: '*',
// style:
// TextStyle(color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext, fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// height: MediaQuery.of(context).size.height / 13,
// child: Card(
// elevation: 2,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(14),
// ),
// child: TextFormField(
// controller: lastj,
// // keyboardType: TextInputType.text,
// // maxLength: widget.length,
// // controller: widget.controller,
// decoration: InputDecoration(
// contentPadding:
// EdgeInsets.only(top: 20, left: 20),
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide: BorderSide(
// color: Colors.transparent),
// ),
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide:
// BorderSide(color: Colors.white),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide:
// BorderSide(color: Colors.white),
// ),
// filled: true,
// fillColor: Colors.white,
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// margin: EdgeInsets.only(left: 10),
// child: Column(
// children: [
// Container(
// margin: EdgeInsets.only(left: 15),
// alignment: Alignment.centerLeft,
// child: Text(
// "Gender",
// style: TextStyle(
// color: colors.hinttext, fontSize: 14),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Row(
// children: [
// SizedBox(
// width: 20,
// ),
// Container(
// child: Row(
// children: [
// Radio(
// value: 'Male',
// groupValue: _btn,
// activeColor: colors.primary,
// fillColor:
// MaterialStateColor.resolveWith(
// (states) => colors.primary),
// onChanged: (value) {
// setState(() {
// _btn = value.toString();
// ePress = 1;
// mPress = 0;
// });
// }),
// Text(
// "Male",
// style:
// TextStyle(color: colors.primary),
// )
// ],
// ),
// ),
// SizedBox(width: 15),
// Container(
// margin: EdgeInsets.only(left: 20),
// child: Row(
// children: [
// Radio(
// value: 'Female',
// groupValue: _btn,
// fillColor:
// MaterialStateColor.resolveWith(
// (states) => colors.primary),
// onChanged: (value) {
// setState(() {
// _btn = value.toString();
// ePress = 0;
// mPress = 1;
// });
// }),
// Text(
// "Female",
// style:
// TextStyle(color: colors.primary),
// )
// ],
// ),
// ),
// ],
// )
// ],
// ),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// margin: EdgeInsets.only(left: 15),
// alignment: Alignment.centerLeft,
// child: Column(
// children: [
// Container(
// margin: EdgeInsets.only(left: 10),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'Enter Email ',
// children: <InlineSpan>[
// TextSpan(
// text: '*',
// style:
// TextStyle(color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext, fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// height: MediaQuery.of(context).size.height / 13,
// child: Card(
// elevation: 2,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(14),
// ),
// child: TextFormField(
// controller: emailj,
// keyboardType: TextInputType.emailAddress,
// // maxLength: widget.length,
// // controller: widget.controller,
// decoration: InputDecoration(
// contentPadding:
// EdgeInsets.only(top: 20, left: 20),
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide: BorderSide(
// color: Colors.transparent),
// ),
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide:
// BorderSide(color: Colors.white),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide:
// BorderSide(color: Colors.white),
// ),
// filled: true,
// fillColor: Colors.white,
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// margin: EdgeInsets.only(left: 15),
// alignment: Alignment.centerLeft,
// child: Column(
// children: [
// Container(
// margin: EdgeInsets.only(left: 10),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'Mobile No. ',
// children: <InlineSpan>[
// TextSpan(
// text: '*',
// style:
// TextStyle(color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext, fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height / 13,
// child: Card(
// elevation: 2,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(14),
// ),
// child: TextFormField(
// controller: mobilej,
// // keyboardType: TextInputType.number,
// // maxLength: widget.length,
// // controller: widget.controller,
// decoration: InputDecoration(
// contentPadding:
// EdgeInsets.only(top: 20, left: 20),
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide: BorderSide(
// color: Colors.transparent),
// ),
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide:
// BorderSide(color: Colors.white),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide:
// BorderSide(color: Colors.white),
// ),
// filled: true,
// fillColor: Colors.white,
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// margin: EdgeInsets.only(left: 15),
// alignment: Alignment.centerLeft,
// child: Column(children: [
// Container(
// margin: EdgeInsets.only(left: 10),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'Qualification ',
// children: <InlineSpan>[
// TextSpan(
// text: '*',
// style: TextStyle(color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext, fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// height: MediaQuery.of(context).size.height / 13,
// child: Container(
// // width: MediaQuery.of(context).size.width/2.67,
// height: 35,
// padding: EdgeInsets.only(right: 20),
//
// decoration: const BoxDecoration(
// color: Color(0xffF6F6F6),
// // borderRadius: BorderRadius.circular(10),
// // border:,
// ),
// child: DropdownButton<String>(
// value: _chosenValue,
// //elevation: 5,
// style: TextStyle(color: Colors.black87),
//
// items: <String>[
// '10th',
// '12th',
// 'Graduate',
// 'Post graduate',
// ].map<DropdownMenuItem<String>>(
// (String value) {
// return DropdownMenuItem<String>(
// value: value,
// alignment: Alignment.centerRight,
// child: Text(value),
// );
// }).toList(),
//
// hint: Text(
// "Qualification",
// style: TextStyle(
// color: colors.hinttext,
// fontSize: 14,
// fontWeight: FontWeight.w500),
// ),
// onChanged: (String? value) {
// setState(() {
// _chosenValue = value;
//
// // var u = _chosenValue!;
// // int  qual= int.parse(u);
// // qua= qual;
// });
// },
// icon: Padding(
// padding: EdgeInsets.only(left: 130),
// // Adjust the right padding as needed
// child: Icon(
// Icons.arrow_drop_down,
// size: 30,
// color: Colors.grey,
// ),
// ),
// underline: Container(
// // Use a container with zero height to remove the underline
// height: 0,
// color: Colors.transparent,
// ),
// ),
// ))
// ]),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// margin: EdgeInsets.only(left: 15),
// alignment: Alignment.centerLeft,
// child: Column(
// children: [
// Container(
// margin: EdgeInsets.only(left: 15),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'Year of Passing ',
// children: <InlineSpan>[
// TextSpan(
// text: '*',
// style:
// TextStyle(color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext, fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// height: MediaQuery.of(context).size.height / 13,
// child: Card(
// elevation: 2,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(14),
// ),
// child: TextFormField(
// controller: yp,
// keyboardType: TextInputType.number,
// // maxLength: widget.length,
// // controller: widget.controller,
// decoration: InputDecoration(
// contentPadding:
// EdgeInsets.only(top: 20, left: 20),
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide: BorderSide(
// color: Colors.transparent),
// ),
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide:
// BorderSide(color: Colors.white),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide:
// BorderSide(color: Colors.white),
// ),
// filled: true,
// fillColor: Colors.white,
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// margin: EdgeInsets.only(left: 30, right: 50),
// child: Column(children: [
// Container(
// margin: EdgeInsets.only(left: 15),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'Current Address ',
// children: <InlineSpan>[
// TextSpan(
// text: '*',
// style: TextStyle(color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext, fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// margin: EdgeInsets.only(left: 5),
// width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height / 13,
// child: Card(
// elevation: 2,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(14),
// ),
// child: TextFormField(
// controller: ca,
// keyboardType: TextInputType.streetAddress,
// // maxLength: widget.length,
// // controller: widget.controller,
// decoration: InputDecoration(
// contentPadding:
// EdgeInsets.only(top: 20, left: 20),
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide:
// BorderSide(color: Colors.transparent),
// ),
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide: BorderSide(color: Colors.white),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide: BorderSide(color: Colors.white),
// ),
// filled: true,
// fillColor: Colors.white,
// ),
// ),
// ),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// margin: EdgeInsets.only(left: 10),
// child: Column(children: [
// Container(
// margin: EdgeInsets.only(left: 5),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'Preferred Location ',
// children: <InlineSpan>[
// TextSpan(
// text: '*',
// style: TextStyle(color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext, fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height / 13,
// child: Container(
// // width: MediaQuery.of(context).size.width/2.67,
// height: 35,
// padding: EdgeInsets.only(left: 20,right: 40),
//
// decoration: const BoxDecoration(
// color: Color(0xffF6F6F6),
// // borderRadius: BorderRadius.circular(10),
// // border:,
// ),
// child: DropdownButton<String>(
// value: locationOption,
// //elevation: 5,
// style: TextStyle(color: Colors.black87),
//
// items: <String>[
// 'Delhi',
// 'Mumbai',
// 'Indore',
// 'Pune',
// ].map<DropdownMenuItem<String>>(
// (String lvalue) {
// return DropdownMenuItem<String>(
// value: lvalue,
// child: Text(lvalue),
// );
// }).toList(),
//
// hint: Text(
// "Location",
// style: TextStyle(
// color: colors.hinttext,
// fontSize: 14,
// fontWeight: FontWeight.w500),
// ),
// onChanged: (String? lvalue) {
// setState(() {
// locationOption = lvalue!;
//
// });
// },
// icon: Padding(
// padding: EdgeInsets.only(left: 165),
// // Adjust the right padding as needed
// child: Icon(
// Icons.arrow_drop_down,
// size: 30,
// color: Colors.grey,
// ),
// ),
// underline: Container(
// // Use a container with zero height to remove the underline
// height: 0,
// color: Colors.transparent,
// ),
// ),
// ))
// ]),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// margin: EdgeInsets.only(left: 5),
// child: Column(children: [
// Container(
// margin: EdgeInsets.only(left: 10),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'Current CTC ',
// children: <InlineSpan>[
// TextSpan(
// text: '*',
// style: TextStyle(color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext, fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height / 13,
// child: Container(
// // width: MediaQuery.of(context).size.width/2.67,
// height: 35,
// padding: EdgeInsets.only(left: 20,right: 20),
//
// decoration: const BoxDecoration(
// color: Color(0xffF6F6F6),
// // borderRadius: BorderRadius.circular(10),
// // border:,
// ),
// child: DropdownButton<String>(
// value: CctcOption,
// //elevation: 5,
// style: TextStyle(color: Colors.black87),
//
// items: <String>[
// 'less than 5 L',
// 'equal to 5L',
// 'more than 5L',
// ].map<DropdownMenuItem<String>>(
// (String value) {
// return DropdownMenuItem<String>(
// value: value,
// child: Text(value),
// );
// }).toList(),
//
// hint: Text(
// "Current CTC",
// style: TextStyle(
// color: colors.hinttext,
// fontSize: 14,
// fontWeight: FontWeight.w500),
// ),
// onChanged: (String? cvalue) {
// setState(() {
// CctcOption = cvalue;
//
// });
// },
// icon: Padding(
// padding: EdgeInsets.only(left: 138),
// // Adjust the right padding as needed
// child: Icon(
// Icons.arrow_drop_down,
// size: 30,
// color: Colors.grey,
// ),
// ),
// underline: Container(
// // Use a container with zero height to remove the underline
// height: 0,
// color: Colors.transparent,
// ),
// ),
// ))
// ]),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// margin: EdgeInsets.only(left: 5),
// child: Column(children: [
// Container(
// margin: EdgeInsets.only(left: 10),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'Expected CTC ',
// children: <InlineSpan>[
// TextSpan(
// text: '*',
// style: TextStyle(color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext, fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height / 13,
// child: Container(
// // width: MediaQuery.of(context).size.width/2.67,
// height: 35,
// padding: EdgeInsets.only(left: 20,right: 40),
//
// decoration: const BoxDecoration(
// color: Color(0xffF6F6F6),
// // borderRadius: BorderRadius.circular(10),
// // border:,
// ),
// child: DropdownButton<String>(
// value: EctcOption,
// //elevation: 5,
// style: TextStyle(color: Colors.black87),
//
// items: <String>[
// 'less than 10 L',
// 'equal to 10L',
// 'more than 10L',
// ].map<DropdownMenuItem<String>>(
// (String value) {
// return DropdownMenuItem<String>(
// value: value,
// child: Text(value),
// );
// }).toList(),
//
// hint: Text(
// "Expected CTC",
// style: TextStyle(
// color: colors.hinttext,
// fontSize: 14,
// fontWeight: FontWeight.w500),
// ),
// onChanged: (String? value) {
// setState(() {
// EctcOption = value;
//
// });
// },
// icon: Padding(
// padding: EdgeInsets.only(left: 125),
// // Adjust the right padding as needed
// child: Icon(
// Icons.arrow_drop_down,
// size: 30,
// color: Colors.grey,
// ),
// ),
// underline: Container(
// // Use a container with zero height to remove the underline
// height: 0,
// color: Colors.transparent,
// ),
// ),
// ))
// ]),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// margin: EdgeInsets.only(left: 10),
// child: Column(children: [
// Container(
// margin: EdgeInsets.only(left: 5),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'Job Type ',
// children: <InlineSpan>[
// TextSpan(
// text: '*',
// style: TextStyle(color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext, fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height / 13,
// child: Container(
// // width: MediaQuery.of(context).size.width/2.67,
// height: 35,
// padding: EdgeInsets.only(left: 20,right: 40),
//
// decoration: const BoxDecoration(
// color: Color(0xffF6F6F6),
// // borderRadius: BorderRadius.circular(10),
// // border:,
// ),
// child: DropdownButton<String>(
// value: jobOption,
// //elevation: 5,
// style: TextStyle(color: Colors.black87),
//
// items: <String>[
// 'Manager',
// 'Developer',
// ].map<DropdownMenuItem<String>>(
// (String value) {
// return DropdownMenuItem<String>(
// value: value,
// alignment: Alignment.centerRight,
// child: Text(value),
// );
// }).toList(),
//
// hint: Text(
// "Job Role",
// style: TextStyle(
// color: colors.hinttext,
// fontSize: 14,
// fontWeight: FontWeight.w500),
// ),
// onChanged: (String? value) {
// setState(() {
// jobOption = value;
//
// });
// },
// icon: Padding(
// padding: EdgeInsets.only(left: 150),
// // Adjust the right padding as needed
// child: Icon(
// Icons.arrow_drop_down,
// size: 30,
// color: Colors.grey,
// ),
// ),
// underline: Container(
// // Use a container with zero height to remove the underline
// height: 0,
// color: Colors.transparent,
// ),
// ),
// ))
// ]),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// margin: EdgeInsets.only(left: 10, right: 10),
// child: Column(
// children: [
// Container(
// margin: EdgeInsets.only(left: 5),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'Key Skills ',
// children: <InlineSpan>[
// TextSpan(
// text: '*',
// style:
// TextStyle(color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext, fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height / 13,
// child: Card(
// elevation: 2,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(14),
// ),
// child: TextFormField(
// controller: ks,
// keyboardType: TextInputType.streetAddress,
// // maxLength: widget.length,
// // controller: widget.controller,
// decoration: InputDecoration(
// contentPadding:
// EdgeInsets.only(top: 20, left: 20),
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide: BorderSide(
// color: Colors.transparent),
// ),
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide:
// BorderSide(color: Colors.white),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide:
// BorderSide(color: Colors.white),
// ),
// filled: true,
// fillColor: Colors.white,
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// margin: EdgeInsets.only(left: 10, right: 10),
// child: Column(
// children: [
// Container(
// margin: EdgeInsets.only(left: 5),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'Percentage/CGPA ',
// children: <InlineSpan>[
// TextSpan(
// text: '*',
// style:
// TextStyle(color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext, fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height / 13,
// child: Card(
// elevation: 2,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(14),
// ),
// child: TextFormField(
// controller: cgpa,
// keyboardType: TextInputType.streetAddress,
// // maxLength: widget.length,
// // controller: widget.controller,
// decoration: InputDecoration(
// contentPadding:
// EdgeInsets.only(top: 20, left: 20),
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide: BorderSide(
// color: Colors.transparent),
// ),
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide:
// BorderSide(color: Colors.white),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide:
// BorderSide(color: Colors.white),
// ),
// filled: true,
// fillColor: Colors.white,
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// margin: EdgeInsets.only(left: 10),
// child: Column(children: [
// Container(
// margin: EdgeInsets.only(left: 5),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'Work Experience ',
// children: <InlineSpan>[
// TextSpan(
// text: '*',
// style: TextStyle(color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext, fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height / 13,
// child: Container(
// // width: MediaQuery.of(context).size.width/2.67,
// height: 35,
// padding: EdgeInsets.only(left: 40),
//
// decoration: const BoxDecoration(
// color: Color(0xffF6F6F6),
// // borderRadius: BorderRadius.circular(10),
// // border:,
// ),
// child: DropdownButton<String>(
// value: jobOption2,
// //elevation: 5,
// style: TextStyle(color: Colors.black87),
//
// items: <String>[
// 'Manager',
// 'Developer',
// ].map<DropdownMenuItem<String>>(
// (String value) {
// return DropdownMenuItem<String>(
// value: value,
// alignment: Alignment.centerRight,
// child: Text(value),
// );
// }).toList(),
//
// hint: Text(
// "Work Experience",
// style: TextStyle(
// color: colors.hinttext,
// fontSize: 14,
// fontWeight: FontWeight.w500),
// ),
// onChanged: (String? value) {
// setState(() {
// jobOption2 = value;
// });
// },
// icon: Padding(
// padding: EdgeInsets.only(left: 120),
// // Adjust the right padding as needed
// child: Icon(
// Icons.arrow_drop_down,
// size: 30,
// color: Colors.grey,
// ),
// ),
// underline: Container(
// // Use a container with zero height to remove the underline
// height: 0,
// color: Colors.transparent,
// ),
// ),
// ))
// ]),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// margin: EdgeInsets.only(left: 10),
// child: Column(children: [
// Container(
// margin: EdgeInsets.only(left: 5),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'Specialization ',
// children: <InlineSpan>[
// TextSpan(
// text: '*',
// style: TextStyle(color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext, fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height / 13,
// child: Container(
// // width: MediaQuery.of(context).size.width/2.67,
// height: 35,
// padding: EdgeInsets.only(left: 35),
//
// decoration: const BoxDecoration(
// color: Color(0xffF6F6F6),
// // borderRadius: BorderRadius.circular(10),
// // border:,
// ),
// child: DropdownButton<String>(
// value: jobOption3,
// //elevation: 5,
// style: TextStyle(color: Colors.black87),
//
// items: <String>[
// 'Manager',
// 'Developer',
// ].map<DropdownMenuItem<String>>(
// (String value) {
// return DropdownMenuItem<String>(
// value: value,
// alignment: Alignment.centerRight,
// child: Text(value),
// );
// }).toList(),
//
// hint: Text(
// "Specialization",
// style: TextStyle(
// color: colors.hinttext,
// fontSize: 14,
// fontWeight: FontWeight.w500),
// ),
// onChanged: (String? value) {
// setState(() {
// jobOption3 = value;
//
// });
// },
// icon: Padding(
// padding: EdgeInsets.only(left: 140),
// // Adjust the right padding as needed
// child: Icon(
// Icons.arrow_drop_down,
// size: 30,
// color: Colors.grey,
// ),
// ),
// underline: Container(
// // Use a container with zero height to remove the underline
// height: 0,
// color: Colors.transparent,
// ),
// ),
// ))
// ]),
// ),
// SizedBox(
// height: 10,
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// child: Row(
// children: [
// SizedBox(
// height: 10,
// ),
// Container(
// // margin: EdgeInsets.only(left: 30,right: 30),
// width: 170,
// child: Column(children: [
// Container(
// margin: EdgeInsets.only(right: 20),
// child: Text.rich(
// TextSpan(
// text: 'Notice Period ',
// children: <InlineSpan>[
// TextSpan(
// text: '*',
// style: TextStyle(
// color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext,
// fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// // width: MediaQuery.of(context).size.width,
// // height: MediaQuery.of(context).size.height/13,
// child: Container(
// // width: MediaQuery.of(context).size.width/2.67,
// height: 35,
// padding: EdgeInsets.only(left: 25),
//
// decoration: const BoxDecoration(
// color: Color(0xffF6F6F6),
// // borderRadius: BorderRadius.circular(10),
// // border:,
// ),
// child: DropdownButton<String>(
// value: jobOption4,
// //elevation: 5,
// style: TextStyle(color: Colors.black87),
//
// items: <String>[
// 'Manager',
// 'Developer',
// ].map<DropdownMenuItem<String>>(
// (String value) {
// return DropdownMenuItem<String>(
// value: value,
// alignment: Alignment.centerRight,
// child: Text(value),
// );
// }).toList(),
//
// hint: Text(
// "Select",
// style: TextStyle(
// color: colors.hinttext,
// fontSize: 14,
// fontWeight: FontWeight.w500),
// ),
// onChanged: (String? value) {
// setState(() {
// jobOption4 = value;
// // var b = _chosenValue!;
// // int nol = int.parse(b);
// // notice = nol;
// });
// },
// icon: Padding(
// padding: EdgeInsets.only(left: 10),
// // Adjust the right padding as needed
// child: Icon(
// Icons.arrow_drop_down,
// size: 30,
// color: Colors.grey,
// ),
// ),
// underline: Container(
// // Use a container with zero height to remove the underline
// height: 0,
// color: Colors.transparent,
// ),
// ),
// ))
// ]),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// width: 130,
// margin: EdgeInsets.only(right: 30),
// child: Column(
// children: [
// Container(
// margin: EdgeInsets.only(left: 20),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'Age ',
// children: <InlineSpan>[
// TextSpan(
// text: '',
// style: TextStyle(
// color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext,
// fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// width:
// MediaQuery.of(context).size.width / 3,
// height:
// MediaQuery.of(context).size.height /
// 20,
// margin: EdgeInsets.only(left: 10),
// child: Card(
// elevation: 2,
// shape: RoundedRectangleBorder(
// borderRadius:
// BorderRadius.circular(5),
// ),
// child: TextFormField(
// controller: age,
// keyboardType:
// TextInputType.streetAddress,
// // maxLength: widget.length,
// // controller: widget.controller,
// decoration: InputDecoration(
// // contentPadding: EdgeInsets.only(top: 20,left: 20),
// border: OutlineInputBorder(
// borderRadius:
// BorderRadius.circular(20),
// borderSide: BorderSide(
// color: Colors.transparent),
// ),
// enabledBorder: OutlineInputBorder(
// borderRadius:
// BorderRadius.circular(20),
// borderSide: BorderSide(
// color: Colors.white),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius:
// BorderRadius.circular(20),
// borderSide: BorderSide(
// color: Colors.white),
// ),
// filled: true,
// fillColor: Colors.white,
// ),
// ),
// ),
// ),
// SizedBox(
// width: 10,
// )
// ],
// ),
// ),
// ],
// ),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// margin: EdgeInsets.only(left: 10, right: 20),
// child: Column(
// children: [
// Container(
// margin: EdgeInsets.only(left: 5),
// alignment: Alignment.centerLeft,
// child: Text.rich(
// TextSpan(
// text: 'Upload Resume (DOCX/PDF) ',
// children: <InlineSpan>[
// TextSpan(
// text: '',
// style:
// TextStyle(color: colors.hinttext),
// ),
// ],
// style: TextStyle(
// color: colors.hinttext, fontSize: 12),
// ),
// ),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height / 13,
// child: Card(
// elevation: 2,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(14),
// ),
// child: TextFormField(
// controller: uplo,
// keyboardType: TextInputType.streetAddress,
// // maxLength: widget.length,
// // controller: widget.controller,
// decoration: InputDecoration(
// contentPadding:
// EdgeInsets.only(top: 20, left: 20),
// border: OutlineInputBorder(
// borderRadius:
// BorderRadius.circular(20),
// borderSide: BorderSide(
// color: Colors.transparent),
// ),
// enabledBorder: OutlineInputBorder(
// borderRadius:
// BorderRadius.circular(20),
// borderSide:
// BorderSide(color: Colors.white),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius:
// BorderRadius.circular(20),
// borderSide:
// BorderSide(color: Colors.white),
// ),
// filled: true,
// fillColor: Colors.white,
// suffixIconColor: colors.primary,
// suffixIcon: Icon(
// Icons.file_copy_outlined,
// size: 20,
// )),
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(
// height: 20,
// ),
// Container(
// height: 50,
// width: 300,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.all(Radius.circular(15)),
// color: colors.primary,
// ),
// child: TextButton(
// onPressed: () async {
// print(list);
// print(iud);
// print(list.elementAt(9)["first"]);
// print(uyt = list.elementAt(iud)["id"]);
// uyt = list.elementAt(iud)["id"];
// String id = DateTime.now()
//     .microsecondsSinceEpoch
//     .toString();
// await FirebaseFirestore.instance
//     .collection("user")
//     .doc("jobs_seeker")
//     .collection("userj")
//     .doc(uyt)
//     .collection("profile").doc(id)
//     .set({
// 'id': id,
// 'first': firstj.text.toString(),
// 'last': lastj.text.toString(),
// 'email': emailj.text.toString(),
// 'mobile': mobilej.text.toString(),
// "age": age.text.toString(),
//
// "current address": ca.text.toString(),
// "year passing": yp.text.toString(),
// "keyskill": ks.text.toString(),
// "cgpa": cgpa.text.toString(),
// // "resume":uplo.text.toString(),
// "qualification": _chosenValue,
// "location": locationOption,
// "currect ctc": CctcOption,
// "expected ctc": EctcOption,
// "job role": jobOption,
// "work experience": jobOption2,
// "specificaliztion": jobOption3,
// "notice": jobOption4,
// // "specaialization"=sp,
// }).then((value) => null);
//
// // if(_formkey.currentState!.validate()){
// //   Navigator.push(context, MaterialPageRoute(
// //       builder: (context) => food()));
// // }
// },
// child: Text(
// 'Update',
// style: TextStyle(
// color: Colors.white,
// fontSize: 15,
// ),
// ),
// ),
// )
// ]))