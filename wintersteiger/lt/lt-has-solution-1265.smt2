(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5036994722656518153058868847438134253025054931640625p-224 {- 2268460755602305 -224 (-5.57753e-068)}
; Y = 1.222345359072001702571697023813612759113311767578125p761 {+ 1001354476264226 761 (1.48259e+229)}
; -1.5036994722656518153058868847438134253025054931640625p-224 < 1.222345359072001702571697023813612759113311767578125p761 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100011111 #b1000000011110010011100101101100001100100101110000001)))
(assert (= y (fp #b0 #b11011111000 #b0011100011101011101000000001110110100001101100100010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
