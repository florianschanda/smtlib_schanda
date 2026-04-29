(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.08291226692884823279428019304759800434112548828125p713 {- 373403654445204 713 (-4.66638e+214)}
; Y = -1.479502742856551922301377999247051775455474853515625p-274 {- 2159488374051898 -274 (-4.87413e-083)}
; -1.08291226692884823279428019304759800434112548828125p713 > -1.479502742856551922301377999247051775455474853515625p-274 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011001000 #b0001010100111001101111010000001011100101100010010100)))
(assert (= y (fp #b1 #b01011101101 #b0111101011000000101100010001011011101001010000111010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
