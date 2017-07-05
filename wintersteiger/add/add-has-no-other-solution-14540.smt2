(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.797225086905303026441060865181498229503631591796875p-48 {+ 3590382604317134 -48 (6.38503e-015)}
; -zero + 1.797225086905303026441060865181498229503631591796875p-48 == 1.797225086905303026441060865181498229503631591796875p-48
; [HW: 1.797225086905303026441060865181498229503631591796875p-48] 

; mpf : + 3590382604317134 -48
; mpfd: + 3590382604317134 -48 (6.38503e-015) class: Pos. norm. non-zero
; hwf : + 3590382604317134 -48 (6.38503e-015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b01111001111 #b1100110000010110111100010111101111001111000111001110)))
(assert (= r (fp #b0 #b01111001111 #b1100110000010110111100010111101111001111000111001110)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
