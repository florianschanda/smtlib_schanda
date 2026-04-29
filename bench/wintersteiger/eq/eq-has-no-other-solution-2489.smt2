(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4519166423887932548808521460159681737422943115234375p-531 {+ 2035251622264695 -531 (2.06545e-160)}
; Y = -1.8044374954466892990723181355861015617847442626953125p-1012 {- 3622864404736565 -1012 (-4.11137e-305)}
; 1.4519166423887932548808521460159681737422943115234375p-531 = -1.8044374954466892990723181355861015617847442626953125p-1012 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111101100 #b0111001110110000110011110001111110010011111101110111)))
(assert (= y (fp #b1 #b00000001011 #b1100110111101111100111011001111010011110101000110101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
