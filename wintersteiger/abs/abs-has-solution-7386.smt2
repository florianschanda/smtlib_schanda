(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.446836158693788565443583138403482735157012939453125p26 {+ 2012371157789010 26 (9.70955e+007)}
; 1.446836158693788565443583138403482735157012939453125p26 | == 1.446836158693788565443583138403482735157012939453125p26
; [HW: 1.446836158693788565443583138403482735157012939453125p26] 

; mpf : + 2012371157789010 26
; mpfd: + 2012371157789010 26 (9.70955e+007) class: Pos. norm. non-zero
; hwf : + 2012371157789010 26 (9.70955e+007) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000011001 #b0111001001100011110110101100000001000010100101010010)))
(assert (= r (fp #b0 #b10000011001 #b0111001001100011110110101100000001000010100101010010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
