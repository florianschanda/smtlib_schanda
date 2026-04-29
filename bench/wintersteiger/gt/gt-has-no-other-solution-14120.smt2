(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5084771191492680753043487129616551101207733154296875p-938 {- 2289977364327067 -938 (-6.49236e-283)}
; Y = 1.119477676924865772178918632562272250652313232421875p-142 {+ 538079621277918 -142 (2.00796e-043)}
; -1.5084771191492680753043487129616551101207733154296875p-938 > 1.119477676924865772178918632562272250652313232421875p-142 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001010101 #b1000001000101011100011100111010110000010101010011011)))
(assert (= y (fp #b0 #b01101110001 #b0001111010010110000101101100101011111110100011011110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
