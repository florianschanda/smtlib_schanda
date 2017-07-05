(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9677596464597513215011304055224172770977020263671875 -234 {+ 4358401983180339 -234 (7.12776e-071)}
; 1.9677596464597513215011304055224172770977020263671875 -234 I == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100010101 #b1111011110111111000110001001111111101110111000110011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
