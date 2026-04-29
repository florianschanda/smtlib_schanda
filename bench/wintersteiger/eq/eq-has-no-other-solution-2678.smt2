(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0102156863923992258236239649704657495021820068359375p684 {+ 46007361430143 684 (8.10832e+205)}
; Y = -1.823039361952127901389530961751006543636322021484375p-424 {- 3706639763798854 -424 (-4.20802e-128)}
; 1.0102156863923992258236239649704657495021820068359375p684 = -1.823039361952127901389530961751006543636322021484375p-424 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010101011 #b0000001010011101011111101100011011110110001001111111)))
(assert (= y (fp #b1 #b01001010111 #b1101001010110010101101010010011011100111101101000110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
