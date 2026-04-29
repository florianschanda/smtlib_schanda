(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6857719173350182995108070826972834765911102294921875p422 {+ 3088442151371139 422 (1.82582e+127)}
; 1.6857719173350182995108070826972834765911102294921875p422 | == 1.6857719173350182995108070826972834765911102294921875p422
; [HW: 1.6857719173350182995108070826972834765911102294921875p422] 

; mpf : + 3088442151371139 422
; mpfd: + 3088442151371139 422 (1.82582e+127) class: Pos. norm. non-zero
; hwf : + 3088442151371139 422 (1.82582e+127) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110100101 #b1010111110001110101111111001010101111000000110000011)))
(assert (= r (fp #b0 #b10110100101 #b1010111110001110101111111001010101111000000110000011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
