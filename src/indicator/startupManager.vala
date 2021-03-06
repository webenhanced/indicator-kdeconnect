/* Copyright 2014 KDE Connect Indicator Developers
 *
 * This software is licensed under the GNU Lesser General Public License
 * (version 2.1 or later).  See the COPYING file in this distribution.
 */
namespace IndicatorKDEConnect {
    public class StartupManager {
        private const string desktop_file = "indicator-kdeconnect.desktop";        
        private string autostart_folder;
        private File startup_file;
        
        public StartupManager () {
            autostart_folder = Environment.get_user_config_dir ()+"/autostart/";
            startup_file = File.new_for_path (autostart_folder+desktop_file);            
        }
        
        public bool is_installed () {
            return startup_file.query_exists ();
        }
        
        public void install () {
            var desktop_file = File.new_for_path (Config.PACKAGE_DATADIR +
                                                  "/applications/" +
                                                  desktop_file);

            if (desktop_file.query_exists ()) {
                try {
                    var startup_folder = startup_file.get_parent ();

                    if (!startup_folder.query_exists ())
                        startup_folder.make_directory_with_parents ();
                    
                    if (desktop_file.copy (startup_file, FileCopyFlags.NONE))
                        debug ("autostart file installed in %s", startup_file.get_path ());
                } catch (Error e) {
                    message (e.message);
                }
            } 
            else
                debug ("Cant find .desktop file in %s", desktop_file.get_path ());
        }
    }
}
