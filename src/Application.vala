public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.AlanBCole.GTK-Hello-World",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate () {
    
        var hello_label = new Gtk.Label("Hello World, again.");
        
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "App Window"
        };
        
        main_window.add(hello_label);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}
