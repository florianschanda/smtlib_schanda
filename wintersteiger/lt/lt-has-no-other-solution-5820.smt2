(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3263717478933874094337852511671371757984161376953125p289 {+ 1469847682196917 289 (1.31927e+087)}
; Y = -1.708887498132799276362447926658205687999725341796875p-726 {- 3192545472438478 -726 (-4.84102e-219)}
; 1.3263717478933874094337852511671371757984161376953125p289 < -1.708887498132799276362447926658205687999725341796875p-726 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100100000 #b0101001110001101000110010100111110001010010110110101)))
(assert (= y (fp #b1 #b00100101001 #b1011010101111001101001101010110100000110000011001110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
