(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2396591273802852750662850667140446603298187255859375p663 {+ 1079328756765791 663 (4.74449e+199)}
; Y = -1.07699335800991047307206827099435031414031982421875p-518 {- 346747258443436 -518 (-1.25509e-156)}
; 1.2396591273802852750662850667140446603298187255859375p663 > -1.07699335800991047307206827099435031414031982421875p-518 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010010110 #b0011110101011010010011001111001001001001010001011111)))
(assert (= y (fp #b1 #b00111111001 #b0001001110110101110101100011001010101001011010101100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
