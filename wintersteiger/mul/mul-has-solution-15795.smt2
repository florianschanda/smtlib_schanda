(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.54020050561549215473178264801390469074249267578125p-840 {- 2432846795795284 -840 (-2.10078e-253)}
; Y = 1.2442637183390790056591868051327764987945556640625p773 {+ 1100065990892008 773 (6.18157e+232)}
; -1.54020050561549215473178264801390469074249267578125p-840 * 1.2442637183390790056591868051327764987945556640625p773 == -1.916415608104861778571148533956147730350494384765625p-67
; [HW: -1.916415608104861778571148533956147730350494384765625p-67] 

; mpf : - 4127168991177562 -67
; mpfd: - 4127168991177562 -67 (-1.29861e-020) class: Neg. norm. non-zero
; hwf : - 4127168991177562 -67 (-1.29861e-020) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010110111 #b1000101001001010100101001001000011100110101101010100)))
(assert (= y (fp #b0 #b11100000100 #b0011111010001000000100010010100111011101100111101000)))
(assert (= r (fp #b1 #b01110111100 #b1110101010011010001101101001101001011010101101011010)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
