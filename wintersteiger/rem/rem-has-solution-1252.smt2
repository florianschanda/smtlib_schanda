(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0397455878570067699939727390301413834095001220703125p-848 {+ 178998214662437 -848 (5.53976e-256)}
; Y = 1.29829165463995455098711317987181246280670166015625p509 {+ 1343386184684228 509 (2.17591e+153)}
; 1.0397455878570067699939727390301413834095001220703125p-848 % 1.29829165463995455098711317987181246280670166015625p509 == 1.0397455878570067699939727390301413834095001220703125p-848
; [HW: 1.0397455878570067699939727390301413834095001220703125p-848] 

; mpf : + 178998214662437 -848
; mpfd: + 178998214662437 -848 (5.53976e-256) class: Pos. norm. non-zero
; hwf : + 178998214662437 -848 (5.53976e-256) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010101111 #b0000101000101100110001000101000000000001100100100101)))
(assert (= y (fp #b0 #b10111111100 #b0100110001011100110101111000010101011001001011000100)))
(assert (= r (fp #b0 #b00010101111 #x0a2cc45001925)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
