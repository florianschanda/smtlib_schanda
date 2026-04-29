(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.57157091116996827651064450037665665149688720703125p-492 {+ 2574126542560884 -492 (1.22907e-148)}
; Y = -1.39230333251940141536806549993343651294708251953125p-103 {- 1766777142150580 -103 (-1.37292e-031)}
; 1.57157091116996827651064450037665665149688720703125p-492 < -1.39230333251940141536806549993343651294708251953125p-103 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000010011 #b1001001001010010011110001010001011010001111001110100)))
(assert (= y (fp #b1 #b01110011000 #b0110010001101101111111011011111101001000010110110100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
