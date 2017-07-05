(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9975388066191712699293248078902252018451690673828125p749 {- 4492515397777709 749 (-5.9151e+225)}
; Y = -1.3873159864244930528087706989026628434658050537109375p306 {- 1744316132135983 306 (-1.80865e+092)}
; -1.9975388066191712699293248078902252018451690673828125p749 = -1.3873159864244930528087706989026628434658050537109375p306 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011101100 #b1111111101011110101101000000011011101011100100101101)))
(assert (= y (fp #b1 #b10100110001 #b0110001100100111001000111111011011101001010000101111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
