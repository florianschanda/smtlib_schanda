(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3738370238232822106994035493698902428150177001953125p213 {+ 1683612281187829 213 (1.80852e+064)}
; 1.3738370238232822106994035493698902428150177001953125p213 S == 1.6576109458031955679047086960054002702236175537109375p106
; [HW: 1.6576109458031955679047086960054002702236175537109375p106] 

; mpf : + 2961616410474031 106
; mpfd: + 2961616410474031 106 (1.34481e+032) class: Pos. norm. non-zero
; hwf : + 2961616410474031 106 (1.34481e+032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011010100 #b0101111110110011110010000111111101011010110111110101)))
(assert (= r (fp #b0 #b10001101001 #b1010100001011001001100001110000110110111011000101111)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
