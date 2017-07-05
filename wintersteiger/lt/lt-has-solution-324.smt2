(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4049180057437367086237145485938526690006256103515625p-59 {+ 1823588579783097 -59 (2.43714e-018)}
; Y = -1.307923118425108111040344738285057246685028076171875p586 {- 1386762441398078 586 (-3.31253e+176)}
; 1.4049180057437367086237145485938526690006256103515625p-59 < -1.307923118425108111040344738285057246685028076171875p586 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111000100 #b0110011110101000101101001101100000111011000110111001)))
(assert (= y (fp #b1 #b11001001001 #b0100111011010100000011001010101101010001011100111110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
