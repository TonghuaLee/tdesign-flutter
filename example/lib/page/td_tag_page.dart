import 'package:flutter/material.dart';
import 'package:tdesign_flutter/td_export.dart';
import '../../base/example_widget.dart';
import '../annotation/demo.dart';

class TDTagPage extends StatelessWidget {
  const TDTagPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
        title: tdTitle(context),
        desc: '用于表明主体的类目，属性或状态',
        exampleCodeGroup: 'tag',
        children: [
          ExampleModule(title: '组件类型', children: [
            ExampleItem(
                desc: '基础标签',
                ignoreCode: true,
                builder: (context) {
                  return Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      CodeWrapper(builder: _buildSimpleFillTag),
                      const SizedBox(
                        width: 16,
                      ),
                      CodeWrapper(builder: _buildSimpleOutlineTag),
                    ],
                  );
                }),
            ExampleItem(
                desc: '圆弧标签',
                ignoreCode: true,
                builder: (context) {
                  return Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      CodeWrapper(builder: _buildCircleFillTag),
                      const SizedBox(
                        width: 16,
                      ),
                      CodeWrapper(builder: _buildCircleOutlineTag),
                    ],
                  );
                }),
            ExampleItem(
                desc: '带图标的标签',
                ignoreCode: true,
                builder: (context) {
                  return Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      CodeWrapper(builder: _buildIconFillTag),
                      const SizedBox(
                        width: 16,
                      ),
                      CodeWrapper(builder: _buildIconOutlineTag),
                    ],
                  );
                }),
            ExampleItem(
                desc: '可关闭的标签',
                ignoreCode: true,
                builder: (context) {
                  return Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      CodeWrapper(builder: _buildCloseFillTag),
                      const SizedBox(
                        width: 16,
                      ),
                      CodeWrapper(builder: _buildCloseOutlineTag),
                    ],
                  );
                }),
            ExampleItem(
                desc: '可选中的标签',
                ignoreCode: true,
                builder: (context) {
                  return Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: Wrap(spacing: 8, direction: Axis.vertical, children: [
                      // 非浅色填充
                      Row(
                        children: [
                          const SizedBox(
                            width: 80,
                            child: TDText('dark'),
                          ),
                          CodeWrapper(builder: _buildDarkSelectTags)
                        ],
                      ),
                      // 浅色填充
                      Row(
                        children: [
                          const SizedBox(
                            width: 80,
                            child: TDText('light'),
                          ),
                          CodeWrapper(builder: _buildLightSelectTags)
                        ],
                      ),
                      // 非浅色描边
                      Row(
                        children: [
                          const SizedBox(
                            width: 80,
                            child: TDText('outline'),
                          ),
                          CodeWrapper(builder: _buildOutlineSelectTags)
                        ],
                      ),
                      // 浅色描边
                      Row(
                        children: [
                          const SizedBox(
                            width: 80,
                            child: TDText('light-outline'),
                          ),
                          CodeWrapper(builder: _buildLightOutlineSelectTags)
                        ],
                      ),
                    ]),
                  );
                }),
          ]),
          ExampleModule(title: '组件状态（主题）', children: [
            ExampleItem(
                desc: '展示型标签',
                ignoreCode: true,
                builder: (context) {
                  return Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: Wrap(
                      spacing: 8,
                      direction: Axis.vertical,
                      children: [
                        // 浅色填充
                        CodeWrapper(builder: _buildLightShowTags),

                        // 非浅色填充
                        CodeWrapper(builder: _buildDarkShowTags),

                        // 非浅色描边
                        CodeWrapper(builder: _buildOutlineShowTags),

                        // 浅色描边
                        CodeWrapper(builder: _buildLightOutlineShowTags),
                      ],
                    ),
                  );
                }),
          ]),
          ExampleModule(title: '组件尺寸', children: [
            ExampleItem(
                ignoreCode: true,
                builder: (context) {
                  return Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: Wrap(spacing: 8, direction: Axis.vertical, children: [
                      // 不带关闭
                      CodeWrapper(builder: _buildAllSizeTags),
                      // 带关闭
                      CodeWrapper(builder: _buildAllSizeCloseTags),
                    ]),
                  );
                })
          ])
        ],
        test: [
          ExampleItem(
              desc: '非浅色填充的各主题展示',
              ignoreCode: true,
              builder: (context) {
                return Wrap(
                  spacing: 8,
                  children: const [
                    TDTag(
                      '标签文字',
                    ),
                    TDTag(
                      '标签文字',
                      theme: TDTagTheme.primary,
                    ),
                    TDTag(
                      '标签文字',
                      theme: TDTagTheme.warning,
                    ),
                    TDTag(
                      '标签文字',
                      theme: TDTagTheme.danger,
                    ),
                    TDTag(
                      '标签文字',
                      theme: TDTagTheme.success,
                    ),
                  ],
                );
              }),
          ExampleItem(
              desc: '浅色填充的各主题展示',
              ignoreCode: true,
              builder: (context) {
                return Wrap(
                  spacing: 8,
                  children: const [
                    TDTag(
                      '标签文字',
                      isLight: true,
                    ),
                    TDTag(
                      '标签文字',
                      isLight: true,
                      theme: TDTagTheme.primary,
                    ),
                    TDTag(
                      '标签文字',
                      isLight: true,
                      theme: TDTagTheme.warning,
                    ),
                    TDTag(
                      '标签文字',
                      isLight: true,
                      theme: TDTagTheme.danger,
                    ),
                    TDTag(
                      '标签文字',
                      isLight: true,
                      theme: TDTagTheme.success,
                    ),
                  ],
                );
              }),
          ExampleItem(
              desc: '非浅色描边的各主题展示',
              ignoreCode: true,
              builder: (context) {
                return Wrap(
                  spacing: 8,
                  children: const [
                    TDTag(
                      '标签文字',
                      isOutline: true,
                    ),
                    TDTag(
                      '标签文字',
                      isOutline: true,
                      theme: TDTagTheme.primary,
                    ),
                    TDTag(
                      '标签文字',
                      isOutline: true,
                      theme: TDTagTheme.warning,
                    ),
                    TDTag(
                      '标签文字',
                      isOutline: true,
                      theme: TDTagTheme.danger,
                    ),
                    TDTag(
                      '标签文字',
                      isOutline: true,
                      theme: TDTagTheme.success,
                    ),
                  ],
                );
              }),
          ExampleItem(
              desc: '浅色描边的各主题展示',
              ignoreCode: true,
              builder: (context) {
                return Wrap(
                  spacing: 8,
                  children: const [
                    TDTag(
                      '标签文字',
                      isOutline: true,
                      isLight: true,
                    ),
                    TDTag(
                      '标签文字',
                      isOutline: true,
                      isLight: true,
                      theme: TDTagTheme.primary,
                    ),
                    TDTag(
                      '标签文字',
                      isOutline: true,
                      isLight: true,
                      theme: TDTagTheme.warning,
                    ),
                    TDTag(
                      '标签文字',
                      isOutline: true,
                      isLight: true,
                      theme: TDTagTheme.danger,
                    ),
                    TDTag(
                      '标签文字',
                      isOutline: true,
                      isLight: true,
                      theme: TDTagTheme.success,
                    ),
                  ],
                );
              }),
          ExampleItem(
              desc: '各主题关闭图标颜色不会变',
              ignoreCode: true,
              builder: (context) {
                return Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: const [
                    TDTag(
                      '标签文字',
                      isOutline: true,
                      needCloseIcon: true,
                    ),
                    TDTag(
                      '标签文字',
                      isOutline: true,
                      needCloseIcon: true,
                      theme: TDTagTheme.primary,
                    ),
                    TDTag(
                      '标签文字',
                      isOutline: true,
                      needCloseIcon: true,
                      theme: TDTagTheme.warning,
                    ),
                    TDTag(
                      '标签文字',
                      isOutline: true,
                      needCloseIcon: true,
                      theme: TDTagTheme.danger,
                    ),
                    TDTag(
                      '标签文字',
                      isOutline: true,
                      needCloseIcon: true,
                      theme: TDTagTheme.success,
                    ),
                    TDTag(
                      '标签文字',
                      needCloseIcon: true,
                    ),
                    TDTag(
                      '标签文字',
                      needCloseIcon: true,
                      theme: TDTagTheme.primary,
                    ),
                    TDTag(
                      '标签文字',
                      needCloseIcon: true,
                      theme: TDTagTheme.warning,
                    ),
                    TDTag(
                      '标签文字',
                      needCloseIcon: true,
                      theme: TDTagTheme.danger,
                    ),
                    TDTag(
                      '标签文字',
                      needCloseIcon: true,
                      theme: TDTagTheme.success,
                    ),
                  ],
                );
              }),
          ExampleItem(
              desc: '带图标可关闭的标签',
              ignoreCode: true,
              builder: (context) {
                return Row(
                  children: const [
                    SizedBox(
                      width: 16,
                    ),
                    TDTag(
                      '标签文字',
                      icon: Icon(
                        TDIcons.discount,
                        size: 14,
                      ),
                      needCloseIcon: true,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    TDTag(
                      '标签文字',
                      icon: Icon(
                        TDIcons.discount,
                        size: 14,
                      ),
                      needCloseIcon: true,
                      isOutline: true,
                    ),
                  ],
                );
              }),
          ExampleItem(
              desc: '各尺寸测试',
              ignoreCode: true,
              builder: (context) {
                return Wrap(spacing: 8, direction: Axis.vertical, children: [
                  // 带图标和关闭
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    child: Wrap(spacing: 8, runSpacing: 8, children: const [
                      TDTag(
                        '加大尺寸',
                        icon: Icon(
                          TDIcons.discount,
                          size: 14,
                        ),
                        needCloseIcon: true,
                        size: TDTagSize.extraLarge,
                      ),
                      TDTag(
                        '大尺寸',
                        icon: Icon(
                          TDIcons.discount,
                          size: 14,
                        ),
                        needCloseIcon: true,
                        size: TDTagSize.large,
                      ),
                      TDTag(
                        '中尺寸',
                        icon: Icon(
                          TDIcons.discount,
                          size: 14,
                        ),
                        needCloseIcon: true,
                        size: TDTagSize.medium,
                      ),
                      TDTag(
                        '小尺寸',
                        icon: Icon(
                          TDIcons.discount,
                          size: 14,
                        ),
                        needCloseIcon: true,
                        size: TDTagSize.small,
                      ),
                    ]),
                  ),
                  // 带图标和关闭,描边
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    child: Wrap(spacing: 8, runSpacing: 8, children: const [
                      TDTag(
                        '加大尺寸',
                        isOutline: true,
                        icon: Icon(
                          TDIcons.discount,
                          size: 14,
                        ),
                        needCloseIcon: true,
                        size: TDTagSize.extraLarge,
                      ),
                      TDTag(
                        '大尺寸',
                        isOutline: true,
                        icon: Icon(
                          TDIcons.discount,
                          size: 14,
                        ),
                        needCloseIcon: true,
                        size: TDTagSize.large,
                      ),
                      TDTag(
                        '中尺寸',
                        isOutline: true,
                        icon: Icon(
                          TDIcons.discount,
                          size: 14,
                        ),
                        needCloseIcon: true,
                        size: TDTagSize.medium,
                      ),
                      TDTag(
                        '小尺寸',
                        isOutline: true,
                        icon: Icon(
                          TDIcons.discount,
                          size: 14,
                        ),
                        needCloseIcon: true,
                        size: TDTagSize.small,
                      ),
                    ]),
                  ),
                ]);
              }),
        ]);
  }

  @Demo(group: 'tag')
  TDTag _buildSimpleOutlineTag(BuildContext context) {
    return const TDTag(
      '标签文字',
      isOutline: true,
    );
  }

  @Demo(group: 'tag')
  TDTag _buildSimpleFillTag(BuildContext context) {
    return const TDTag('标签文字');
  }

  @Demo(group: 'tag')
  Widget _buildCircleFillTag(BuildContext context) {
    return const TDTag(
      '标签文字',
      isCircle: true,
    );
  }

  @Demo(group: 'tag')
  Widget _buildCircleOutlineTag(BuildContext context) {
    return const TDTag(
      '标签文字',
      isCircle: true,
      isOutline: true,
    );
  }

  @Demo(group: 'tag')
  Widget _buildIconFillTag(BuildContext context) {
    return const TDTag(
      '标签文字',
      icon: Icon(
        TDIcons.discount,
        size: 14,
      ),
    );
  }

  @Demo(group: 'tag')
  Widget _buildIconOutlineTag(BuildContext context) {
    return const TDTag(
      '标签文字',
      icon: Icon(
        TDIcons.discount,
        size: 14,
      ),
      isOutline: true,
    );
  }

  @Demo(group: 'tag')
  Widget _buildCloseFillTag(BuildContext context) {
    return TDTag(
      '标签文字',
      needCloseIcon: true,
      onCloseTap: () {
        TDToast.showText('点击关闭', context: context);
      },
    );
  }

  @Demo(group: 'tag')
  Widget _buildCloseOutlineTag(BuildContext context) {
    return TDTag('标签文字', needCloseIcon: true, isOutline: true, onCloseTap: () {
      TDToast.showText('点击关闭', context: context);
    });
  }

  @Demo(group: 'tag')
  Widget _buildDarkSelectTags(BuildContext context) {
    return Wrap(spacing: 8, children: const [
      TDSelectTag(
        '未选中态',
        theme: TDTagTheme.primary,
      ),
      TDSelectTag(
        '已选中态',
        theme: TDTagTheme.primary,
        isSelected: true,
      ),
      TDSelectTag(
        '不可选态',
        theme: TDTagTheme.primary,
        disableSelect: true,
      ),
    ]);
  }

  @Demo(group: 'tag')
  Widget _buildLightSelectTags(BuildContext context) {
    return Wrap(spacing: 8, children: const [
      TDSelectTag(
        '未选中态',
        theme: TDTagTheme.primary,
        isLight: true,
      ),
      TDSelectTag(
        '已选中态',
        theme: TDTagTheme.primary,
        isLight: true,
        isSelected: true,
      ),
      TDSelectTag(
        '不可选态',
        theme: TDTagTheme.primary,
        isLight: true,
        disableSelect: true,
      ),
    ]);
  }

  @Demo(group: 'tag')
  Widget _buildOutlineSelectTags(BuildContext context) {
    return Wrap(spacing: 8, children: const [
      TDSelectTag(
        '未选中态',
        theme: TDTagTheme.primary,
        isOutline: true,
      ),
      TDSelectTag(
        '已选中态',
        theme: TDTagTheme.primary,
        isOutline: true,
        isSelected: true,
      ),
      TDSelectTag(
        '不可选态',
        theme: TDTagTheme.primary,
        isOutline: true,
        disableSelect: true,
      ),
    ]);
  }

  @Demo(group: 'tag')
  Widget _buildLightOutlineSelectTags(BuildContext context) {
    return Wrap(spacing: 8, children: const [
      TDSelectTag(
        '未选中态',
        theme: TDTagTheme.primary,
        isOutline: true,
        isLight: true,
      ),
      TDSelectTag(
        '已选中态',
        theme: TDTagTheme.primary,
        isOutline: true,
        isLight: true,
        isSelected: true,
      ),
      TDSelectTag(
        '不可选态',
        theme: TDTagTheme.primary,
        isOutline: true,
        isLight: true,
        disableSelect: true,
      ),
    ]);
  }

  @Demo(group: 'tag')
  Widget _buildLightShowTags(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: const [
        TDTag('默认', isLight: true),
        TDTag(
          '主要',
          isLight: true,
          theme: TDTagTheme.primary,
        ),
        TDTag(
          '警告',
          isLight: true,
          theme: TDTagTheme.warning,
        ),
        TDTag(
          '危险',
          isLight: true,
          theme: TDTagTheme.danger,
        ),
        TDTag(
          '成功',
          isLight: true,
          theme: TDTagTheme.success,
        ),
      ],
    );
  }

  @Demo(group: 'tag')
  Widget _buildDarkShowTags(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: const [
        TDTag('默认'),
        TDTag(
          '主要',
          theme: TDTagTheme.primary,
        ),
        TDTag(
          '警告',
          theme: TDTagTheme.warning,
        ),
        TDTag(
          '危险',
          theme: TDTagTheme.danger,
        ),
        TDTag(
          '成功',
          theme: TDTagTheme.success,
        ),
      ],
    );
  }

  @Demo(group: 'tag')
  Widget _buildOutlineShowTags(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: const [
        TDTag('默认', isOutline: true),
        TDTag(
          '主要',
          isOutline: true,
          theme: TDTagTheme.primary,
        ),
        TDTag(
          '警告',
          isOutline: true,
          theme: TDTagTheme.warning,
        ),
        TDTag(
          '危险',
          isOutline: true,
          theme: TDTagTheme.danger,
        ),
        TDTag(
          '成功',
          isOutline: true,
          theme: TDTagTheme.success,
        ),
      ],
    );
  }

  @Demo(group: 'tag')
  Widget _buildLightOutlineShowTags(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: const [
        TDTag('默认', isOutline: true, isLight: true),
        TDTag(
          '主要',
          isOutline: true,
          isLight: true,
          theme: TDTagTheme.primary,
        ),
        TDTag(
          '警告',
          isOutline: true,
          isLight: true,
          theme: TDTagTheme.warning,
        ),
        TDTag(
          '危险',
          isOutline: true,
          isLight: true,
          theme: TDTagTheme.danger,
        ),
        TDTag(
          '成功',
          isOutline: true,
          isLight: true,
          theme: TDTagTheme.success,
        ),
      ],
    );
  }

  @Demo(group: 'tag')
  Widget _buildAllSizeTags(BuildContext context) {
    return Wrap(spacing: 8, children: const [
      TDTag(
        '加大尺寸',
        size: TDTagSize.extraLarge,
      ),
      TDTag(
        '大尺寸',
        size: TDTagSize.large,
      ),
      TDTag(
        '中尺寸',
        size: TDTagSize.medium,
      ),
      TDTag(
        '小尺寸',
        size: TDTagSize.small,
      ),
    ]);
  }

  @Demo(group: 'tag')
  Widget _buildAllSizeCloseTags(BuildContext context) {
    return Wrap(spacing: 8, children: const [
      TDTag(
        '加大尺寸',
        needCloseIcon: true,
        size: TDTagSize.extraLarge,
      ),
      TDTag(
        '大尺寸',
        needCloseIcon: true,
        size: TDTagSize.large,
      ),
      TDTag(
        '中尺寸',
        needCloseIcon: true,
        size: TDTagSize.medium,
      ),
      TDTag(
        '小尺寸',
        needCloseIcon: true,
        size: TDTagSize.small,
      ),
    ]);
  }
}
