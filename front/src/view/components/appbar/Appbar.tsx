import React from 'react';
import {AppBar, Grid, Toolbar, Typography} from '@material-ui/core';
import {useAppSelector} from "../../store/store";


interface Props {
	appName: string
}


function Appbar(props: Props) {

	const {title, bank, userName} = useAppSelector(s => {
		let pathname = s.router.location.pathname;

		let title = "";
		if (pathname === "/user/login") title = "Login"
		if (pathname === "/user/register") title = "Register"
		if (pathname === "/marketplace/buy") title = "Buy"
		if (pathname === "/marketplace/sell") title = "Sell"

		return {
			title,
			userName: s.user.infos  ? `${s.user.infos.firstname}. ${s.user.infos.lastname[0].toLocaleUpperCase()} `: undefined,
			bank: s.user.infos?.money
		};
	})


	return (
		<AppBar position={"relative"} color={"secondary"}>
			<Toolbar>
				<Grid container justify={"space-between"} alignItems={"center"} spacing={4}>
					<Grid item>
						{bank && <Typography>{bank} $</Typography>}
					</Grid>
					<Grid item>
						<Typography variant="h6" style={{textTransform: "uppercase"}}>
							{title}
						</Typography>
					</Grid>

					<Grid item>
						{userName && <Typography>{userName}</Typography>}
					</Grid>
				</Grid>

			</Toolbar>
		</AppBar>
	);
}

export default Appbar;
