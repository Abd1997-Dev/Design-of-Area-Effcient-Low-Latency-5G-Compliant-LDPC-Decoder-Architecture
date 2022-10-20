# Design of Area Effcient Low Latency 5G Compliant LDPC Decoder Architecture
## This is my MTech Thesis Dissertation Topic. Lets discuss about its implementation.
###  ***Abstract*** : 
<p align="justify"> &emsp; This paper proposes a low-complexity check node unit architecture for 5G new radio (5G-NR) compliant lowdensity parity-check (LDPC) decoder. The complexity of the check node unit architecture is reduced by computing the frst minimum value in the conventional way and second minimum value by adding a small value alpha (α) to frst minimum value. 
 The bit error rate (BER) versus signal to noise ratio (SNR) performance analysis graph shows that this second minimum approximation (SMA) decoding method gives a reasonable error while comparing it with conventional min-sum and offset minsum decoding methods.
 A novel architecture is presented and synthesized on Xilinx Artix-VII FPGA board. The synthesis results show that proposed design provides 45.5% reduction in number of LUTs along with 24.8% reduction in data path delay than state-of-the-art architectures. Thus, the proposed check node unit architecture with second minimum approximation decoding algorithm outperforms all the other existing architectures. </p>
 
 ***Index Terms*** : <p align="justify"> &emsp; Low-density Parity-Check (LDPC) codes, Check Node Unit (CNU) architecture, 5G new radio (5G-NR), Communication systems.</p>
 
 
### **I. INTRODUCTION** : 
<p align="justify"> &emsp; The information bits are encoded & modulated at the
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
<img src="https://user-images.githubusercontent.com/73669849/196871144-200e9fda-32da-4c6c-8c95-f72ac177c0b4.png" width="400" height="150">
</p>

<p align="justify"> &emsp;
The corresponding Tanner Graph representation is shown in
Fig. 1. The columns which are also known as variable nodes
(VN); are denoted by using the variables C1, C2, · · · C6. The
rows which are also known as check nodes (CN); are denoted
by using the variables R1, R2, · · · R4. The line connecting the
VN and CN are termed as edges and these are based on the
position of non-zero elements of parity check matrix (H). The
number of lines (edges) connected to each node is known as
node’s degree. The decoding of the LDPC codes are performed
by iteratively generating and exchanging messages between
the variable nodes and check nodes, via the lines of the Tanner
graph. There are different decoding algorithms and schedules
to determine the specifc operation of each node, the format
of the messages and the order in which they are exchanged.
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/73669849/196792234-72039c2d-b428-4824-ad01-b8e052ece533.JPG" width="200" height="300">
</p>
<p align = "center">
Fig.1 - Tanner Graph
</p>

<p align="justify">
&emsp; In this research work, the focus is to design the novel check
node unit (CNU) architecture and to replace the existing CNU
architecture of LDPC decoder with it. This will improve the
performance of the complete decoder with reduced area and
latency. The conventional CNU architectures compute both
the frst & second minimum values and exchange it with the
variable node unit (VNU) which requires more resources. In
order to reduce the usage of resources, the novel architecture
computes only the frst minimum in the conventional way and
the second minimum is computed by adding a small value
alpha (α) to it. </p>
 
<p align="justify">
&emsp;Rest of this writeup is organized as follows: Section II presents
the related work. The proposed novel CNU architecture is
discussed in Section III. The results are analyzed in Section
IV. Finally, the conclusion of the paper is given in Section V  
</p>

### **II. RELATED WORK** : 
<p align="justify">
&emsp;The LDPC decoder design requires the effcient way to
compute the frst and second minimum values from the given
set of inputs. The computation of the frst minimum value is
easier; but the computation of the second minimum requires
a better and effcient hardware architecture. There are two
basic methods to fnd the frst two minimums from the given
inputs like sorting-based approach and tree-based approach
[3]. Basically, the sorting based approach requires less number
of comparisons and tree based approach achieves higher speed
at lower hardware cost.</p>
 
 <p align="justify">
&emsp;The sum-product decoding algorithm has high performance
metrics and in turn it requires high hardware resources also
than any other decoding algorithms. In order to achieve high
throughput even with high hardware resource usage a multicore architecture is proposed [4]. But the cost of the system
will be high, if a multicore architecture is used. Therefore, to
avoid it, the conventional min-sum decoding algorithm with
reduced hardware complexity is introduced. These traditional
decoding algorithms for LDPC codes generate and exchange
messages between check node and variable node only based on
loglikelihood ratio (LLR) of bits, and correlations introduced
by modulation are not utilized. In [5], symbol based approach
is used i.e. the correlation factor introduced while modulating
the signals are taken into account which results in an alternative low-cost way to better utilize available information. These
symbol based sum product and min sum (S-SPA and S-MSA)
achieve better error correcting performance than conventional
decoding algorithm.</p>
  
  <p align="justify">
