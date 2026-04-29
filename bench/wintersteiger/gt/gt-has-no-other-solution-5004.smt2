(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.707679526325502905592657043598592281341552734375p-367 {- 3187105251057264 -367 (-5.68065e-111)}
; Y = 1.1098622137251419328407564535154961049556732177734375p-631 {+ 494775424794647 -631 (1.24549e-190)}
; -1.707679526325502905592657043598592281341552734375p-367 > 1.1098622137251419328407564535154961049556732177734375p-631 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010010000 #b1011010100101010011111000100010110011101111001110000)))
(assert (= y (fp #b0 #b00110001000 #b0001110000011111111011100001011100000100000000010111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
