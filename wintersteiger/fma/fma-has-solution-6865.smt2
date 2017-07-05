(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4653407782706115991544493226683698594570159912109375p78 {+ 2095708555619823 78 (4.42872e+023)}
; Y = -1.3489087279815843434249700294458307325839996337890625p-773 {- 1571345217324177 -773 (-2.71516e-233)}
; Z = 1.8823741806617555472058711529825814068317413330078125p-486 {+ 3973860031229629 -486 (9.42167e-147)}
; 1.4653407782706115991544493226683698594570159912109375p78 x -1.3489087279815843434249700294458307325839996337890625p-773 1.8823741806617555472058711529825814068317413330078125p-486 == 1.8823741806617555472058711529825814068317413330078125p-486
; [HW: 1.8823741806617555472058711529825814068317413330078125p-486] 

; mpf : + 3973860031229629 -486
; mpfd: + 3973860031229629 -486 (9.42167e-147) class: Pos. norm. non-zero
; hwf : + 3973860031229629 -486 (9.42167e-147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001001101 #b0111011100100000100100101100000000101010110111101111)))
(assert (= y (fp #b1 #b00011111010 #b0101100101010010000101010001011111111000010010010001)))
(assert (= z (fp #b0 #b01000011001 #b1110000111100011010001100011100011000110111010111101)))
(assert (= r (fp #b0 #b01000011001 #b1110000111100011010001100011100011000110111010111101)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)
