import React, {ReactNode} from 'react';
import {createStyles, makeStyles, Theme} from '@material-ui/core/styles';
import MuiDrawer from '@material-ui/core/Drawer';
import List from '@material-ui/core/List';
import Divider from '@material-ui/core/Divider';
import IconButton from '@material-ui/core/IconButton';
import ChevronLeftIcon from '@material-ui/icons/ChevronLeft';
import ChevronRightIcon from '@material-ui/icons/ChevronRight';
import ListItem from '@material-ui/core/ListItem';
import ListItemIcon from '@material-ui/core/ListItemIcon';
import './Drawer.scss'
import clsx from 'clsx';

export interface Action {
	text: React.ReactNode,
	icon: React.ReactNode,
	onClick?: Function
}


type Props = {
	children: ReactNode[] | ReactNode,
	position: "left" | "right",
	actions?: Action[],
	actionsComponent?: ReactNode
}

const drawerWidth = 290;
let baseWidth = 46;

const useStyles = makeStyles((theme: Theme) =>
	createStyles({
		drawer: {
			width: drawerWidth,
			flexShrink: 0,
			whiteSpace: 'nowrap',
		},
		drawerOpen: {
			width: drawerWidth,
			transition: theme.transitions.create('width', {
				easing: theme.transitions.easing.sharp,
				duration: theme.transitions.duration.enteringScreen,
			}),
		},
		drawerClose: {
			transition: theme.transitions.create('width', {
				easing: theme.transitions.easing.sharp,
				duration: theme.transitions.duration.leavingScreen,
			}),
			overflowX: 'hidden',
			width: baseWidth
		},
		mainSmaller: {
			width: `calc(100% - ${drawerWidth}px) !important`,
			height: "100vh",
			transition: theme.transitions.create('width', {
				easing: theme.transitions.easing.sharp,
				duration: theme.transitions.duration.enteringScreen,
			}),
		},
		main: {
			height: "100vh",
			width: `calc(100% - ${baseWidth}px)`,
			transition: theme.transitions.create('width', {
				easing: theme.transitions.easing.sharp,
				duration: theme.transitions.duration.enteringScreen,
			}),
		}
	}),
);

const getActions = (actions: Action[]) => {

	const separatorIndexes = actions
		.map((action, index) => action.text === null ? index : null)
		.filter(index => index !== null) as number[]

	const comp = separatorIndexes.map((value, index, array) => actions.slice(value, array[index + 1]))

	const actionComponents = (comp.length > 0 ? comp : [actions]).map((actions, i) => <List className={"toolbar"}
	                                                                                        key={i}>
		{actions.map((action, i) => <ListItem className={"drawer-action"} button key={i} onClick={() => action.onClick && action.onClick()}>
			<ListItemIcon>{action.icon}</ListItemIcon>
			{action.text}
		</ListItem>)}
	</List>);


	return <>
		{actionComponents.map((components, index) => <React.Fragment
			key={index}>{components} {index + 1 < actionComponents.length}</React.Fragment>)}
	</>

}


export function Drawer(props: Props) {
	const [open, setOpen] = React.useState(false);
	const classes = useStyles();

	const handleDrawerOpen = (e: React.MouseEvent) => {
		setOpen(true);
		e.stopPropagation();
	};

	const handleDrawerClose = () => {
		setOpen(false);
	};


	return (
		<div className={"Drawer"}>
			<MuiDrawer
				anchor={props.position}
				variant="permanent"
				className={clsx(classes.drawer, {
					[classes.drawerOpen]: open,
					[classes.drawerClose]: !open,
				}) + " toolbar"}
				classes={{
					paper: clsx({
						[classes.drawerOpen]: open,
						[classes.drawerClose]: !open,
					}),
				}}>
				<div onClick={handleDrawerClose} className={"drawer-btn"}>
					<IconButton onClick={open ? handleDrawerClose : handleDrawerOpen}>
						{open ? <ChevronRightIcon/> : <ChevronLeftIcon/>}
					</IconButton>
				</div>
				<Divider/>
				<div className="actions">
					{props.actionsComponent}
					{props.actions && getActions(props.actions)}
				</div>
			</MuiDrawer>
			<main className={clsx({[classes.mainSmaller]: open, [classes.main]: !open})}>
				{props.children}
			</main>
		</div>
	);
}
