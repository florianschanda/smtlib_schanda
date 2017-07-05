(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8498112134778337267704273472190834581851959228515625p-11 {- 3827209464354041 -11 (-0.000903228)}
; Y = 1.1179787892907719903945462647243402898311614990234375p-249 {+ 531329231487543 -249 (1.23585e-075)}
; -1.8498112134778337267704273472190834581851959228515625p-11 < 1.1179787892907719903945462647243402898311614990234375p-249 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111110100 #b1101100110001101001110100100100110101001010011111001)))
(assert (= y (fp #b0 #b01100000110 #b0001111000110011110110111010000110100000001000110111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
