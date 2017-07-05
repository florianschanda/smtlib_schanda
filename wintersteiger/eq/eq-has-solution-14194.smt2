(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2954441951378823372209581066272221505641937255859375p-364 {- 1330562367131743 -364 (-3.44747e-110)}
; Y = -1.3119702366583652075604504716466180980205535888671875p-379 {- 1404989041565299 -379 (-1.06551e-114)}
; -1.2954441951378823372209581066272221505641937255859375p-364 = -1.3119702366583652075604504716466180980205535888671875p-379 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010010011 #b0100101110100010001110110001001111101001000001011111)))
(assert (= y (fp #b1 #b01010000100 #b0100111111011101010010000000101111000101111001110011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
