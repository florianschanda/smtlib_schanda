(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2787088850018772934191702006501145660877227783203125p-61 {- 1255193230639301 -61 (-5.54552e-019)}
; Y = -1.3336843038854497844880597767769359052181243896484375p898 {- 1502780506637895 898 (-2.81831e+270)}
; -1.2787088850018772934191702006501145660877227783203125p-61 > -1.3336843038854497844880597767769359052181243896484375p898 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111000010 #b0100011101011001011101110010101000110000000011000101)))
(assert (= y (fp #b1 #b11110000001 #b0101010101101100010101011010010001100000011001000111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
