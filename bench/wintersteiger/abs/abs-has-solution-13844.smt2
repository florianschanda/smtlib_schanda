(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7992466140028373633441560741630382835865020751953125p-405 {- 3599486753000309 -405 (-2.17742e-122)}
; -1.7992466140028373633441560741630382835865020751953125p-405 | == 1.7992466140028373633441560741630382835865020751953125p-405
; [HW: 1.7992466140028373633441560741630382835865020751953125p-405] 

; mpf : + 3599486753000309 -405
; mpfd: + 3599486753000309 -405 (2.17742e-122) class: Pos. norm. non-zero
; hwf : + 3599486753000309 -405 (2.17742e-122) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001101010 #b1100110010011011011011010001010010010100101101110101)))
(assert (= r (fp #b0 #b01001101010 #b1100110010011011011011010001010010010100101101110101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
