(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.952697203289833982609025042620487511157989501953125p91 {+ 4290566769733010 91 (4.83464e+027)}
; Y = 1.01543202407081967209023787290789186954498291015625p-495 {+ 69499657854916 -495 (9.92666e-150)}
; 1.952697203289833982609025042620487511157989501953125p91 = 1.01543202407081967209023787290789186954498291015625p-495 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001011010 #b1111001111100011111101101100001100011110110110010010)))
(assert (= y (fp #b0 #b01000010000 #b0000001111110011010110100110011010110001111111000100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
