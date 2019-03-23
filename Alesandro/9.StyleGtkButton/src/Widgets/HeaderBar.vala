public class MyApp.HeaderBar : Gtk.HeaderBar {
    construct {
        title = "MyApp";
        subtitle = "Test Sub title";
        show_close_button = true;

        var add_button = new Gtk.Button.with_label ("Add");
        add_button.get_style_context ()
            .add_class ("suggested-action");
        add_button.valign = Gtk.Align.CENTER;

        pack_start (add_button);

        var menu_button = new Gtk.Button.from_icon_name ("open-menu", Gtk.IconSize.LARGE_TOOLBAR);
        menu_button.valign = Gtk.Align.CENTER;

        pack_end (menu_button);
    }
}
