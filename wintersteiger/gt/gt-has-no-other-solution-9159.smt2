(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.005281717643709438192445304594002664089202880859375p468 {+ 23786741612086 468 (7.66171e+140)}
; Y = -1.365580883183803440061865330790169537067413330078125p-38 {- 1646429929280354 -38 (-4.96795e-012)}
; 1.005281717643709438192445304594002664089202880859375p468 > -1.365580883183803440061865330790169537067413330078125p-38 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111010011 #b0000000101011010001001001000010010001011111000110110)))
(assert (= y (fp #b1 #b01111011001 #b0101110110010110101101010111000101010001001101100010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
