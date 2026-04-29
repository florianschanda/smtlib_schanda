(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2358427255485782136901207195478491485118865966796875p-354 {+ 1062141210898619 -354 (3.36779e-107)}
; 1.2358427255485782136901207195478491485118865966796875p-354 S == 1.111684634034570962057841825298964977264404296875p-177
; [HW: 1.111684634034570962057841825298964977264404296875p-177] 

; mpf : + 502982876221104 -177
; mpfd: + 502982876221104 -177 (5.80326e-054) class: Pos. norm. non-zero
; hwf : + 502982876221104 -177 (5.80326e-054) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010011101 #b0011110001100000001100000101100100111011000010111011)))
(assert (= r (fp #b0 #b01101001110 #b0001110010010111010111010011101010100100111010110000)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
