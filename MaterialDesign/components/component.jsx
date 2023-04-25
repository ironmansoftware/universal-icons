import React from 'react';
import { withComponentFeatures } from 'universal-dashboard'
import * as MDIcons from 'react-icons/md';

const UDComponent = props => {
    return React.createElement(MDIcons[props.icon], props);
}

export default withComponentFeatures(UDComponent)