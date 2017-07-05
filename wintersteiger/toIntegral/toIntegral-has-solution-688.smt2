(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0931223848101960793854914300027303397655487060546875 386 {+ 419385937531051 386 (1.72285e+116)}
; 1.0931223848101960793854914300027303397655487060546875 386 I == 1.0931223848101960793854914300027303397655487060546875 386
; [HW: 1.0931223848101960793854914300027303397655487060546875 386] 

; mpf : + 419385937531051 386
; mpfd: + 419385937531051 386 (1.72285e+116) class: Pos. norm. non-zero
; hwf : + 419385937531051 386 (1.72285e+116) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110000001 #b0001011111010110110111100101110101001001000010101011)))
(assert (= r (fp #b0 #b10110000001 #b0001011111010110110111100101110101001001000010101011)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
