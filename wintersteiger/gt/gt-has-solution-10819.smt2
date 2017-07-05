(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.118725305730726926611851013149134814739227294921875p746 {- 534691242648350 746 (-4.14095e+224)}
; Y = -1.7636244663855908942906580705312080681324005126953125p681 {- 3439058862265141 681 (-1.76943e+205)}
; -1.118725305730726926611851013149134814739227294921875p746 > -1.7636244663855908942906580705312080681324005126953125p681 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011101001 #b0001111001100100110010000001100101010010001100011110)))
(assert (= y (fp #b1 #b11010101000 #b1100001101111100111001001001110110001101001100110101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
