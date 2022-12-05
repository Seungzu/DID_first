const MintNFT = artifacts.require('MintNFT'); 
// build 디렉토리 안의 json 파일 가져오기
 
module.exports = function (deployer) {
    deployer.deploy(MintNFT,'Seung','S', 'http://localhost:3000/metadata');
};