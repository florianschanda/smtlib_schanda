(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2489872075121157823929252117522992193698883056640625p809 {+ 1121338694971585 809 (4.26407e+243)}
; 1.2489872075121157823929252117522992193698883056640625p809 S == 1.580498154071757088701133397989906370639801025390625p404
; [HW: 1.580498154071757088701133397989906370639801025390625p404] 

; mpf : + 2614331270366826 404
; mpfd: + 2614331270366826 404 (6.52999e+121) class: Pos. norm. non-zero
; hwf : + 2614331270366826 404 (6.52999e+121) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100101000 #b0011111110111101101000000010100101100011000011000001)))
(assert (= r (fp #b0 #b10110010011 #b1001010010011011100001101110101100100000011001101010)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
