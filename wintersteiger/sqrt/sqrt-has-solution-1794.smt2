(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1465588213731703337572298551094718277454376220703125p-903 {+ 660042253324069 -903 (1.69555e-272)}
; 1.1465588213731703337572298551094718277454376220703125p-903 S == 1.514304342840745221110410057008266448974609375p-452
; [HW: 1.514304342840745221110410057008266448974609375p-452] 

; mpf : + 2316220846772608 -452
; mpfd: + 2316220846772608 -452 (1.30213e-136) class: Pos. norm. non-zero
; hwf : + 2316220846772608 -452 (1.30213e-136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001111000 #b0010010110000100111000010000000010111100111100100101)))
(assert (= r (fp #b0 #b01000111011 #b1000001110101001011100110000110010110001000110000000)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
