import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../uitils/clor.dart';

class Tex extends StatefulWidget {
  final TextEditingController? controller;
  final IconData? icon;
  final keyboard;
  final String? hint;
  final color;
  final int? a;
  final FormFieldValidator ?vali;

  const Tex(
      {super.key,
      this.icon,
      this.keyboard,
      this.hint,
      this.color,
      this.a,
      this.controller, this.vali});

  @override
  State<Tex> createState() => _TexState();
}

class _TexState extends State<Tex> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Material(
        borderRadius: BorderRadius.circular(18),
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          width: MediaQuery.of(context).size.width / 7,
          height: MediaQuery.of(context).size.height / 15,
          child: Icon(
            widget.icon,
            color: widget.color,
            size: 30,
          ),
        ),
      ),
      Material(
        borderRadius: BorderRadius.circular(18),
        elevation: 10,
        child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.height / 15,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter ";
                  }
                  return null;
                },
                keyboardType: widget.keyboard,
                maxLength: widget.a,
                controller: widget.controller,
                decoration: InputDecoration(
                    hintText: widget.hint,
                    hintStyle: TextStyle(color: colors.hinttext),
                    border: InputBorder.none),
              ),
            )),
      ),
    ]);
  }
}

class Tex2 extends StatefulWidget {
  final  tex2;
  final textsize;
  final textfamily;
  final textcolor;
  final textweight;

  const Tex2(
      {super.key,
      this.tex2,
      this.textsize,
      this.textfamily,
      this.textcolor,
      this.textweight});

  @override
  State<Tex2> createState() => _Tex2State();
}

class _Tex2State extends State<Tex2> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        width: MediaQuery.of(context).size.width / 1.37,
        height: MediaQuery.of(context).size.height / 20,
        child: Text(widget.tex2 as String,
            style: TextStyle(
                fontSize: widget.textsize,
                fontFamily: widget.textfamily,
                color: widget.textcolor,
                fontWeight: widget.textweight)),
      ),
    );
  }
}


class Tex3 extends StatefulWidget {
  final TextEditingController? controller;
  final IconData? icon;
  final keyboard;
  final String? hint;
  final color;
  final heading;
  final int? a;
  const Tex3({super.key, this.controller, this.icon, this.keyboard, this.hint, this.color, this.a, this.heading});

  @override
  State<Tex3> createState() => _Tex3State();
}

class _Tex3State extends State<Tex3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 10,
            ),
            Text(
              widget.heading,
              style: TextStyle(
                  color: colors.hinttext,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            )
          ],
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height / 200),
        Material(
          borderRadius: BorderRadius.circular(18),
          elevation: 10,
          child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: MediaQuery.of(context).size.width / 10,
              height: MediaQuery.of(context).size.height / 15,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(

                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter ";
                    }
                    return null;
                  },
                  keyboardType: widget.keyboard,
                  maxLength: widget.a,
                  controller: widget.controller,
                  decoration: InputDecoration(
                      hintText: widget.hint,
                      hintStyle: TextStyle(color: colors.hinttext),
                      border: InputBorder.none),
                ),
              )),
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height / 50),
      ],
    );
  }
}


class Tex4 extends StatefulWidget {
  final TextEditingController ?Con;
  final String? hint;
  final TextInputType? key1;
  final int le;
  const Tex4({super.key, this.Con, this.key1, required this.le, this.hint});

  @override
  State<Tex4> createState() => _Tex4State();
}

class _Tex4State extends State<Tex4> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 10,
            ),
            Text(
              widget.hint!+"*",
              style: TextStyle(
                  color: colors.hinttext,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            )
          ],
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height / 200),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 20,
            ),
            Material(
              borderRadius: BorderRadius.circular(18),
              elevation: 10,
              child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  width: MediaQuery.of(context).size.width / 1.37,
                  height: MediaQuery.of(context).size.height / 19,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 20, bottom: 5),
                    child: TextFormField(style: TextStyle(color: colors.primary,fontFamily: "Poppins",),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(
                           widget.le
                        )
                      ],
                        keyboardType:widget.key1,
                         controller:widget.Con,
                        decoration: InputDecoration(
                          hintText: widget.hint,
                          hintStyle: TextStyle(color: colors.hinttext,fontFamily: "Poppins",),
                          border: InputBorder.none,
                        )

                    ),
                  )
              ),
            )],
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height / 50),
      ],
    );
  }
}


