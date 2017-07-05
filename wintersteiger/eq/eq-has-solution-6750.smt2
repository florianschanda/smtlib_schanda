(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.53284514535305849136648248531855642795562744140625p708 {- 2399721198058212 708 (-2.06412e+213)}
; Y = 1.786312338665231091994201051420532166957855224609375p-917 {+ 3541235955409558 -917 (1.61232e-276)}
; -1.53284514535305849136648248531855642795562744140625p708 = 1.786312338665231091994201051420532166957855224609375p-917 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011000011 #b1000100001101000100010100001100100011111101011100100)))
(assert (= y (fp #b0 #b00001101010 #b1100100101001011110000111111001100000010001010010110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
