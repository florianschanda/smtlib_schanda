(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.050082425210467906850908548221923410892486572265625p598 {+ 225551191515674 598 (1.08933e+180)}
; Y = -1.0943239399244257814558523023151792585849761962890625p785 {- 424797260695761 785 (-2.22686e+236)}
; 1.050082425210467906850908548221923410892486572265625p598 M -1.0943239399244257814558523023151792585849761962890625p785 == 1.050082425210467906850908548221923410892486572265625p598
; [HW: 1.050082425210467906850908548221923410892486572265625p598] 

; mpf : + 225551191515674 598
; mpfd: + 225551191515674 598 (1.08933e+180) class: Pos. norm. non-zero
; hwf : + 225551191515674 598 (1.08933e+180) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001010101 #b0000110011010010001100111010101001100010001000011010)))
(assert (= y (fp #b1 #b11100010000 #b0001100000100101100111010001110100110100100011010001)))
(assert (= r (fp #b0 #b11001010101 #b0000110011010010001100111010101001100010001000011010)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
