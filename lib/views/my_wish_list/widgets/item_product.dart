import 'package:flutter/material.dart';
import 'package:pro1/views/my_wish_list/model.dart';

class ItemProduct extends StatelessWidget {
  final ProductModel model;

  const ItemProduct({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  model.image,
                  height: 147,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: 8, end: 8),
                child: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      model.isFav ? Icons.favorite : Icons.favorite_outline,
                      color: model.isFav ? Theme.of(context).primaryColor : null,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Text(
                  model.title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(width: 2),
              Icon(
                Icons.star,
                color: Theme.of(context).primaryColor,
              ),
              Text(
                "${model.rate}",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff979696),
                ),
              ),
            ],
          ),
          Text(
            "\$${model.price}",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xffAB94A6),
            ),
          )
        ],
      ),
    );
  }
}
