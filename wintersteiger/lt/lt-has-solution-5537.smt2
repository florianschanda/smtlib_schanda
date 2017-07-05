(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.236910789495953455485732774832285940647125244140625p7 {- 1066951343294026 7 (-158.325)}
; Y = 1.5012891469107028097340617023291997611522674560546875p171 {+ 2257605615231915 171 (4.49359e+051)}
; -1.236910789495953455485732774832285940647125244140625p7 < 1.5012891469107028097340617023291997611522674560546875p171 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000000110 #b0011110010100110001011110111110011110100011001001010)))
(assert (= y (fp #b0 #b10010101010 #b1000000001010100011111000100101111010010001110101011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
