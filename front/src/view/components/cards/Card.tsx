import React from 'react';
import {Card as MuiCard, CardContent, CardHeader, CardMedia, Grid, makeStyles, Typography} from "@material-ui/core";
import {CardDetail} from "../../../core/apis/back";
import {AccountCircle} from "@material-ui/icons";

const useStyles = makeStyles((theme) => ({
	root: {
		maxWidth: 345,
	},
	media: {
		height: 0,
		paddingTop: '56.25%', // 16:9
	},
}));

const Card = (props: { data: CardDetail }) => {


	const classes = useStyles();

	const {name, description, attack, defense, imgUrl} = props.data;


	return (
		<Grid container className={"Card"}>
			<Grid item>
				<MuiCard className={classes.root}>
					<CardHeader title={
						<Grid container justify={"space-between"}>
							<Grid item container xs={3} justify={"center"} alignItems={"center"} spacing={2} wrap={"nowrap"}>
								<Grid item spacing={2}>
									<AccountCircle/>
								</Grid>
								<Grid item>
									<Typography>
										{attack}
									</Typography>
								</Grid>
							</Grid>

							<Grid item container xs={4} justify={"center"} alignItems={"center"}>
								<Grid item>
									<Typography>{name}</Typography>
								</Grid>
							</Grid>

							<Grid item container xs={3} justify={"center"} alignItems={"center"} spacing={2} wrap={"nowrap"}>
								<Grid item>
									<Typography>
										{defense}
									</Typography>
								</Grid>
								<Grid item>
									<AccountCircle/>
								</Grid>
							</Grid>

						</Grid>
					}>

					</CardHeader>
					<CardMedia
						className={classes.media}
						image={imgUrl}
						title={name}
					/>
					<CardContent>
						<Typography variant="body2" color="textSecondary" component="p">
							{description}
						</Typography>
					</CardContent>

				</MuiCard>
			</Grid>
		</Grid>
	);
};

export default Card;
