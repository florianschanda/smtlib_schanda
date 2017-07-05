(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.89649938264119111153149788151495158672332763671875 648 {+ 4037474285600748 648 (2.21508e+195)}
; 1.89649938264119111153149788151495158672332763671875 648 I == 1.89649938264119111153149788151495158672332763671875 648
; [HW: 1.89649938264119111153149788151495158672332763671875 648] 

; mpf : + 4037474285600748 648
; mpfd: + 4037474285600748 648 (2.21508e+195) class: Pos. norm. non-zero
; hwf : + 4037474285600748 648 (2.21508e+195) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010000111 #b1110010110000000111110111100100101010011111111101100)))
(assert (= r (fp #b0 #b11010000111 #b1110010110000000111110111100100101010011111111101100)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
