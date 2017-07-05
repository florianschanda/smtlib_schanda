(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4063719068916211707431784816435538232326507568359375p571 {+ 1830136368450943 571 (1.087e+172)}
; Y = 1.1014573914760179551564078792580403387546539306640625p-437 {+ 456923470445377 -437 (3.10356e-132)}
; 1.4063719068916211707431784816435538232326507568359375p571 > 1.1014573914760179551564078792580403387546539306640625p-437 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000111010 #b0110100000000111111111010100001000011100110101111111)))
(assert (= y (fp #b0 #b01001001010 #b0001100111111001000111001001001001010011101101000001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
