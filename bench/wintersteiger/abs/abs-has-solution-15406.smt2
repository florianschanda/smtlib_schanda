(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5946204236653931385347959803766570985317230224609375p314 {- 2677932318446351 314 (-5.32201e+094)}
; -1.5946204236653931385347959803766570985317230224609375p314 | == 1.5946204236653931385347959803766570985317230224609375p314
; [HW: 1.5946204236653931385347959803766570985317230224609375p314] 

; mpf : + 2677932318446351 314
; mpfd: + 2677932318446351 314 (5.32201e+094) class: Pos. norm. non-zero
; hwf : + 2677932318446351 314 (5.32201e+094) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100111001 #b1001100000111001000010110100100100101101001100001111)))
(assert (= r (fp #b0 #b10100111001 #b1001100000111001000010110100100100101101001100001111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
