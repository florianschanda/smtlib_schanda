(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.701571806777062878524020561599172651767730712890625p-36 {+ 3159598527574826 -36 (2.47611e-011)}
; Y = -1.2369845087491444513005944827455095946788787841796875p-728 {- 1067283345295227 -728 (-8.76047e-220)}
; 1.701571806777062878524020561599172651767730712890625p-36 > -1.2369845087491444513005944827455095946788787841796875p-728 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111011011 #b1011001110011010001101011011110111100111001100101010)))
(assert (= y (fp #b1 #b00100100111 #b0011110010101011000001000100101010111100011101111011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
