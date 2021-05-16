import React, {useMemo} from 'react';
import {DataGrid, GridColumns} from "@material-ui/data-grid";
import {CardBase} from "../../../core/apis/back";
import {Box} from "@material-ui/core";

type item = keyof CardBase | "id"

type MarketplaceParams = { cards: CardBase[], onRowClick: (card: CardBase) => void };

const Marketplace = (props: MarketplaceParams) => {


	const columns: GridColumns & { field: item }[] = [
		{field: 'name', headerName: 'Name', width: 150},
		{field: 'id', headerName: 'id', width: 0, hide: true},
		{field: 'family', headerName: 'Family', width: 100},
		{field: 'affinity', headerName: 'Affinity', width: 100},
		{field: 'energy', headerName: 'Energy', width: 100, type: "number"},
		{field: 'hp', headerName: 'HP', width: 100, type: "number"},
		{field: 'price', headerName: 'Price', width: 100, type: "number"},
	]

	const width = columns.reduce((acc, current) => acc + current.width!!, 20)


	const rows = useMemo(() => {
		return props.cards.map(card => ({
			id: card.cardId,
			name: card.name,
			family: card.family,
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
