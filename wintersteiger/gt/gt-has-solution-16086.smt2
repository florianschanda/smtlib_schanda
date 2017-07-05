(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2675299501761954079626093516708351671695709228515625p-34 {+ 1204847783923961 -34 (7.378e-011)}
; Y = -1.6486385474418963070775134838186204433441162109375p-860 {- 2921208320557464 -860 (-2.14452e-259)}
; 1.2675299501761954079626093516708351671695709228515625p-34 > -1.6486385474418963070775134838186204433441162109375p-860 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111011101 #b0100010001111100110101111100001010110101000011111001)))
(assert (= y (fp #b1 #b00010100011 #b1010011000001101001011010000010000110000000110011000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
