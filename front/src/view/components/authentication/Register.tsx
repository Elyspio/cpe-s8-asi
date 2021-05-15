import React from 'react';
import './Login.scss'
import {Button, Paper, TextField, Typography} from "@material-ui/core";
import {register} from "../../store/user/user.async.action";
import {useDispatch} from "react-redux";


export function Register() {

	const [password, setPassword] = React.useState("")
	const [login, setLogin] = React.useState("")
	const [firstname, setFirstname] = React.useState("")
	const [lastname, setLastname] = React.useState("")


	const dispatch = useDispatch();

	const submit = React.useCallback(() => {
		dispatch(register({login, password, lastname, firstname}))
	}, [dispatch, login, password, lastname, firstname])
	return (

		<div className="frame">
			<Paper className={"login-body"} onKeyDown={e => e.keyCode === 13 && submit()}>

				<Typography variant={"overline"} className={"heading"}>Enter your information</Typography>

				<TextField
					id={"login-login"}
					label="Login"
					value={login}
					onChange={e => setLogin(e.target.value)}/>

				<TextField
					id={"login-firstname"}
					label="Firstname"
					value={firstname}
					onChange={e => setFirstname(e.target.value)}/>

				<TextField
					id={"login-lastname"}
					label="Lastname"
					value={lastname}
					onChange={e => setLastname(e.target.value)}/>

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

