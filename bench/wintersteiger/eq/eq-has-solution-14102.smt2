(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.127018406941872274984461910207755863666534423828125p-710 {- 572040050172610 -710 (-2.09235e-214)}
; +zero = -1.127018406941872274984461910207755863666534423828125p-710 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b00100111001 #b0010000010000100010001110011111111001110001011000010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
