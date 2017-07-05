(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :category "crafted")
(set-info :source |Alberto Griggio <griggio@fbk.eu>. These benchmarks were used for the evaluation in the following paper: L. Haller, A. Griggio, M. Brain, D. Kroening: Deciding floating-point logic with systematic abstraction. FMCAD 2012. Real-numbered literals have been automatically translated by MathSAT|)
(set-info :status unknown)
;; MathSAT API call trace
;; generated on 05/20/15 17:24:55

(declare-fun x0 () (_ FloatingPoint 8 24))
(declare-fun x1 () (_ FloatingPoint 8 24))
(declare-fun x2 () (_ FloatingPoint 8 24))
(define-fun _t_10 () (_ FloatingPoint 8 24) (fp #b0 #b10000001 #b01000000000000000000000))
(define-fun _t_12 () (_ FloatingPoint 8 24) (fp #b1 #b10000001 #b01000000000000000000000))
(define-fun _t_13 () (_ FloatingPoint 8 24) x0)
(define-fun _t_14 () Bool (fp.leq _t_12 _t_13))
(define-fun _t_15 () Bool (fp.leq _t_13 _t_10))
(define-fun _t_16 () Bool (and _t_14 _t_15))
(assert _t_16)
(define-fun _t_17 () (_ FloatingPoint 8 24) x1)
(define-fun _t_18 () Bool (fp.leq _t_12 _t_17))
(define-fun _t_19 () Bool (fp.leq _t_17 _t_10))
(define-fun _t_20 () Bool (and _t_18 _t_19))
(assert _t_20)
(define-fun _t_21 () (_ FloatingPoint 8 24) x2)
(define-fun _t_22 () Bool (fp.leq _t_12 _t_21))
(define-fun _t_23 () Bool (fp.leq _t_21 _t_10))
(define-fun _t_24 () Bool (and _t_22 _t_23))
(assert _t_24)
(define-fun _t_3 () RoundingMode RNE)
(define-fun _t_26 () (_ FloatingPoint 8 24) (fp #b0 #b00000000 #b00000000000000000000000))
(define-fun _t_28 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10010100111111011111001))
(define-fun _t_31 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01001010110000001000001))
(define-fun _t_32 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_31))
(define-fun _t_33 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_26 _t_32))
(define-fun _t_36 () (_ FloatingPoint 8 24) (fp #b1 #b01111010 #b11101011100001010001110))
(define-fun _t_37 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_36))
(define-fun _t_38 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_33 _t_37))
(define-fun _t_40 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10110101001111110111110))
(define-fun _t_41 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_40))
(define-fun _t_42 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_38 _t_41))
(define-fun _t_43 () Bool (fp.leq _t_28 _t_42))
(assert _t_43)
(define-fun _t_45 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10011000100100110111001))
(define-fun _t_48 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00110001001001101110100))
(define-fun _t_49 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_48))
(define-fun _t_50 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_26 _t_49))
(define-fun _t_52 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10011100101011000000100))
(define-fun _t_53 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_52))
(define-fun _t_54 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_50 _t_53))
(define-fun _t_57 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00101100000010000011001))
(define-fun _t_58 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_57))
(define-fun _t_59 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_54 _t_58))
(define-fun _t_60 () Bool (fp.leq _t_45 _t_59))
(assert _t_60)
(define-fun _t_63 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11100001010001111010110))
(define-fun _t_65 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11011100001010001111011))
(define-fun _t_66 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_65))
(define-fun _t_67 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_26 _t_66))
(define-fun _t_69 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01101001111110111110100))
(define-fun _t_70 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_69))
(define-fun _t_71 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_67 _t_70))
(define-fun _t_74 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00111111011111001110110))
(define-fun _t_75 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_74))
(define-fun _t_76 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_71 _t_75))
(define-fun _t_77 () Bool (fp.leq _t_63 _t_76))
(assert _t_77)
(define-fun _t_80 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00110110010001011010001))
(define-fun _t_83 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10111011111001110110110))
(define-fun _t_84 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_83))
(define-fun _t_85 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_26 _t_84))
(define-fun _t_88 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01000111101011100001001))
(define-fun _t_89 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_88))
(define-fun _t_90 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_85 _t_89))
(define-fun _t_92 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11111110111110011101110))
(define-fun _t_93 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_92))
(define-fun _t_94 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_90 _t_93))
(define-fun _t_95 () Bool (fp.leq _t_94 _t_80))
(assert _t_95)
(define-fun _t_97 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11101101000011100101011))
(define-fun _t_99 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11001111010111000010100))
(define-fun _t_100 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_99))
(define-fun _t_101 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_26 _t_100))
(define-fun _t_102 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_48))
(define-fun _t_103 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_101 _t_102))
(define-fun _t_106 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10111000010100011110110))
(define-fun _t_107 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_106))
(define-fun _t_108 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_103 _t_107))
(define-fun _t_109 () Bool (fp.leq _t_97 _t_108))
(assert _t_109)
(define-fun _t_112 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01101000111101011100001))
(define-fun _t_114 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00001010110000001000001))
(define-fun _t_115 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_114))
(define-fun _t_116 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_26 _t_115))
(define-fun _t_119 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11010011111101111100110))
(define-fun _t_120 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_119))
(define-fun _t_121 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_116 _t_120))
(define-fun _t_123 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01010110000001000001100))
(define-fun _t_124 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_123))
(define-fun _t_125 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_121 _t_124))
(define-fun _t_126 () Bool (fp.leq _t_112 _t_125))
(assert _t_126)
(define-fun _t_129 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01010011111101111100110))
(define-fun _t_132 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b10011001100110011001101))
(define-fun _t_133 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_132))
(define-fun _t_134 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_26 _t_133))
(define-fun _t_136 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11010000111001010110000))
(define-fun _t_137 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_136))
(define-fun _t_138 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_134 _t_137))
(define-fun _t_140 () (_ FloatingPoint 8 24) (fp #b0 #b01110110 #b00000110001001001101111))
(define-fun _t_141 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_140))
(define-fun _t_142 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_138 _t_141))
(define-fun _t_143 () Bool (fp.leq _t_142 _t_129))
(assert _t_143)
(define-fun _t_145 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01001000101101000011100))
(define-fun _t_148 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00100100110111010011000))
(define-fun _t_149 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_148))
(define-fun _t_150 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_26 _t_149))
(define-fun _t_152 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01000110101001111111000))
(define-fun _t_153 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_152))
(define-fun _t_154 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_150 _t_153))
(define-fun _t_156 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10001101010011111110000))
(define-fun _t_157 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_156))
(define-fun _t_158 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_154 _t_157))
(define-fun _t_159 () Bool (fp.leq _t_158 _t_145))
(assert _t_159)
(check-sat)
(exit)
