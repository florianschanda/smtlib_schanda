(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9884623081177921211093462261487729847431182861328125p-223 {+ 4451638482509069 -223 (1.47512e-067)}
; Y = 1.289244887558377516967311748885549604892730712890625p-644 {+ 1302643167826730 -644 (1.76611e-194)}
; 1.9884623081177921211093462261487729847431182861328125p-223 > 1.289244887558377516967311748885549604892730712890625p-644 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100100000 #b1111110100001011110111011010011010110001110100001101)))
(assert (= y (fp #b0 #b00101111011 #b0100101000001011111100111111010010011001001100101010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
