   M S B A M L   `   `   `  ����M  IComputerCompanyApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:ComputerCompanyApp.ViewComputerCompanyApp.View  5   	   0    *ComputerCompanyApp.View.AddComponentWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:ComputerCompanyApp.View     5   	     � Title$  AddComponentWindow��5   	   $	��550��6$   $	��500��61   ���	#FF292829 � WindowStartupLocation$ CenterScreen=�6T   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $��5* �6   �� 5      $	��400 �6   �� 5      $��5* �6    � RowDefinitions 5   
   �� 5      $	��10* �6   �� 5      $	��350 �6   �� 5      $��80 �6   �� 5      $��5* �6   .+�5   
   �� $ ��Комплектующие��6   $��26(�6(   
�������$��Bahnschrift)�6I   $��38��6b   $	��Top=�6n   $��Center=�6�   $	��211��6�   $��0,21,0,0q�6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   $��1��6�   �� 5   
   $��Тип *��6   $��17(�6    
�������$��Bahnschrift)�6A   $��26��6Z   $	��Top=�6f   $
��Left=�6~   $	��175��6�   $��	75,19,0,0q�6�   $ 0.5,0.5&�6�   $��1��6�   $��1��6�   �� 5   
   -   5         ��Name$ cb_component��5   :   $��18(�6P   $��Bahnschrift Light)�6^   $��1��6}   $��1��6�   $��25,10,25,240q�6�   $��30��6�   $	��250��6�    �� DisplayMemberPath$ ComponentType1��6�    �� SelectedItem 6   �� *ComponentType+6�   �� 5   
   -   5         ��Name$ tb_name��5   (   $��18(�69   $��Bahnschrift Light)�6G   $��1��6f   $��1��6s   $��25,64,25,186q�6�   $��30��6�   $	��250��6�   ��6   �� *Name+6�   �� 5   
   -   5        $ tb_manufacturer��5   0   $��18(�6I   $��Bahnschrift Light)�6W   $��1��6v   $��1��6�   $��25,121,25,129q�6�   $��30��6�   $	��250��6�   ��6   �� *Manufacturer+6�   �� 5   
   -   5        $��bt_addComponent��5      $��1��6(   $��Сохранить��68   $��Center=�6L   $��1��6i   $	��Top=�6v   $	��250��6�   $��50��6�   $��Bahnschrift)�6�   $��20(�6�   ���	#FFA377D0
�������$��	0,290,0,0q�6�   6
  �� 5   
   $��Название *��6   $��17(�6%   
�������$��Bahnschrift)�6F   $��26��6_   $	��Top=�6k   $
��Left=�6�   $	��175��6�   $��	75,73,0,0q�6�   $ 0.5,0.5&�6�   $��1��6�   $��1��6�   �� 5   
   $"��Производитель *��6   $��17(�6*   
�������$��Bahnschrift)�6K   $��26��6d   $	��Top=�6p   $
��Left=�6�   $	��175��6�   $��
75,130,0,0q�6�   $ 0.5,0.5&�6�   $��1��6�   $��1��6�   �� 5   
   $��Количество *��6   $��17(�6'   
�������$��Bahnschrift)�6H   $��26��6a   $	��Top=�6m   $
��Left=�6�   $	��175��6�   $��
75,185,0,0q�6�   $ 0.5,0.5&�6�   $��1��6�   $��1��6�   �� 5   
   -   5        $  tb_amount_phoneNumber_Copy��5   *   $��18(�6N   $��Bahnschrift Light)�6\   $��1��6{   $��1��6�   $��75,211,75,109q�6�   $��30��6�   $	��250��6�   ��6   �� *Amount+6�   5      5       