&emsp;In order to reduce the cost and optimize the throughput,
the generated messages are stored using a lower precision by
truncating some bits [6]. The truncation happens only after
the generated messages are updated by the processing units.
The pipeline architectures are faster than the conventional
architectures provided the data and control hazards are not
there. But, all the pipeline architectures have these two hazards
as bottlenecks. The conﬂicts occurred due to these bottlenecks
are addressed in [7] by providing a ﬂooding schedule.</p>
   
   
   <p align="justify"> 
&emsp;Though the min-sum decoding algorithm has reduced hardware complexity, it also has reduced performance metrics. To
overcome this, the offset min-sum [8] - [11] and normalized min-sum [12] decoding algorithms are introduced. The
physical layer of the telecommunication systems are evolving
rapidly, so the reprogrammable FPGA based implementation
[9] of the 5G LDPC decoders are required. It will reduce the
cost and time to implement such physical layers. Further, the
length of the cycles is measured to change the number of
iterations dynamically is proposed in [13] as reweighted offset
min-sum algorithm (ROMS).</p>

### **III. PROPOSED CHECK NODE UNIT ARCHITECTURE**: 

<p align="justify">
&emsp;The architecture of the proposed CNU consists of three major building blocks such as minimum value computation unit
(MVCU), sign computation unit (SU), and two’s complement
to sign magnitude/sign magnitude to two’s complement unit
(TCSM/SMTC) which are detailed in the following subsections.</p>

&emsp; ***A. Minimum Value Computation Unit*** : <p align="justify"> &emsp; The basic building block of MVCU is 20-input minimum
value unit (MVU-20). It is designed using 2-input minimum
value unit (MVU) as shown in Fig. 2. It compares two 5-bit
inputs and gives the minimum value and index as outputs.</p>




<p align="center">
<img src="https://user-images.githubusercontent.com/73669849/196872616-208b8ed3-a1c2-4fd1-9052-3971a58f00c9.JPG" >
</p>
<p align = "center">
Fig.2 - Architecture of 2-input minimum value unit
</p>

<p align="justify">
&emsp; The index value is computed by comparing two inputs using
comparator and MV is computed based on the index value with
the help of 2:1 multiplexer as shown in 2 and 3 respectively.
</p>


<p align="center">
<img src="https://user-images.githubusercontent.com/73669849/196873156-ab22b9f4-abc7-443d-af13-2f3c5bd67da5.png" >
</p>

<p align="justify">
&emsp; The 4-input minimum value unit is shown in Fig. 3. It
consists of three 2-input MVUs and an adder. The two 2-input
MVUs which are named as A and B are used to compute the
minimum values from the given inputs and the third MVU is
used to compute the minimum of mvA and mvB. The output
of the third MVU is considered as frst minimum min1. The
second minimum value min2 is computed by adding a small
value alpha (α) to the frst minimum.
 </p>

<p align="center">
<img src="https://user-images.githubusercontent.com/73669849/196877396-8380992d-0994-4c88-b583-1ecb17ab3aa1.JPG" >
</p>
<p align = "center">
Fig.3 - Architecture of 4-input minimum value unit
</p>

<p align="justify">
&emsp;
Similarly, the 8-input MVU is constructed by using seven
2-input MVUs and an adder. The 16-input MVU is constructed by using ffteen 2-input MVUs and an adder. In general, the
K-input MVU requires (K-1) number of 2-input MVUs and
an adder.</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/73669849/196877827-3759e3ef-0a09-4f9f-9f74-ab96d6111e41.JPG" >
</p>
<p align = "center">
Fig.4 - Architecture of 20-input minimum value unit
</p>

<p align="justify">
&emsp;
Since our design requires 20-input MVU (MVU-20), it can
be constructed by nineteen 2-input MVUs and an adder as
shown in Fig. 4. The ten 2-input MVUs are considered as stage
A where it takes primary inputs and computes the minimum
value. The remaining nine 2-input MVUs are considered as
Stage B where it takes the intermediate minimum values and
computes the frst minimum value min1. The 5-bit adder
is considered as stage C where it adds Alpha (α) to frst
minimum value to compute second minimum value min2. </p>

<p align="center">
<img src="https://user-images.githubusercontent.com/73669849/196878299-dedaca96-1da0-4e7e-8732-90b01f59c8cc.JPG" >
</p>
<p align = "center">
Fig.5 - Minimum value computation unit architecture
</p>

