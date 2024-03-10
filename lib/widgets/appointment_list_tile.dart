import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:myapp/common/functions.dart';
import 'package:myapp/constants/size.dart';
import 'package:myapp/pages/full_view_appointment.dart';
import 'package:myapp/widgets/text.dart';

class AppointmentTile extends StatefulWidget {
  const AppointmentTile(
      {super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  State<AppointmentTile> createState() => _AppointmentTileState();
}

class _AppointmentTileState extends State<AppointmentTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  final Widget img = CachedNetworkImage(
          alignment: Alignment.center,
          imageUrl: "https://source.unsplash.com/featured?technology",
          width: 80,
          fit: BoxFit.cover,
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        );

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Badge(
      label: const Text('2 hours left'),
      alignment: AlignmentDirectional.topStart,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: ListTile(
            onTap: (){   pushPageTo(context, FullViewAppointment(title: widget.title,subTitle: widget.subTitle,));},
            leading: Container(
              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
              child: img),
            title: Headding(text:widget.title, fontSize:15, fontWeight: AppSize.fw7),
            subtitle: Text(
              widget.subTitle,
              style: const TextStyle(fontSize: 15),
              maxLines: 2,
            ),
            trailing: IconButton(icon:const Icon(Icons.more_vert,),onPressed: (){
          
            },
            ),
          ),
        ),
      ),
    );
  }
}
