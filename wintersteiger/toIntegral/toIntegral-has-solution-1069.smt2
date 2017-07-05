(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8365998572374617747726688321563415229320526123046875 807 {+ 3767710805312843 807 (1.56755e+243)}
; 1.8365998572374617747726688321563415229320526123046875 807 I == 1.8365998572374617747726688321563415229320526123046875 807
; [HW: 1.8365998572374617747726688321563415229320526123046875 807] 

; mpf : + 3767710805312843 807
; mpfd: + 3767710805312843 807 (1.56755e+243) class: Pos. norm. non-zero
; hwf : + 3767710805312843 807 (1.56755e+243) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100100110 #b1101011000101011011010001000001010101100010101001011)))
(assert (= r (fp #b0 #b11100100110 #b1101011000101011011010001000001010101100010101001011)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
