(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1630794813508307239402483901358209550380706787109375p372 {- 734444691443375 372 (-1.11884e+112)}
; Y = -1.246515410893644482115405480726622045040130615234375p20 {- 1110206712641702 20 (-1.30707e+006)}
; -1.1630794813508307239402483901358209550380706787109375p372 - -1.246515410893644482115405480726622045040130615234375p20 == -1.1630794813508307239402483901358209550380706787109375p372
; [HW: -1.1630794813508307239402483901358209550380706787109375p372] 

; mpf : - 734444691443375 372
; mpfd: - 734444691443375 372 (-1.11884e+112) class: Neg. norm. non-zero
; hwf : - 734444691443375 372 (-1.11884e+112) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101110011 #b0010100110111111100100111010111100001100111010101111)))
(assert (= y (fp #b1 #b10000010011 #b0011111100011011101000100100101110111111100010100110)))
(assert (= r (fp #b1 #b10101110011 #b0010100110111111100100111010111100001100111010101111)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
