(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.208801607833564606409026964684017002582550048828125p-176 {- 940358843233602 -176 (-1.26205e-053)}
; Y = -1.555491822292975001573722693137824535369873046875p341 {- 2501712763886000 341 (-6.96781e+102)}
; -1.208801607833564606409026964684017002582550048828125p-176 > -1.555491822292975001573722693137824535369873046875p341 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101001111 #b0011010101110100000001011010110011111111010101000010)))
(assert (= y (fp #b1 #b10101010100 #b1000111000110100101101100100100111110001100110110000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
