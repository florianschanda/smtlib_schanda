(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.307844027817151033588061181944794952869415283203125p-924 {- 1386406248965554 -924 (-9.22232e-279)}
; Y = -1.914278339619918778424789707059971988201141357421875p-699 {- 4117543589625182 -699 (-7.27844e-211)}
; -1.307844027817151033588061181944794952869415283203125p-924 = -1.914278339619918778424789707059971988201141357421875p-699 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001100011 #b0100111011001110110111011011111110111110010110110010)))
(assert (= y (fp #b1 #b00101000100 #b1110101000001110001001010011000000011011110101011110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
