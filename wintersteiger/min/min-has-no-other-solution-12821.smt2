(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.516929154300040938352367447805590927600860595703125p558 {- 2328041946682610 558 (-1.43121e+168)}
; Y = 1.673301979122905347452388014062307775020599365234375p235 {+ 3032282542285734 235 (9.23896e+070)}
; -1.516929154300040938352367447805590927600860595703125p558 m 1.673301979122905347452388014062307775020599365234375p235 == -1.516929154300040938352367447805590927600860595703125p558
; [HW: -1.516929154300040938352367447805590927600860595703125p558] 

; mpf : - 2328041946682610 558
; mpfd: - 2328041946682610 558 (-1.43121e+168) class: Neg. norm. non-zero
; hwf : - 2328041946682610 558 (-1.43121e+168) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000101101 #b1000010001010101011110000001010000010001010011110010)))
(assert (= y (fp #b0 #b10011101010 #b1010110001011101100001001011110010101010001110100110)))
(assert (= r (fp #b1 #b11000101101 #b1000010001010101011110000001010000010001010011110010)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
