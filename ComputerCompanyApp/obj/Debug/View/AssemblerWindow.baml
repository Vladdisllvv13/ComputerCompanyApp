   M S B A M L   `   `   `  ����M  IComputerCompanyApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ComputerCompanyAppComputerCompanyApp  5   	   (    "ComputerCompanyApp.AssemblerWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:ComputerCompanyApp     5   	     � Title$  AssemblerWindow��5   	   $	��700��6!   $	��700��6.   ���	#FF292829 � WindowStartupLocation$ CenterScreen=�6Q   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $	��80* �6   �� 5      $	��500 �6   �� 5      $	��80* �6    � RowDefinitions 5   
   �� 5      $	��10* �6   �� 5      $	��100 �6   �� 5      $	��400 �6   �� 5      $��80 �6   �� 5      $
��100* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��dg_Technique��5         AutoGenerateColumns .     
IsReadOnly . $��1��6V   $��2��6f   $	��340��6�   $	��Top=�6�   $��Center=�6�   $	��348��6�   $��0,50,0,0q�6�   $��Bahnschrift)�6�   $��12(�6  ���	#FFA377D0   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *ID+  5      $ Наименование��6%    6;   �� *Name+  5      $' !Стоимость продажи��6%    6@   �� *	SalePrice+  5      $ Количество��6%    69   �� *Amount+5      �� 5   
   -   5        $��bt_addTechnique��5      $	��200��6(   $��40��64   $%��Добавить технику��6@   $��Bahnschrift)�6[   $��16(�6t   ���	#FFA377D0
�������$��1��6�   $
��Left=�6�   $��
160,0,0,20q�6�   $��3��6�   $��Bottom=�6�   6  �� 5   
   $��1��6   ���	#FFA377D0$��80��62   $��Center=�6>   $��Center=�6Y   $	��700��6v   $��1��6�   �� 5    
   $��1��6   $��1��6    $#��Сборщик техники��6-   $��30(�6G   
�������$��Bahnschrift)�6h   $��48��6�   $��Center=�6�   $
��Left=�6�   $	��280��6�   	 J� RenderTransformOrigin$	 0.5,0.5&�6�   $��	120,0,0,0q�6�   �� 5!   
   $��/Resources/pc.png��6   $��1��6+   $
��Left=�6;   $��48��6V   $��10,0,0,0q�6b   $��1��6t   $��Center=�6�   $��64��6�   $	 0.806,0.638&�6�   �� 5"   
   $��1��6   $��2��6    $��Техника��6-   $��20(�6?   
�������$��Bahnschrift)�6`   $��35��6y   $	��Top=�6�   $
��Left=�6�   $	��180��6�   $	 0.5,0.5&�6�   $��	80,10,0,0q�6�   5$      5%      