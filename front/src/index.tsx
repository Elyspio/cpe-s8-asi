import React from 'react';
import ReactDOM from 'react-dom';
import './index.scss';
import {Provider} from "react-redux";
import Application from "./view/components/Application";
import {ThemeProvider} from '@material-ui/core';
import {themes} from "./config/theme";
import {store, useAppSelector, history} from "./view/store/store";
import {ConnectedRouter} from "connected-react-router";
import {ToastContainer} from "react-toastify";


function App() {
	const theme = useAppSelector(s => s.theme.current === "dark" ? themes.dark : themes.light);

	return (
		<ThemeProvider theme={theme}>
			<ConnectedRouter history={history}>
				<Application/>
				<ToastContainer position={"top-right"}/>
			</ConnectedRouter>
		</ThemeProvider>
	);
}


ReactDOM.render(
	<Provider store={store}>
		<App/>
	</Provider>,
	document.getElementById('root')
);

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
