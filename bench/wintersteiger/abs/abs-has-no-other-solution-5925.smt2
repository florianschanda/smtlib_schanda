(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.40910386935546938502739067189395427703857421875p775 {+ 1842440033585120 775 (2.8002e+233)}
; 1.40910386935546938502739067189395427703857421875p775 | == 1.40910386935546938502739067189395427703857421875p775
; [HW: 1.40910386935546938502739067189395427703857421875p775] 

; mpf : + 1842440033585120 775
; mpfd: + 1842440033585120 775 (2.8002e+233) class: Pos. norm. non-zero
; hwf : + 1842440033585120 775 (2.8002e+233) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100000110 #b0110100010111011000001111111101110001100011111100000)))
(assert (= r (fp #b0 #b11100000110 #b0110100010111011000001111111101110001100011111100000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
