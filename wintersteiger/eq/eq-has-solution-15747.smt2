(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3775449355929920702834579060436226427555084228515625p-969 {+ 1700311231252217 -969 (2.76083e-292)}
; Y = -1.9868554576689236856879006154485978186130523681640625p-342 {- 4444401871426305 -342 (-2.21773e-103)}
; 1.3775449355929920702834579060436226427555084228515625p-969 = -1.9868554576689236856879006154485978186130523681640625p-342 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000110110 #b0110000010100110110010001110111100100100011011111001)))
(assert (= y (fp #b1 #b01010101001 #b1111110010100010100011110010110010010001001100000001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
