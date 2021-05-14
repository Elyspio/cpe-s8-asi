import React from 'react';
import './Login.scss'
import {Button, Paper, TextField, Typography} from "@material-ui/core";
import {useDispatch} from "react-redux";
import {login as reduxLogin} from "../../store/user/user.async.action"

function Login() {

	const [password, setPassword] = React.useState("")
	const [login, setName] = React.useState("")

	const dispatch = useDispatch();

	const submit = React.useCallback(() => {
		dispatch(reduxLogin({login, password}))
	}, [dispatch, login, password])

	return (

		<div className={"login"}>
			<Paper className={"login-body"} onKeyDown={e => e.keyCode === 13 && submit()}>

				<Typography variant={"h6"}>Login</Typography>

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
