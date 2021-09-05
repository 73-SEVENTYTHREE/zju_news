import Index from "./pages/Index";
import Login from "./pages/Login"
import {Redirect, Route, Switch} from "react-router-dom";
import cookie from 'react-cookies'

function App() {
  return (
      <Switch>
          <Route path={'/index'} component={Index}/>
          <Route path={'/login'} component={Login}/>
          <Redirect to={cookie.load('username') === undefined ? '/login' : '/index'}/>
      </Switch>
  );
}

export default App;
