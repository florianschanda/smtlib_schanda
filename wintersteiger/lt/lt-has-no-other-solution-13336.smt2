(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.000142785675973033931995814782567322254180908203125p-252 {- 643049517106 -252 (-1.38198e-076)}
; Y = 0.7047490679108949773734593691187910735607147216796875p-1022 {+ 3173907639633211 -1023 (1.56812e-308)}
; -1.000142785675973033931995814782567322254180908203125p-252 < 0.7047490679108949773734593691187910735607147216796875p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100000011 #b0000000000001001010110111000101111001111000000110010)))
(assert (= y (fp #b0 #b00000000000 #b1011010001101010011011110101011010010000010100111011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
