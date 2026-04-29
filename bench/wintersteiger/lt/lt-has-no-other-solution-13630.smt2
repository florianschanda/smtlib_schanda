(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3004590811906246994311686648870818316936492919921875p771 {- 1353147406090179 771 (-1.61519e+232)}
; Y = 1.2209047755981894400889586904668249189853668212890625p-83 {+ 994866665068369 -83 (1.26239e-025)}
; -1.3004590811906246994311686648870818316936492919921875p771 < 1.2209047755981894400889586904668249189853668212890625p-83 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100000010 #b0100110011101010111000101110011101111111111111000011)))
(assert (= y (fp #b0 #b01110101100 #b0011100010001101001101110010001010111001011101010001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
