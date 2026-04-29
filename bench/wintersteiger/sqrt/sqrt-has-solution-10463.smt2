(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9738902742054216243872133418335579335689544677734375p513 {+ 4386011876011287 513 (5.29311e+154)}
; 1.9738902742054216243872133418335579335689544677734375p513 S == 1.986902249334587367002313840202987194061279296875p256
; [HW: 1.986902249334587367002313840202987194061279296875p256] 

; mpf : + 4444612602354352 256
; mpfd: + 4444612602354352 256 (2.30068e+077) class: Pos. norm. non-zero
; hwf : + 4444612602354352 256 (2.30068e+077) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000000000 #b1111100101010000110111110111110110011010110100010111)))
(assert (= r (fp #b0 #b10011111111 #b1111110010100101101000000011010100111101101010110000)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
