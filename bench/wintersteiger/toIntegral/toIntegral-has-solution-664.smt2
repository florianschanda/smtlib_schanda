(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4650770688542908981588652750360779464244842529296875 260 {- 2094520913990747 260 (-2.71431e+078)}
; -1.4650770688542908981588652750360779464244842529296875 260 I == -1.4650770688542908981588652750360779464244842529296875 260
; [HW: -1.4650770688542908981588652750360779464244842529296875 260] 

; mpf : - 2094520913990747 260
; mpfd: - 2094520913990747 260 (-2.71431e+078) class: Neg. norm. non-zero
; hwf : - 2094520913990747 260 (-2.71431e+078) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100000011 #b0111011100001111010010100111000011011001010001011011)))
(assert (= r (fp #b1 #b10100000011 #b0111011100001111010010100111000011011001010001011011)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
