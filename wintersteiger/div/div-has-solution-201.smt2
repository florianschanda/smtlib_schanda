(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.080059087132416717480509760207496583461761474609375p-302 {+ 360554074977174 -302 (1.32553e-091)}
; Y = -1.89401042636821248521528104902245104312896728515625p-110 {- 4026265023057220 -110 (-1.45909e-033)}
; 1.080059087132416717480509760207496583461761474609375p-302 / -1.89401042636821248521528104902245104312896728515625p-110 == -1.1404996214339144788851854173117317259311676025390625p-193
; [HW: -1.1404996214339144788851854173117317259311676025390625p-193] 

; mpf : - 632754042735473 -193
; mpfd: - 632754042735473 -193 (-9.0846e-059) class: Neg. norm. non-zero
; hwf : - 632754042735473 -193 (-9.0846e-059) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011010001 #b0001010001111110110000001001100011111011001110010110)))
(assert (= y (fp #b1 #b01110010001 #b1110010011011101110111100000011110001000110101000100)))
(assert (= r (fp #b1 #b01100111110 #b0010001111110111110010000111111100101000101101110001)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
