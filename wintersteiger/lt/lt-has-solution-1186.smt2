(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1943329140954588307721451201359741389751434326171875p-484 {- 875197639506131 -484 (-2.39115e-146)}
; Y = 1.352523042967115340928785371943376958370208740234375p498 {+ 1587622644946214 498 (1.10683e+150)}
; -1.1943329140954588307721451201359741389751434326171875p-484 < 1.352523042967115340928785371943376958370208740234375p498 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000011011 #b0011000110111111110011010100011010010011100011010011)))
(assert (= y (fp #b0 #b10111110001 #b0101101000111110111100110011110010100001010100100110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
