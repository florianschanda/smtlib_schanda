(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.31678090674425352091247987118549644947052001953125p111 {+ 1426654373571508 111 (3.41856e+033)}
; 1.31678090674425352091247987118549644947052001953125p111 S == 1.6228252566091356801081246885587461292743682861328125p55
; [HW: 1.6228252566091356801081246885587461292743682861328125p55] 

; mpf : + 2804955593581837 55
; mpfd: + 2804955593581837 55 (5.84684e+016) class: Pos. norm. non-zero
; hwf : + 2804955593581837 55 (5.84684e+016) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001101110 #b0101000100011000100011011011001001110110101110110100)))
(assert (= r (fp #b0 #b10000110110 #b1001111101110001011110011101110001000010010100001101)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
