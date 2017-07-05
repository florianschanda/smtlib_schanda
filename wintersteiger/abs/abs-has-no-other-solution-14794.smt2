(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.870623125632288719089046935550868511199951171875p-379 {+ 3920937984177712 -379 (1.51921e-114)}
; 1.870623125632288719089046935550868511199951171875p-379 | == 1.870623125632288719089046935550868511199951171875p-379
; [HW: 1.870623125632288719089046935550868511199951171875p-379] 

; mpf : + 3920937984177712 -379
; mpfd: + 3920937984177712 -379 (1.51921e-114) class: Pos. norm. non-zero
; hwf : + 3920937984177712 -379 (1.51921e-114) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010000100 #b1101111011100001001010000011101110111011011000110000)))
(assert (= r (fp #b0 #b01010000100 #b1101111011100001001010000011101110111011011000110000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
