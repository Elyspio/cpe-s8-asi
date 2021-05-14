import * as React from 'react';
import {Paper, Typography} from "@material-ui/core";
import "./Application.scss"
import Appbar from "./appbar/Appbar";
import {Drawer} from "./utils/drawer/Drawer"
import {toggleTheme} from "../store/theme";
import {Route, Switch} from "react-router-dom";
import Home from "./home/Home";
import {AssignmentOutlined, Brightness5Outlined, Brightness2Outlined, HomeOutlined} from "@material-ui/icons";
import {ReactComponent as LoginIcon} from "../icons/login_black_24dp.svg"
import {ReactComponent as LogoutIcon} from "../icons/logout_black_24dp.svg"
import Login from "./user/Login";
import {push} from "connected-react-router";
import {Register} from "./user/Register";
import {logout} from "../store/user/user.async.action";
import {useDispatch} from "react-redux";
import {useAppSelector} from "../store/store";
import {themes} from "../../config/theme";


function Application() {

	const dispatch = useDispatch();

	const {icon, color} = useAppSelector(s => {
		let color = s.theme.current === "light" ? "rgba(0, 0, 0, 0.53)" : "#fff";
		const icon = s.theme.current === "light" ? <Brightness2Outlined/>: <Brightness5Outlined/>;
		return {
			color,
			icon
		};
	})

	let actions = [{
		onClick: () => dispatch(toggleTheme()),
		text: <Typography>Switch lights</Typography>,
		icon: icon
	}, {
		text: <Typography>Home</Typography>,
		onClick: () => dispatch(push("/")),
		icon: <HomeOutlined/>
	}, {
		text: <Typography>Register</Typography>,
		onClick: () => dispatch(push("/user/register")),
		icon: <AssignmentOutlined/>
	}, {
		text: <Typography>Login</Typography>,
		onClick: () => dispatch(push("/user/login")),
		icon: <LoginIcon fill={color}/>
	}];

	const connected = useAppSelector(s => !!s.user.infos)

	if (connected) {
		actions.push({
			text: <Typography>Logout</Typography>,
			onClick: () => {
				dispatch(logout())
				return dispatch(push("/user/login"));
			},
			icon: <LogoutIcon fill={color}/>
		},)
	}

	return (
		<Paper square={true} className={"Application"}>
			<Drawer position={"right"}
			        actions={actions}>
				<div className="content">
					<Appbar appName={"Example"}/>
					<Switch>
						<Route path="/user/register">
							<Register/>
						</Route>
						<Route path="/user/login">
							<Login/>
						</Route>
						<Route path="/">
							<Home/>
						</Route>
					</Switch>
				</div>
			</Drawer>
		</Paper>
	);
}

export default (Application)
