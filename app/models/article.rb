class Article < ActiveRecord::Base

	enum_attr :status, in: [
    ['show',   1, '显示'],
    ['hidden', 2, '隐藏'],
    ['deleted',3, '删除']
  ]


  default_scope  {where(status: [SHOW, HIDDEN])}

end