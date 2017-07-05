(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9434076954656822611156030689016915857791900634765625p612 {+ 4248730545757705 612 (3.3031e+184)}
; 1.9434076954656822611156030689016915857791900634765625p612 | == 1.9434076954656822611156030689016915857791900634765625p612
; [HW: 1.9434076954656822611156030689016915857791900634765625p612] 

; mpf : + 4248730545757705 612
; mpfd: + 4248730545757705 612 (3.3031e+184) class: Pos. norm. non-zero
; hwf : + 4248730545757705 612 (3.3031e+184) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100011 #b1111000110000011001010101010111011010001111000001001)))
(assert (= r (fp #b0 #b11001100011 #b1111000110000011001010101010111011010001111000001001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
