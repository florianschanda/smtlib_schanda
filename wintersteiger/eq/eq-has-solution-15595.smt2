(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9683277425063534504801054936251603066921234130859375p30 {- 4360960460324127 30 (-2.11348e+009)}
; Y = 1.5333903336683893936509548439062200486660003662109375p-772 {+ 2402176507951983 -772 (6.173e-233)}
; -1.9683277425063534504801054936251603066921234130859375p30 = 1.5333903336683893936509548439062200486660003662109375p-772 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000011101 #b1111011111100100010100111011000111011111110100011111)))
(assert (= y (fp #b0 #b00011111011 #b1000100010001100010001001101011100011011101101101111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
