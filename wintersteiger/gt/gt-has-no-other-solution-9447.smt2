(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.078841931878892435037187169655226171016693115234375p847 {+ 355072495030950 847 (1.01243e+255)}
; Y = -1.766674692036936722416839984362013638019561767578125p657 {- 3452795857371938 657 (-1.05649e+198)}
; 1.078841931878892435037187169655226171016693115234375p847 > -1.766674692036936722416839984362013638019561767578125p657 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101001110 #b0001010000101110111111000001111011111001001010100110)))
(assert (= y (fp #b1 #b11010010000 #b1100010001000100110010101110100011111000001100100010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
