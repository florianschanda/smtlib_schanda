(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5017132236403438749761107828817330300807952880859375p365 {- 2259515487033503 365 (-1.12859e+110)}
; Y = -1.9586637748020885307909111361368559300899505615234375p-189 {- 4317437818972279 -189 (-2.49627e-057)}
; -1.5017132236403438749761107828817330300807952880859375p365 = -1.9586637748020885307909111361368559300899505615234375p-189 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101101100 #b1000000001110000010001110001111110000001100010011111)))
(assert (= y (fp #b1 #b01101000010 #b1111010101101010111111010011100010100010100001110111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
