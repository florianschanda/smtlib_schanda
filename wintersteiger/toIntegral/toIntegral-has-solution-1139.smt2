(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5310791476613163641928849756368435919284820556640625 808 {+ 2391767851511745 808 (2.61357e+243)}
; 1.5310791476613163641928849756368435919284820556640625 808 I == 1.5310791476613163641928849756368435919284820556640625 808
; [HW: 1.5310791476613163641928849756368435919284820556640625 808] 

; mpf : + 2391767851511745 808
; mpfd: + 2391767851511745 808 (2.61357e+243) class: Pos. norm. non-zero
; hwf : + 2391767851511745 808 (2.61357e+243) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100100111 #b1000011111110100110011011001001011001010111111000001)))
(assert (= r (fp #b0 #b11100100111 #b1000011111110100110011011001001011001010111111000001)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
