(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.82711280964691535899646623875014483928680419921875p-979 {+ 3724984941319212 -979 (3.57602e-295)}
; Y = -1.208215264130435340206304317689500749111175537109375p-804 {- 937718185950678 -804 (-1.13247e-242)}
; 1.82711280964691535899646623875014483928680419921875p-979 > -1.208215264130435340206304317689500749111175537109375p-804 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000101100 #b1101001110111101101010100100001110001001010000101100)))
(assert (= y (fp #b1 #b00011011011 #b0011010101001101100110000111010111110111110111010110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
