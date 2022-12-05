const CredentialBox = artifacts.require('CredentialBox')

contract('CredentialBox',(account)=>{
    
    let credentialBox
    describe('contract', () => {

        it('CredentialBox', async () => {
            credentialBox = await CredentialBox.deployed();
            // const createCredential = await credentialBox.createCredential(1,'did_test')
            // console.log(createCredential)
            
            // const addCredential = await credentialBox.addCredential();
            // console.log(addCredential.credential.DID)

            await credentialBox.pushIssuedAddressMap(0);

            const viewMap = await credentialBox.viewIs()
            console.log(viewMap[0][0].credential)


        })

        // it('viewCredentials', async () => {
            

        // })

    })
})

