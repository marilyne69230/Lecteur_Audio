   M S B A M L   `   `   `  ����F  BPlayerAudio, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:PlayerAudioPlayerAudio  5   	       PlayerAudio.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:PlayerAudio     5   	     � Title$  Naili Audio��5   	   $	��200��6   $	��400��6*   .��5	      �  � ColumnDefinitions 5
   
   �� 5      6!   �� 5      6!   �� 5      6!    � RowDefinitions 5   
   �� 5      6   �� 5      6   �� 5      6   �� 5      6   �� 5      6   .+�5   
   �� $��Lecteur Audio MP3��6   $��0��6,   $��0��69   $��3��6I   $��Center=�6]   $��Center=�6z   $
��Bold"�6�   $��20(�6�   � 5   
   $��1��6   $��0��6!   $��3��61   $��Center=�6E   $��center=�6`   .+�5      �� -   5        $��FilePath��5   J    �� TextWrapping$
 Wrap=�6   $��Ouvrir un fichier MP3...��6*   $	��207��6Z   �� 5      -   5        $��OpenFile��5   N   $��2��6   $��Ouvrir��6%   $��2��66   $��87��6C   6^   5      � 5   
   -   5        $��progress��5   �   $��2��6   $��0��6#   $��3��63   $��15��6G   $
��20 0q�6S    � Value$ 0Q�6a    � Minimum$ 0Q�6k    � Maximum$	 100Q�6w   6�   �� 5   
   -   5        $��break��5   I   $��3��6   $	��100��6   $��30��6)   $��
/pause.png��65   6V   �� 5   
   -   5        $
��play��5   `   $��3��6   $��1��6   $	��100��6-   $��30��69   $��/bouton-jouer.png��6E   6l   �� 5   
   -   5        $
��stop��5   M   $��3��6   $��2��6   $	��100��6-   $��
/arret.png��69   6Y   �� 5    
   -   5        $��volume��5    P   $��4��6   $��0��6   $��3��6.   $
��20 0q�6B   $��Center=�6^   $ 0Q�6y   $	 100Q�6�   $ 50Q�6�   6�   5!      5"      