(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2972072057517622933886514147161506116390228271484375p901 {+ 1338502261075463 901 (2.19298e+271)}
; 1.2972072057517622933886514147161506116390228271484375p901 S == 1.6107186009677556537411646786495111882686614990234375p450
; [HW: 1.6107186009677556537411646786495111882686614990234375p450] 

; mpf : + 2750432063746615 450
; mpfd: + 2750432063746615 450 (4.68293e+135) class: Pos. norm. non-zero
; hwf : + 2750432063746615 450 (4.68293e+135) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110000100 #b0100110000010101110001010111110011010110111000000111)))
(assert (= r (fp #b0 #b10111000001 #b1001110001011000000011011110001000110111001000110111)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
