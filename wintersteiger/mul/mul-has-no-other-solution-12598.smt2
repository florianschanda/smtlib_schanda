(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5367501247332293612402054350241087377071380615234375p991 {- 2417307661739639 991 (-3.2161e+298)}
; Y = -1.08786800942556016735807133954949676990509033203125p-988 {- 395722334506740 -988 (-4.15854e-298)}
; -1.5367501247332293612402054350241087377071380615234375p991 * -1.08786800942556016735807133954949676990509033203125p-988 == 1.6717812991780196529845170516637153923511505126953125p3
; [HW: 1.6717812991780196529845170516637153923511505126953125p3] 

; mpf : + 3025434008652597 3
; mpfd: + 3025434008652597 3 (13.3743) class: Pos. norm. non-zero
; hwf : + 3025434008652597 3 (13.3743) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111011110 #b1000100101101000011101001100011111011010011001110111)))
(assert (= y (fp #b1 #b00000100011 #b0001011001111110100001001001001011011000111011110100)))
(assert (= r (fp #b0 #b10000000010 #b1010101111111001110110111111011000001000101100110101)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
