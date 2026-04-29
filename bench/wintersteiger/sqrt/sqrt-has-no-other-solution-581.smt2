(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9563379065251293997818038405966944992542266845703125p326 {+ 4306963039466853 326 (2.67438e+098)}
; 1.9563379065251293997818038405966944992542266845703125p326 S == 1.3986914979812843373707664795801974833011627197265625p163
; [HW: 1.3986914979812843373707664795801974833011627197265625p163] 

; mpf : + 1795546881744297 163
; mpfd: + 1795546881744297 163 (1.63535e+049) class: Pos. norm. non-zero
; hwf : + 1795546881744297 163 (1.63535e+049) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101000101 #b1111010011010010100011111010000001110011010101100101)))
(assert (= r (fp #b0 #b10010100010 #b0110011000010000101001010110000100000101110110101001)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
