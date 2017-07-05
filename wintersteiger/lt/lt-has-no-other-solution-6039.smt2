(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.86170941451729010651661155861802399158477783203125p-804 {+ 3880794198121716 -804 (1.745e-242)}
; Y = -1.074400133739176421698857666342519223690032958984375p105 {- 335068414584070 105 (-4.35828e+031)}
; 1.86170941451729010651661155861802399158477783203125p-804 < -1.074400133739176421698857666342519223690032958984375p105 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011011011 #b1101110010011000111111001111101000000001110011110100)))
(assert (= y (fp #b1 #b10001101000 #b0001001100001011111000110001110100111010010100000110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
