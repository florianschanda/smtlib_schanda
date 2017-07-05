(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.245255077413655708795658938470296561717987060546875p466 {- 1104530675250862 466 (-2.37266e+140)}
; Y = 1.4690486798680097990654758177697658538818359375p382 {+ 2112407459872192 382 (1.44709e+115)}
; -1.245255077413655708795658938470296561717987060546875p466 - 1.4690486798680097990654758177697658538818359375p382 == -1.245255077413655708795658938470296561717987060546875p466
; [HW: -1.245255077413655708795658938470296561717987060546875p466] 

; mpf : - 1104530675250862 466
; mpfd: - 1104530675250862 466 (-2.37266e+140) class: Neg. norm. non-zero
; hwf : - 1104530675250862 466 (-2.37266e+140) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111010001 #b0011111011001001000010010110100010101011011010101110)))
(assert (= y (fp #b0 #b10101111101 #b0111100000010011100100110000010001000011110111000000)))
(assert (= r (fp #b1 #b10111010001 #b0011111011001001000010010110100010101011011010101110)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
