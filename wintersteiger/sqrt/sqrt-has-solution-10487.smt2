(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6824188128621446747246181985246948897838592529296875p-59 {+ 3073341111316571 -59 (2.91853e-018)}
; 1.6824188128621446747246181985246948897838592529296875p-59 S == 1.834349373953688466798439549165777862071990966796875p-30
; [HW: 1.834349373953688466798439549165777862071990966796875p-30] 

; mpf : + 3757575529634638 -30
; mpfd: + 3757575529634638 -30 (1.70837e-009) class: Pos. norm. non-zero
; hwf : + 3757575529634638 -30 (1.70837e-009) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111000100 #b1010111010110010111111111101001101101011000001011011)))
(assert (= r (fp #b0 #b01111100001 #b1101010110010111111010111010101010010001101101001110)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
