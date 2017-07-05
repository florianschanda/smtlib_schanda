(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.017282496558948867715344022144563496112823486328125p493 {+ 77833445062914 493 (2.60153e+148)}
; 1.017282496558948867715344022144563496112823486328125p493 S == 1.426381783786478951725484876078553497791290283203125p246
; [HW: 1.426381783786478951725484876078553497791290283203125p246] 

; mpf : + 1920252842578354 246
; mpfd: + 1920252842578354 246 (1.61293e+074) class: Pos. norm. non-zero
; hwf : + 1920252842578354 246 (1.61293e+074) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101100 #b0000010001101100101000000010110110000011100100000010)))
(assert (= r (fp #b0 #b10011110101 #b0110110100100111010110110100100011111001000110110010)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
