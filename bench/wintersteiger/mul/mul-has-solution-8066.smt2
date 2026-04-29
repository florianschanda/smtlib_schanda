(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.44180859801321492597026008297689259052276611328125p-194 {- 1989729037381396 -194 (-5.74233e-059)}
; Y = 1.70660694472098928287095986888743937015533447265625p-962 {+ 3182274772942852 -962 (4.37802e-290)}
; -1.44180859801321492597026008297689259052276611328125p-194 * 1.70660694472098928287095986888743937015533447265625p-962 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100111101 #b0111000100011010010111100100011110001110111100010100)))
(assert (= y (fp #b0 #b00000111101 #b1011010011100100001100010101011010110100000000000100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
