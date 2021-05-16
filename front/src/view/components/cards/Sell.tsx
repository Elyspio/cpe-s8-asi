import React from 'react';
import {Grid} from "@material-ui/core";
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
			<Grid item xs={8} justify={"center"} alignItems={"center"} container>
				<Marketplace cards={cards} onRowClick={(card => dispatch(setSelectedCard(card)))}/>
			</Grid>

			<Grid item xs={4} justify={"center"} alignItems={"center"} container>
				{selectedCard && <Card data={selectedCard}/>}
			</Grid>
		</Grid>
	);
};

export default requireLogin(Sell);

