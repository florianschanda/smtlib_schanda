(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8867211241592765080810067956917919218540191650390625p308 {- 3993436924345265 308 (-9.8389e+092)}
; Y = -1.3202418342589672395348543432191945612430572509765625p-389 {- 1442241005437129 -389 (-1.04709e-117)}
; -1.8867211241592765080810067956917919218540191650390625p308 = -1.3202418342589672395348543432191945612430572509765625p-389 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100110011 #b1110001100000000001001111101010011101111101110110001)))
(assert (= y (fp #b1 #b01001111010 #b0101000111111011010111100110110011110100000011001001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
