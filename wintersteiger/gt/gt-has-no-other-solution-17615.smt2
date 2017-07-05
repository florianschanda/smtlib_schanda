(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0581589580853147936068126000463962554931640625p-637 {- 261924661961280 -637 (-1.85543e-192)}
; Y = -1.981058644368591359352649305947124958038330078125p909 {- 4418295345206992 909 (-8.5736e+273)}
; -1.0581589580853147936068126000463962554931640625p-637 > -1.981058644368591359352649305947124958038330078125p909 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110000010 #b0000111011100011100000010110011011110010001001000000)))
(assert (= y (fp #b1 #b11110001100 #b1111101100100110101010001100100100000101011011010000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
