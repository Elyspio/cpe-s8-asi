import * as React from 'react';
import {Paper, Typography} from "@material-ui/core";
import "./Application.scss"
import Appbar from "./appbar/Appbar";
import {Action, Drawer} from "./utils/drawer/Drawer"
import {toggleTheme} from "../store/theme";
import {Route, Switch} from "react-router-dom";
import {AssignmentOutlined, Brightness2Outlined, Brightness5Outlined, HomeOutlined} from "@material-ui/icons";
import {ReactComponent as LogoutIcon} from "../icons/logout_black_24dp.svg"
import Login from "./authentication/Login";
import {push} from "connected-react-router";
import {Register} from "./authentication/Register";
import {logout} from "../store/user/user.async.action";
import {useDispatch} from "react-redux";
import {useAppSelector} from "../store/store";
import Sell from "./cards/Sell";
import Buy from "./cards/Buy";
import Home from "./Home";
import {resetMarketplace} from "../store/marketplace/marketplace.async.actions";


export const routes = {
	home: "/",
	register: "/authentication/register",
	login: "/authentication/login",
	sell: "/marketplace/sell",
	buy: "/marketplace/buy",
}


function Application() {

	const dispatch = useDispatch();
	const [loading, setLoading] = React.useState(true);

	const {icon, color} = useAppSelector(s => {
		let color = s.theme.current === "light" ? "rgba(0, 0, 0, 0.53)" : "#fff";
		const icon = s.theme.current === "light" ? <Brightness2Outlined/> : <Brightness5Outlined/>;
		return {
			color,
			icon
		};
	})

	const actions: Action[] = [
		{
			onClick: () => dispatch(toggleTheme()),
			text: <Typography>Switch lights</Typography>,
			icon: icon
		}, {
			text: <Typography>Home</Typography>,
			onClick: () => dispatch(push(routes.home)),
			icon: <HomeOutlined/>
		}, {
			text: <Typography>Register</Typography>,
			onClick: () => dispatch(push(routes.register)),
			icon: <AssignmentOutlined/>
		}];

	const connected = useAppSelector(s => !!s.user.infos)

	if (connected) {
		actions.push({
			text: <Typography>Logout</Typography>,
			onClick: () => {
				dispatch(logout())
			},
			icon: <LogoutIcon fill={color}/>
		},)
	}

	React.useEffect(() => {
		(async () => {
			await resetMarketplace(dispatch);
			setLoading(false);
		})()
	}, [])

	if (loading) return null;

	return (
		<Paper square={true} className={"Application"}>
			<Drawer position={"right"}
			        actions={actions}>
				<div className="content">
					<Appbar/>
					<Switch>
						<Route path={routes.register} component={Register}/>
						<Route path={routes.sell} component={Sell}/>
						<Route path={routes.buy} component={Buy}/>
						<Route path={routes.login} component={Login}/>
						<Route path={routes.home} component={Home}/>
					</Switch>
				</div>
			</Drawer>
		</Paper>
	);
}

export default Application
