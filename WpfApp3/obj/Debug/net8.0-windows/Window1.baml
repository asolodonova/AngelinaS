   M S B A M L   `   `   `  ����B  >WpfApp3, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp3WpfApp3  5   	       WpfApp3.Window1   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp3     5   	     � Title$#  Кулинарное меню��5   	   $	��600��6!   $
��1000��6.    � WindowStartupLocation$ CenterScreen=�5	   	   ���	#FFFFE69B � 	Resources 5       �� 
TargetType   MenuButtonStyle �� Property �� Value �� 
TargetType ��Name �� CornerRadius	 �� Triggers
 P� Property P� Value  RecipeCardStyle3  -System.Windows.Media.Effects.DropShadowEffect   
BlurRadius   ShadowDepth   Color �� Triggers��%-  &	        &	 '    �� 5   
   " ��6   .�5      ��  � �� �	#FFFAA49A6+   �� 5       � ��
 �   �6+   �� 5       � ��
 ���� 6,   �� 5       � ��$ 18(�6)   �� 5       � ��$ SemiBold"�6+   �� 5       � ��$ 30 20q�6(   �� 5       � ��$ 30q�6'   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ border��6!   #��z��5   !   $ 20��5   !   $��1q�5   !   #��z��5   !   ._�5      �� $��Center=�6/   $��Center=�6L   5      	 5      P� 5       
 �@J�IsMouseOver$
 True��6=   . �5!   "   ��  � �� �	#FFE8927A6?   �� 5"   "    � �� �	#FFD17A626@   5#      P� 5$      
 � ��$
 True��6;   . �5%   "   ��  � �� �	#FFD17A626?   5&      5(      5*      5+      �� 5.   
   " ��6   .�5/      ��  � ��
 �����6+   �� 50       �@��CornerRadius$ 10��6-   �� 51       � ��$	 150��6&   �� 52       � ��$	 150��6'   �� 53       �@J�Effect 54        55      $ 10Q�6'   $ 3Q�67   $ 	#FFD4B6B2��6G   57       58      P� 59      
 �@J�IsMouseOver$
 True��61   . �5:      ��  �@J�Effect 5;        5<      $ 15Q�6/   $ 5Q�6?   $ 	#FFFAA49A��6O   5>      5?      5A      5B      .��5D      �  � RowDefinitions 5F   
   �� 5G      $
��Auto �6   �� 5H      $��* �6   �� 5I      $
��Auto �6   .+�5M   
   �� $��0��6   ���	#FFFAA49A �� Padding$ 10q�65   $��	0,0,0,473q�6B   $��2��6U   ._�5N      �� $��МЕНЮ��6   $��52(�5O      $$��Bahnschrift SemiBold Condensed)�5P      
�������$��Center=�5R      $��	0,14,0,25q�65   5S      �� 5V   
   $��1��6   $
��Auto=�6$   $��0,116,0,170q�6G   .��5W      �� $��20q�6   .+�5b      �� $��Мои рецепты��6   $��30(�5c      $
��Bold"�5d      $��63��6.   � 5f      $	��961��6   .+�5i      �� #��[ 6   $��10q�6F   ._�5j      �� .+�5k      �� $6��0C:\Users\User\Desktop\WpfApp3\завтрак.jpg��6$   $��UniformToFill=�5l   $   $	��100��5m   $   �� 5n      $��Завтраки��6(   $��Center=�5o   (   $	��0 5q�5p   (   $��SemiBold"�5q   (   $��16(�6>   5r      5s      �� 5v      #��[ 6   $��10q�6F   ._�5w      �� .+�5x      �� $0��*C:\Users\User\Desktop\WpfApp3\ланч.jpg��6$   $��UniformToFill=�5y   $   $	��100��5z   $   �� 5{      $��
Ланчи��6(   $��Center=�5|   (   $	��0 5q�5}   (   $��SemiBold"�5~   (   $��16(�6>   5      5�      �� 5�      #��[ 6   $��10q�6F   ._�5�      �� .+�5�      �� $0��*C:\Users\User\Desktop\WpfApp3\ужин.jpg��6$   $��UniformToFill=�5�   $   $	��100��5�   $   �� 5�      $��
Ужины��6(   $��Center=�5�   (   $	��0 5q�5�   (   $��SemiBold"�5�   (   $��16(�6>   5�      5�      �� 5�      #��[ 6   $��10q�6F   ._�5�      �� .+�5�      �� $4��.C:\Users\User\Desktop\WpfApp3\десерт.jpg��6$   $��UniformToFill=�5�   $   $	��100��5�   $   �� 5�      $��Десерты��6(   $��Center=�5�   (   $	��0 5q�5�   (   $��SemiBold"�5�   (   $��16(�6>   5�      5�      �� 5�      #��[ 6   $��10q�6F   ._�5�      �� .+�5�      �� $6��0C:\Users\User\Desktop\WpfApp3\закуски.jpg��6$   $��UniformToFill=�5�   $   $	��100��5�   $   �� 5�      $��Закуски��6(   $��Center=�5�   (   $	��0 5q�5�   (   $��SemiBold"�5�   (   $��16(�6>   5�      5�      5�      5�      5�      �� 5�   
   $��1��6    �� Orientation$ 
Horizontal=�6"   $��Center=�6;   $��	0,414,0,0q�6X   $
��1000��6k   .+�5�      �� -   5        $#��Добавить рецепт��5�      #��[  5�      $	��161��5�   ,   $��32��68   �� 5�      -   5        $��Избранное��5�      #��[  5�      $	��111��5�   ,   $��32��68   �� 5�      -   5        $��
Поиск��5�      #��[  5�      $��69��5�   ,   $��32��67   �� 5�      -   5        $��
Выйти��5�      #��[  5�      $��70��5�   ,   $��32��67   5�      �� 5�   
   $��Button��6   $
��Left=�6"   $��1125,284,0,0q�6=   $��1��6S   $	��Top=�6`   $��0��6x   �� 5�   
   -   5        $
��Left=�5�      $��
39,335,0,0q�6,   $��1��6@   $	��Top=�6M   $	��120��6�   $��18��6�   ��6e   Z� ��6{   Z� ��6�   Z� .��5�      �� -   5        $��Button��5�      
�������
�������
�������$��14��6w   $��71��6�   5�      5�      5�      