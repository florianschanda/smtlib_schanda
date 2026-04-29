(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6840504428706120076952856834395788609981536865234375p997 {+ 3080689319614711 997 (2.25559e+300)}
; Y = 1.7665643962345083384235522316885180771350860595703125p-59 {+ 3452299129237221 -59 (3.0645e-018)}
; 1.6840504428706120076952856834395788609981536865234375p997 = 1.7665643962345083384235522316885180771350860595703125p-59 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111100100 #b1010111100011101111011100000100011110001100011110111)))
(assert (= y (fp #b0 #b01111000100 #b1100010000111101100100000111010000011010111011100101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
