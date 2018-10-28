// https://www.youtube.com/watch?v=0R8gzwiR9sI&t=218s&index=6&list=LLExKIEr5-sWav8_gMhZiKXA
// valac --pkg gtk+-3.0 1.First.vala
//  use Gtk;

int main (string[] args) {
    Gtk.init (ref args);

    var window = new Gtk.Window ();
    window.title = "This is my Vala First";
    window.border_width = 10;
    window.window_position = Gtk.WindowPosition.CENTER;
    window.set_default_size (350, 80);
    //  window.destroy.connect (Gtk.main_quit);
    window.destroy.connect (() => {
        Gtk.main_quit ();
    });

    window.show_all ();

    Gtk.main ();

    return 0;
}
