(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9163386889891140807407055035582743585109710693359375p-803 {- 4126822578276543 -803 (-3.59241e-242)}
; -1.9163386889891140807407055035582743585109710693359375p-803 | == 1.9163386889891140807407055035582743585109710693359375p-803
; [HW: 1.9163386889891140807407055035582743585109710693359375p-803] 

; mpf : + 4126822578276543 -803
; mpfd: + 4126822578276543 -803 (3.59241e-242) class: Pos. norm. non-zero
; hwf : + 4126822578276543 -803 (3.59241e-242) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011011100 #b1110101010010101001011000001110101000100100010111111)))
(assert (= r (fp #b0 #b00011011100 #b1110101010010101001011000001110101000100100010111111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
