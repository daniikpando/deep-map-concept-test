
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
    <td style="white-space: nowrap">300 ms</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">100 ms</td>
  </tr>
</table>

## Statistics




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
    <td style="white-space: nowrap; text-align: right">32442.88</td>
    <td style="white-space: nowrap; text-align: right">30823.40 ns</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;10.74%</td>
    <td style="white-space: nowrap; text-align: right">29408 ns</td>
    <td style="white-space: nowrap; text-align: right">39111.22 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap; text-align: right">30874.87</td>
    <td style="white-space: nowrap; text-align: right">32388.80 ns</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;23.54%</td>
    <td style="white-space: nowrap; text-align: right">29672 ns</td>
    <td style="white-space: nowrap; text-align: right">70539.08 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap; text-align: right">24344.15</td>
    <td style="white-space: nowrap; text-align: right">41077.63 ns</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;9.82%</td>
    <td style="white-space: nowrap; text-align: right">40763 ns</td>
    <td style="white-space: nowrap; text-align: right">52024.85 ns</td>
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
    <td style="white-space: nowrap;text-align: right">32442.88</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap; text-align: right">30874.87</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap; text-align: right">24344.15</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
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
    <td style="white-space: nowrap">7968 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">lenses</td>
    <td style="white-space: nowrap">10328 B</td>
    <td>1.3x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">iteraptor</td>
    <td style="white-space: nowrap">22672 B</td>
    <td>2.85x</td>
  </tr>
</table>


