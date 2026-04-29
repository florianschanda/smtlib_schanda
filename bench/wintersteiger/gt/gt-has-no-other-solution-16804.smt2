(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4219219495101318440077875493443571031093597412109375p-95 {- 1900167534593263 -95 (-3.58944e-029)}
; Y = 1.9219917001964195168994820051011629402637481689453125p437 {+ 4152281477443285 437 (6.82118e+131)}
; -1.4219219495101318440077875493443571031093597412109375p-95 > 1.9219917001964195168994820051011629402637481689453125p437 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110100000 #b0110110000000011000100111010111010011100010011101111)))
(assert (= y (fp #b0 #b10110110100 #b1110110000000111101001011110011110000110111011010101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
