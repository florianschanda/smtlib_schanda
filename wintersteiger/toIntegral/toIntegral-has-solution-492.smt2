(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5582859111822131570335159267415292561054229736328125 96 {+ 2514296221566413 96 (1.2346e+029)}
; 1.5582859111822131570335159267415292561054229736328125 96 I == 1.5582859111822131570335159267415292561054229736328125 96
; [HW: 1.5582859111822131570335159267415292561054229736328125 96] 

; mpf : + 2514296221566413 96
; mpfd: + 2514296221566413 96 (1.2346e+029) class: Pos. norm. non-zero
; hwf : + 2514296221566413 96 (1.2346e+029) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001011111 #b1000111011101011110100110101001001011000010111001101)))
(assert (= r (fp #b0 #b10001011111 #b1000111011101011110100110101001001011000010111001101)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
