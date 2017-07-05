(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7867730158722558986283956983243115246295928955078125p670 {- 3543310661107453 670 (-8.75319e+201)}
; -1.7867730158722558986283956983243115246295928955078125p670 | == 1.7867730158722558986283956983243115246295928955078125p670
; [HW: 1.7867730158722558986283956983243115246295928955078125p670] 

; mpf : + 3543310661107453 670
; mpfd: + 3543310661107453 670 (8.75319e+201) class: Pos. norm. non-zero
; hwf : + 3543310661107453 670 (8.75319e+201) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010011101 #b1100100101101001111101001101010010001011111011111101)))
(assert (= r (fp #b0 #b11010011101 #b1100100101101001111101001101010010001011111011111101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
