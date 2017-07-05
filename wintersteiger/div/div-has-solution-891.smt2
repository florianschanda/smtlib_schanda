(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8893723601635687980859756862628273665904998779296875p395 {- 4005377029826267 395 (-1.52463e+119)}
; Y = -1.2956579563486465556110260877176187932491302490234375p-694 {- 1331525062040887 -694 (-1.57643e-209)}
; -1.8893723601635687980859756862628273665904998779296875p395 / -1.2956579563486465556110260877176187932491302490234375p-694 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110001010 #b1110001110101101111010000011000011011110011011011011)))
(assert (= y (fp #b1 #b00101001001 #b0100101110110000001111010110010101010001110100110111)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
