(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4791540519237955653153449020464904606342315673828125 188 {- 2157918009697069 188 (-5.803e+056)}
; -1.4791540519237955653153449020464904606342315673828125 188 I == -1.4791540519237955653153449020464904606342315673828125 188
; [HW: -1.4791540519237955653153449020464904606342315673828125 188] 

; mpf : - 2157918009697069 188
; mpfd: - 2157918009697069 188 (-5.803e+056) class: Neg. norm. non-zero
; hwf : - 2157918009697069 188 (-5.803e+056) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010111011 #b0111101010101001110101110000011011000010001100101101)))
(assert (= r (fp #b1 #b10010111011 #b0111101010101001110101110000011011000010001100101101)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
