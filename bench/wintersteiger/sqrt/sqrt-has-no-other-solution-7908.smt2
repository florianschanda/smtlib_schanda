(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6167527886130326209013219340704381465911865234375p989 {+ 2777607628977368 989 (8.45881e+297)}
; 1.6167527886130326209013219340704381465911865234375p989 S == 1.798195088755962789406339652487076818943023681640625p494
; [HW: 1.798195088755962789406339652487076818943023681640625p494] 

; mpf : + 3594751104290314 494
; mpfd: + 3594751104290314 494 (9.19718e+148) class: Pos. norm. non-zero
; hwf : + 3594751104290314 494 (9.19718e+148) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111011100 #b1001110111100011100000101100000011001111010011011000)))
(assert (= r (fp #b0 #b10111101101 #b1100110001010110100000110110101000001000111000001010)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
