(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8359892564315154483978176358505152165889739990234375p993 {+ 3764960903750711 993 (1.53694e+299)}
; Y = 1.04758423365492792100894803297705948352813720703125p491 {+ 214300336957044 491 (6.69756e+147)}
; 1.8359892564315154483978176358505152165889739990234375p993 m 1.04758423365492792100894803297705948352813720703125p491 == 1.04758423365492792100894803297705948352813720703125p491
; [HW: 1.04758423365492792100894803297705948352813720703125p491] 

; mpf : + 214300336957044 491
; mpfd: + 214300336957044 491 (6.69756e+147) class: Pos. norm. non-zero
; hwf : + 214300336957044 491 (6.69756e+147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111100000 #b1101011000000011011001000101010000101110010000110111)))
(assert (= y (fp #b0 #b10111101010 #b0000110000101110011110101111011101011010011001110100)))
(assert (= r (fp #b0 #b10111101010 #b0000110000101110011110101111011101011010011001110100)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
