import React from 'react';
import './Login.scss'
import {Button, makeStyles, Paper, TextField, Typography} from "@material-ui/core";
import {useAppDispatch} from "../../store/store";
import {register} from "../../store/user/user.async.action";
import {useDispatch} from "react-redux";


const useStyle = makeStyles((theme) => ({
	container: {
		height: "100%",
		width: "100%",
		display: "flex",
		justifyContent: "center",
		alignItems: "center"
	},
	contained: {
		padding: theme.spacing(3),
		paddingRight: theme.spacing(6),
		paddingLeft: theme.spacing(6),
		width: "16rem",
		margin: "auto",
		display: "flex",
		flexDirection: "column",


	},
	field: {
		marginTop: theme.spacing(1),
		marginBottom: theme.spacing(1)
	}
}))


export function Register() {

	const [password, setPassword] = React.useState("")
	const [login, setLogin] = React.useState("")
	const [firstname, setFirstname] = React.useState("")
	const [lastname, setLastname] = React.useState("")

	const classes = useStyle();

	const dispatch = useDispatch();

	const submit = React.useCallback(() => {
		dispatch(register({login, password, lastname, firstname}))
	}, [dispatch, login,  password, lastname, firstname])
	return (

		<div className={classes.container}>
			<Paper className={classes.contained} onKeyDown={e => e.keyCode === 13 && submit()}>

				<Typography variant={"h6"}>Register</Typography>

				<TextField
					className={classes.field}
					id={"login-login"}
					label="Login"
					value={login}
					onChange={e => setLogin(e.target.value)}/>

				<TextField
					className={classes.field}
					id={"login-firstname"}
					label="Firstname"
					value={firstname}
					onChange={e => setFirstname(e.target.value)}/>

				<TextField
					className={classes.field}
					id={"login-lastname"}
					label="Lastname"
					value={lastname}
					onChange={e => setLastname(e.target.value)}/>

				<TextField
					className={classes.field}
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

