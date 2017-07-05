(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.620169580429815514577285284758545458316802978515625p-177 {- 2792995491330234 -177 (-8.45768e-054)}
; Y = 1.1985357148166400076405579966376535594463348388671875p881 {+ 894125371267955 881 (1.93231e+265)}
; Z = 1.01258678123510836854848093935288488864898681640625p-332 {+ 56685823280228 -332 (1.15737e-100)}
; -1.620169580429815514577285284758545458316802978515625p-177 x 1.1985357148166400076405579966376535594463348388671875p881 1.01258678123510836854848093935288488864898681640625p-332 == -1.941831106204624735056540885125286877155303955078125p704
; [HW: -1.941831106204624735056540885125286877155303955078125p704] 

; mpf : - 4241630218949090 704
; mpfd: - 4241630218949090 704 (-1.63429e+212) class: Neg. norm. non-zero
; hwf : - 4241630218949090 704 (-1.63429e+212) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101001110 #b1001111011000011011011110000000111101011100010111010)))
(assert (= y (fp #b0 #b11101110000 #b0011001011010011001111001001001000111001101101110011)))
(assert (= z (fp #b0 #b01010110011 #b0000001100111000111000110010010111000100010001100100)))
(assert (= r (fp #b1 #b11010111111 #b1111000100011011110101111110011110000001000111100010)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
