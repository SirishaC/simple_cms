class AdminUser < ActiveRecord::Base
  #To Configure to different table
  #self.table_name = "admin_user"

  #shortway to access the table val
  #attr_accesor :first_name

  #LongWay
  #getter method
  # def last_name
  #  @last_name
  #end
  #Setter method
  #def last_name=(value)
   # @last_name = value
  #end
end
