(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7949197250598409869581928433035500347614288330078125p63 {- 3580000177568957 63 (-1.65552e+019)}
; -1.7949197250598409869581928433035500347614288330078125p63 | == 1.7949197250598409869581928433035500347614288330078125p63
; [HW: 1.7949197250598409869581928433035500347614288330078125p63] 

; mpf : + 3580000177568957 63
; mpfd: + 3580000177568957 63 (1.65552e+019) class: Pos. norm. non-zero
; hwf : + 3580000177568957 63 (1.65552e+019) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000111110 #b1100101101111111110110111110111000010011110010111101)))
(assert (= r (fp #b0 #b10000111110 #b1100101101111111110110111110111000010011110010111101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
