(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.31508156928272779140343118342570960521697998046875p-800 {- 1419001238013004 -800 (-1.97222e-241)}
; Y = 1.8907640737672071207242652235436253249645233154296875p-509 {+ 4011644750693019 -509 (1.12816e-153)}
; -1.31508156928272779140343118342570960521697998046875p-800 > 1.8907640737672071207242652235436253249645233154296875p-509 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011011111 #b0101000010101001001011111000101110100100010001001100)))
(assert (= y (fp #b0 #b01000000010 #b1110010000001001000111010100010101001000001010011011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
