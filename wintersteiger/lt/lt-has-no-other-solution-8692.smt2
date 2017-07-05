(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0674847785667667121600743485032580792903900146484375p225 {+ 303924423606471 225 (5.75587e+067)}
; Y = 1.34665479439642243875141502940095961093902587890625p382 {+ 1561194402869924 382 (1.32652e+115)}
; 1.0674847785667667121600743485032580792903900146484375p225 < 1.34665479439642243875141502940095961093902587890625p382 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011100000 #b0001000101000110101011101011010011101100000011000111)))
(assert (= y (fp #b0 #b10101111101 #b0101100010111110010111100101110011101111001010100100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
