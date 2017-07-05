(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9886260643704698480860315612517297267913818359375p-919 {+ 4452375975107608 -919 (4.48732e-277)}
; 1.9886260643704698480860315612517297267913818359375p-919 | == 1.9886260643704698480860315612517297267913818359375p-919
; [HW: 1.9886260643704698480860315612517297267913818359375p-919] 

; mpf : + 4452375975107608 -919
; mpfd: + 4452375975107608 -919 (4.48732e-277) class: Pos. norm. non-zero
; hwf : + 4452375975107608 -919 (4.48732e-277) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001101000 #b1111110100010110100110010000011001110001110000011000)))
(assert (= r (fp #b0 #b00001101000 #b1111110100010110100110010000011001110001110000011000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
