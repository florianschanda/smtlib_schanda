(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8706630464473332775554581530741415917873382568359375p266 {+ 3921117771545471 266 (2.21807e+080)}
; Y = -1.8004585557876549017919387551955878734588623046875p928 {- 3604944853570808 928 (-4.08525e+279)}
; 1.8706630464473332775554581530741415917873382568359375p266 > -1.8004585557876549017919387551955878734588623046875p928 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100001001 #b1101111011100011110001011111111001010011101101111111)))
(assert (= y (fp #b1 #b11110011111 #b1100110011101010110110100001011011101001010011111000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
