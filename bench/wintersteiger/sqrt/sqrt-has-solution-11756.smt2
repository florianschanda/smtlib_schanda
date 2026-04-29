(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0882373386163941564319657118176110088825225830078125p-653 {+ 397385645312957 -653 (2.91163e-197)}
; 1.0882373386163941564319657118176110088825225830078125p-653 S == 1.475287998064374050954938866198062896728515625p-327
; [HW: 1.475287998064374050954938866198062896728515625p-327] 

; mpf : + 2140506850976384 -327
; mpfd: + 2140506850976384 -327 (5.39595e-099) class: Pos. norm. non-zero
; hwf : + 2140506850976384 -327 (5.39595e-099) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101110010 #b0001011010010110101110001110001110100100101110111101)))
(assert (= r (fp #b0 #b01010111000 #b0111100110101100011110010110011111011110001010000000)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
