   M S B A M L   `   `   `  ����F  BMediaPlayer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:MediaPlayerNameSpaceMediaPlayerNameSpace  5      ;"clr-namespace:MediaPlayerNameSpaceMediaPlayerNameSpace  5      %    MediaPlayerNameSpace.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      4local"clr-namespace:MediaPlayerNameSpace     5      3data"clr-namespace:MediaPlayerNameSpace     5      _ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	      -   5          � Title$  Media Player��5
   	   $	��500��6   $	��800��6+   $	��450��67   $	��800��6G    � WindowStartupLocation$ CenterScreen=�6m    � 	Resources 5         OpenMenu �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	CloseMenu4   .MediaPlayerNameSpace.ZeroToDoubleZeroConverter  TimeConverter��%�  &	        &	 �     &	 �    �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $ 60Q�63     5      $ 0:0:0.2��6'   $	 200Q�69   5      5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $	 200Q�63     5      $ 0:0:0��6'   $ 60Q�67   5      5        5   
   6*   5       � Triggers 5      :� 5   
    :� RoutedEvent$ ButtonBase.Click��6   	 :� 
SourceName$	 buttonOpenMenu��66   .[�5      �� #��[  6   5       :� 5!   
   $ ButtonBase.Click��6   $	 buttonCloseMenu��66   .[�5"      �� #��[ 6   5#      .��5%      � 
 � ColumnDefinitions
 5&   
   �� 5'      -   5         ��Name$ 	menuWidth��5'   *   $��60 �6   6*   �� 5(      $
��180* �6   �� 5)      $��2* �6    � RowDefinitions 5+   
   �� 5,      $��* �6   �� 5-      $	��130 �6   .+�5/   
   � -   5         �Name$ GridMain��5/      $��1��6   $��2��61   6G   � 50   
   -   5        $ GridMenu��50      $��60��6!   $
��Left=�6,   ���#00DBA7.+�51      �� .+�52      � $��60��6   
������� J� RenderTransformOrigin$ 0.5,0.5&�66   .+�53      �� -   5         ��Name$ buttonOpenMenu��53      $��60��65   $��60��6A   $��Right=�6L   $	��Top=�6h    0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 6�   
���������6�   Z� ��6�   Z� .��54      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Menu=�62   $��24��6>   $��24��6I   $��Center=�6U   55      �� 56      -   5        $ buttonCloseMenu��56      $y�	Collapsed=�66   $��60��6M   $��60��6Y   $��Right=�6d   $	��Top=�6�   #��[ 6�   
���������6�   Z� ��6�   Z� .��57        $ 	ArrowLeft=�62   $��24��6C   $��24��6N   58      59      �� 5:      -   5         ��Name$ listViewMenu��5:      
�������$��Disabled=�6D   .@�5;      �� -   5         ��Name$ SearchMusicItem��5;   #   $��60��6<   .��5<      ��  �� Orientation$ 
Horizontal=�6%   .+�5=        $ Search=�66   $��24��6D   $��24��6P   $��10q�6[   �� 5>      -	   5        $��searchMusic��5>   &   $	��100��6t   $��30��6�   $��Center=�6�   $��20 10q�6�   
������ ��6[   �� *	Keywork+.��6�   5?      5@      5A      �� 5B      -
   5        $ MyMusicItem��5B   #   $��60��68   .��5C      �� $ 
Horizontal=�6%   .+�5D        $ Music=�66   $��24��6C   $��24��6O   $��10q�6Z   �� 5E      $��My music��6(   $��Center=�68   $��20 10q�6S   5F      5G      �� 5H      -   5        $ RecentPlaysItem��5H   #   $��60��6<   .��5I      �� $ 
Horizontal=�6%   .+�5J        $ ClockOutline=�66   $��24��6J   $��24��6V   $��10q�6a   �� 5K      $��Recent plays��6(   $��Center=�6<   $��20 10q�6W   5L      5M      �� 5N      
�������$��10��63   �� 5O      -   5        $ PlaylistsItem��5O   #   $��60��6:   .��5P      �� $ 
Horizontal=�6%   .+�5Q        $ PlaylistMusic=�66   $��24��6K   $��24��6W   $��10q�6b   �� 5R      $��	Playlists��6(   $��Center=�69   $��20 10q�6T   5S      5T      5U      5V      5W      �� 5X   
   $��1��6   $��3��6"   .+�5Y      � $��30��6   
 5Z      �� 5[      $��80 �6'   �� 5\      $��* �6'   �� 5]      $��80 �6'   .+�5_      �� -   5        $��currentPosition��5_      $	��Top=�6z   $��Center=�6�   $��0,7,0,0q�6�   ��63   �� *CurrentTime+ �� 	Converter# [ 6�   �� 5`      -   5        $��progressSlider��5a      $��1��5`       � Maximum$	 100Q�5c       � Minimum$ 0Q�5d       � Value$ 0Q�5e      $
��auto��5f      �� 5g      -   5        $��totalPosition��5g   ,   $��2��6   $��Center=�6�   $��0,7,0,7q�6�   ��6A   �� *	TotalTime+# [ 6�   5h      � 5i      -   5        $ GridElement��5i      
 5j      �� 5k      $��1* �6'   �� 5l      $��1* �6'   �� 5m      $��1* �6'   .+�5o      �� -   5        $ BtnTemp��5o      $��90��6*   
������ 
������ .��5p      �� $
��auto��6!   $��0��6.   $ 
Horizontal=�6>   .+�5q      r� -   5        $��myMediaElement��5q   '    r� LoadedBehavior$ Manual=�5r      $	��120��5u      $��70��5v      �� 5w      -   5         ��Name$ 	musicName��5w   $   $��Center=�67   $��16(�6R   $
��Bold"�6`   $��
5, 0, 0, 0q�6r   $�� ��6�   6�   5x      5y      �� 5z      $��1��6   $��Center=�6-   $��Center=�6J   $ 
Horizontal=�6e   .+�5{      �� -   5        $ shuffleButton��5�        MaterialDesignIconButton#��[ 5}       � ToolTip$ Shuffle��5~      
������ {�5|      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �.��5�        -   5          Name$ shuffleIcon��5�      $ Shuffle=�5�      5�      �� 5�      -   5        $ skipPreviousButton��5�      #��[ 5�      $ MaterialDesignIconButton��5�      {�5�      �� *DataContext.ControlsEnabled+ �� *FindAncestor+" �.��5�        $ SkipPrevious=�62   5�      �� 5�      -   5        $ 
playButton��5�       / +MaterialDesignFloatingActionMiniLightButton#��[ 5�      $1 +MaterialDesignFloatingActionMiniLightButton��5�      $��8q�6=   {�5�      �� *DataContext.ControlsEnabled+ �� *FindAncestor+" �.��5�        -   5        $ playIcon��5�      $��24��5�      $��24��5�      $
 Play=�5�      5�      �� 5�      -   5        $ skipNextButton��5�      #��[ 5�      $ MaterialDesignIconButton��5�      {�5�      �� *DataContext.ControlsEnabled+ �� *FindAncestor+" �.��5�        $ SkipNext=�62   5�      �� 5�      -   5        $ repeatButton��5�      #��[ 5�      $ Playback��5�      
������ {�5�      �� *DataContext.ControlsEnabled+ �� *FindAncestor+" �.��5�        -   5        $ 
repeatIcon��5�      $ 	RepeatOne=�5�      5�      5�      5�      5�      5�      5�      