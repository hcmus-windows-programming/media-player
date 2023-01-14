using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Threading;
using Path = System.IO.Path;
using System.Media;
using System.Security;
using System.IO;

namespace MediaPlayerNameSpace
{
    /// <summary>
    /// Interaction logic for MyMusicUserControl.xaml
    /// </summary>
    public partial class MyMusicUserControl
    {
        public delegate void MusicChangedHandler(ObservableCollection<Object> newObjects, int newIndex);
        public event MusicChangedHandler MusicsChanged;
        public ObservableCollection<Object> oldObjects { get; set; }
        public int oldIndex { get; set; } = 2;

        public MyMusicUserControl(ObservableCollection<Object> newObjects, int newIndex)
        {
            InitializeComponent();
            oldObjects = newObjects;
            oldIndex = newIndex;
            this.DataContext = oldObjects;
        }

        private void addMusicFile_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog dialog = new OpenFileDialog();
            dialog.Multiselect = true;
            ObservableCollection<Object> newObjects = new ObservableCollection<Object>();
            //int newIndex;

            if (oldObjects != null)
            {
                newObjects = (ObservableCollection<Object>)oldObjects;
            }

            if (dialog.ShowDialog() == true)
            {
                foreach (string sFileName in dialog.FileNames)
                {
                    newObjects.Add(new Object { Name = Path.GetFileNameWithoutExtension(sFileName), Dir = Path.GetDirectoryName(sFileName) + "\\", Extension = Path.GetExtension(sFileName) });
                    for (int i = 0; i < newObjects.Count; i++)
                    {
                        for (int j = i + 1; j < newObjects.Count; j++)
                        {
                            if (newObjects[i].Name == newObjects[j].Name)
                                newObjects.Remove(newObjects[j]);
                        }
                    }
                }

                musicListView.Items.Clear();
                foreach (Object obj in newObjects)
                {
                    musicListView.Items.Add(obj);
                }
                musicListView.SelectedIndex = MainWindow._index;
            }

            if (MusicsChanged != null)
            {
                MusicsChanged.Invoke(newObjects, oldIndex);
                oldObjects = newObjects;
                //oldIndex = newIndex;
            }
        }

        private void MenuRemoveItem_Click(object sender, RoutedEventArgs e)
        {
            //int index = musicListView.SelectedIndex;
            //_musics.Objects.RemoveAt(index);

            //musicListView.Items.Clear();
            //foreach (Object obj in _musics.Objects)
            //{
            //    musicListView.Items.Add(obj);
            //}
        }
    }
}
