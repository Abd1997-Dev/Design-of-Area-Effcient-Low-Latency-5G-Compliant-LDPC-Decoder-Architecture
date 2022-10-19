# Design of Area Effcient Low Latency 5G Compliant LDPC Decoder Architecture
## This is my MTech Thesis Dissertation Topic. Lets discuss about its implementation.
**Abstract** : <p align="justify"> This paper proposes a low-complexity check node unit architecture for 5G new radio (5G-NR) compliant lowdensity parity-check (LDPC) decoder. The complexity of the check node unit architecture is reduced by computing the frst minimum value in the conventional way and second minimum value by adding a small value alpha (α) to frst minimum value. The bit error rate (BER) versus signal to noise ratio (SNR) performance analysis graph shows that this second minimum approximation (SMA) decoding method gives a reasonable error while comparing it with conventional min-sum and offset minsum decoding methods. A novel architecture is presented and synthesized on Xilinx Artix-VII FPGA board. The synthesis results show that proposed design provides 45.5% reduction in number of LUTs along with 24.8% reduction in data path delay than state-of-the-art architectures. Thus, the proposed check node unit architecture with second minimum approximation decoding algorithm outperforms all the other existing architectures. Index Terms—Low-density Parity-Check (LDPC) codes, Check Node Unit (CNU) architecture, 5G new radio (5G-NR), Communication systems.</p>
**Introduction** : <p align="justify"> The information bits are encoded & modulated at the
sending side, transmitted through the wireline or wireless
channel, and demodulated & decoded at the receiving side.
The noise may get added to the encoded information while
transmitting and it will cause an error in the received signal.
So, the system has to get rid of the error. For that, a better
error correcting code is required to make the system resilient
from misinformation. Low density parity check (LDPC) codes
are considered to be a better error correcting code for the past
several decades. They are introduced by R. Gallager [1] in
1962 which is not so prevalent at that time. Later, they are
rediscovered by Mackay [2] in 1999 and reported that they
have performance capacity near Shannon limit. Consequently,
they have become one of the most effcient techniques for error
correction. They have applications in wireless communication
systems, 5G new radio (5G-NR), digital video broadcast
(DVB), and space systems.
The LDPC codes have high degree of parallelism. They are
represented with the help of M ×N sparse parity check matrix
(PCM) H as well as Tanner Graph. The example PCM with 4
rows and 6 columns; consists of 1’s and 0’s is shown in the
Equation (1).</p>
<p align="center">
<img src="https://user-images.githubusercontent.com/73669849/196792234-72039c2d-b428-4824-ad01-b8e052ece533.JPG" width="200" height="300">
</p>
<p align = "center">
Fig.1 - Tanner Graph
</p>

<p align="justify">
In this research work, the focus is to design the novel check
node unit (CNU) architecture and to replace the existing CNU
architecture of LDPC decoder with it. This will improve the
performance of the complete decoder with reduced area and
latency. The conventional CNU architectures compute both
the frst & second minimum values and exchange it with the
variable node unit (VNU) which requires more resources. In
order to reduce the usage of resources, the novel architecture
computes only the frst minimum in the conventional way and
the second minimum is computed by adding a small value
alpha (α) to it. Rest of this writeup is organized as follows: Section II presents
the related work. The proposed novel CNU architecture is
discussed in Section III. The results are analyzed in Section
IV. Finally, the conclusion of the paper is given in Section V  
</p>

