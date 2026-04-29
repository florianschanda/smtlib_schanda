(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.730564778480736531918182663503102958202362060546875p609 {+ 3290171264135854 609 (3.67667e+183)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.730564778480736531918182663503102958202362060546875p609 = +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001100000 #b1011101100000110010010110001011100101111001010101110)))
(assert (= y (_ +oo 11 53)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
