(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5838034128276297085591295399353839457035064697265625p-828 {- 2629216832468137 -828 (-8.8484e-250)}
; Y = 1.4094339496028573943675610280479304492473602294921875p-147 {+ 1843926582864259 -147 (7.90015e-045)}
; -1.5838034128276297085591295399353839457035064697265625p-828 > 1.4094339496028573943675610280479304492473602294921875p-147 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011000011 #b1001010101110100001000111111010101100011010010101001)))
(assert (= y (fp #b0 #b01101101100 #b0110100011010000101010011100111101101010100110000011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
