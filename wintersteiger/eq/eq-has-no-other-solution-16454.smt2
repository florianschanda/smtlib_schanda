(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6671850825414094021681421509128995239734649658203125p-50 {- 3004734489120645 -50 (-1.48076e-015)}
; Y = 1.1435437107769186315664455833029933273792266845703125p747 {+ 646463402366309 747 (8.46563e+224)}
; -1.6671850825414094021681421509128995239734649658203125p-50 = 1.1435437107769186315664455833029933273792266845703125p747 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111001101 #b1010101011001100101001000011110111100100111110000101)))
(assert (= y (fp #b0 #b11011101010 #b0010010010111111010001111101011101010101010101100101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
