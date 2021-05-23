import React from 'react';
import {Box, Button, Grid, Typography} from "@material-ui/core";
import Marketplace from "./Marketplace";
import {useAppSelector} from "../../store/store";
import {requireLogin} from "../authentication/RequireLogin";
import {setSelectedCard} from "../../store/user/user.async.action";
import {useDispatch} from "react-redux";
import Card from "./Card";
import "./cards.scss"
import {buy} from "../../store/marketplace/marketplace.async.actions";
import {routes} from "../../../config/routes";

const Buy = () => {

	const cards = useAppSelector(s => s.marketplace.marketCards)

	const selectedCard = useAppSelector(s => s.user.selectedCard)

	const dispatch = useDispatch();

	return (
		<Grid container className={"Buy frame"}>
			<Grid item xs={7} justify={"center"} alignItems={"center"} container direction={"column"}>

				<Box marginY={4}>
					<Typography variant={"overline"} style={{textTransform: "uppercase"}}>Cards in market</Typography>
				</Box>

				<Marketplace cards={cards} onRowClick={(card => dispatch(setSelectedCard(card)))}/>
			</Grid>

			<Grid item xs={5} justify={"center"} alignItems={"center"} container>

				{selectedCard && <Box className={"detail"}>
                    <Grid item container direction={"column"} justify={"center"} alignItems={"center"}>
                        <Card data={selectedCard}/>
                        <Button className={"action-btn"} color={"primary"} variant={"outlined"} onClick={() => dispatch(buy(selectedCard))}>Buy</Button>
                    </Grid>
                </Box>}
			</Grid>


		</Grid>
	);
};

export default requireLogin(Buy, routes.buy);
