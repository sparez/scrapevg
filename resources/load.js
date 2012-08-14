var page = require('webpage').create(), address;

if (phantom.args.length === 0) 
{
	console.log('Usage: load.js <some URL>');
	phantom.exit();
}
else 
{
  address = phantom.args[0];
  page.open(address, function (status) {
	  if (status !== 'success') 
	  {
      console.log('FAIL');
    }
    else
    {
      console.log(page.content);
    }
    phantom.exit();
  });
}
