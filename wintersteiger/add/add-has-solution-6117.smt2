(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.44926460677705648549817851744592189788818359375p816 {+ 2023307915671904 816 (6.33321e+245)}
; Y = 1.2350872215263055675649184195208363234996795654296875p218 {+ 1058738723265435 218 (5.20279e+065)}
; 1.44926460677705648549817851744592189788818359375p816 + 1.2350872215263055675649184195208363234996795654296875p218 == 1.4492646067770567075427834424772299826145172119140625p816
; [HW: 1.4492646067770567075427834424772299826145172119140625p816] 

; mpf : + 2023307915671905 816
; mpfd: + 2023307915671905 816 (6.33321e+245) class: Pos. norm. non-zero
; hwf : + 2023307915671905 816 (6.33321e+245) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100101111 #b0111001100000011000000010101100101011011100101100000)))
(assert (= y (fp #b0 #b10011011001 #b0011110000101110101011010001100000101001101110011011)))
(assert (= r (fp #b0 #b11100101111 #b0111001100000011000000010101100101011011100101100001)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)
