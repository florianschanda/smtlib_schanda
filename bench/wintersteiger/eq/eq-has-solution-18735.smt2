(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4197887806868412230443254884448833763599395751953125p489 {+ 1890560596275573 489 (2.2693e+147)}
; Y = 1.277845952653838157431209765491075813770294189453125p224 {+ 1251306928838226 224 (3.44507e+067)}
; 1.4197887806868412230443254884448833763599395751953125p489 = 1.277845952653838157431209765491075813770294189453125p224 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111101000 #b0110101101110111010001110000110001000111000101110101)))
(assert (= y (fp #b0 #b10011011111 #b0100011100100000111010011000111111111001011001010010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
