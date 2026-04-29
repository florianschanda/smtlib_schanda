(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.58046599675384857874860244919545948505401611328125p-293 {- 2614186446681876 -293 (-9.93108e-089)}
; Y = 1.44959103507688613632353735738433897495269775390625p949 {+ 2024778018041380 949 (6.89781e+285)}
; -1.58046599675384857874860244919545948505401611328125p-293 < 1.44959103507688613632353735738433897495269775390625p949 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011011010 #b1001010010011001011010110110100001111111011100010100)))
(assert (= y (fp #b0 #b11110110100 #b0111001100011000011001011110100000111010111000100100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
