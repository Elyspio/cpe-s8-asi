import React from 'react';
import ReactDOM from 'react-dom';
import './index.scss';
import {Provider} from "react-redux";
import Application from "./view/components/Application";
import {ThemeProvider} from '@material-ui/core';
import {themes} from "./config/theme";
import {history, store, useAppSelector} from "./view/store/store";
import {ConnectedRouter} from "connected-react-router";


function App() {
	const theme = useAppSelector(s => s.theme.current === "dark" ? themes.dark : themes.light);

	return (
		<ThemeProvider theme={theme}>
			<ConnectedRouter history={history}>
				<Application/>
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
