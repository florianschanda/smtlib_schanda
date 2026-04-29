(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4028957817371026095543129486031830310821533203125p583 {+ 1814481292500360 583 (4.44133e+175)}
; 1.4028957817371026095543129486031830310821533203125p583 S == 1.6750497197021363415814221298205666244029998779296875p291
; [HW: 1.6750497197021363415814221298205666244029998779296875p291] 

; mpf : + 3040153666107099 291
; mpfd: + 3040153666107099 291 (6.66433e+087) class: Pos. norm. non-zero
; hwf : + 3040153666107099 291 (6.66433e+087) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000110 #b0110011100100100001011011000111001000001110110001000)))
(assert (= r (fp #b0 #b10100100010 #b1010110011010000000011101111010101001011011011011011)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
