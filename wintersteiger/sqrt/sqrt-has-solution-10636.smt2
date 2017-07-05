(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1520700234315175425336974512902088463306427001953125p-717 {+ 684862500860405 -717 (1.67098e-216)}
; 1.1520700234315175425336974512902088463306427001953125p-717 S == 1.5179394081658974524629002189612947404384613037109375p-359
; [HW: 1.5179394081658974524629002189612947404384613037109375p-359] 

; mpf : + 2332591725616431 -359
; mpfd: + 2332591725616431 -359 (1.29267e-108) class: Pos. norm. non-zero
; hwf : + 2332591725616431 -359 (1.29267e-108) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100110010 #b0010011011101110000011111010000101010111000111110101)))
(assert (= r (fp #b0 #b01010011000 #b1000010010010111101011010101001101100001110100101111)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
