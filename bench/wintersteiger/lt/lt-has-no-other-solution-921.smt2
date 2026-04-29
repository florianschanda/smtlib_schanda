(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2282135462947818549395151421776972711086273193359375p-105 {- 1027782442054079 -105 (-3.02778e-032)}
; Y = 0.0029869119774925678711952059529721736907958984375p-1022 {+ 13451855668824 -1023 (6.6461e-311)}
; -1.2282135462947818549395151421776972711086273193359375p-105 < 0.0029869119774925678711952059529721736907958984375p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110010110 #b0011101001101100001100111111010111010111000110111111)))
(assert (= y (fp #b0 #b00000000000 #b0000000011000011110000000001000101000010011001011000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
