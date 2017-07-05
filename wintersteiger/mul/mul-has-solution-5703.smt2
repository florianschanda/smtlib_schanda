(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2720980744740355561361866421066224575042724609375p-1014 {+ 1225420786809496 -1014 (7.24611e-306)}
; Y = 1.3728410063771916416186513743014074862003326416015625p-708 {+ 1679126617388761 -708 (1.01949e-213)}
; 1.2720980744740355561361866421066224575042724609375p-1014 * 1.3728410063771916416186513743014074862003326416015625p-708 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000001001 #b0100010110101000001110000010101100101011101010011000)))
(assert (= y (fp #b0 #b00100111011 #b0101111101110010100000100001100011111111011011011001)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
