(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7518026871607148553522392830927856266498565673828125p-50 {+ 3385818301753133 -50 (1.55591e-015)}
; 1.7518026871607148553522392830927856266498565673828125p-50 | == 1.7518026871607148553522392830927856266498565673828125p-50
; [HW: 1.7518026871607148553522392830927856266498565673828125p-50] 

; mpf : + 3385818301753133 -50
; mpfd: + 3385818301753133 -50 (1.55591e-015) class: Pos. norm. non-zero
; hwf : + 3385818301753133 -50 (1.55591e-015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111001101 #b1100000001110110001001000001001001100110011100101101)))
(assert (= r (fp #b0 #b01111001101 #b1100000001110110001001000001001001100110011100101101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
