(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9206307555276236342933771084062755107879638671875p800 {- 4146152327540024 800 (-1.28068e+241)}
; Y = -1.46971209749329734250977708143182098865509033203125p364 {- 2115395227242228 364 (-5.52269e+109)}
; -1.9206307555276236342933771084062755107879638671875p800 = -1.46971209749329734250977708143182098865509033203125p364 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100011111 #b1110101110101110011101010000101010101110110100111000)))
(assert (= y (fp #b1 #b10101101011 #b0111100000111111000011010101000101000100111011110100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
