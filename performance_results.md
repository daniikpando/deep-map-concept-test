
# Benchmark

This benchmark measures some functions to iterate on a complex map structure.


## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>Linux</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Core(TM) i5-8300H CPU @ 2.30GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">8</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">23.32 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.13.4</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">24.2</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">30 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">4</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">100 ms</td>
  </tr>
</table>

## Statistics




__Input: Easy__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">recursion</td>
    <td style="white-space: nowrap; text-align: right">3.59 K</td>
    <td style="white-space: nowrap; text-align: right">278.19 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;79.83%</td>
    <td style="white-space: nowrap; text-align: right">199.79 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1317.47 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap; text-align: right">3.36 K</td>
    <td style="white-space: nowrap; text-align: right">297.38 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;84.62%</td>
    <td style="white-space: nowrap; text-align: right">213.32 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1276.34 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap; text-align: right">2.94 K</td>
    <td style="white-space: nowrap; text-align: right">340.69 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;62.15%</td>
    <td style="white-space: nowrap; text-align: right">258.02 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1373.17 &micro;s</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">recursion</td>
    <td style="white-space: nowrap;text-align: right">3.59 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap; text-align: right">3.36 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap; text-align: right">2.94 K</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">recursion</td>
    <td style="white-space: nowrap">28.63 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap">31.49 KB</td>
    <td>1.1x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap">50.44 KB</td>
    <td>1.76x</td>
  </tr>
</table>



__Input: Hard__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap; text-align: right">0.27</td>
    <td style="white-space: nowrap; text-align: right">3.66 s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;10.76%</td>
    <td style="white-space: nowrap; text-align: right">3.69 s</td>
    <td style="white-space: nowrap; text-align: right">4.35 s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">recursion</td>
    <td style="white-space: nowrap; text-align: right">0.26</td>
    <td style="white-space: nowrap; text-align: right">3.78 s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;9.86%</td>
    <td style="white-space: nowrap; text-align: right">3.92 s</td>
    <td style="white-space: nowrap; text-align: right">4.25 s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap; text-align: right">0.154</td>
    <td style="white-space: nowrap; text-align: right">6.48 s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;20.10%</td>
    <td style="white-space: nowrap; text-align: right">7.26 s</td>
    <td style="white-space: nowrap; text-align: right">7.66 s</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap;text-align: right">0.27</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">recursion</td>
    <td style="white-space: nowrap; text-align: right">0.26</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap; text-align: right">0.154</td>
    <td style="white-space: nowrap; text-align: right">1.77x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap">292.53 MB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">recursion</td>
    <td style="white-space: nowrap">267.03 MB</td>
    <td>0.91x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap">878.36 MB</td>
    <td>3.0x</td>
  </tr>
</table>



__Input: Medium__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap; text-align: right">6.92</td>
    <td style="white-space: nowrap; text-align: right">144.59 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;18.54%</td>
    <td style="white-space: nowrap; text-align: right">134.99 ms</td>
    <td style="white-space: nowrap; text-align: right">225.15 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">recursion</td>
    <td style="white-space: nowrap; text-align: right">6.81</td>
    <td style="white-space: nowrap; text-align: right">146.83 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;16.92%</td>
    <td style="white-space: nowrap; text-align: right">139.41 ms</td>
    <td style="white-space: nowrap; text-align: right">214.93 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap; text-align: right">5.36</td>
    <td style="white-space: nowrap; text-align: right">186.61 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;15.17%</td>
    <td style="white-space: nowrap; text-align: right">180.54 ms</td>
    <td style="white-space: nowrap; text-align: right">264.18 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap;text-align: right">6.92</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">recursion</td>
    <td style="white-space: nowrap; text-align: right">6.81</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap; text-align: right">5.36</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap">13.93 MB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">recursion</td>
    <td style="white-space: nowrap">12.72 MB</td>
    <td>0.91x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap">35.26 MB</td>
    <td>2.53x</td>
  </tr>
</table>


