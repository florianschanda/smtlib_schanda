(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3173562383368666584004813557839952409267425537109375 970 {+ 1429245436717615 970 (1.31462e+292)}
; 1.3173562383368666584004813557839952409267425537109375 970 I == 1.3173562383368666584004813557839952409267425537109375 970
; [HW: 1.3173562383368666584004813557839952409267425537109375 970] 

; mpf : + 1429245436717615 970
; mpfd: + 1429245436717615 970 (1.31462e+292) class: Pos. norm. non-zero
; hwf : + 1429245436717615 970 (1.31462e+292) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111001001 #b0101000100111110010000100010100011010110101000101111)))
(assert (= r (fp #b0 #b11111001001 #b0101000100111110010000100010100011010110101000101111)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
