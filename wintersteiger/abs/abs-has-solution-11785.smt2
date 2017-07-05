(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.91501977599777806204883745522238314151763916015625p316 {+ 4120882722220228 316 (2.55654e+095)}
; 1.91501977599777806204883745522238314151763916015625p316 | == 1.91501977599777806204883745522238314151763916015625p316
; [HW: 1.91501977599777806204883745522238314151763916015625p316] 

; mpf : + 4120882722220228 316
; mpfd: + 4120882722220228 316 (2.55654e+095) class: Pos. norm. non-zero
; hwf : + 4120882722220228 316 (2.55654e+095) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100111011 #b1110101000111110101111000110110100011010100011000100)))
(assert (= r (fp #b0 #b10100111011 #b1110101000111110101111000110110100011010100011000100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
