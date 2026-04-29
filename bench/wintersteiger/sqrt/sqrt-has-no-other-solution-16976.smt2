(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5435530727185515775801150084589608013629913330078125p222 {+ 2447945415751357 222 (1.04035e+067)}
; 1.5435530727185515775801150084589608013629913330078125p222 S == 1.242398113616787203028479780186899006366729736328125p111
; [HW: 1.242398113616787203028479780186899006366729736328125p111] 

; mpf : + 1091664054159874 111
; mpfd: + 1091664054159874 111 (3.22545e+033) class: Pos. norm. non-zero
; hwf : + 1091664054159874 111 (3.22545e+033) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011011101 #b1000101100100110010010110100111011110111011010111101)))
(assert (= r (fp #b0 #b10001101110 #b0011111000001101110011011000001010011000101000000010)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
