(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8804141395708737771741425603977404534816741943359375p924 {- 3965032790903103 924 (-2.66667e+278)}
; Y = -1.8375345935481364190167141714482568204402923583984375p-368 {- 3771920483413287 -368 (-3.05631e-111)}
; -1.8804141395708737771741425603977404534816741943359375p924 < -1.8375345935481364190167141714482568204402923583984375p-368 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110011011 #b1110000101100010110100100011000001100100100100111111)))
(assert (= y (fp #b1 #b01010001111 #b1101011001101000101010101100100010001110110100100111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
