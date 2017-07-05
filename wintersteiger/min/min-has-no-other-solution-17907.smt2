(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3762391154139741455963985572452656924724578857421875p-884 {- 1694430339980579 -884 (-1.06703e-266)}
; Y = 1.417619465758209518213561750599183142185211181640625p-935 {+ 1880790870371338 -935 (4.88106e-282)}
; -1.3762391154139741455963985572452656924724578857421875p-884 m 1.417619465758209518213561750599183142185211181640625p-935 == -1.3762391154139741455963985572452656924724578857421875p-884
; [HW: -1.3762391154139741455963985572452656924724578857421875p-884] 

; mpf : - 1694430339980579 -884
; mpfd: - 1694430339980579 -884 (-1.06703e-266) class: Neg. norm. non-zero
; hwf : - 1694430339980579 -884 (-1.06703e-266) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010001011 #b0110000001010001001101001110100000101101110100100011)))
(assert (= y (fp #b0 #b00001011000 #b0110101011101001000110111111101110011010110000001010)))
(assert (= r (fp #b1 #b00010001011 #b0110000001010001001101001110100000101101110100100011)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
