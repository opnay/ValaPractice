//using Gtk;

int main (string[] args) {
    // Initial GTK
    Gtk.init (ref args);

    // Create Window
    var window = new Gtk.Window ();

    // Window Attr
    window.title = "This is my Vala First";
    window.border_width = 10;
    window.window_position = Gtk.WindowPosition.CENTER;
    window.set_default_size (350, 80);

    // Window Destroy
    //  window.destroy.connect (Gtk.main_quit);
    window.destroy.connect (() => {
        Gtk.main_quit ();
    });

    // Show Window
    window.show_all ();

    // Run Gtk main loop
    Gtk.main ();

    return 0;
}
