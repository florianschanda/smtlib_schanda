(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8324775836560629471705397008918225765228271484375p397 {+ 3749145735547736 397 (5.91489e+119)}
; 1.8324775836560629471705397008918225765228271484375p397 S == 1.91440726265654515003689084551297128200531005859375p198
; [HW: 1.91440726265654515003689084551297128200531005859375p198] 

; mpf : + 4118124207364892 198
; mpfd: + 4118124207364892 198 (7.69083e+059) class: Pos. norm. non-zero
; hwf : + 4118124207364892 198 (7.69083e+059) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110001100 #b1101010100011101010000000011110001110100101101011000)))
(assert (= r (fp #b0 #b10011000101 #b1110101000010110100110000010100001010101101100011100)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
