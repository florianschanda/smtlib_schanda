(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4068362665200140337873335738549940288066864013671875p791 {+ 1832227658300339 791 (1.83219e+238)}
; Y = 1.5993556611121688693089026855886913836002349853515625p925 {+ 2699257932047161 925 (4.53619e+278)}
; 1.4068362665200140337873335738549940288066864013671875p791 = 1.5993556611121688693089026855886913836002349853515625p925 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100010110 #b0110100000100110011010111110101110000111101110110011)))
(assert (= y (fp #b0 #b11110011100 #b1001100101101111010111110110001100100110001100111001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
