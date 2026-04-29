(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.387319480422716910794633804471231997013092041015625p720 {+ 1744331867705082 720 (7.65197e+216)}
; 1.387319480422716910794633804471231997013092041015625p720 S == 1.1778452701533919100285174863529391586780548095703125p360
; [HW: 1.1778452701533919100285174863529391586780548095703125p360] 

; mpf : + 800943892392421 360
; mpfd: + 800943892392421 360 (2.76622e+108) class: Pos. norm. non-zero
; hwf : + 800943892392421 360 (2.76622e+108) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001111 #b0110001100100111010111101001010110000100111011111010)))
(assert (= r (fp #b0 #b10101100111 #b0010110110000111010001001000001100001110100111100101)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
