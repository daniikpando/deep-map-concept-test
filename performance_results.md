
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
    <td style="white-space: nowrap; text-align: right">3.41 K</td>
    <td style="white-space: nowrap; text-align: right">293.45 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;70.76%</td>
    <td style="white-space: nowrap; text-align: right">224.53 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1356.08 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap; text-align: right">2.92 K</td>
    <td style="white-space: nowrap; text-align: right">342.49 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;69.02%</td>
    <td style="white-space: nowrap; text-align: right">252.57 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1743.08 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap; text-align: right">2.83 K</td>
    <td style="white-space: nowrap; text-align: right">353.87 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;72.12%</td>
    <td style="white-space: nowrap; text-align: right">262.22 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1728.70 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">async_task</td>
    <td style="white-space: nowrap; text-align: right">1.07 K</td>
    <td style="white-space: nowrap; text-align: right">931.22 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;46.50%</td>
    <td style="white-space: nowrap; text-align: right">867.69 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2427.14 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">3.41 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap; text-align: right">2.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap; text-align: right">2.83 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">async_task</td>
    <td style="white-space: nowrap; text-align: right">1.07 K</td>
    <td style="white-space: nowrap; text-align: right">3.17x</td>
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
    <td style="white-space: nowrap">66.28 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap">69.15 KB</td>
    <td>1.04x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap">88.09 KB</td>
    <td>1.33x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">async_task</td>
    <td style="white-space: nowrap">27.16 KB</td>
    <td>0.41x</td>
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
    <td style="white-space: nowrap; text-align: right">0.25</td>
    <td style="white-space: nowrap; text-align: right">3.99 s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;13.62%</td>
    <td style="white-space: nowrap; text-align: right">4.05 s</td>
    <td style="white-space: nowrap; text-align: right">4.69 s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">recursion</td>
    <td style="white-space: nowrap; text-align: right">0.25</td>
    <td style="white-space: nowrap; text-align: right">4.00 s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;8.71%</td>
    <td style="white-space: nowrap; text-align: right">4.13 s</td>
    <td style="white-space: nowrap; text-align: right">4.47 s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">async_task</td>
    <td style="white-space: nowrap; text-align: right">0.148</td>
    <td style="white-space: nowrap; text-align: right">6.76 s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;4.12%</td>
    <td style="white-space: nowrap; text-align: right">6.67 s</td>
    <td style="white-space: nowrap; text-align: right">7.27 s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap; text-align: right">0.136</td>
    <td style="white-space: nowrap; text-align: right">7.33 s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;20.97%</td>
    <td style="white-space: nowrap; text-align: right">8.35 s</td>
    <td style="white-space: nowrap; text-align: right">8.59 s</td>
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
    <td style="white-space: nowrap;text-align: right">0.25</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">recursion</td>
    <td style="white-space: nowrap; text-align: right">0.25</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">async_task</td>
    <td style="white-space: nowrap; text-align: right">0.148</td>
    <td style="white-space: nowrap; text-align: right">1.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap; text-align: right">0.136</td>
    <td style="white-space: nowrap; text-align: right">1.84x</td>
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
    <td style="white-space: nowrap">472.35 MB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">recursion</td>
    <td style="white-space: nowrap">446.86 MB</td>
    <td>0.95x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">async_task</td>
    <td style="white-space: nowrap">14.06 MB</td>
    <td>0.03x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap">1058.18 MB</td>
    <td>2.24x</td>
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
    <td style="white-space: nowrap">recursion</td>
    <td style="white-space: nowrap; text-align: right">7.05</td>
    <td style="white-space: nowrap; text-align: right">141.79 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;16.22%</td>
    <td style="white-space: nowrap; text-align: right">132.93 ms</td>
    <td style="white-space: nowrap; text-align: right">219.86 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap; text-align: right">5.90</td>
    <td style="white-space: nowrap; text-align: right">169.62 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;20.83%</td>
    <td style="white-space: nowrap; text-align: right">157.35 ms</td>
    <td style="white-space: nowrap; text-align: right">270.39 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap; text-align: right">4.86</td>
    <td style="white-space: nowrap; text-align: right">205.97 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;14.49%</td>
    <td style="white-space: nowrap; text-align: right">199.06 ms</td>
    <td style="white-space: nowrap; text-align: right">298.95 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">async_task</td>
    <td style="white-space: nowrap; text-align: right">3.00</td>
    <td style="white-space: nowrap; text-align: right">333.08 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;9.43%</td>
    <td style="white-space: nowrap; text-align: right">332.60 ms</td>
    <td style="white-space: nowrap; text-align: right">408.06 ms</td>
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
    <td style="white-space: nowrap;text-align: right">7.05</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap; text-align: right">5.90</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap; text-align: right">4.86</td>
    <td style="white-space: nowrap; text-align: right">1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">async_task</td>
    <td style="white-space: nowrap; text-align: right">3.00</td>
    <td style="white-space: nowrap; text-align: right">2.35x</td>
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
    <td style="white-space: nowrap">28.93 MB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap">30.15 MB</td>
    <td>1.04x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap">51.47 MB</td>
    <td>1.78x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">async_task</td>
    <td style="white-space: nowrap">0.80 MB</td>
    <td>0.03x</td>
  </tr>
</table>


