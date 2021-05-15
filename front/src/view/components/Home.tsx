import React from 'react';
import {Button, Grid, makeStyles} from "@material-ui/core";
import {useDispatch} from "react-redux";
import {push} from "connected-react-router";
import {routes} from "./Application";

const useStyle = makeStyles((theme) => ({
	link: {
		display: "block",
		fontSize: theme.spacing(3),
		textTransform: "uppercase",
		margin: theme.spacing(2)
	},
}))


const Home = () => {
	const classes = useStyle();

	const dispatch = useDispatch();

	const route = React.useCallback((path: string) => {
		dispatch(push(path))
	}, [dispatch])

	return (
		<Grid container justify={"center"} alignItems={"center"} className={"frame"}>
			<Grid item>
				<Button variant={"outlined"} className={classes.link} onClick={() => route(routes.buy)}>Buy</Button>
			</Grid>
			<Grid item>
				<Button variant={"outlined"} className={classes.link} onClick={() => route(routes.sell)}>Sell</Button>
			</Grid>
		</Grid>
	);
};

export default Home;
