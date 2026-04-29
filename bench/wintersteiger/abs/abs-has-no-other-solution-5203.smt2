(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0593533086524280495410721414373256266117095947265625p184 {- 267303538730281 184 (-2.59753e+055)}
; -1.0593533086524280495410721414373256266117095947265625p184 | == 1.0593533086524280495410721414373256266117095947265625p184
; [HW: 1.0593533086524280495410721414373256266117095947265625p184] 

; mpf : + 267303538730281 184
; mpfd: + 267303538730281 184 (2.59753e+055) class: Pos. norm. non-zero
; hwf : + 267303538730281 184 (2.59753e+055) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010110111 #b0000111100110001110001110100011110010010010100101001)))
(assert (= r (fp #b0 #b10010110111 #b0000111100110001110001110100011110010010010100101001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
