(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5618398356508118585139754941337741911411285400390625p453 {+ 2530301674478897 453 (3.63266e+136)}
; 1.5618398356508118585139754941337741911411285400390625p453 | == 1.5618398356508118585139754941337741911411285400390625p453
; [HW: 1.5618398356508118585139754941337741911411285400390625p453] 

; mpf : + 2530301674478897 453
; mpfd: + 2530301674478897 453 (3.63266e+136) class: Pos. norm. non-zero
; hwf : + 2530301674478897 453 (3.63266e+136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111000100 #b1000111111010100101111000100011110110101110100110001)))
(assert (= r (fp #b0 #b10111000100 #b1000111111010100101111000100011110110101110100110001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
