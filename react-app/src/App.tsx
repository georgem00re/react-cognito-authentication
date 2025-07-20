import React from "react";
import {Authenticator, defaultTheme, ThemeProvider} from "@aws-amplify/ui-react";
import '@aws-amplify/ui-react/styles.css';

function App(): React.JSX.Element {
    return (
        <ThemeProvider theme={defaultTheme}>
            <Authenticator>
                {({ signOut, user }) => (
                    <main>
                        <h1>Hello {user.username}</h1>
                        <button onClick={signOut}>Sign out</button>
                    </main>
                )}
            </Authenticator>
        </ThemeProvider>
    );
}

export default App;
