Vim�UnDo� L����h7�5,��Z���ɥ�Ƚo��;                                      Y��p    _�                             ����                                                                                                                                                                                                                                                                                                                                                  V        Y�r�    �                  # test "the truth" do     #   assert true     # end5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Y�r�     �                   �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        Y�s
    �                       @user = User.new()5�_�                       F    ����                                                                                                                                                                                                                                                                                                                                                  V        Y�s3    �      
                 �             5�_�                    	       ����                                                                                                                                                                                                                                                                                                                            
           
           V        Y�s�    �      
             end�   	      
    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        Y�s�     �      	             test "should be valid" do�             5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                  V        Y�s�    �   	                end5�_�      	              
       ����                                                                                                                                                                                                                                                                                                                                                  V        Y�s�    �   
          5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                  V        Y�v�    �   
              5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                  V        Y���     �   
             5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                  V        Y��P     �               end5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Y��V     �   
             test "name should be present" do5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        Y��X     �                   @user.name ="        "5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        Y��[    �                   assert_not @user.valid?5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Y��c    �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Y��L    �                   �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Y���    �                       �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        Y��c    �                  require 'test_helper'       (class UserTest < ActiveSupport::TestCase       def setup   H        @user = User.new(name: "Example User",email: "user@example.com")       end           test "should be valid" do           assert @user.valid?       end   $    test "name should be present" do           @user.name ="        "           assert_not @user.valid?       end   %    test "email should be present" do           @user.email = "      "           assert_not @user.valid?       end   end5�_�                             ����                                                                                                                                                                                                                                                                                                                                                 v        Y��o    �                   5��