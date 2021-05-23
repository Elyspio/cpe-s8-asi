import React from 'react';
import './Login.scss'
import {Button, Paper, TextField, Typography} from "@material-ui/core";
import {useDispatch} from "react-redux";
import {login as reduxLogin} from "../../store/user/user.async.action"
import {useAppSelector} from "../../store/store";
import {goBack, push, RouterLocation} from "connected-react-router";

function Login() {

	const [password, setPassword] = React.useState("")
	const [login, setName] = React.useState("")

	const dispatch = useDispatch();
	const redirect = useAppSelector(s => ((s.router.location as RouterLocation<{ redirect: string }>)).state?.redirect);

	const submit = React.useCallback(() => {
		(async () => {
			await dispatch(reduxLogin({login, password}))
			if (redirect) {
				console.log("redirecting to ", redirect);
				await dispatch(push(redirect))
			}
		})()
	}, [dispatch, login, password, redirect])


	return (

		<div className={"frame"}>
			<Paper className={"login-body"} onKeyDown={e => e.keyCode === 13 && submit()}>

				<Typography variant={"overline"} className={"heading"}>Enter your information</Typography>

				<TextField
					id={"login-name"}
					label="Login"
					value={login}
					onChange={e => setName(e.target.value)}/>

				<TextField
					id={"login-password"}
					label="Password"
					value={password}
					type={"password"}
					onChange={e => setPassword(e.target.value)}/>

				<Button color={"primary"} type={"submit"} onClick={submit}>Submit</Button>

			</Paper>
		</div>
	);
}

export default Login;
