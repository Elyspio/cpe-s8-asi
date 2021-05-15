import React from 'react';
import {Grid} from "@material-ui/core";
import Marketplace from "./Marketplace";
import {useAppSelector} from "../../store/store";
import {requireLogin} from "./RequireLogin";

const Buy = () => {

	const cards = useAppSelector(s => s.marketplace.marketCards)

	return (
		<Grid container className={"Buy frame"}>
			<Grid item>
				<Marketplace cards={cards} onRowClick={console.log}/>
			</Grid>
		</Grid>
	);
};

export default requireLogin(Buy);
