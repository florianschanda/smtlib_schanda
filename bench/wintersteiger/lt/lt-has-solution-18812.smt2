(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.558278978249759472163304963032715022563934326171875p-669 {- 2514264998414398 -669 (-6.36177e-202)}
; Y = -1.1729667529813616599909664728329516947269439697265625p-970 {- 778973004274345 -970 (-1.17541e-292)}
; -1.558278978249759472163304963032715022563934326171875p-669 < -1.1729667529813616599909664728329516947269439697265625p-970 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101100010 #b1000111011101011010111110000000110100000100000111110)))
(assert (= y (fp #b1 #b00000110101 #b0010110001000111100011001001001101011001101010101001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
