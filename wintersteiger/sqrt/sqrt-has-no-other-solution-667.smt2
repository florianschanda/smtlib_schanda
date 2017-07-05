(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0258320450380191690697984086000360548496246337890625p263 {+ 116337188407441 263 (1.52043e+079)}
; 1.0258320450380191690697984086000360548496246337890625p263 S == 1.432363113905143148230081351357512176036834716796875p131
; [HW: 1.432363113905143148230081351357512176036834716796875p131] 

; mpf : + 1947190358671950 131
; mpfd: + 1947190358671950 131 (3.89926e+039) class: Pos. norm. non-zero
; hwf : + 1947190358671950 131 (3.89926e+039) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000110 #b0000011010011100111011011100110010100000100010010001)))
(assert (= r (fp #b0 #b10010000010 #b0110111010101111010110010101101000111000001001001110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
