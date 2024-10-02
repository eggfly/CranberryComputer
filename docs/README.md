
LPM009M360A

根据规格书中的信息，EXTCOMIN信号应该按以下方式提供：
1.EXTCOMIN信号用于控制COM极性反转。
2.COM极性反转发生在EXTCOMIN信号的上升沿。
3.EXTCOMIN频率要求：
• 最小值：1.00Hz
• 最大值：140.00 Hz
• 典型值：不指定
4.EXTCOMIN信号时序要求：
• 上升时间：最大50 nsec
• 下降时间：最大50 nsec
• 高电平宽度：最小2.0 usec
5.正极性和负极性周期应尽可能保持相等。
6. 对于透射模式，COM频率应该约为60 Hz（EXTCOMIN频率约为120 Hz）。
7.在上电序列中，EXTCOMIN可以在DISP信号之前或同时开始。如果在DISP之前开始，DISP为“L"时EXTCOMIN会被忽略。
8. 在正常运行期间应持续提供EXTCOMIN信号。
总的来说，EXTCOMIN应该是一个连续的方波信号，频率在1-140 Hz之间（透射模式約120Hz），用于控制COM极性反转。它应该在上电后开始提供。并在整个显示操作期间保持。
