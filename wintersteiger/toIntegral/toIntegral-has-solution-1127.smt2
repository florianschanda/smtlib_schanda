(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0237586552704300846272644776036031544208526611328125 595 {+ 106999471022733 595 (1.32753e+179)}
; 1.0237586552704300846272644776036031544208526611328125 595 I == 1.0237586552704300846272644776036031544208526611328125 595
; [HW: 1.0237586552704300846272644776036031544208526611328125 595] 

; mpf : + 106999471022733 595
; mpfd: + 106999471022733 595 (1.32753e+179) class: Pos. norm. non-zero
; hwf : + 106999471022733 595 (1.32753e+179) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001010010 #b0000011000010101000011000001011101100010001010001101)))
(assert (= r (fp #b0 #b11001010010 #b0000011000010101000011000001011101100010001010001101)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
