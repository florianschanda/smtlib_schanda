(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0193765332523903044403823514585383236408233642578125p417 {- 87264147935197 417 (-3.45019e+125)}
; Y = -1.26736149625265159812670390238054096698760986328125p-96 {- 1204089134896660 -96 (-1.59964e-029)}
; -1.0193765332523903044403823514585383236408233642578125p417 < -1.26736149625265159812670390238054096698760986328125p-96 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110100000 #b0000010011110101110111000100100010100000111111011101)))
(assert (= y (fp #b1 #b01110011111 #b0100010001110001110011011001001010011101011000010100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
