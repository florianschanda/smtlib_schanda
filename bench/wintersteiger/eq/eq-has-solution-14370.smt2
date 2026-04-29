(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5723162644470731752477377085597254335880279541015625p-27 {- 2577483315301913 -27 (-1.17147e-008)}
; Y = -1.4206060744310333721074357526958920061588287353515625p-864 {- 1894241360077369 -864 (-1.15493e-260)}
; -1.5723162644470731752477377085597254335880279541015625p-27 = -1.4206060744310333721074357526958920061588287353515625p-864 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111100100 #b1001001010000011010100011001011011000100111000011001)))
(assert (= y (fp #b1 #b00010011111 #b0110101110101100110101101111011000101110001000111001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
