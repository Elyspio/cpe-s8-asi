import * as React from 'react';
import {Paper} from "@material-ui/core";
import "./Application.scss"
import Appbar from "./appbar/Appbar";
import Brightness5Icon from '@material-ui/icons/Brightness5';
import {Drawer} from "./utils/drawer/Drawer"
import {useAppDispatch} from "../store/store";
import {toggleTheme} from "../store/theme";
import {Link, Route, Switch} from "react-router-dom";
import Home from "./home/Home";
import {HomeOutlined} from "@material-ui/icons";
import Login from "./user/Login";
import {push} from "connected-react-router";
import {Register} from "./user/Register";
import {logout} from "../store/user/user.async.action";
import {useDispatch} from "react-redux";


function Application() {

	const dispatch = useDispatch();

	let actions = [{
		onClick: () => dispatch(toggleTheme()),
		text: "Switch lights",
		icon: <Brightness5Icon/>
	}, {
		text: <Link to={"/"} >Home</Link>,
		onClick:() => dispatch(push("/")),
		icon: <HomeOutlined/>
	}, {
		text: <Link to={"/user/login"}>Login</Link>,
		onClick:() => dispatch(push("/user/login")),
		icon: ""
	}, {
		text: <Link to={"/user/register"} >Register</Link>,
		onClick:() => dispatch(push("/user/register")),
		icon: ""
	},{
		text: <Link to={"/user/login"} >Register</Link>,
		onClick:() => {
			dispatch(logout())
			return dispatch(push("/user/login"));
		},
		icon: ""
	},];
	return (
		<Paper square={true} className={"Application"}>
			<Drawer position={"right"}
			        actions={actions}>
				<div className="content">
					<Appbar  appName={"Example"}/>
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
