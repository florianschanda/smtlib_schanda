(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9784034806507688752930107511929236352443695068359375p-955 {- 4406337550876799 -955 (-6.49634e-288)}
; Y = -1.55773150513056890531515819020569324493408203125p763 {- 2511799398678816 763 (-7.55752e+229)}
; -1.9784034806507688752930107511929236352443695068359375p-955 = -1.55773150513056890531515819020569324493408203125p763 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001000100 #b1111101001111000101001101000011110110000000001111111)))
(assert (= y (fp #b1 #b11011111010 #b1000111011000111011111011110111001111100000100100000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
