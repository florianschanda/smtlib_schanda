(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1485608048877982145796750046429224312305450439453125 27 {- 669058385534549 27 (-1.54157e+008)}
; -1.1485608048877982145796750046429224312305450439453125 27 I == -1.14856080710887908935546875 27
; [HW: -1.14856080710887908935546875 27] 

; mpf : - 669058395537408 27
; mpfd: - 669058395537408 27 (-1.54157e+008) class: Neg. norm. non-zero
; hwf : - 669058395537408 27 (-1.54157e+008) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000011010 #b0010011000001000000101001011011001110101111001010101)))
(assert (= r (fp #b1 #b10000011010 #b0010011000001000000101001100000000000000000000000000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
