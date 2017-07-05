(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.93163838758664940797871167887933552265167236328125p535 {- 4195726295179284 535 (-2.17257e+161)}
; Y = 1.770937987682423386814889454399235546588897705078125p-107 {+ 3471996034052322 -107 (1.09142e-032)}
; -1.93163838758664940797871167887933552265167236328125p535 / 1.770937987682423386814889454399235546588897705078125p-107 == -1.0907430983026855653150732905487529933452606201171875p642
; [HW: -1.0907430983026855653150732905487529933452606201171875p642] 

; mpf : - 408670583702419 642
; mpfd: - 408670583702419 642 (-1.99058e+193) class: Neg. norm. non-zero
; hwf : - 408670583702419 642 (-1.99058e+193) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000010110 #b1110111001111111110110100111011001100010000000010100)))
(assert (= y (fp #b0 #b01110010100 #b1100010101011100001100010010010001010111000011100010)))
(assert (= r (fp #b1 #b11010000001 #b0001011100111010111100001000111110001100001110010011)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
