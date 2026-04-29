(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.669638717948946915470287422067485749721527099609375 126 {+ 3015784680627734 126 (1.42037e+038)}
; 1.669638717948946915470287422067485749721527099609375 126 I == 1.669638717948946915470287422067485749721527099609375 126
; [HW: 1.669638717948946915470287422067485749721527099609375 126] 

; mpf : + 3015784680627734 126
; mpfd: + 3015784680627734 126 (1.42037e+038) class: Pos. norm. non-zero
; hwf : + 3015784680627734 126 (1.42037e+038) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001111101 #b1010101101101101011100010110100110111001111000010110)))
(assert (= r (fp #b0 #b10001111101 #b1010101101101101011100010110100110111001111000010110)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