<p align="justify">
&emsp;
Now, the MVU-20 is connected in a manner to construct the
MVCU as shown in Fig. 5. It computes frst minimum min1
and second minimum min2 using the MVU-20 module. It
subtracts the offset value 4′b1 from min1 and min2. Then
the most signifcant bit (MSB) is checked to fnd whether the subtracted value is positive or negative. If the subtracted value
is negative, then the output of 2:1 Mux is zero otherwise
it is the actual subtracted value. Now, all the output of the
MVCU is replaced with min1 expect the index of min1; this
magnitude of min1 is replaced by min2. This is done by using
20 equalizers and 2:1 multiplexers.
</p>

&emsp; ***B. Sign Unit*** : <p align="justify"> &emsp; The sign unit takes all the MSB of the given inputs and
EX-OR those bits to compute a product bit. Then, the product
bit is EX-ORed with each MSB to obtain the sign processed
outputs as shown in Fig. 6. These sign processed outputs are
concatenated with the outputs of MVCU in the MSB position.</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/73669849/196879128-90bfb2ce-7660-407a-bcd2-690e4eb40a97.JPG" >
</p>
<p align = "center">
Fig.6 - Sign computation unit architecture
</p>

&emsp; ***C. TCSM/SMTC*** : <p align="justify"> &emsp; TCSM/SMTC module is used at both the sides of CNU
architecture. It takes 5 bits as input and processes the lower 4
bits with the help of a conversion unit (ConU). The simplifed
Boolean expressions for ConU are given in Eq. 4, Eq. 5, Eq.
6 and Eq. 7 respectively.</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/73669849/196916016-00b328ea-b5ef-487d-bc78-12ff084d6b72.png" >
</p>

<p align="justify">
&emsp;
The output of this module is either actual value or converted
value based on the value of MSB as shown in Fig. 7. </p>

<p align="center">
<img src="https://user-images.githubusercontent.com/73669849/196915195-7620d816-c8b5-4a55-9448-1f4780fb6886.JPG" >
</p>
<p align = "center">
Fig.7 - Architecture of magnitude conversion unit
</p>


&emsp; ***D. Complete CNU Architecture*** : 

<p align="justify"> &emsp; All the major modules are interconnected as shown in Fig.
8 to achieve a novel CNU architecture.</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/73669849/196916800-04d08e25-ac27-4a1e-9384-8a1e9e3c4ccb.JPG" >
</p>
<p align = "center">
Fig.8 - Proposed novel check node unit architecture
</p>

**IV. RESULT ANALYSIS**: <p align="justify">
&emsp; The LDPC decoder behaviour is studied for two conventional decoding algorithms i.e. min-sum (MS) & offset minsum (OMS) and one proposed decoding algorithm i.e. second
minimum approximation (SMA). This study is carried out in
MATLAB environment. First, the 5G-NR LDPC codes are
encoded and binary phase-shift keying (BPSK) modulated at
the sending end. It is transmitted through additive white Gaussian noise (AWGN) Channel. Then, it is BPSK demodulated
and decoded at the receiving end. The bit error rate (BER)
versus signal to noise ratio (SNR) graph is used to evaluate
the performance of the decoder which is shown in Fig. 9.
The following graph is plotted for all the above mentioned
decoding algorithms for 10 iterations and 20 iterations for the
SNR (Eb/N0) value ranging from 0 to 3 dB.</p>
 
 <p align="center">
<img src="https://user-images.githubusercontent.com/73669849/196918016-2b9a332d-ca95-474e-85d3-9bf76707cc10.JPG" >
</p>
<p align = "center">
Fig.9 - BER Performance Analysis of LDPC Decoder
</p>

<p align="justify">
&emsp;
It is clear from the graph that the BER of conventional MS
decoding algorithm is higher than SMA than OMS. It is also
to be noted that; as the number of iterations increase, the BER
decreases.</p>

<p align="justify">
&emsp;
The proposed CNU architecture based on SMA decoding algorithm is written in Verilog Hardware-DescriptionLanguage (HDL) and it is synthesized in Xilinx Artix-VII
series of FPGA Board. Table I shows the comparison results of
our implementation with the existing CNU architectures. </p>

 <p align="center">
<img src="https://user-images.githubusercontent.com/73669849/196918808-0a0b2738-dcb9-43ed-b936-0fa7850d4f58.png" >
</p>
 
<p align="justify">
&emsp;
 Our proposed design has 45.5% and 22.02% reduction in number
of LUTs than [8] & [11] and [10] respectively. It also has
24.8% and 16.7% reduction in data path delay than [8] &
[11] and [10] respectively. Thus, the proposed CNU architecture with SMA decoding
algorithm outperforms all the other existing architectures.</p>

