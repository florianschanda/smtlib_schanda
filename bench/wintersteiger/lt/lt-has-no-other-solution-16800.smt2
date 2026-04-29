(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.87252855216512870129008661024272441864013671875p-908 {- 3929519262400992 -908 (-8.65351e-274)}
; Y = 1.767617365477467838985603520995937287807464599609375p-1004 {+ 3457041281127446 -1004 (1.03103e-302)}
; -1.87252855216512870129008661024272441864013671875p-908 < 1.767617365477467838985603520995937287807464599609375p-1004 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001110011 #b1101111101011110000001111111110001100000000111100000)))
(assert (= y (fp #b0 #b00000010011 #b1100010010000010100100100101100010010001010000010110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
