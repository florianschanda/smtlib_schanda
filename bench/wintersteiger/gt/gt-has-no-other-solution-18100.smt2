(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3741330544546055403287709850701503455638885498046875p-451 {+ 1684945484628747 -451 (2.3632e-136)}
; Y = 1.6918897544113071784721569201792590320110321044921875p650 {+ 3115994440148227 650 (7.90441e+195)}
; 1.3741330544546055403287709850701503455638885498046875p-451 > 1.6918897544113071784721569201792590320110321044921875p650 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000111100 #b0101111111000111001011110001000100111100001100001011)))
(assert (= y (fp #b0 #b11010001001 #b1011000100011111101011111101101110100010010100000011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
