(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5139120878358449662215434727841056883335113525390625p-296 {+ 2314454287278705 -296 (1.18911e-089)}
; 1.5139120878358449662215434727841056883335113525390625p-296 | == 1.5139120878358449662215434727841056883335113525390625p-296
; [HW: 1.5139120878358449662215434727841056883335113525390625p-296] 

; mpf : + 2314454287278705 -296
; mpfd: + 2314454287278705 -296 (1.18911e-089) class: Pos. norm. non-zero
; hwf : + 2314454287278705 -296 (1.18911e-089) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011010111 #b1000001110001111101111100001101001000110001001110001)))
(assert (= r (fp #b0 #b01011010111 #b1000001110001111101111100001101001000110001001110001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
