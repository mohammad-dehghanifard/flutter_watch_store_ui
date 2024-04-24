import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key, required this.onChange, required this.selected});
  final Function(int pageIndex) onChange;
  final int selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(48),
          topLeft: Radius.circular(48),
        ),
        boxShadow: const [
          BoxShadow(color: Color(0xFFF1F2F6),blurRadius: 10,offset: Offset(0,-2))
        ],
        border: Border.all(color: const Color(0xFF707070).withOpacity(0.30)),
        color: Colors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: () => onChange(0), icon:  Icon(Icons.home,color: selected == 0 ? const Color(0xFF192038) : const Color(0xFF979797))),
          IconButton(onPressed: () => onChange(1), icon:  Icon(Icons.search,color: selected == 1 ? const Color(0xFF192038) : const Color(0xFF979797),)),
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF979797)),
              shape: BoxShape.circle,
              color: const Color(0xFF192038)
            ),
            child: const Icon(Icons.document_scanner,color: Colors.white,),
          ),
          IconButton(onPressed: () => onChange(2), icon: Icon(Icons.star_border,color: selected == 2 ? const Color(0xFF192038) : const Color(0xFF979797))),
          const CircleAvatar()
        ],
      ),
    );
  }
}
