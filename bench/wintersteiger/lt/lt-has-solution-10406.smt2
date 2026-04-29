(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1497659217118461061346579299424774944782257080078125p467 {- 674485749214269 467 (-4.38145e+140)}
; Y = 1.838769261766663110080344267771579325199127197265625p-631 {+ 3777480934742170 -631 (2.06348e-190)}
; -1.1497659217118461061346579299424774944782257080078125p467 < 1.838769261766663110080344267771579325199127197265625p-631 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111010010 #b0010011001010111000011110011011111001110110000111101)))
(assert (= y (fp #b0 #b00110001000 #b1101011010111001100101010001010000101101100010011010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
