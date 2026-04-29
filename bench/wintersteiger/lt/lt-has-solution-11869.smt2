(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7364465241787210292301324443542398512363433837890625p470 {+ 3316660291869585 470 (5.2937e+141)}
; Y = -1.8026445562760080587594302414800040423870086669921875p277 {- 3614789724555587 277 (-4.37743e+083)}
; 1.7364465241787210292301324443542398512363433837890625p470 < -1.8026445562760080587594302414800040423870086669921875p277 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111010101 #b1011110010000111110000100110100010011001101110010001)))
(assert (= y (fp #b1 #b10100010100 #b1100110101111010000111010001011110000100100101000011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
