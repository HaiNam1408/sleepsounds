import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class ListViewCustom extends StatelessWidget {
  const ListViewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
      scrollDirection: Axis.horizontal,
      children: [
        GestureDetector(
          onTap: (){},
          child: Stack(
            children: [
              Container(
                width: 65.w,
                height: 100.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: NetworkImage("https://bizweb.dktcdn.net/100/438/408/files/hinh-nen-thien-nhien-4k-yody-vn-1-jpeg.jpg?"),
                    fit: BoxFit.cover,
                    opacity: 0.8,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Tiếng Mưa Xuân',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 20,),
        GestureDetector(
          onTap: (){},
          child: Stack(
            children: [
              Container(
                width: 65.w,
                height: 100.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: NetworkImage("https://t4.ftcdn.net/jpg/02/98/13/93/360_F_298139354_B8MchbDhUhOuAfcewRxZ9AUOKV9vsWAt.jpg"),
                    fit: BoxFit.cover,
                    opacity: 0.8,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Đêm yên bình',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 20,),
        GestureDetector(
          onTap: (){},
          child: Stack(
            children: [
              Container(
                width: 65.w,
                height: 100.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: NetworkImage("https://media.istockphoto.com/id/502324324/photo/enjoyment.jpg?s=612x612&w=0&k=20&c=6PPFSorv0D_U7r3JQlymioQLfeqXyzCVNySJHVEOmEA="),
                    fit: BoxFit.cover,
                    opacity: 0.8,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Mưa với piano',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 20,),
      ],
    );
  }
}
