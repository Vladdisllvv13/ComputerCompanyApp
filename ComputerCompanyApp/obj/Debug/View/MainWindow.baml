   M S B A M L   `   `   `  ����M  IComputerCompanyApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ComputerCompanyAppComputerCompanyApp  5   	   #    ComputerCompanyApp.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:ComputerCompanyApp     5   	     � Title$  
MainWindow��5   	   $	��550��6   $	��500��6)    � WindowStartupLocation$ CenterScreen=�65   ���	#FF292829.��5	      �  � ColumnDefinitions 5
   
   �� 5      $
��100* �6   �� 5      $	��250 �6   �� 5      $
��100* �6    � RowDefinitions 5   
   �� 5      $
��200* �6   �� 5      $	��100 �6   �� 5      $	��100 �6   �� 5      $	��100 �6   �� 5      $
��150* �6   .+�5   
   �� -   5        $��bt_enter��5   �   $��1��6   $��Center=�6!   $��0,40,0,0q�6>   $��3��6P   $	��Top=�6]   $	��220��6u   $��50��6�   $��
Войти��6�   $��Bahnschrift)�6�   $��20(�6�   ���	#FFA377D0
�������6�   �� 5   
   $��1��6   $��
Логин��6$   $��17(�61   $��Bahnschrift Light)�6?   $��Center=�6^   $
��Wrap=�6{   $��Center=�6�   $	��230��6�   $��80��6�   $��1��6�   
�������6�   �� 5   
   $��1��6   $��Пароль��6$   $��17(�62   $��Bahnschrift Light)�6@   $��Center=�6_   $
��Wrap=�6|   $��Center=�6�   $	��230��6�   $��80��6�   $��2��6�   
�������6�   �� 5   
   -   5        $��tb_login��5      $��18(�6"   $��Bahnschrift Light)�60   $��1��6O   $��1��6\   $	��220��6l   $��50��6x   $��15,35,15,15q�6�   G� 5   
   -   5        $��tb_password��5      $��18(�6)   $��Bahnschrift Light)�67   $��2��6V   $��1��6c   $	��220��6s   $��50��6   $��15,35,15,15q�6�   �� 5   
   $��1��6   $��Авторизация��6    $��Center=�66   $��Bahnschrift)�6S   $��32(�6l   $	��Top=�6z   $��0,67,0,0q�6�   ���	#FFA377D06�   5      5      