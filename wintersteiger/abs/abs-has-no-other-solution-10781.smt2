(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.752828524271087484720510474289767444133758544921875p492 {+ 3390438261381150 492 (2.24129e+148)}
; 1.752828524271087484720510474289767444133758544921875p492 | == 1.752828524271087484720510474289767444133758544921875p492
; [HW: 1.752828524271087484720510474289767444133758544921875p492] 

; mpf : + 3390438261381150 492
; mpfd: + 3390438261381150 492 (2.24129e+148) class: Pos. norm. non-zero
; hwf : + 3390438261381150 492 (2.24129e+148) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101011 #b1100000010111001010111101100001100111101100000011110)))
(assert (= r (fp #b0 #b10111101011 #b1100000010111001010111101100001100111101100000011110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