### **V. CONCLUSION *:
<p align="justify">
&emsp; In this paper, an area effcient low latency check node
unit architecture for 5G new radio (5G-NR) compliant LDPC
decoder is proposed. This can be achieved by computing only
the frst minimum value in a conventional way. The second
minimum value is approximately computed. The bit error rate
graph is also simulated in MATLAB to calculate the error
occurred while approximating. But, the SMA decoding method
gives a reasonable error while comparing it with conventional
min sum and offset min sum decoding methods. The proposed
architecture is synthesized on Xilinx Artix-VII series of FPGA
board and the results are also compared with the existing
architectures. It is clear from the table that our proposed work
has used less area and consumed less time than the existing
architectures.</p>


### **REFERENCES**: 
<p align="justify">
&emsp;
 [1] R. Gallager, “Low-density parity-check codes,” in IRE Trans. Inf.
Theory, vol. 8, no. 1, pp. 21–28, Jan. 1962.</p>
 <p align="justify">
&emsp;
[2] D. .J. C. Mackay and R. W. Neal, “Good Codes based on very sparse
matrices,” in Proc. 5th IMA Conf. Cryptogr. Coding, vol. 1025, pp. 100–
111, Dec. 1995.</p>
  <p align="justify">
&emsp;
[3] Chin-Long Wey, Ming-Der Shieh, and Shin-yo Lin, “Algorithms of
Finding the First Two Minimum Values and Their Hardware Implementation,” in IEEE Transactions on Circuits and Systems—I: Regular
Papers, vol. 55, no. 11, pp. 3430–3437, Dec. 2008.</p>
   <p align="justify">
&emsp;
[4] M. Li, V. Derudder, K. Bertrand, C. Desset, and A. Bourdoux, “HighSpeed LDPC Decoders Towards 1 Tb/s,” in Transactions on Circuits
and Systems I, vol. 68, no. 5, pp. 2224–2233, Mar. 2021.</p>
    <p align="justify">
&emsp;
[5] Jingbo Liu, Jingyang Yuan, and Jin Sha, “Symbol-Based Algorithm for
Decoding Binary LDPC Codes with Higher Order Modulations,” in Int.
Symp. on circuits and Systems, May 2020.</p>
     <p align="justify">
&emsp;
[6] T. Truong Nguyen-Ly, V. Savin, K. Le, D. declercq, F. Ghaffari, and
O. Bonacalo, “Analysis and Design of Cost-Effective, High-Throughput
LDPC Decoders,” in Transactions on VLSI Systems, Vol. 26, No. 3,
pp. 508–521, Mar. 2018.</p>
      <p align="justify">
&emsp;
[7] L. Petrovic, M. Markovic, M. El Mezeni, V. Saranovac, and A. radosevic, “Flexible High Throughput QC-LDPC Decoder with Perfect
Pipeline Conﬂicts Resolution and Effcient Hardware Utilization,” in
Transactions on Circuits and Systems I, Vol. 67, No. 12, pp. 5454–5467,
Dec. 2020.</p>
       <p align="justify">
&emsp;
[8] Anuj Verma, and Rahul Shrestha, “A New VLSI Architecture of
Next-Generation QC-LDPC decoder for 5G New-Radio WirelessCommunication Standard,” in Int. Symp. on circuits and Systems, Oct.
2020.</p>
        <p align="justify">
&emsp;
[9] J. Nadal, and A. Baghdadi, “Parallel and Flexible 5G LDPC Decoder Architecture Targeting FPGA,” in Transactions on VLSI Systems, Vol. 29,
No. 6, pp. 1141–1151, Jun. 2021.</p>
         <p align="justify">
&emsp;
[10] Anuj Verma, and Rahul Shrestha, “Hardware Efcient and High Throughput LLRC Segregation based Binary QC-LDPC Decoding Algorithm
and Architecture,” in IEEE Transactions on Circuits and Systems II:
Express briefs, vol. 68, no. 8, pp. 2835–2839, Aug. 2021.</p>
          <p align="justify">
&emsp;
[11] Anuj Verma, and Rahul Shrestha, “A New Partially-Parallel VLSIArchitecture of Quasi-Cyclic LDPC Decoder for 5G New-Radio,” in
Int. Conference on VLSI Design, Jan. 2020.</p>
           <p align="justify">
&emsp;
[12] C. Lin, L. Liu, Y. Liao, and H. Chang, “A 33.2 Gbps/Iter. Reconfgurable
LDPC Decoder Fully Compliant with 5G NR Applications,” in Int.
Symp. on circuits and Systems, May 2021.</p>
            <p align="justify">
&emsp;
[13] Sangbu Yun, Dongyun Kam, Jeongwon Choe, Byeong Yong Kong, and
youngjoo Lee, “Ultra-Low-Latency LDPC Decoding Architecture Using
Reweighted Offset Min-Sum Algorithm,” in Int. Symp. on circuits and
Systems, Oct. 2020.</p>
