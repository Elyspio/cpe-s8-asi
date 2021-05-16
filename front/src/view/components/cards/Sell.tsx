import React from 'react';
import {Box, Grid, Typography} from "@material-ui/core";
import Marketplace from "./Marketplace";
import {useAppSelector} from "../../store/store";
import {requireLogin} from "../authentication/RequireLogin";
import {setSelectedCard} from "../../store/user/user.async.action";
import {useDispatch} from "react-redux";
import Card from "./Card";
import "./cards.scss"

const Sell = () => {

	const cards = useAppSelector(s => s.user.cards)

	const dispatch = useDispatch();

	const selectedCard = useAppSelector(s => s.user.selectedCard)

	return (
		<Grid container className={"Buy frame"}>
			<Grid item xs={7} justify={"center"} alignItems={"center"} container direction={"column"} >

				<Box marginY={4}>
					<Typography variant={"overline"} style={{textTransform: "uppercase"}}>Your cards</Typography>
				</Box>

				<Marketplace cards={cards} onRowClick={(card => dispatch(setSelectedCard(card)))}/>
			</Grid>

			<Grid item xs={5} justify={"center"} alignItems={"center"} container>
				{selectedCard && <Card data={selectedCard}/>}
			</Grid>
		</Grid>
	);
};

export default requireLogin(Sell);

