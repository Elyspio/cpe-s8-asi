import React, {ReactNode} from 'react';
import { makeStyles, Theme } from '@material-ui/core/styles';
import AppBar from '@material-ui/core/AppBar';
import Tabs from '@material-ui/core/Tabs';
import Tab from '@material-ui/core/Tab';
import Typography from '@material-ui/core/Typography';
import Box from '@material-ui/core/Box';

interface TabPanelProps {
	children?: React.ReactNode;
	index: any;
	value: any;
}

function TabPanel(props: TabPanelProps) {
	const { children, value, index, ...other } = props;

	return (
		<div
			role="tabpanel"
			hidden={value !== index}
			id={`scrollable-auto-tabpanel-${index}`}
			aria-labelledby={`scrollable-auto-tab-${index}`}
			{...other}
		>
			{value === index && (
				<Box p={3}>
					<Typography>{children}</Typography>
				</Box>
			)}
		</div>
	);
}

function a11yProps(index: any) {
	return {
		id: `scrollable-auto-tab-${index}`,
		'aria-controls': `scrollable-auto-tabpanel-${index}`,
	};
}

const useStyles = makeStyles((theme: Theme) => ({
	root: {
		flexGrow: 1,
		width: '100%',
		backgroundColor: theme.palette.background.paper,
	},
}));




type MenuTabsProps = {
	elements: {
		label: string,
		component: ReactNode
	}[],
	onChange: (elem: MenuTabsProps["elements"][number]) => void
}

export default function MenuTabs ({elements, onChange}: MenuTabsProps) {
	const classes = useStyles();
	const [value, setValue] = React.useState(0);

	const handleChange = (event: React.ChangeEvent<{}>, newValue: number) => {
		setValue(newValue);
		onChange(elements[newValue]);
	};

	return (
		<div className={`${classes.root} MenuTabs`}>
			<AppBar position="static" color="default">
				<Tabs
					value={value}
					onChange={handleChange}
					indicatorColor="primary"
					textColor="primary"
					variant="fullWidth"
					scrollButtons="auto"
					aria-label="scrollable auto tabs example"
				>
					{elements.map((elem, i) => <Tab key={elem.label} label={elem.label} {...a11yProps(i)}/>)}
				</Tabs>
			</AppBar>
			{elements.map((elem, i) => <TabPanel index={i} key={elem.label} value={value}>
				{elem.component}
			</TabPanel>)}
		</div>
	);
}
