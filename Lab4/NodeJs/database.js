const mongoose = require('mongoose');

mongoose.connect('mongodb+srv://labhostname:43SPglAcXtWEt854@clusterlab.ctegh.mongodb.net/?retryWrites=true&w=majority', err => {
    if (!err)
        console.log('Conn succed');
    else
        console.log('Error: ' + JSON.stringify(err, undefined, 2));
});

module.exports = mongoose;