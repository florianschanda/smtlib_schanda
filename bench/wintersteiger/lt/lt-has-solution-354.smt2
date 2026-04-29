(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9123760019894984196753284777514636516571044921875p-149 {- 4108976222581688 -149 (-2.67981e-045)}
; Y = 1.3441027285457194384576951051712967455387115478515625p64 {+ 1549700920055673 64 (2.47943e+019)}
; -1.9123760019894984196753284777514636516571044921875p-149 < 1.3441027285457194384576951051712967455387115478515625p64 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101101010 #b1110100110010001011110010100001000110011001110111000)))
(assert (= y (fp #b0 #b10000111111 #b0101100000010111000111011100110110010001011101111001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
