(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.834904709323048610514206302468664944171905517578125p641 {+ 3760076537797154 641 (1.67433e+193)}
; Y = -1.3338389132350931820525374860153533518314361572265625p-781 {- 1503476805247337 -781 (-1.04876e-235)}
; 1.834904709323048610514206302468664944171905517578125p641 = -1.3338389132350931820525374860153533518314361572265625p-781 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010000000 #b1101010110111100010100001010010111010001101000100010)))
(assert (= y (fp #b1 #b00011110010 #b0101010101110110011101111000111001111010000101101001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
