(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.356745834520448834581429764511995017528533935546875p988 {+ 1606640407412270 988 (3.54923e+297)}
; 1.356745834520448834581429764511995017528533935546875p988 S == 1.164794331425273110625084882485680282115936279296875p494
; [HW: 1.164794331425273110625084882485680282115936279296875p494] 

; mpf : + 742167689599630 494
; mpfd: + 742167689599630 494 (5.95754e+148) class: Pos. norm. non-zero
; hwf : + 742167689599630 494 (5.95754e+148) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111011011 #b0101101101010011101100011110110000111111111000101110)))
(assert (= r (fp #b0 #b10111101101 #b0010101000101111111101100001100000001001101010001110)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
