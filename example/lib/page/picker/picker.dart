import 'package:voo/picker/picker_bean.dart';
import 'package:voo/picker/picker_linkage_bean.dart';
import 'package:voo/picker/voo_linkage_picker.dart';
import 'package:voo/picker/voo_picker.dart';
import 'package:voo/toast/index.dart';

import '../../comm/ui_component.dart';
import 'package:flutter/material.dart';


///选择器
class PickerPage extends StatelessWidget {
  ///内容视图
  Widget contentView(BuildContext context) {
    List<Widget> children = [];

    children.add(UiComponent.getListTile(title: '单项选择器'));
    children.add(VooPicker(
      list: [
        PickerBean(list: ['台中市', '高雄市', '台北市', '莲花市', '基隆市'])
      ],
      title: '城市',
      onConfirm: (value) {
        VooToast.showToast(context, msg: value);
      },
    ));

    children.add(UiComponent.getListTile(title: '多列选择器'));
    children.add(VooPicker(
      list: [
        PickerBean(list: ['1房', '2房', '3房', '4房', '5房']),
        PickerBean(list: ['1厅', '2厅', '3厅']),
        PickerBean(list: ['新屋', '老屋', '毛坯', '中古屋', '自地自建'])
      ],
      title: '房型',
      onConfirm: (value) {
        VooToast.showToast(context, msg: value);
      },
    ));

    children.add(UiComponent.getListTile(title: '级联选择器'));
    children.add(VooLinkagePicker(
      bean: PickerLinkageBean(
        child: [
          PickerLinkageBean(
            title: '广东省',
            child: [
              PickerLinkageBean(
                title: '深圳市',
                child: [
                  PickerLinkageBean(title: '龙华区'),
                  PickerLinkageBean(title: '福田区'),
                  PickerLinkageBean(title: '罗湖区'),
                ],
              ),
              PickerLinkageBean(
                title: '广州市',
                child: [
                  PickerLinkageBean(title: '越秀区'),
                  PickerLinkageBean(title: '天河区'),
                  PickerLinkageBean(title: '白云区'),
                ],
              ),
              PickerLinkageBean(
                title: '佛山市',
                child: [
                  PickerLinkageBean(title: '三水区'),
                  PickerLinkageBean(title: '南海区'),
                  PickerLinkageBean(title: '高明区'),
                ],
              ),
            ],
          ),
          PickerLinkageBean(
            title: '浙江省',
            child: [
              PickerLinkageBean(
                title: '杭州市',
                child: [
                  PickerLinkageBean(title: '上城区'),
                  PickerLinkageBean(title: '下城区'),
                  PickerLinkageBean(title: '西湖区'),
                ],
              ),
              PickerLinkageBean(
                title: '宁波市',
                child: [
                  PickerLinkageBean(title: '海曙区'),
                  PickerLinkageBean(title: '江东区'),
                  PickerLinkageBean(title: '江北区'),
                ],
              ),
              PickerLinkageBean(
                title: '温州市',
                child: [
                  PickerLinkageBean(title: '鹿城区'),
                  PickerLinkageBean(title: '龙湾区'),
                  PickerLinkageBean(title: '瓯海区'),
                ],
              ),
            ],
          ),
          PickerLinkageBean(
            title: '福建省',
            child: [
              PickerLinkageBean(
                title: '福州市',
                child: [
                  PickerLinkageBean(title: '台江区'),
                  PickerLinkageBean(title: '马尾区'),
                  PickerLinkageBean(title: '连江县'),
                ],
              ),
              PickerLinkageBean(
                title: '厦门市',
                child: [
                  PickerLinkageBean(title: '思明区'),
                  PickerLinkageBean(title: '海沧区'),
                  PickerLinkageBean(title: '同安区'),
                ],
              ),
              PickerLinkageBean(
                title: '莆田市',
                child: [
                  PickerLinkageBean(title: '荔城区'),
                  PickerLinkageBean(title: '涵江区'),
                  PickerLinkageBean(title: '城厢区'),
                ],
              ),
            ],
          ),
        ],
        select: 1,
      ),
      title: '地区选择',
      onConfirm: (value) {
        VooToast.showToast(context, msg: value);
      },
    ));

    return SingleChildScrollView(child: Column(children: children));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiComponent.getTitleBar(title: 'PickerPreview'),
      body: contentView(context),
    );
  }
}
