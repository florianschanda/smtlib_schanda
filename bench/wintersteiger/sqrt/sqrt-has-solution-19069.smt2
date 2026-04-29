(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.390997494204210482848793617449700832366943359375p-372 {+ 1760896169200880 -372 (1.446e-112)}
; 1.390997494204210482848793617449700832366943359375p-372 S == 1.1794055681588968553796803462319076061248779296875p-186
; [HW: 1.1794055681588968553796803462319076061248779296875p-186] 

; mpf : + 807970849908600 -186
; mpfd: + 807970849908600 -186 (1.2025e-056) class: Pos. norm. non-zero
; hwf : + 807970849908600 -186 (1.2025e-056) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010001011 #b0110010000011000011010010110101001101100110011110000)))
(assert (= r (fp #b0 #b01101000101 #b0010110111101101100001011111011111110110011101111000)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
