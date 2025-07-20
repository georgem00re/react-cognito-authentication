import React from "react";
import { Authenticator } from "@aws-amplify/ui-react";
import '@aws-amplify/ui-react/styles.css';
import "./index.css"
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import {faRightFromBracket, faUser} from "@fortawesome/free-solid-svg-icons";

function App(): React.JSX.Element {
    return (
        <Authenticator loginMechanisms={["email"]}>
            {({ signOut, user }) => (
                <main>
                    <nav>
                        <p>
                            <FontAwesomeIcon icon={faUser}/>
                            {user?.userId}
                        </p>
                        <button onClick={signOut}>
                            <FontAwesomeIcon icon={faRightFromBracket}/>
                            Log Out
                        </button>
                    </nav>
                </main>
            )}
        </Authenticator>
    );
}

export default App;
