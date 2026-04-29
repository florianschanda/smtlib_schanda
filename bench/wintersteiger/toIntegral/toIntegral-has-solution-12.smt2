(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6810023153185411626253653594176284968852996826171875 191 {- 3066961773507027 191 (-5.27591e+057)}
; -1.6810023153185411626253653594176284968852996826171875 191 I == -1.6810023153185411626253653594176284968852996826171875 191
; [HW: -1.6810023153185411626253653594176284968852996826171875 191] 

; mpf : - 3066961773507027 191
; mpfd: - 3066961773507027 191 (-5.27591e+057) class: Neg. norm. non-zero
; hwf : - 3066961773507027 191 (-5.27591e+057) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010111110 #b1010111001010110001010101111000011001011000111010011)))
(assert (= r (fp #b1 #b10010111110 #b1010111001010110001010101111000011001011000111010011)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
