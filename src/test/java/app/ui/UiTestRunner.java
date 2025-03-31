package app.ui;

import com.intuit.karate.junit5.Karate;

class UiTestRunner {
    
    @Karate.Test
    Karate testUI() {
        return Karate.run().relativeTo(getClass());
    }
}
