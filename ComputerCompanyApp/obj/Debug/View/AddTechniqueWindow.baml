   M S B A M L   `   `   `  ����M  IComputerCompanyApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:ComputerCompanyApp.ViewComputerCompanyApp.View  5   	   0    *ComputerCompanyApp.View.AddTechniqueWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:ComputerCompanyApp.View     5   	     � Title$  AddTechniqueWindow��5   	   $	��700��6$   $
��1080��61   ���	#FF292829 � WindowStartupLocation$ CenterScreen=�6U   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $	��10* �6   �� 5      $	��540 �6   �� 5      $	��400 �6   �� 5      $	��10* �6    � RowDefinitions 5   
   �� 5      $	��10* �6   �� 5      $	��400 �6   �� 5      $	��100 �6   �� 5      $	��10* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��dg_Component��5   A      AutoGenerateColumns .     
IsReadOnly . $��1��6U   $��1��6e   $��10,10,10,10q�6�   $��Bahnschrift)�6�   $��12(�6�   ���	#FFA377D0   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *ID+  5      $ Тип��6%    62   �� *ComponentType.ComponentType1+  5      $ Название��6%    67   �� *Name+  5      $  Производитель��6%    6<   �� *Manufacturer+  5      $ Количество��6%    69   �� *Amount+5      �� 5   
   $��2��6   $%��Добавить технику��6    $��32(�6;   
�������$��Bahnschrift)�6\   $��48��6u   $��Center=�6�   $
��Left=�6�   $	��284��6�   $��62,0,0,0q�6�   �� 5    
   -   5        $��tb_name��5    (   $��18(�67   $��Bahnschrift Light)�6E   $��1��6d   $��2��6q   $��54,49,46,301q�6�   $��50��6�   $	��300��6�   ��6   �� *Name+6�   �� 5!   
   -   5        $��tb_price��5!   -   $��18(�6=   $��Bahnschrift Light)�6K   $��1��6j   $��2��6w   $��54,147,46,203q�6�   $��50��6�   $	��300��6�   ��6   �� *	SalePrice+6�   �� 5"   
   -   5        	 ��Name$	 	tb_amount��5"   *   $��18(�6=   $��Bahnschrift Light)�6K   $��1��6j   $��2��6w   $��54,240,46,110q�6�   $��50��6�   $	��300��6�   ��6   �� *Amount+6�   �� 5#   
   $��2��6   $��Название *��6    $��24(�65   
�������$��Bahnschrift)�6V   $��34��6o   $	��Top=�6{   $
��Left=�6�   $	��308��6�   $��	50,10,0,0q�6�   $��1��6�   �� 5$   
   $��2��6   $��
Цена *��6    $��24(�61   
�������$��Bahnschrift)�6R   $��43��6k   $	��Top=�6w   $
��Left=�6�   $	��308��6�   $��
54,104,0,0q�6�   $��1��6�   �� 5%   
   $��2��6   $��Количество *��6    $��24(�67   
�������$��Bahnschrift)�6X   $��38��6q   $	��Top=�6}   $
��Left=�6�   $	��308��6�   $��
54,202,0,0q�6�   $��1��6�   �� 5(   
   -   5        $��bt_assembling��5(   �   $��2��6   $
��Left=�6!   $��2��6<   $	��Top=�6I   $	��220��6a   $��50��6m   $��Собрать��6y   $��Bahnschrift)�6�   $��20(�6�   ���	#FFA377D0
�������$��
134,10,0,0q�6�   6  (  "System.Windows.Controls.DatePicker  5)   
   -   5        $��dp_AssemblingDate��5)      $��2��6.   $
��Left=�6>   $��
62,338,0,0q�6Y   $��1��6m   $	��Top=�6z   $��35��6�   $	��292��6�   �� 5*   
   $��2��6   $��Дата сборки��6    $��24(�66   
�������$��Bahnschrift)�6W   $��38��6p   $	��Top=�6|   $
��Left=�6�   $	��308��6�   $��
54,300,0,0q�6�   $��1��6�   5,      5-      