(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4439964347808451616828051555785350501537322998046875p71 {+ 1999582178232843 71 (3.40954e+021)}
; 1.4439964347808451616828051555785350501537322998046875p71 S == 1.6994095649847598128445724796620197594165802001953125p35
; [HW: 1.6994095649847598128445724796620197594165802001953125p35] 

; mpf : + 3149860656244725 35
; mpfd: + 3149860656244725 35 (5.83913e+010) class: Pos. norm. non-zero
; hwf : + 3149860656244725 35 (5.83913e+010) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001000110 #b0111000110101001110000000001011011101100101000001011)))
(assert (= r (fp #b0 #b10000100010 #b1011001100001100100000010101100000011110011111110101)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
