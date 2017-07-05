(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8713172306183893933706485768198035657405853271484375p-384 {+ 3924063955134471 -384 (4.74929e-116)}
; 1.8713172306183893933706485768198035657405853271484375p-384 | == 1.8713172306183893933706485768198035657405853271484375p-384
; [HW: 1.8713172306183893933706485768198035657405853271484375p-384] 

; mpf : + 3924063955134471 -384
; mpfd: + 3924063955134471 -384 (4.74929e-116) class: Pos. norm. non-zero
; hwf : + 3924063955134471 -384 (4.74929e-116) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001111111 #b1101111100001110101001010110000111110010100000000111)))
(assert (= r (fp #b0 #b01001111111 #b1101111100001110101001010110000111110010100000000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
