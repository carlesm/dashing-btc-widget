## Preview:

<img src="https://raw.githubusercontent.com/carlesm/dashing-ltc-widget/master/Captura%20de%202017-12-19%2013-41-36.png" width="400px">

## Description:
Widget for Dashing/Smashing displaying Litecoin (LTC) Price, based on: https://github.com/Aycn0/dashing-btc-widget


## Usage:
1. Put widgets/ltcprice/ directory inside your widgets/ directory.
2. Put jobs/litecoin.rb inside your jobs/ directory.
3. Add the following lines of code to your .erb dashboard somewhere.

		<li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
				<div data-id="ltcprice" data-view="Ltcprice" data-ltcprice="" data-prefix="$"></div>
		</li>
