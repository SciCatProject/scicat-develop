const superagent = require('superagent');

superagent
    .post('localhost:3000/api/v2/Users/login')
    .send({username: 'ingestor', password: 'aman'})
    .then(res => res.body.id)
    .then(createData)

function randInt(min, max) {
    return Math.floor(min + Math.random() * (max - min + 1));
}

function randPick(arr) {
    return arr[randInt(0, arr.length - 1)];
}

function createData(token) {
    const ownerGroups = ['group-1', 'group-2', 'group-3'];
    const owners = ['owner-1', 'owner-2', 'owner-3'];
    
    for (let i = 0; i < 10; i++) {
        const creationTime = new Date(
            randInt(2010, 2018),
            randInt(0, 11),
            randInt(2, 365),
            randInt(0, 23),
            randInt(0, 56)
        );
    
        const owner = randPick(owners);
        const ownerGroup = randPick(ownerGroups);
        const contactEmail = `${owner}@email.com`;
        const sourceFolder = `/data/${ownerGroup}/${i}`;
    
        const dataset = {
            owner,
            contactEmail,
            sourceFolder,
            creationTime,
            type: 'raw',
            ownerGroup,
        };

        superagent
            .post('localhost:3000/api/v2/Datasets')
            .query({access_token: token})
            .send(dataset);
    }
}
