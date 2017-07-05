(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.282944694015764053318662263336591422557830810546875p206 {+ 1274269618535854 206 (1.31943e+062)}
; 1.282944694015764053318662263336591422557830810546875p206 | == 1.282944694015764053318662263336591422557830810546875p206
; [HW: 1.282944694015764053318662263336591422557830810546875p206] 

; mpf : + 1274269618535854 206
; mpfd: + 1274269618535854 206 (1.31943e+062) class: Pos. norm. non-zero
; hwf : + 1274269618535854 206 (1.31943e+062) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011001101 #b0100100001101111000100000011111101011111110110101110)))
(assert (= r (fp #b0 #b10011001101 #b0100100001101111000100000011111101011111110110101110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
