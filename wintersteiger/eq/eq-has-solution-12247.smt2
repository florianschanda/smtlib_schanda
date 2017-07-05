(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0748970988735673248726243400597013533115386962890625p981 {- 337306546578129 981 (-2.19681e+295)}
; Y = -1.08441543662781736401257148827426135540008544921875p-146 {- 380173328941356 -146 (-1.21567e-044)}
; -1.0748970988735673248726243400597013533115386962890625p981 = -1.08441543662781736401257148827426135540008544921875p-146 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111010100 #b0001001100101100011101001100111000111010001011010001)))
(assert (= y (fp #b1 #b01101101101 #b0001010110011100010000000000001110011000000100101100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
