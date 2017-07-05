(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.196431597981626016036216242355294525623321533203125p-558 {- 884649271473842 -558 (-1.26809e-168)}
; +zero m -1.196431597981626016036216242355294525623321533203125p-558 == -1.196431597981626016036216242355294525623321533203125p-558
; [HW: -1.196431597981626016036216242355294525623321533203125p-558] 

; mpf : - 884649271473842 -558
; mpfd: - 884649271473842 -558 (-1.26809e-168) class: Neg. norm. non-zero
; hwf : - 884649271473842 -558 (-1.26809e-168) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b00111010001 #b0011001001001001010101110101100100111011011010110010)))
(assert (= r (fp #b1 #b00111010001 #b0011001001001001010101110101100100111011011010110010)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
