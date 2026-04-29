(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9345771639842419542532070408924482762813568115234375 492 {+ 4208961367468407 492 (2.47368e+148)}
; 1.9345771639842419542532070408924482762813568115234375 492 I == 1.9345771639842419542532070408924482762813568115234375 492
; [HW: 1.9345771639842419542532070408924482762813568115234375 492] 

; mpf : + 4208961367468407 492
; mpfd: + 4208961367468407 492 (2.47368e+148) class: Pos. norm. non-zero
; hwf : + 4208961367468407 492 (2.47368e+148) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101011 #b1110111101000000011100101111001011100110100101110111)))
(assert (= r (fp #b0 #b10111101011 #b1110111101000000011100101111001011100110100101110111)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
