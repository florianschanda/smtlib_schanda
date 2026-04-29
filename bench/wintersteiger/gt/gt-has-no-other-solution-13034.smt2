(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5704930895569277904399996259598992764949798583984375p-750 {+ 2569272465546023 -750 (2.65179e-226)}
; Y = -1.2908591122138250995021735434420406818389892578125p-38 {- 1309912989383496 -38 (-4.69612e-012)}
; 1.5704930895569277904399996259598992764949798583984375p-750 > -1.2908591122138250995021735434420406818389892578125p-38 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100010001 #b1001001000001011110101011100101000111101101100100111)))
(assert (= y (fp #b1 #b01111011001 #b0100101001110101101111100010011010110011101101001000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
