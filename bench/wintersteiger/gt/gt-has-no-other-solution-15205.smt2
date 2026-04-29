(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7558887356249537337049559937440790235996246337890625p-889 {- 3404220228094097 -889 (-4.25433e-268)}
; Y = -1.9505243622179424534124336787499487400054931640625p999 {- 4280781163491304 999 (-1.045e+301)}
; -1.7558887356249537337049559937440790235996246337890625p-889 > -1.9505243622179424534124336787499487400054931640625p999 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000110 #b1100000110000001111011001001011011101100100010010001)))
(assert (= y (fp #b1 #b11111100110 #b1111001101010101100100001000100111000110111111101000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
