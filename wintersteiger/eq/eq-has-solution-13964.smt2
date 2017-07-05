(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.798962086535811355503255981602706015110015869140625p838 {- 3598205355205834 838 (-3.2973e+252)}
; Y = -1.507177635109220315001721246517263352870941162109375p714 {- 2284125008488534 714 (-1.29892e+215)}
; -1.798962086535811355503255981602706015110015869140625p838 = -1.507177635109220315001721246517263352870941162109375p714 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101000101 #b1100110010001000110001111000000001101010010011001010)))
(assert (= y (fp #b1 #b11011001001 #b1000000111010110011001001011110000001110100001010110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
