(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.96391540598930713912295686895959079265594482421875p-986 {- 4341089063230124 -986 (-3.00294e-297)}
; Y = 1.5438051140479978062813870565150864422321319580078125p292 {+ 2449080508988733 292 (1.22843e+088)}
; -1.96391540598930713912295686895959079265594482421875p-986 + 1.5438051140479978062813870565150864422321319580078125p292 == 1.5438051140479978062813870565150864422321319580078125p292
; [HW: 1.5438051140479978062813870565150864422321319580078125p292] 

; mpf : + 2449080508988733 292
; mpfd: + 2449080508988733 292 (1.22843e+088) class: Pos. norm. non-zero
; hwf : + 2449080508988733 292 (1.22843e+088) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000100101 #b1111011011000011001010001111100011010101101010101100)))
(assert (= y (fp #b0 #b10100100011 #b1000101100110110110011111101110000111011110100111101)))
(assert (= r (fp #b0 #b10100100011 #b1000101100110110110011111101110000111011110100111101)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)
