(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.21754661172024203352748372708447277545928955078125p65 {+ 979742839478996 65 (4.49195e+019)}
; 1.21754661172024203352748372708447277545928955078125p65 S == 1.560478523863908950630730032571591436862945556640625p32
; [HW: 1.560478523863908950630730032571591436862945556640625p32] 

; mpf : + 2524170871222666 32
; mpfd: + 2524170871222666 32 (6.7022e+009) class: Pos. norm. non-zero
; hwf : + 2524170871222666 32 (6.7022e+009) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001000000 #b0011011110110001001000100111111010110001101011010100)))
(assert (= r (fp #b0 #b10000011111 #b1000111101111011100001010100001000011011000110001010)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
