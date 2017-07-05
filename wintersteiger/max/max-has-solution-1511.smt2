(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5747681113633780203286960386321879923343658447265625p-830 {+ 2588525452160553 -830 (2.19948e-250)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.5747681113633780203286960386321879923343658447265625p-830 M -oo == 1.5747681113633780203286960386321879923343658447265625p-830
; [HW: 1.5747681113633780203286960386321879923343658447265625p-830] 

; mpf : + 2588525452160553 -830
; mpfd: + 2588525452160553 -830 (2.19948e-250) class: Pos. norm. non-zero
; hwf : + 2588525452160553 -830 (2.19948e-250) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011000001 #b1001001100100100000000001100000100010110111000101001)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b0 #b00011000001 #b1001001100100100000000001100000100010110111000101001)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
