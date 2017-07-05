(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7821951505749018540569750257418490946292877197265625p-477 {+ 3522693788660137 -477 (4.56717e-144)}
; Y = 1.89423387375694129985959079931490123271942138671875p-90 {+ 4027271340633836 -90 (1.53015e-027)}
; 1.7821951505749018540569750257418490946292877197265625p-477 > 1.89423387375694129985959079931490123271942138671875p-90 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000100010 #b1100100000111101111100001111111011001111000110101001)))
(assert (= y (fp #b0 #b01110100101 #b1110010011101100100000101101101011000010111011101100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
