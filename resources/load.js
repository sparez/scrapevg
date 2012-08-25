// Load.js script for page loading through PhantomJS
// Derived from loadspeed.js in PhantomJS examples

/*
 * Load a web page given its address and dump the content to console.
 * In case of failure the script will output to console an error message
 * starting with the prefix 'ERROR: '
 */

var page = require('webpage').create(), address;

if (phantom.args.length === 0) 
{
  console.log('ERROR: no address argument given.');
	phantom.exit();
}
else 
{
  address = phantom.args[0];
  page.open(address, function (status) {
	  if (status !== 'success') 
	  {
      console.log('ERROR: could not load given address ' + address);
    }
    else
    {
      console.log(page.content);
    }
    phantom.exit();
  });
}
