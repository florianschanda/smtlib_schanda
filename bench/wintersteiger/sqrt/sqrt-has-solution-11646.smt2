(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9862509375962016378025509766303002834320068359375p-298 {+ 4441679355052056 -298 (3.90028e-090)}
; 1.9862509375962016378025509766303002834320068359375p-298 S == 1.4093441515812246134231600080966018140316009521484375p-149
; [HW: 1.4093441515812246134231600080966018140316009521484375p-149] 

; mpf : + 1843522168527495 -149
; mpfd: + 1843522168527495 -149 (1.97491e-045) class: Pos. norm. non-zero
; hwf : + 1843522168527495 -149 (1.97491e-045) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011010101 #b1111110001111010111100010000001010100000000000011000)))
(assert (= r (fp #b0 #b01101101010 #b0110100011001010110001110011111111011001101010000111)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
