(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.14367165312637819596375265973620116710662841796875p271 {+ 647039603483660 271 (4.3394e+081)}
; Y = 1.0443695612192407384810621806536801159381866455078125p854 {+ 199822739373565 854 (1.2545e+257)}
; 1.14367165312637819596375265973620116710662841796875p271 % 1.0443695612192407384810621806536801159381866455078125p854 == 1.14367165312637819596375265973620116710662841796875p271
; [HW: 1.14367165312637819596375265973620116710662841796875p271] 

; mpf : + 647039603483660 271
; mpfd: + 647039603483660 271 (4.3394e+081) class: Pos. norm. non-zero
; hwf : + 647039603483660 271 (4.3394e+081) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100001110 #b0010010011000111101010100101101110001010010000001100)))
(assert (= y (fp #b0 #b11101010101 #b0000101101011011110011011011011001011111110111111101)))
(assert (= r (fp #b0 #b10100001110 #x24c7aa5b8a40c)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
