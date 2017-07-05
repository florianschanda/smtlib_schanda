(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7938017650600019958773145845043472945690155029296875p-251 {+ 3574965333330267 -251 (4.9573e-076)}
; Y = -1.4749798988682154554652470324072055518627166748046875p118 {- 2139119295551371 118 (-4.90146e+035)}
; 1.7938017650600019958773145845043472945690155029296875p-251 = -1.4749798988682154554652470324072055518627166748046875p118 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100000100 #b1100101100110110100101111010110001110000100101011011)))
(assert (= y (fp #b1 #b10001110101 #b0111100110011000010010000101101111100101011110001011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
