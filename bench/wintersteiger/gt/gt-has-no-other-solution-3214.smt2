(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.363350784197125076246948083280585706233978271484375p-62 {- 1636386456314950 -62 (-2.9563e-019)}
; Y = 1.3396321467002059169004724026308394968509674072265625p-379 {+ 1529567209322089 -379 (1.08797e-114)}
; -1.363350784197125076246948083280585706233978271484375p-62 > 1.3396321467002059169004724026308394968509674072265625p-379 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111000001 #b0101110100000100100011101001011100011010010001000110)))
(assert (= y (fp #b0 #b01010000100 #b0101011011110010001000011110001010111111011001101001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
