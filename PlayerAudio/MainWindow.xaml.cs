using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
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
using System.Windows.Threading;

namespace PlayerAudio
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        public MediaPlayer player = new MediaPlayer();
        public MainWindow()
        {
            InitializeComponent();
            // permiet de créer un timer
            DispatcherTimer timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += Update;
            timer.Start();
        }

        private void Update (object sender, EventArgs e)
        {
            // si la musique est chargée
            if(player.Source != null && player.NaturalDuration.HasTimeSpan)
            {
                progress.Minimum = 0;
                // retourner le nombre total de seconde dans notre musique
                progress.Maximum = player.NaturalDuration.TimeSpan.TotalSeconds;
                progress.Value = player.Position.TotalSeconds;
            }
        }

        private void Open_File(object sender, RoutedEventArgs e)
        {
            // déclencher l'opérateur de fichiers
            OpenFileDialog FileDialog = new OpenFileDialog();
            // autoriser la sélection que des fichiers mp3
            FileDialog.Filter = "MP3 files (*.mp3)|*.mp3|All files (*.*)|*.*";
            // showdialog ouvre la fenêtre 
            if (FileDialog.ShowDialog() == true)
            {
                player.Open(new System.Uri(FileDialog.FileName));
                player.Play();
                FilePath.Text = FileDialog.FileName;
            }
        }

        private void Break_Click(object sender, RoutedEventArgs e)
        {
            player.Pause();
        }

        private void Play_Click(object sender, RoutedEventArgs e)
        {
            player.Play();
        }

        private void Stop_Click(object sender, RoutedEventArgs e)
        {
            player.Stop();
        }

        private void volume_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            // diviser par 100 car le volume est comprit entre 0 et 1
            player.Volume = volume.Value / 100; 
        }
    }
}
