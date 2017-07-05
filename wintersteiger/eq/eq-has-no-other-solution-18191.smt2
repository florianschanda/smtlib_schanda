(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5238027510441785050687713010120205581188201904296875p208 {+ 2358997874418203 208 (6.26856e+062)}
; Y = -1.4930457667708953994889498062548227608203887939453125p-1015 {- 2220480731506005 -1015 (-4.25234e-306)}
; 1.5238027510441785050687713010120205581188201904296875p208 = -1.4930457667708953994889498062548227608203887939453125p-1015 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011001111 #b1000011000010111111011111110010101001010001000011011)))
(assert (= y (fp #b1 #b00000001000 #b0111111000111000001111110101001110110110010101010101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
