(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8528916821872438713825204104068689048290252685546875p3 {+ 3841082662085867 3 (14.8231)}
; Y = 1.8345681997572580446131951248389668762683868408203125p-59 {+ 3758561033442053 -59 (3.18247e-018)}
; 1.8528916821872438713825204104068689048290252685546875p3 / 1.8345681997572580446131951248389668762683868408203125p-59 == 1.0099878992955455547786414172151125967502593994140625p62
; [HW: 1.0099878992955455547786414172151125967502593994140625p62] 

; mpf : + 44981499545633 62
; mpfd: + 44981499545633 62 (4.65775e+018) class: Pos. norm. non-zero
; hwf : + 44981499545633 62 (4.65775e+018) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000000010 #b1101101001010111000110111111101000000110010011101011)))
(assert (= y (fp #b0 #b01111000100 #b1101010110100110010000101111010000111101001100000101)))
(assert (= r (fp #b0 #b10000111101 #b0000001010001110100100010010010011010100100000100001)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
