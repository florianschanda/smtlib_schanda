(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.744808044331331853271649379166774451732635498046875p831 {+ 3354317230913134 831 (2.49847e+250)}
; 1.744808044331331853271649379166774451732635498046875p831 S == 1.868051414887359040761793949059210717678070068359375p415
; [HW: 1.868051414887359040761793949059210717678070068359375p415] 

; mpf : + 3909356028625142 415
; mpfd: + 3909356028625142 415 (1.58065e+125) class: Pos. norm. non-zero
; hwf : + 3909356028625142 415 (1.58065e+125) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100111110 #b1011111010101011101111010111000000110011011001101110)))
(assert (= r (fp #b0 #b10110011110 #b1101111000111000100111100001011000110000000011110110)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
