(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5405006325646908305060378552298061549663543701171875p746 {- 2434198447411859 746 (-5.70215e+224)}
; Y = 1.5542421502621379669761836339603178203105926513671875p-31 {+ 2496084741393587 -31 (7.2375e-010)}
; -1.5405006325646908305060378552298061549663543701171875p746 < 1.5542421502621379669761836339603178203105926513671875p-31 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011101001 #b1000101001011110001111111101110001010101001010010011)))
(assert (= y (fp #b0 #b01111100000 #b1000110111100010110100000100010101110000110010110011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
