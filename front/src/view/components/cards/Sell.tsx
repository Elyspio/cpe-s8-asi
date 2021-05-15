import React from 'react';
import {Grid} from "@material-ui/core";
import Marketplace from "./Marketplace";
import {useAppSelector} from "../../store/store";
import {requireLogin} from "./RequireLogin";

const Sell = () => {

	const cards = useAppSelector(s => s.user.cards)

	return (
		<Grid container className={"Buy frame"}>
			<Grid item>
				<Marketplace cards={cards} onRowClick={console.log}/>
			</Grid>
		</Grid>
	);
};

export default requireLogin(Sell);

