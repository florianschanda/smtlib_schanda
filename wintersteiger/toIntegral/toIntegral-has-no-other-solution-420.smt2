(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.31453527464727670803767978213727474212646484375 263 {+ 1416540945696352 263 (1.94832e+079)}
; 1.31453527464727670803767978213727474212646484375 263 I == 1.31453527464727670803767978213727474212646484375 263
; [HW: 1.31453527464727670803767978213727474212646484375 263] 

; mpf : + 1416540945696352 263
; mpfd: + 1416540945696352 263 (1.94832e+079) class: Pos. norm. non-zero
; hwf : + 1416540945696352 263 (1.94832e+079) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000110 #b0101000010000101011000100011111000001100011001100000)))
(assert (= r (fp #b0 #b10100000110 #b0101000010000101011000100011111000001100011001100000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
