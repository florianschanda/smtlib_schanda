(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1595875601287530809457848590682260692119598388671875p492 {+ 718718476328819 492 (1.48273e+148)}
; Y = -1.69198150346608855443264474160969257354736328125p46 {- 3116407641157152 46 (-1.19063e+014)}
; 1.1595875601287530809457848590682260692119598388671875p492 = -1.69198150346608855443264474160969257354736328125p46 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111101011 #b0010100011011010101110101111011110011001111101110011)))
(assert (= y (fp #b1 #b10000101101 #b1011000100100101101100110010011011010010111000100000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
