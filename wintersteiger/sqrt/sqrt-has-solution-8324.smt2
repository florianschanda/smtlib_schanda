(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.62637314354497686252898347447626292705535888671875p-960 {+ 2820933855864044 -960 (1.66888e-289)}
; 1.62637314354497686252898347447626292705535888671875p-960 S == 1.2752933558773749123105289982049725949764251708984375p-480
; [HW: 1.2752933558773749123105289982049725949764251708984375p-480] 

; mpf : + 1239811054946919 -480
; mpfd: + 1239811054946919 -480 (4.08519e-145) class: Pos. norm. non-zero
; hwf : + 1239811054946919 -480 (4.08519e-145) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000111111 #b1010000001011001111111011000011010011110010011101100)))
(assert (= r (fp #b0 #b01000011111 #b0100011001111001101000000001100001001100101001100111)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
