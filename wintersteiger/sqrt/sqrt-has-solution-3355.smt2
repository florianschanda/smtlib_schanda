(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6584469477874674847583946757367812097072601318359375p-102 {+ 2965381428698879 -102 (3.27071e-031)}
; 1.6584469477874674847583946757367812097072601318359375p-102 S == 1.287807030493104409885063432739116251468658447265625p-51
; [HW: 1.287807030493104409885063432739116251468658447265625p-51] 

; mpf : + 1296167635283354 -51
; mpfd: + 1296167635283354 -51 (5.71901e-016) class: Pos. norm. non-zero
; hwf : + 1296167635283354 -51 (5.71901e-016) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110011001 #b1010100010001111111110101010101011100101111011111111)))
(assert (= r (fp #b0 #b01111001100 #b0100100110101101101110001011011110000110110110011010)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
