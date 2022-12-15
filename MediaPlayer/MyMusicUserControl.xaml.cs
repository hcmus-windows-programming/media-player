using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;
using Path = System.IO.Path;
using System.Numerics;
using System.Drawing;

namespace MediaPlayer
{
    /// <summary>
    /// Interaction logic for MyMusicUserControl.xaml
    /// </summary>
    public partial class MyMusicUserControl : UserControl
    {

        private string _currentPlaying = string.Empty;

        private bool _playing = false;

        public string filename { get; set; }

        //public string pathFile;
        private string _shortName
        {
            get
            {
                var info = new FileInfo(_currentPlaying);
                var name = info.Name;
                return name;
            }
        }
        public MyMusicUserControl()
        {
            InitializeComponent();
        }

        public class Object : INotifyPropertyChanged
        {
            public string name;
            public string dir;
            public string extension;
            public string Name
            {
                get => name; set
                {
                    name = value;
                    RaiseEvent();
                }
            }
            public string Extension
            {
                get => extension; set
                {
                    extension = value;
                    RaiseEvent();
                }
            }
            public string Dir
            {
                get => dir; set
                {
                    dir = value;
                    RaiseEvent();
                }
            }
            public event PropertyChangedEventHandler PropertyChanged;

            void RaiseEvent([CallerMemberName] string propertyName = "")
            {
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
            }
        }

        ObservableCollection<Object> Objects = new ObservableCollection<Object>();
        private Object selectedItem;
        private void addMusicFile_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog dialog = new OpenFileDialog();
            dialog.Multiselect = true;

            //List<string> listfiles = new List<string>();
            //string filepath;

            if (dialog.ShowDialog() == true)
            {
                foreach (string sFileName in dialog.FileNames)
                {
                    Objects.Add(new Object { Name = Path.GetFileName(sFileName), Dir = Path.GetDirectoryName(sFileName) + "\\", Extension = Path.GetExtension(sFileName) });
                    for (int i = 0; i < Objects.Count; i++)
                    {
                        for (int j = i + 1; j < Objects.Count; j++)
                        {
                            if (Objects[i].Name == Objects[j].Name)
                                Objects.Remove(Objects[j]);
                        }
                    }
                    txtGetFile.Text = Path.GetDirectoryName(sFileName);
                    //pathFile = Path.GetDirectoryName(sFileName);
                    //listfiles.Add(filepath);

                }

                musicListView.Items.Clear();
                foreach (Object obj in Objects)
                {
                    musicListView.Items.Add(obj);
                }
            }

        }

        private void _timer_Tick(object? sender, EventArgs e)
        {
            //    int hours = player.Position.Hours;
            //    int minutes = player.Position.Minutes;
            //    int seconds = player.Position.Seconds;
            //    //currentPosition.Text = $"{hours}:{minutes}:{seconds}";
            //    //Title = $"{hours}:{minutes}:{seconds}";
        }

        //private void playButton_Click(object sender, RoutedEventArgs e)
        //{
        //	//if (_playing)
        //	//{
        //	//	player.Pause();
        //	//	_playing = false;
        //	//	playButton.Content = "Play";
        //	//	Title = $"Stopped playing: {_shortName}";
        //	//	_timer.Stop();
        //	//}
        //	//else
        //	//{
        //	//	_playing = true;
        //	//	player.Play();
        //	//	playButton.Content = "Pause";
        //	//	Title = $"Playing: {_shortName}";

        //	//	_timer.Start();
        //	//}
        //}

        private void musicListView_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            selectedItem = (Object)musicListView.SelectedItem;
            filename = $"{selectedItem.Name}";
            GridMain.Children.Clear();
      
            _currentPlaying = txtGetFile.Text + "\\" + filename;
            player.Source = new Uri(_currentPlaying, UriKind.Absolute);
            player.Play();
            ///player.Stop();
        }


        private void playButton_Click(object sender, RoutedEventArgs e)
        {
            if (_playing)
            {
                player.Pause();
                _playing = false;
                //playButton.Content = "Play";
                //_timer.Stop();
            }
            else
            {
                selectedItem = (Object)musicListView.SelectedItem;
                filename = $"{selectedItem.Name}";
                GridMain.Children.Clear();

                _currentPlaying = txtGetFile.Text + "\\" + filename;
                player.Source = new Uri(_currentPlaying, UriKind.Absolute);
                
                _playing = true;
                player.Play();
                //playButton.Content = "Pause";
                //_timer.Start();
            }
        }

        private void player_MediaEnded(object sender, RoutedEventArgs e)
        {

        }

        private void player_MediaOpened(object sender, RoutedEventArgs e)
        {

        }
    }
}
