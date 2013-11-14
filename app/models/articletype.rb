class Articletype < ActiveRecord::Base
  belongs_to(:parent,
             :class_name=>'Articletype',
             :foreign_key=>'belongid')
  has_many(:childs,
           :class_name=>'Articletype',
           :foreign_key=>'belongid')

end
