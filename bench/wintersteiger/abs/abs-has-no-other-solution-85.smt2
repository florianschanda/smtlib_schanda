(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4629730098091886514310999700683169066905975341796875p983 {+ 2085045074459259 983 (1.19597e+296)}
; 1.4629730098091886514310999700683169066905975341796875p983 | == 1.4629730098091886514310999700683169066905975341796875p983
; [HW: 1.4629730098091886514310999700683169066905975341796875p983] 

; mpf : + 2085045074459259 983
; mpfd: + 2085045074459259 983 (1.19597e+296) class: Pos. norm. non-zero
; hwf : + 2085045074459259 983 (1.19597e+296) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111010110 #b0111011010000101011001100011000000001111101001111011)))
(assert (= r (fp #b0 #b11111010110 #b0111011010000101011001100011000000001111101001111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
