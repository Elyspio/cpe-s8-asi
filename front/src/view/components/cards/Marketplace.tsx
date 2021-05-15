import React, {useMemo} from 'react';
import {DataGrid} from "@material-ui/data-grid";
import {CardBase} from "../../../core/apis/back";
import {Box} from "@material-ui/core";
import "./Marketplace.scss"

type item = keyof CardBase | "id"

type MarketplaceParams = { cards: CardBase[], onRowClick: (card: CardBase) => void };

const Marketplace = (props: MarketplaceParams) => {

	const colWidth = 160
	const width = 1200

	const columns: { field: item, headerName: string, width?: number, type?: "number", hide?: boolean }[] = [
		{field: 'name', headerName: 'Name', width: colWidth},
		{field: 'id', headerName: 'id', width: colWidth, hide: true},
		{field: 'description', headerName: 'Description', width: colWidth * 2},
		{field: 'affinity', headerName: 'Affinity', width: colWidth},
		{field: 'energy', headerName: 'Energy', width: colWidth, type: "number"},
		{field: 'hp', headerName: 'HP', width: colWidth, type: "number"},
		{field: 'price', headerName: 'Price', width: colWidth, type: "number"},
	];

	const rows = useMemo(() => {
		return props.cards.map(card => ({
			id: card.cardId,
			name: card.name,
			description: card.description,
			affinity: card.affinity,
			energy: card.energy,
			hp: card.hp,
			price: card.price
		}))
	}, [props.cards])


	return <Box width={width} height={800} className={"Marketplace"}>
		<DataGrid
			rows={rows}
			columns={columns}
			onRowClick={(param) => props.onRowClick(props.cards[param.rowIndex])}
		/>
	</Box>;
};

export default Marketplace;
